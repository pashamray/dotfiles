#!/bin/bash

source ~/.scripts/scrot/.env

DIR_SCREENS=~/Screenshots
FILE_NAME=$(date +%Y-%m-%d)_$(mktemp -u XXXXXX).png
FILE_PATH=$DIR_SCREENS/$FILE_NAME

COPY=$SERVER_HTTP/$USER/$FILE_NAME
NOTIFY="$FILE_NAME Screenshot upload to ftp and copy to clipboard"

scrot $FILE_PATH -s && \
curl -T $FILE_PATH $SERVER_FTP --user $USER:$SECRET && \
echo $COPY | xclip -selection c && \
notify-send "$NOTIFY" 
