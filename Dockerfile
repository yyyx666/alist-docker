from openlistteam/openlist:v4.0.2-aio

RUN apk update && \
    apk add --no-cache nginx && \
    mkdir -p /run/nginx && \
    ln -sf /dev/stdout /var/log/nginx/access.log && \
    ln -sf /dev/stderr /var/log/nginx/error.log
	
copy nginx.conf /etc/nginx/nginx.conf
run chmod 777 /etc/nginx/nginx.conf
from openlistteam/openlist:v4.0.2-aio

RUN apk update && \
    apk add --no-cache nginx && \
    mkdir -p /run/nginx && \
    ln -sf /dev/stdout /var/log/nginx/access.log && \
    ln -sf /dev/stderr /var/log/nginx/error.log
	
copy nginx.conf /etc/nginx/nginx.conf
run chmod 777 /etc/nginx/nginx.conf

run mkdir -p /var/lib/nginx && chmod 777 /var/lib/nginx
run mkdir -p /var/log &&  chmod 777 /var/log
RUN  mkdir -p /etc/nginx && mkdir -p /var/run &&  chmod 777 -R /var && chmod 777 -R /etc/nginx && chmod 777 -R /var/run
run mkdir -p /var/log/nginx
run touch /var/log/nginx/access.log && chmod 777 /var/log/nginx/access.log
run chmod 777 /var/log/nginx


run apk add curl wget
copy download.sh /download.sh
run chmod +x /download.sh

copy entrypoint.sh /entrypoint.sh
run chmod +x /entrypoint.sh

run sed -i "1r /download.sh" /entrypoint.sh
run mkdir -p /opt/aria2/.aria2 && mkdir -p /opt/openlist/data
run chmod 777 /opt/aria2/.aria2 && chmod 777 /opt/aria2 && chmod 777 /opt/openlist/data

run mkdir /opt/openlist/data/temp
run chmod 777 /opt/openlist/data/temp



run apk add curl wget
copy download.sh /download.sh
run chmod +x /download.sh

copy entrypoint.sh /entrypoint.sh
run chmod +x /entrypoint.sh

run sed -i "1r /download.sh" /entrypoint.sh
run mkdir -p /opt/aria2/.aria2 && mkdir -p /opt/openlist/data
run chmod 777 /opt/aria2/.aria2 && chmod 777 /opt/aria2 && chmod 777 /opt/openlist/data

run mkdir /opt/openlist/data/temp
run chmod 777 /opt/openlist/data/temp
