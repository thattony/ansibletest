#!/bin/bash

echo -e "$(hostname)/$(hostname -I)"

path1=/tmp/nas/mount/point/xce/
path2=/tmp/another/nas/to/check/on/host/
path3=/tmp/nas/mount/point/xce1/
path4=/tmp/final/test/dir/to/check/

for path in $path1 $path2 $path3 $path4; do
  if [ -d $path ]; then
    status="\033[0;32mOK   \033[0m"
  else
    status="\033[0;31mERROR\033[0m"
  fi
echo -e "  $status - path exists? - '$path'"
done
