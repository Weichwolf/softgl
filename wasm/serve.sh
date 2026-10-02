#!/usr/bin/env bash
# Tiny local HTTP server for the softgl.wasm demo. Emits
# Cross-Origin-Opener-Policy + Cross-Origin-Embedder-Policy headers so
# SharedArrayBuffer is unlocked — required for the -pthread build of
# softgl to spawn its tile-worker pool. Without these headers the WASM
# module loads but every pthread_create fails silently.
cd "$(dirname "$0")"
PORT="${1:-8000}"
echo "serving on http://localhost:$PORT (COOP/COEP enabled)"

if ! command -v python3 > /dev/null 2>&1; then
    echo "need python3 on PATH" >&2
    exit 1
fi

exec python3 -u -c "
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
