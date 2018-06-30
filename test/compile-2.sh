#!/usr/bin/env bash

# This file is used for testing this repo, replacing the corresponding .travis.yml which cannot be included.

source ${TRAVIS_BUILD_DIR}/2-texlive-pdflatex/texlive_install.sh

pdflatex ${TRAVIS_BUILD_DIR}/src/main.tex
pdflatex ${TRAVIS_BUILD_DIR}/src/main.tex
