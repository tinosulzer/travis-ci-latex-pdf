#!/usr/bin/env bash

docker run --mount src=$TRAVIS_BUILD_DIR/,target=/repo,type=bind strauman/travis-latexbuild:small