git add -A
git commit -m $(date "+%Y%m%d-%H:%M:%S")
git push -u origin images
exec /bin/bash