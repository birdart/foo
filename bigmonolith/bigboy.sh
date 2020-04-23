#!/usr/bin/env bash

rm -rf docs
mkdir -p docs
cd docs
for i in $(seq 100) ; do
  dd if=/usr/share/dict/words of=doc${i} bs=1MB count=16
done

cd ..
du -hs docs/
