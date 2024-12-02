echo "Docker compose Up..."


if [ "$(docker inspect crud-node-express-app-1 --format '{{.State.Status}}')" = "running" ]; then
    echo "the container is running!"
else
  echo "Docker Compose is not running. Starting it now..."
  docker compose up -d
fi

echo "Docker compose check complete."

# command ./docker-compose-check.sh
