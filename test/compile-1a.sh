#!/usr/bin/env bash

# Copied from 1a-tectonic-docker/.travis.yml without comments
# Add explicit bundle link, see https://github.com/tectonic-typesetting/tectonic/issues/131
docker run --mount src=$TRAVIS_BUILD_DIR/src,target=/usr/src/tex,type=bind dxjoke/tectonic-docker /bin/sh -c "tectonic --keep-intermediates --reruns 0 biber-mwe.tex; biber biber-mwe; tectonic biber-mwe.tex; tectonic --web-bundle "https://tectonic.newton.cx/bundles/tlextras-2018.1r0/bundle.tar" main.tex"
