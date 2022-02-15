FROM openresty/openresty:1.15.8.3-2-buster

ARG PORT

ADD . /root/server

RUN echo $PORT && sed -i -e 's/$PORT/'"$PORT"'/g' /root/server/nginx.conf

CMD ["/usr/local/openresty/nginx/sbin/nginx","-c","/root/server/nginx.conf","-p","/root/server/nginx","-g","daemon off;"]
