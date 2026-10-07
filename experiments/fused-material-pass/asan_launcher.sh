#!/bin/sh
# Clang 19 provides local sanitizer runtimes; keep Clang 22's renderer math.
exec "$@" -fno-associative-math -fsigned-zeros -fno-finite-math-only
