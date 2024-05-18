#!/bin/bash

set -euxo pipefail

git-se e
git commit -m $(date "+%Y%m%d-%H:%M:%S")
git push git@github.com:lxl66566/diary.git main
git push git@github.com:absxsfriends/diary.git main