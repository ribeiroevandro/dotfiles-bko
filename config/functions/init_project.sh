#!/bin/sh

function initProject() {
  echo -n "Onde deseja criar o projeto? (D)evSpace/(H)eppier/(L)ocal/(P)essoal/(S)air: "  
  read dist 
  
  case "$dist" in
    d|D)
      echo -n "Qual o projeto? "
      read proj
      echo -n "Qual o nome do projeto? "
      read projname
      cd ~/www/colab/devspace/ && gh repo create devspaceapp/devspace-$proj && cd ~/www/colab/devspace/devspace-$proj && echo "# ${(C)projname}" >> README.md && code .
    ;;
    h|H)
      echo -n "Qual o projeto? "
      read proj
      echo -n "Qual o nome do projeto? "
      read projname
      cd ~/www/colab/heppier/ && gh repo create heppier/heppier-$proj && cd ~/www/colab/heppier/heppier-$proj && echo "# ${(C)projname}" >> README.md && code .
    ;;
    p|P)
      echo -n "Qual o projeto? "
      read proj
      echo -n "Qual o nome do projeto? "
      read projname
      cd ~/www/opensource/ && gh repo create $proj && cd ~/www/opensource/$proj && echo "# ${(C)proj}" >> README.md && code .
    ;;
    s|S)
      echo "Saindo..." && cd ~/
    ;;
    *)
      echo "Opção inválida" && cd ~/
    ;;
    esac
}