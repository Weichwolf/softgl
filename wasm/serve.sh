#!/usr/bin/env bash
# Tiny local HTTP server for the softgl.wasm demo. Emits
# Cross-Origin-Opener-Policy + Cross-Origin-Embedder-Policy headers so
# SharedArrayBuffer is unlocked — required for the -pthread build of
# softgl to spawn its tile-worker pool. Without these headers the WASM
# module loads but every pthread_create fails silently.
cd "$(dirname "$0")"
PORT="${1:-8000}"
echo "serving on http://localhost:$PORT (COOP/COEP enabled)"

# python3 first; some Windows installs ship a MS-Store stub at `python`
# that `command -v` finds but exits with an error, so test execution too.
PY=""
for cand in python3 /ucrt64/bin/python3 /mingw64/bin/python3 python py; do
    if command -v "$cand" > /dev/null 2>&1 \
       && "$cand" -c "import sys; sys.exit(0)" > /dev/null 2>&1; then
        PY="$cand"; break
    fi
done
if [ -z "$PY" ]; then
    echo "need python3 on PATH (MSYS2 ucrt64: pacman -S python)" >&2
    exit 1
fi
echo "using python: $PY"

"$PY" -u -c "
import os, sys
from http.server import SimpleHTTPRequestHandler, ThreadingHTTPServer
class H(SimpleHTTPRequestHandler):
    def end_headers(self):
        self.send_header('Cross-Origin-Opener-Policy',   'same-origin')
        self.send_header('Cross-Origin-Embedder-Policy', 'require-corp')
        self.send_header('Cache-Control', 'no-store')
        super().end_headers()
ThreadingHTTPServer(('', $PORT), H).serve_forever()
"
