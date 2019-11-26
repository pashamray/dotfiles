#!/bin/bash

API_CITY=$1
API_KEY=$(cat $(dirname "$0")/apikey)
API_URL="https://api.openweathermap.org/data/2.5/weather?q=$API_CITY&units=metric&APPID=$API_KEY"

curl -s $API_URL | jq -r '.main.temp'
