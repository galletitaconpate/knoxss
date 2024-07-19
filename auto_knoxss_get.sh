#!/bin/bash

API_KEY=""

while IFS= read -r url; do
    echo "Ejecutando Knoxss para $url"
    curl -X POST "https://api.knoxss.pro" \
         -d "target=$url" \
         -H "X-API-KEY: $API_KEY"
done < list.txt
