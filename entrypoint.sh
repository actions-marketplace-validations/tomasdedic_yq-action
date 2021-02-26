#!/bin/sh -l
echo "::set-output name=image_tag::${steps.prep.output.tags}"
sh -c $1

