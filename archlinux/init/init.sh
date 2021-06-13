#!/bin/bash -e

for file in common/*.sh; do
  "$file"
done
