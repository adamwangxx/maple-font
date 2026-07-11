#!/usr/bin/env sh

set -eu

script_dir=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
build_script="$script_dir/build-nf-cn-unhinted-ttf.sh"

[ -x "$build_script" ]
grep -Fx 'set -eu' "$build_script"
grep -Fx 'uv run build.py --nf --cn --ttf-only --no-hinted' "$build_script"
