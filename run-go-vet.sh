#!/usr/bin/env bash
set -ex

for dir in $(echo $@|xargs -n1 dirname|sort -u); do
  go vet ./$dir/...
done
