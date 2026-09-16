#!/usr/bin/env bash
set -euo pipefail

root=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)

run_case() {
    local input="$1"
    local expected="$2"
    local actual
    actual=$(printf '%s' "$input" | "$root/solution.sh")
    [[ "$actual" == "$expected" ]] || {
        printf 'FAIL\nInput:\n%s\nExpected:\n%s\nActual:\n%s\n' "$input" "$expected" "$actual" >&2
        exit 1
    }
}

run_case $'2\n9 6\n10\n1 1\n1 1\n0 1\n0 0\n0 1\n0 0\n0 1\n0 1\n1 1\n0 0\n1 9\n10\n0 1\n0 0\n0 0\n0 1\n1 0\n0 1\n0 1\n0 0\n0 1\n0 0\n' $'69\n14'
run_case $'1\n5 10\n2\n1 0\n0 1\n' '15'
run_case $'1\n7 3\n3\n0 0\n0 0\n0 0\n' '0'

printf 'All Balloon Cost tests passed.\n'
