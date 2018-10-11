#!/usr/bin/env bash

# Copied from 1a-tectonic-docker/.travis.yml without comments
docker pull dxjoke/tectonic-docker
docker run --mount src=$TRAVIS_BUILD_DIR/src,target=/usr/src/tex,type=bind dxjoke/tectonic-docker /bin/sh -c "tectonic --keep-intermediates --reruns 0 biber-mwe.tex; biber biber-mwe; tectonic biber-mwe.tex; tectonic main.tex"
