#!/bin/bash

function read_lines() {
  while read -r line; do
    echo $line
  done
}

echo '1 ##
2 2
3 qweqwe
4 qwe qw e as da sd asd as d qwe qw eq w asd a sd asd as das d
5 \ / !@#$%^&*()_+-=[]{}
6 $$ $! $HOSTNAME
7 $ > <' | read_lines

