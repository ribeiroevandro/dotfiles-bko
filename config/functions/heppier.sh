#!/bin/sh

function heppier() {
  case "$1" in
    mobile)
      cd ~/www/colab/heppier/heppier-app && code .
    ;;
    api)
      cd ~/www/colab/heppier/heppier-api && code .
    ;;
    landing)
      cd ~/www/colab/heppier/heppier-landing && code .
    ;;
    *)
      echo "Projeto inválido" && cd ~/
    ;;
    esac
}
