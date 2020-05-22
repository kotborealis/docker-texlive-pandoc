#!/usr/bin/env bash

echo "installing pandoc 2.9.2.1"

curl -kL https://github.com/jgm/pandoc/releases/download/2.9.2.1/pandoc-2.9.2.1-linux-amd64.tar.gz \
    | tar -xz --strip-components=1 -C /usr/

echo "installing pandoc-crossref"

curl -kL https://github.com/lierdakil/pandoc-crossref/releases/download/v0.4.0.0-alpha6d/pandoc-crossref-Linux-2.9.2.1.tar.xz \
    | tar -xJ -C /usr/bin/
