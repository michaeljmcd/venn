#!/bin/sh

# See: https://github.com/tonsky/uberdeps

mkdir -p classes
rm -rf classes/*
clj -e "(compile 'venn.core)"
clj -A:uberjar --main-class venn.core

# See: https://github.com/oracle/graal/issues/1265
native-image -Dclojure.compiler.direct-linking=true -jar target/venn.jar --no-fallback --report-unsupported-elements-at-runtime --initialize-at-build-time --enable-url-protocols=http,https

#mv venn target/
