FROM nginx:1.27-alpine

LABEL org.opencontainers.image.title="docker-test"
LABEL org.opencontainers.image.description="Simple static page served by Nginx that says Docker is working"
LABEL org.opencontainers.image.url="https://hub.docker.com/_/nginx"
LABEL org.opencontainers.image.source="https://example.com/docker-test"

# Copy the static site into Nginx's default web root
COPY web /usr/share/nginx/html
