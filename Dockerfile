FROM nginx:1.13-alpine

ADD app /usr/share/nginx/html

RUN usermod -u 1000 www-data

EXPOSE 80
STOPSIGNAL SIGTERM
CMD ["nginx", "-g", "daemon off;"]