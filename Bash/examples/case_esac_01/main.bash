#!/bin/bash

echo "1.1. multiple match"
case 5 in
  3|4|5) echo '3 4 5';;
  4|5) echo '4 5';;
  5) echo '5';;
  6) echo '6';;
  *) echo '*';;
esac