#!/bin/sh

function devspace() {
  case "$1" in
    mobile)
      cd ~/www/colab/devspace/devspace-app && code .
    ;;
    api)
      cd ~/www/colab/devspace/devspace-api && code .
    ;;
    landing)
      cd ~/www/colab/devspace/devspace-landing && code .
    ;;
    *)
      echo "Projeto inválido" && cd ~/
    ;;
    esac
}