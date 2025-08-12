@echo off
docker-compose down

rem build do backend image
docker build -t cep:latest .

rem start environment
docker-compose up --build --force-recreate