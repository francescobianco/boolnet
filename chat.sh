#!/usr/bin/env bash
# Chat interattiva con LFM2.5-1.2B-Instruct Q4_0 (solo CPU). Argomenti extra passati a llama-cli.
ROOT="$(cd "$(dirname "$0")" && pwd)"
exec "$ROOT/vendor/llama.cpp/build/bin/llama-cli" \
  -m "$ROOT/vendor/models/LFM2.5-1.2B-Instruct-Q4_0.gguf" \
  -t 6 -c 8192 -n 2048 \
  --temp 0.1 --top-k 50 --repeat-penalty 1.05 \
  --jinja "$@"
