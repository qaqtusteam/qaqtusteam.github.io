#!/bin/bash

if ! command -v hugo; then
	echo "Please install hugo: apt-get install -y hugo / dnf install -y hugo / brew install hugo"
	exit 1
fi
CUR_DIR=$(dirname $(realpath ${BASH_SOURCE[0]:-$0}))
echo $CUR_DIR
cd $(realpath $CUR_DIR)
echo "Open in your browser: http://localhost:1313"
hugo server

