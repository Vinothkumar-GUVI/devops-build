# Stage 2: Serve
FROM nginx:alpine
COPY build/ /usr/share/nginx/html
EXPOSE 80
ENTRYPOINT ["nginx", "-g", "daemon off;"]
