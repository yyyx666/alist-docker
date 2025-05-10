from xhofe/alist:v3.44.0-aio
run apt-get install curl wget
copy download.sh /download.sh
run chmod +x /download.sh
cmd /download.sh && /entrypoint.sh
