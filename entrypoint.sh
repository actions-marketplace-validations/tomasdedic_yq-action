#!/bin/sh -l
set -x
echo "image_tag ${image_tag}"
eval "$1"
