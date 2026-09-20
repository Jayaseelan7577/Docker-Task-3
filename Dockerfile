FROM nginx:alpine

RUN mkdir -p /var/opt/nginx

COPY index.html /usr/share/nginx/html/index.html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
