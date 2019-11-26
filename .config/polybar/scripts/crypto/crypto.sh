#!/bin/bash

API_URL="https://api.coinmarketcap.com/v1/ticker/$1/"

curl -s $API_URL | jq -r '.[0] | .price_usd' | awk '{print int($1)}' 
