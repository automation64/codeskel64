#!/bin/bash

printf '1.1. $(( 1+1 ))= %s\n' $((1+1))

# decimals are note supported in bash
printf '1.2. $(( 1+1.1 ))= %s\n' $((1+1.1))

printf '2.1. $(( 2-1 ))= %s\n' $((2-1))
printf '2.2. $(( 2-4 ))= %s\n' $((2-4))

printf '3.1. $(( 2*5 ))= %s\n' $((2*5))

printf '4.1. $(( 10/2 ))= %s\n' $((10/2))
printf '4.2. $(( 10/3 ))= %s\n' $((10/3))
