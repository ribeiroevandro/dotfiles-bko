#!/bin/sh

function iBare() {
  expo install $1 && cd ios && pod install && cd ..
}