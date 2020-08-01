#!/bin/sh

function initProject() {
  echo -n "Onde deseja criar o projeto? (P)essoal/(H)eppier/(D)evSpace/(S)air: "  
  read dist 
  
  case "$dist" in
    p|P)
      echo -n "Qual o nome do projeto? "
      read proj
      cd ~/www/opensource/ && mkdir $proj && cd ~/www/opensource/$proj && echo "# ${(C)proj}" >> README.md && code .
    ;;
    h|H)
      echo -n "Qual o nome do projeto? "
      read proj
      cd ~/www/colab/heppier/ && gh repo create heppier/heppier-$proj && cd ~/www/colab/heppier/heppier-$proj && echo "# ${(C)proj}" >> README.md && code .
    ;;
    d|D)
      echo -n "Qual o nome do projeto? "
      read proj
      cd ~/www/colab/devspace/ && gh repo create devspace/devspace-$proj && cd ~/www/colab/devspace/devspace-$proj && echo "# ${(C)proj}" >> README.md && code .
    ;;
    s|S)
      echo "Saindo..." && cd ~/
    ;;
    *)
      echo "Opção inválida" && cd ~/
    ;;
    esac
}
