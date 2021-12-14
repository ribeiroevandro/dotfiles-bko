#!/bin/sh

function gfeat() {
  git cb feat-$1
}

function gfix() {
  git cb fix-$1
}

function gclone() {
  git clone $1 $2 && cd $2 && code .
}