#!/bin/bash

if ! command -v hugo; then
	echo "Please install hugo: apt-get install -y hugo / dnf install -y hugo / brew install hugo"
	exit 1
fi
CUR_DIR=$(dirname $(realpath ${BASH_SOURCE[0]:-$0}))
cd $CUR_DIR
hugo
for i in $(find $CUR_DIR/public); do dos2unix $i; done 2> /dev/null
cp -r $CUR_DIR/public/* $(realpath $CUR_DIR/../)

