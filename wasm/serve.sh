#!/usr/bin/env bash
# Tiny local HTTP server so the browser can load softgl.wasm via fetch().
cd "$(dirname "$0")"
PORT="${1:-8000}"
echo "serving on http://localhost:$PORT"
if command -v python3 > /dev/null; then
    python3 -m http.server "$PORT"
elif command -v python > /dev/null; then
    python -m http.server "$PORT"
else
    echo "need python3 or python to run the demo server" >&2
    exit 1
fi
