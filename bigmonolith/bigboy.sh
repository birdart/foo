#!/usr/bin/env bash

rm -rf docs
mkdir -p docs
cd docs
for i in $(seq 10) ; do
  dd if=/dev/random of=doc${i} bs=1MB count=16
done

cd ..
du -hs docs/
