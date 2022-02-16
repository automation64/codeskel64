#!/bin/bash

string='01234567890abcdefgh'

printf '1.1 {string:0}: [%s]\n' "${string:0}"
printf '1.2 {string:7}: [%s]\n' "${string:7}"
printf '2.1 {string:7:0}: [%s]\n' "${string:7:0}"
printf '2.2 {string:7:2}: [%s]\n' "${string:7:2}"
printf '2.3 {string:0:2}: [%s]\n' "${string:0:2}"
printf '2.4 {string:7:-2}: [%s]\n' "${string:7:-2}"
printf '3.1 {string:-7}: [%s]\n' "${string:-7}"
printf '4.1 {string:-7:0}: [%s]\n' "${string:-7:0}"
printf '4.2 {string:-7:2}: [%s]\n' "${string:-7:2}"
printf '4.3 {string:-7:-2}: [%s]\n' "${string:-7:-2}"