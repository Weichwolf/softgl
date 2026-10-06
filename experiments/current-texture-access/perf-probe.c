#define _GNU_SOURCE
#include <linux/perf_event.h>
#include <sys/syscall.h>
#include <sys/ioctl.h>
#include <unistd.h>
#include <errno.h>
#include <stdio.h>
#include <string.h>
#include <stdint.h>

int main(void) {
    struct event { const char *name; uint32_t type; uint64_t config; } events[] = {
        {"cpu-cycles-user", PERF_TYPE_HARDWARE, PERF_COUNT_HW_CPU_CYCLES},
        {"instructions-user", PERF_TYPE_HARDWARE, PERF_COUNT_HW_INSTRUCTIONS},
        {"cache-references-user", PERF_TYPE_HARDWARE, PERF_COUNT_HW_CACHE_REFERENCES},
        {"cache-misses-user", PERF_TYPE_HARDWARE, PERF_COUNT_HW_CACHE_MISSES},
        {"l1d-read-misses-user", PERF_TYPE_HW_CACHE, PERF_COUNT_HW_CACHE_L1D |
            ((uint64_t)PERF_COUNT_HW_CACHE_OP_READ << 8) |
            ((uint64_t)PERF_COUNT_HW_CACHE_RESULT_MISS << 16)}
    };
    int usable = 0;
    for (size_t i = 0; i < sizeof(events) / sizeof(events[0]); i++) {
        struct perf_event_attr attr = {0};
        attr.size = sizeof(attr); attr.type = events[i].type;
        attr.config = events[i].config; attr.disabled = 1;
        attr.exclude_kernel = 1; attr.exclude_hv = 1;
        int fd = (int)syscall(SYS_perf_event_open, &attr, 0, -1, -1, PERF_FLAG_FD_CLOEXEC);
        if (fd < 0) {
            printf("%s: unavailable errno=%d (%s)\n", events[i].name, errno, strerror(errno));
            continue;
        }
        int reset = ioctl(fd, PERF_EVENT_IOC_RESET, 0);
        int enabled = ioctl(fd, PERF_EVENT_IOC_ENABLE, 0);
        volatile uint64_t sum = 1;
        for (int j = 0; j < 10000; j++) sum = sum * 33 + (uint64_t)j;
        int disabled = ioctl(fd, PERF_EVENT_IOC_DISABLE, 0);
        uint64_t value = 0; ssize_t bytes = read(fd, &value, sizeof(value));
        printf("%s: fd opened reset=%d enable=%d disable=%d read=%zd value=%llu probe=%llu\n",
            events[i].name, reset, enabled, disabled, bytes,
            (unsigned long long)value, (unsigned long long)sum);
        if (!reset && !enabled && !disabled && bytes == sizeof(value)) usable++;
        close(fd);
    }
    printf("usable events: %d of %zu\n", usable, sizeof(events) / sizeof(events[0]));
    return 0;
}
