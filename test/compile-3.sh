#!/usr/bin/env bash
# Any subsequent commands which fail will cause the shell script to exit immediately
set -e

Rscript ${TRAVIS_BUILD_DIR}/3-tinytex/install_texlive.R
Rscript -e 'tinytex::pdflatex("src/main.tex", bib_engine = "biber")'
