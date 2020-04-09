#!/bin/bash

mkdir -p "$HOME"/go/src/github.com/yasukei

VERSION=1.13
OS=linux
ARCH=amd64

sudo curl https://dl.google.com/go/go$VERSION.$OS-$ARCH.tar.gz | tar -C /usr/local -xz

