#!/usr/bin/env bash

rm -rf docs
mkdir -p docs
cd docs
for i in $(seq 200) ; do
  cp /usr/share/dict/words doc-${i}
done
