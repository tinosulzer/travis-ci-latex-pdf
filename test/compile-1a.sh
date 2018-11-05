#!/usr/bin/env bash

# Workaround, see https://github.com/tectonic-typesetting/tectonic/issues/131
sudo mkdir -p ~/.config/Tectonic/
echo "[[default_bundles]]" | sudo tee --append ~/.config/Tectonic/config.toml
sudo echo "url = \"https://tectonic.newton.cx/bundles/tlextras-2018.1r0/bundle.tar\"" | sudo tee --append ~/.config/Tectonic/config.toml

# Copied from 1a-tectonic-docker/.travis.yml without comments
docker run --mount src=$TRAVIS_BUILD_DIR/src,target=/usr/src/tex,type=bind dxjoke/tectonic-docker /bin/sh -c "tectonic --keep-intermediates --reruns 0 biber-mwe.tex; biber biber-mwe; tectonic biber-mwe.tex; tectonic main.tex"
