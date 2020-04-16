#!/bin/bash

# install Go
echo "Installing Go..."
curl -sSOL https://dl.google.com/go/go1.13.linux-amd64.tar.gz
tar -C /usr/local -xzf go1.13.linux-amd64.tar.gz
export PATH=$PATH:/usr/local/go/bin

echo "Hugo current version:"
hugo version

# install Hugo
echo "Installing Hugo 0.69.0..."
curl -sSOL https://github.com/gohugoio/hugo/releases/download/v0.69.0/hugo_0.69.0_Linux-64bit.tar.gz
tar -xzf hugo_0.69.0_Linux-64bit.tar.gz

./hugo version

git submodule update

# run Hugo
echo "Building site..."
./hugo --gc --minify
