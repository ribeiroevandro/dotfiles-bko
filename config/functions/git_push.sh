#!/bin/sh

function gpush() {
  current=`git branch --show-current`

  echo -n "Deseja adicionar todas as alterações corrente? (Y/n): "
  read addAll

  case "$addAll" in
    n|N)
      echo "Adicione manualmente as alterações que deseja enviar."
    ;;
    y|Y)
      echo -n "Qual a mensagem do commit? "
      read commitMsg

      echo -n "Deseja commitar e já enviar? (Y/n): "
      read sendNow

      case "$sendNow" in
        y|Y)
          git add --All && git ci -m $commitMsg && git push origin $current
        ;;
        n|N)
          echo -n "Qual a mensagem do commit? "
          read commitMsg
          git add --All && git ci -m $commitMsg
          echo "Commit realizado com sucesso! Bom trabalho"
        ;;
    *)
      echo "Opção inválida"
    ;;
    esac
}