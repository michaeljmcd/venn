#!/bin/sh

# See: https://github.com/tonsky/uberdeps

mkdir -p classes
rm -rf classes/*
clj -e "(compile 'venn.core)"
clj -A:uberjar --main-class venn.core

native-image -jar target/venn.jar
