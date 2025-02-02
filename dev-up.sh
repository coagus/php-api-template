docker compose up -d
docker exec -it project-api composer install
cp example.env .env
curl http://localhost/api/v1/demo