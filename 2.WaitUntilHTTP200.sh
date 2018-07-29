#!/bin/bash
URL="http://host.docker.internal:8080/auth/realms/master/.well-known/openid-configuration"

# Waiting until HTTP 200
until [ "$(curl -sL -w "%{http_code}\\n" $URL -o /dev/null)" == "200" ]
do
    echo "$(date) - still trying to connect to $URL"
    sleep 5
done