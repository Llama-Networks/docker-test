# Dockerized static page (HTTP only)

A minimal, single-page static site served by Nginx inside a Docker container. The container is started with `docker run` (no Compose) and serves over HTTP.

## Quick start

```bash
# 1) Build the image
docker build -t docker-test .

# 2) Run the container on port 8080 (HTTP)
docker run --rm -d -p 8080:80 --name docker-test docker-test
```

Visit `http://localhost:8080` to see the page that says “Docker is working!” with a styled layout.

## Publish to Docker Hub (example)

Replace `your-username` with your Docker Hub handle and optionally adjust the tag.

```bash
# Login (once per machine/session)
docker login

# Build and tag for Hub
docker build -t your-username/docker-test:latest .

# Push the image
docker push your-username/docker-test:latest
```

You can also add a version tag (e.g., `:v1.0.0`) alongside `:latest` when pushing.

## Stop and clean up

```bash
docker stop docker-test
```

The container runs in the foreground if you omit `-d`; remove `--rm` if you want the container to persist after stopping.

## Notes

- Served via HTTP only (default Nginx port 80 mapped to 8080).
- Static files live in `web/index.html` and are copied into the image by the `Dockerfile`.
- No docker-compose is used—deployment is via `docker run` exclusively.
