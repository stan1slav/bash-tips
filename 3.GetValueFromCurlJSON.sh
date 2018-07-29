#!/bin/bash
URL=http://host.docker.internal:8080/auth/realms/master/protocol/openid-connect/token
DATA="username=admin&password=admin&grant_type=password&client_id=admin-cli&client_secret=7f2fc8e5-f01c-471b-b981-ef7534041790"
ATTR_NAME="access_token"

# Get JWT token
TOKEN=$(curl -ss -d "$DATA" -H "Content-Type: application/x-www-form-urlencoded" -X POST $URL | grep -o "\"$ATTR_NAME\":\"[^\"]*\"" | cut -d'"' -f4) 
echo $TOKEN