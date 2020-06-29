#!/bin/bash

USER=moroz
PASS=$ecRet

DIR_SCREENS=~/Screenshots

SERVER_FTP=ftp://img.moroz.xyz
SERVER_HTTP=http://img.moroz.xyz

FILE_NAME=$(date +%Y-%m-%d)_$(mktemp -u XXXXXX).png
FILE_PATH=$DIR_SCREENS/$FILE_NAME

HTTP_LINK=$SERVER_HTTP/$USER/$FILE_NAME

function error() {
	MSG=$1

	notify-send "$MSG"
	exit -1;
}

scrot $FILE_PATH -s || error "Error create screenshot"
curl -T $FILE_PATH $SERVER_FTP --user $USER:$PASS || error "Error upload file to server"
echo $HTTP_LINK | clip -selection c || error "Error copy link to cliepboard"

notify-send "$FILE_NAME Screenshot upload to ftp and copy link to clipboard"
