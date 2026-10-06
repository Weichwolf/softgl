#define _GNU_SOURCE
#include <linux/perf_event.h>
#include <sys/syscall.h>
#include <sys/ioctl.h>
#include <unistd.h>
#include <errno.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdint.h>
#include <time.h>

enum { EVENT_COUNT = 5, MAX_THREADS = 128 };
static const struct event { const char *name; uint32_t type; uint64_t config; } events[EVENT_COUNT] = {
    {"cycles-user", PERF_TYPE_HARDWARE, PERF_COUNT_HW_CPU_CYCLES},
    {"instructions-user", PERF_TYPE_HARDWARE, PERF_COUNT_HW_INSTRUCTIONS},
    {"branch-misses-user", PERF_TYPE_HARDWARE, PERF_COUNT_HW_BRANCH_MISSES},
    {"l1d-read-misses-user", PERF_TYPE_HW_CACHE, PERF_COUNT_HW_CACHE_L1D |
        ((uint64_t)PERF_COUNT_HW_CACHE_OP_READ << 8) |
        ((uint64_t)PERF_COUNT_HW_CACHE_RESULT_MISS << 16)},
    {"cache-misses-user", PERF_TYPE_HARDWARE, PERF_COUNT_HW_CACHE_MISSES}
};
static struct thread { int pid, tid, fd[EVENT_COUNT], clock_fd; uint64_t ids[EVENT_COUNT], clock_id; } threads[MAX_THREADS];
static int count;
static uint64_t mono_ns(void) {
    struct timespec now;
    if (clock_gettime(CLOCK_MONOTONIC_RAW, &now)) { perror("clock_gettime"); exit(2); }
    return (uint64_t)now.tv_sec * UINT64_C(1000000000) + (uint64_t)now.tv_nsec;
}
static void close_all(void) {
    for (int i = 0; i < count; i++) {
        for (int j = 0; j < EVENT_COUNT; j++) if (threads[i].fd[j] >= 0) close(threads[i].fd[j]);
        if (threads[i].clock_fd >= 0) close(threads[i].clock_fd);
    }
}
static void fail(const char *operation, int tid, int event) {
    fprintf(stderr, "%s tid=%d event=%s errno=%d (%s)\n", operation, tid,
        event >= 0 ? events[event].name : "group", errno, strerror(errno));
    close_all(); exit(2);
}
static void group_ioctl(unsigned long request) {
    for (int i = 0; i < count; i++) {
        if (ioctl(threads[i].fd[0], request, PERF_IOC_FLAG_GROUP)) fail("group ioctl", threads[i].tid, -1);
        if (ioctl(threads[i].clock_fd, request, 0)) fail("task clock ioctl", threads[i].tid, -1);
    }
}
int main(int argc, char **argv) {
    if (argc < 2 || argc > MAX_THREADS + 1) {
        fprintf(stderr, "Usage: pmu-collector pid:tid ... (max %d)\n", MAX_THREADS); return 2;
    }
    count = argc - 1;
    for (int i = 0; i < count; i++) {
        threads[i].clock_fd = -1;
        for (int j = 0; j < EVENT_COUNT; j++) threads[i].fd[j] = -1;
    }
    for (int i = 0; i < count; i++) {
        char extra;
        if (sscanf(argv[i+1], "%d:%d%c", &threads[i].pid, &threads[i].tid, &extra) != 2 ||
            threads[i].pid <= 0 || threads[i].tid <= 0) { errno = EINVAL; fail("invalid pid:tid", 0, -1); }
        for (int k = 0; k < i; k++) if (threads[i].tid == threads[k].tid) {
            errno = EINVAL; fail("duplicate tid", threads[i].tid, -1);
        }
        /* Validate membership before attaching; the bridge also verifies browser ownership. */
        char file[128]; snprintf(file, sizeof(file), "/proc/%d/task/%d/stat", threads[i].pid, threads[i].tid);
        if (access(file, R_OK)) fail("thread membership", threads[i].tid, -1);
        for (int j = 0; j < EVENT_COUNT; j++) {
            struct perf_event_attr attr = {0};
            attr.size = sizeof(attr); attr.type = events[j].type; attr.config = events[j].config;
            attr.disabled = 1; attr.exclude_kernel = 1; attr.exclude_hv = 1;
            attr.read_format = PERF_FORMAT_GROUP | PERF_FORMAT_TOTAL_TIME_ENABLED |
                PERF_FORMAT_TOTAL_TIME_RUNNING | PERF_FORMAT_ID;
            int group = j ? threads[i].fd[0] : -1;
            threads[i].fd[j] = (int)syscall(SYS_perf_event_open, &attr, threads[i].tid,
                -1, group, PERF_FLAG_FD_CLOEXEC);
            if (threads[i].fd[j] < 0) fail("perf_event_open", threads[i].tid, j);
            if (ioctl(threads[i].fd[j], PERF_EVENT_IOC_ID, &threads[i].ids[j]))
                fail("event id", threads[i].tid, j);
        }
        /* Separate software event: scheduled task CPU time, including kernel time.
         * Hardware user-only groups remain unchanged and independently mapped. */
        struct perf_event_attr clock_attr = {0};
        clock_attr.size = sizeof(clock_attr); clock_attr.type = PERF_TYPE_SOFTWARE;
        clock_attr.config = PERF_COUNT_SW_TASK_CLOCK; clock_attr.disabled = 1;
        clock_attr.read_format = PERF_FORMAT_TOTAL_TIME_ENABLED | PERF_FORMAT_TOTAL_TIME_RUNNING | PERF_FORMAT_ID;
        threads[i].clock_fd = (int)syscall(SYS_perf_event_open, &clock_attr,
            threads[i].tid, -1, -1, PERF_FLAG_FD_CLOEXEC);
        if (threads[i].clock_fd < 0) fail("task clock open", threads[i].tid, -1);
        if (ioctl(threads[i].clock_fd, PERF_EVENT_IOC_ID, &threads[i].clock_id)) fail("task clock id", threads[i].tid, -1);
    }
    printf("{\"type\":\"ready\",\"events\":[");
    for (int j = 0; j < EVENT_COUNT; j++) printf("%s{\"name\":\"%s\",\"type\":%u,\"config\":%llu}",
        j ? "," : "", events[j].name, events[j].type, (unsigned long long)events[j].config);
    printf("],\"threads\":[");
    for (int i = 0; i < count; i++) {
        printf("%s{\"pid\":%d,\"tid\":%d,\"ids\":[", i ? "," : "", threads[i].pid, threads[i].tid);
        for (int j = 0; j < EVENT_COUNT; j++) printf("%s%llu", j ? "," : "", (unsigned long long)threads[i].ids[j]);
        printf("],\"taskClockId\":%llu}", (unsigned long long)threads[i].clock_id);
    }
    printf("]}\n"); fflush(stdout);
    char command[32];
    if (!fgets(command, sizeof(command), stdin) || strcmp(command, "start\n")) {
        errno = EINVAL; fail("expected start", 0, -1);
    }
    group_ioctl(PERF_EVENT_IOC_RESET);
    uint64_t start_begin = mono_ns(); group_ioctl(PERF_EVENT_IOC_ENABLE); uint64_t start_end = mono_ns();
    printf("{\"type\":\"started\",\"beginNs\":%llu,\"endNs\":%llu}\n",
        (unsigned long long)start_begin, (unsigned long long)start_end); fflush(stdout);
    if (!fgets(command, sizeof(command), stdin) || strcmp(command, "stop\n")) {
        errno = EINVAL; fail("expected stop", 0, -1);
    }
    uint64_t stop_begin = mono_ns(); group_ioctl(PERF_EVENT_IOC_DISABLE); uint64_t stop_end = mono_ns();
    printf("{\"type\":\"stopped\",\"beginNs\":%llu,\"endNs\":%llu,\"rows\":[",
        (unsigned long long)stop_begin, (unsigned long long)stop_end);
    for (int i = 0; i < count; i++) {
        uint64_t raw[3 + EVENT_COUNT * 2] = {0};
        ssize_t bytes = read(threads[i].fd[0], raw, sizeof(raw));
        if (bytes != (ssize_t)sizeof(raw) || raw[0] != EVENT_COUNT) {
            errno = EIO; fail("invalid group read", threads[i].tid, -1);
        }
        uint64_t values[EVENT_COUNT] = {0};
        unsigned seen = 0;
        for (int j = 0; j < EVENT_COUNT; j++) {
            int found = -1;
            for (int k = 0; k < EVENT_COUNT; k++) if (raw[3 + j*2 + 1] == threads[i].ids[k]) found = k;
            if (found < 0 || (seen & (1u << found))) { errno = EIO; fail("unknown/duplicate event id", threads[i].tid, -1); }
            seen |= 1u << found; values[found] = raw[3 + j*2];
        }
        uint64_t clock_raw[4] = {0};
        if (read(threads[i].clock_fd, clock_raw, sizeof(clock_raw)) != (ssize_t)sizeof(clock_raw) ||
            clock_raw[3] != threads[i].clock_id) { errno = EIO; fail("task clock read/id", threads[i].tid, -1); }
        printf("%s{\"pid\":%d,\"tid\":%d,\"timeEnabledNs\":%llu,\"timeRunningNs\":%llu,\"values\":[",
            i ? "," : "", threads[i].pid, threads[i].tid,
            (unsigned long long)raw[1], (unsigned long long)raw[2]);
        for (int j = 0; j < EVENT_COUNT; j++) printf("%s%llu", j ? "," : "", (unsigned long long)values[j]);
        printf("],\"taskClockNs\":%llu,\"taskClockEnabledNs\":%llu,\"taskClockRunningNs\":%llu}",
            (unsigned long long)clock_raw[0], (unsigned long long)clock_raw[1], (unsigned long long)clock_raw[2]);
    }
    printf("]}\n"); fflush(stdout); close_all(); return 0;
}
