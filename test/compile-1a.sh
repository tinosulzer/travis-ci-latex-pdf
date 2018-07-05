#!/usr/bin/env bash

# Copied from 1a-tectonic-docker/.travis.yml without comments
docker pull rekka/tectonic
docker run --mount src=$TRAVIS_BUILD_DIR/src,target=/usr/src/tex,type=bind rekka/tectonic tectonic main.tex
