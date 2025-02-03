#!/bin/bash

docker compose up -d --build
docker exec -it project-api composer install
cp example.env .env
curl http://localhost:80/api/v1/demo