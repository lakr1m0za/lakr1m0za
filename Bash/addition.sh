#!/bin/bash

source parse.sh

function addition {
    parse $n1 $n3
    result=$(($n10 "+" $n30))
    printf %.2f "$((10**2 * $result/10))e-2"
    printf "\n"
}