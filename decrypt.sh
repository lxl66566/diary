#!/usr/bin/env bash
# decrypt one file.

set -feuxo pipefail

if [ -z "$1" ]; then
    echo "Usage: $0 <pattern>"
    exit 1
fi

find diary images -wholename "*$1*" -print0 -exec git-se d {} \;