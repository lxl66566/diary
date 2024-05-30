#!/bin/bash

set -euxo pipefail

git-se e

result=$(find diary images -name '*.md' | wc -l)
if [ $result -gt 0 ]; then
    printf "there should be no *.md files in diary and images\nbut found %d\n" $result
    exit 1
fi

git commit -m $(date "+%Y%m%d-%H:%M:%S")
git push git@github.com:lxl66566/diary.git main