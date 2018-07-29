#!/bin/bash

if ! command -v hugo; then
	echo "Please install hugo: apt-get install -y hugo / dnf install -y hugo / brew install hugo"
	exit 1
fi
hugo
