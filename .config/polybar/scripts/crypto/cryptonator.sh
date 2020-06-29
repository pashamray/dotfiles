#!/bin/bash

API_URL="https://api.cryptonator.com/api/ticker/$1-usd"

curl -s $API_URL | jq -r '.ticker | .price' | awk '{print int($1)}' 
