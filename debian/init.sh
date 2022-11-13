#!/bin/bash -e

case $(cat /etc/debian_version) in
  9*)
    for file in stretch/*.sh; do
      "$file"
    done
    for file in common/*.sh; do
      "$file"
    done
    ;;
  10*)
    for file in buster/*.sh; do
      "$file"
    done
    for file in common/*.sh; do
      "$file"
    done
    ;;
  11*)
    for file in bullseye/*.sh; do
      "$file"
    done
    for file in common/*.sh; do
      "$file"
    done
    ;;
  *)
    echo "Not supported."
    exit 1
    ;;
esac
