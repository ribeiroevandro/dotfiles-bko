#!/bin/sh

function ds() {
  if [ -z $1 ]; then
    cd ~/www/colab/devspace
  else
    cd ~/www/colab/devspace/devspace-$1
  fi
}