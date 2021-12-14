#!/bin/sh

function create() {
  cd ~/www/colab/devspace/ && gh repo create -p devspaceapp/teste devspaceapp/ds-$1 && cd ~/www/colab/devspace/ds-$1 && git pull origin main && code .
}