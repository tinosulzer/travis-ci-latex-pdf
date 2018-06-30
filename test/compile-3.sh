#!/usr/bin/env bash

source ${TRAVIS_BUILD_DIR}/3-tinytex/install_texlive.R
Rscript -e 'tinytex::pdflatex("src/main.tex", bib_engine = "biber")'

cd ${TRAVIS_BUILD_DIR}/src/