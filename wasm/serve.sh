#!/usr/bin/env bash
# Tiny local HTTP server for the softgl.wasm demo. Emits
# Cross-Origin-Opener-Policy + Cross-Origin-Embedder-Policy headers so
# SharedArrayBuffer is unlocked — required for the -pthread build of
# softgl to spawn its tile-worker pool. Without these headers the WASM
# module loads but every pthread_create fails silently.
REPO_ROOT="$(cd "$(dirname "$0")/.." && pwd)"
cd "${SOFTGL_WEB_ROOT:-$REPO_ROOT/build/wasm}" || exit 1
PORT="${1:-8000}"
SCHEME=http
if [[ -n "${SOFTGL_TLS_CERT:-}" || -n "${SOFTGL_TLS_KEY:-}" ]]; then
    if [[ -z "${SOFTGL_TLS_CERT:-}" || -z "${SOFTGL_TLS_KEY:-}" ]]; then
        echo "set both SOFTGL_TLS_CERT and SOFTGL_TLS_KEY for HTTPS" >&2
        exit 1
    fi
    SCHEME=https
fi
echo "serving on $SCHEME://0.0.0.0:$PORT (COOP/COEP enabled)"

if ! command -v python3 > /dev/null 2>&1; then
    echo "need python3 on PATH" >&2
    exit 1
fi

exec python3 -u -c "
import os, ssl
from http.server import SimpleHTTPRequestHandler, ThreadingHTTPServer
class H(SimpleHTTPRequestHandler):
    def end_headers(self):
        self.send_header('Cross-Origin-Opener-Policy',   'same-origin')
        self.send_header('Cross-Origin-Embedder-Policy', 'require-corp')
        self.send_header('Cache-Control', 'no-store')
        super().end_headers()
server = ThreadingHTTPServer(('0.0.0.0', $PORT), H)
if os.environ.get('SOFTGL_TLS_CERT'):
    context = ssl.SSLContext(ssl.PROTOCOL_TLS_SERVER)
    context.load_cert_chain(os.environ['SOFTGL_TLS_CERT'], os.environ['SOFTGL_TLS_KEY'])
    server.socket = context.wrap_socket(server.socket, server_side=True)
server.serve_forever()
"
