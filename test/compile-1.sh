#!/usr/bin/env bash

# Copied from 1b-tectonic-miniconda/.travis.yml without comments
sudo apt-get install texlive-binaries
export PATH="$HOME/miniconda/bin:$PATH"
if ! command -v conda > /dev/null; then
  wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh -O miniconda.sh;
  bash miniconda.sh -b -p $HOME/miniconda -u;
  conda config --add channels conda-forge;
  conda config --set always_yes yes;
  conda install tectonic==0.1.10;
fi
conda install -c malramsay biber==2.5 --yes
conda info -a

cd ${TRAVIS_BUILD_DIR}/src/
# Add explicit bundle link, see https://github.com/tectonic-typesetting/tectonic/issues/131
tectonic --keep-intermediates --reruns 0 --web-bundle "https://tectonic.newton.cx/bundles/tlextras-2018.1r0/bundle.tar" ./main.tex
if [ -f "main.bcf" ]; then biber main; fi
#tectonic --keep-intermediates ./main.tex
#makeindex ./main.idx