#!/bin/bash

# Iniciar servicios
docker compose up -d --build

# Instalar dependencias
docker exec -it project-api composer install 

# Copiar archivo .env
cp example.env .env

# Ejecutamos la demo
curl http://localhost:80/api/v1/demo

# Esperar a que el servicio de base de datos esté disponible
max_attempts=30
attempt=1
while [ $attempt -le $max_attempts ]; do
    response=$(curl -s http://localhost:80/api/v1/user)
    successful=$(echo $response | grep -o '"successful":[^,}]*' | grep -o '[^:]*$' | tr -d '[:space:]"')
    
    if [ "$successful" = "true" ]; then
        echo "Servicio disponible y conectado a la base de datos"
        break
    fi
    
    echo "Esperando que el servicio esté disponible... intento $attempt de $max_attempts"
    sleep 1
    attempt=$((attempt + 1))
done

if [ $attempt -gt $max_attempts ]; then
    echo "Error: No se pudo establecer conexión después de $max_attempts intentos"
    exit 1
fi

# Ejecutamos la base de datos
curl http://localhost:80/api/v1/user
