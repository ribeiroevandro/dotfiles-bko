#!/bin/sh

function newBranch() {
  git cb `tr -s ' ' '-' <<< $1`
}