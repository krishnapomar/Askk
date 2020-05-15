FROM nginx:alpine

#!/bin/sh

## Remove default nginx index page
RUN rm -rf /usr/share/nginx/html/*

# Copy from the stahg 1
COPY . /usr/share/nginx/html/

COPY ./nginx/config-app.nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 4200 80

ENTRYPOINT ["nginx", "-g", "daemon off;"]