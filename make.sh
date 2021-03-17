docker build -t "permanent-debug-docker" .
docker run -p 25:22 -p 8080:8080 -d permanent-debug-docker
