#!/usr/bin/env bash

# gitfolio -> https://github.com/imfunniee/gitfolio
#  install -> $ npm i -g gitfolio

# out dir is git root + `docs/`
OUT_DIR="$(git rev-parse --show-toplevel)/docs" 
LINKEDIN="matt-blessed-9a3b719b"

gitfolio build blesson3 --theme dark --order desc --linkedin "${LINKEDIN}"

# move to destination dir
mkdir -p "${OUT_DIR}"
mv ./dist/* "${OUT_DIR}"
rm -rf ./dist
