FROM nginx:alpine
RUN rm -rf /docker-entrypoint.d/
COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY . /usr/share/nginx/html
EXPOSE 8000
CMD ["nginx", "-g", "daemon off;"]
