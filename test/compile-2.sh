#!/usr/bin/env bash

# This file is used for testing this repo, replacing the corresponding .travis.yml which cannot be included.

source ../2-texlive-pdflatex/texlive_install.sh

travis_wait 3 pdflatex ../src/main.tex
travis_wait 3 pdflatex ../src/main.tex
