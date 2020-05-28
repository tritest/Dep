#!/bin/bash

mkdir deploy

cd Themes

for f in *; do
  if [ -d ${f} ]; then
    cd $f
    /usr/bin/rcc --binary theme.qrc -o ../../deploy/$f.rcc
    cd ..
  fi
done
