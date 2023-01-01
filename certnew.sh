#!/bin/bash
DOCKER_COMPOSE_BINARY=docker-compose
WORK_DIRECTORY=.
COMPOSE_FILENAME=docker-compose

read -e -p "Please input E-Mail:" EMAIL
#read -p "Please input WebRoot:" WEB_ROOT_PATH
read -e -p "Please input Domain name:" DOMAIN 
"$DOCKER_COMPOSE_BINARY" -f "$WORK_DIRECTORY"/"$COMPOSE_FILENAME".yml exec certbot certbot certonly --webroot --email "$EMAIL" --webroot-path /site/"$DOMAIN" --domains "$DOMAIN" --agree-tos --no-eff-email
