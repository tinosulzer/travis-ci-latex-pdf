#!/usr/bin/env bash

# This file is used for testing this repo, replacing the corresponding .travis.yml which cannot be included.

source ${TRAVIS_BUILD_DIR}/2-texlive-pdflatex/texlive_install.sh

travis_wait 3 pdflatex ${TRAVIS_BUILD_DIR}/src/main.tex
travis_wait 3 pdflatex ${TRAVIS_BUILD_DIR}/src/main.tex
