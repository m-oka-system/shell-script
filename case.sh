#!/bin/bash

case $1 in
  a|A)
    echo "引数にaまたはAが入力されました";;
  b|B)
    echo "引数にbまたはBが入力されました";;
  *)
    echo "引数にa,A,b,B以外が入力されました";;
esac
