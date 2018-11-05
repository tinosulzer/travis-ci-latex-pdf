#!/usr/bin/env bash

# Workaround, see https://github.com/tectonic-typesetting/tectonic/issues/131
sudo mkdir -p ~/.config/Tectonic/
echo "[[default_bundles]]" | sudo tee --append ~/.config/Tectonic/config.toml
sudo echo "url = \"https://tectonic.newton.cx/bundles/tlextras-2018.1r0/bundle.tar\"" | sudo tee --append ~/.config/Tectonic/config.toml

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
tectonic --keep-intermediates --reruns 0 ./main.tex
if [ -f "main.bcf" ]; then biber main; fi
#tectonic --keep-intermediates ./main.tex
#makeindex ./main.idx