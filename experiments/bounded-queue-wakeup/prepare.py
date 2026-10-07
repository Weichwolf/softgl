#!/usr/bin/env python3
"""Freeze current accepted sources and suppress broadcasts without waiters."""
from pathlib import Path
import subprocess
import argparse
parser = argparse.ArgumentParser()
parser.add_argument("--polls", type=int, default=0)
args = parser.parse_args()
assert 0 <= args.polls <= 4096
repo = Path(__file__).resolve().parents[2]
destination = repo / "build/bounded-queue-wakeup/source"
base = "1ff3c2c2c12113d0d37fe53116b823b60cba52cf"
for name in subprocess.check_output(["git", "ls-tree", "-r", "--name-only", base, "libsoftgl"], cwd=repo, text=True).splitlines():
    target = destination / name
    target.parent.mkdir(parents=True, exist_ok=True)
    target.write_bytes(subprocess.check_output(["git", "show", f"{base}:{name}"], cwd=repo))
(destination / "model_wrap.c").write_bytes(subprocess.check_output(["git", "show", f"{base}:wasm/model_wrap.c"], cwd=repo))
p = destination / "libsoftgl/src/workers_queue_raw.inc"
s = p.read_text().replace("int head, count, stopping;", "int head, count, stopping, sleepers;")
s = s.replace("pthread_cond_wait(&p->wake, &p->mtx);", "q->sleepers++;\n            pthread_cond_wait(&p->wake, &p->mtx);\n            q->sleepers--;")
s = s.replace("    pthread_cond_broadcast(&p->wake);", "    if (p->stream_queue->sleepers) pthread_cond_broadcast(&p->wake);")
# Epoch start must also wake workers asleep outside the queue.
s = s.replace("    if (p->stream_queue->sleepers) pthread_cond_broadcast(&p->wake);\n    pthread_mutex_unlock(&p->mtx);\n    return 1;", "    if (start || q->sleepers) pthread_cond_broadcast(&p->wake);\n    pthread_mutex_unlock(&p->mtx);\n    return 1;")
assert "if (start || q->sleepers)" in s
if args.polls:
    s = s.replace("    pthread_mutex_lock(&p->mtx);\n    for (;;) {\n        int first, end;", "    int spun = 0;\n    pthread_mutex_lock(&p->mtx);\n    for (;;) {\n        int first, end;")
    s = s.replace("        if (sg_queue_vertex_claim(q, &first, &end)) {", "        if (sg_queue_vertex_claim(q, &first, &end)) {\n            spun = 0;")
    s = s.replace("        if (slot) {\n            pthread_mutex_unlock", "        if (slot) {\n            spun = 0;\n            pthread_mutex_unlock")
    s = s.replace("        } else {\n            q->sleepers++;", f"""        }} else if (!spun) {{
            unsigned before = atomic_load_explicit(&q->change, memory_order_acquire);
            pthread_mutex_unlock(&p->mtx);
            for (int poll = 0; poll < {args.polls}; poll++) {{
                if (atomic_load_explicit(&q->change, memory_order_acquire) != before) break;
#if defined(__x86_64__) || defined(__i386__)
                __builtin_ia32_pause();
#endif
            }}
            pthread_mutex_lock(&p->mtx);
            spun = 1;
            /* Recheck every queue predicate under the mutex before sleeping. */
        }} else {{
            spun = 0;
            q->sleepers++;""")
    s = s.replace("    q->vertex_active = triangles ? 2 : 1;", "    q->vertex_active = triangles ? 2 : 1;\n    atomic_fetch_add_explicit(&q->change, 1, memory_order_release);")
    s = s.replace("            q->stopping = 1;", "            q->stopping = 1;\n            atomic_fetch_add_explicit(&q->change, 1, memory_order_release);")
    outer = destination / "libsoftgl/src/workers.c"
    o = outer.read_text()
    old = """        /* Sleep until main bumps the generation or signals die. */
        pthread_mutex_lock(&p->mtx);
        while (atomic_load_explicit(&p->gen, memory_order_acquire) == local_gen
               && atomic_load_explicit(&p->alive, memory_order_acquire)) {
            pthread_cond_wait(&p->wake, &p->mtx);
        }
        int alive = atomic_load_explicit(&p->alive, memory_order_acquire);
        local_gen = atomic_load_explicit(&p->gen, memory_order_acquire);
        pthread_mutex_unlock(&p->mtx);"""
    new = f"""        int next_gen = local_gen;
        for (int poll = 0; poll < {args.polls}; poll++) {{
            next_gen = atomic_load_explicit(&p->gen, memory_order_acquire);
            if (next_gen != local_gen) break;
#if defined(__x86_64__) || defined(__i386__)
            __builtin_ia32_pause();
#endif
        }}
        int alive;
        if (next_gen != local_gen) {{
            /* Acquire observes the complete job published by the caller. */
            alive = atomic_load_explicit(&p->alive, memory_order_acquire);
            local_gen = next_gen;
        }} else {{
            pthread_mutex_lock(&p->mtx);
            while (atomic_load_explicit(&p->gen, memory_order_acquire) == local_gen
                   && atomic_load_explicit(&p->alive, memory_order_acquire)) {{
                pthread_cond_wait(&p->wake, &p->mtx);
            }}
            alive = atomic_load_explicit(&p->alive, memory_order_acquire);
            local_gen = atomic_load_explicit(&p->gen, memory_order_acquire);
            pthread_mutex_unlock(&p->mtx);
        }}"""
    assert old in o
    outer.write_text(o.replace(old, new))
p.write_text(s)
print(destination)
