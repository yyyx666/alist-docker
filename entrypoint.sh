#!/bin/sh

umask ${UMASK}
nginx
if [ "$1" = "version" ]; then
  ./openlist version
else
  if [ "$RUN_ARIA2" = "true" ]; then
     
    nohup aria2c \
      --enable-rpc \
      --rpc-allow-origin-all \
      --conf-path=/opt/aria2/.aria2/aria2.conf \
      >/dev/null 2>&1 &
  fi

  
  ./openlist server --no-prefix
fi
