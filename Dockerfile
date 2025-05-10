from xhofe/alist:v3.44.0-aio
run apk add curl wget
copy download.sh /download.sh
run chmod +x /download.sh

copy entrypoint.sh /entrypoint.sh
run chmod +x /entrypoint.sh

run sed -i "1r /download.sh" /entrypoint.sh
run mkdir -p /opt/aria2/.aria2 && mkdir -p /opt/alist/data
run chmod 777 /opt/aria2/.aria2 && chmod 777 /opt/aria2 && chmod 777 /opt/alist/data

