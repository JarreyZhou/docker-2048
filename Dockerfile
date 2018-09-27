FROM alpine:latest

RUN mkdir -p /run/nginx && apk --update add nginx && sed -i "s#return 404;#root   /usr/share/nginx/html;#g" /etc/nginx/conf.d/default.conf

COPY 2048 /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
