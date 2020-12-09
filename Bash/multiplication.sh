#!/bin/bash

source parse.sh

function multiplication {
    parse $n1 $n3
    #result=$(($n10 $n2 $n30))
    printf %.2f "$((10**2 * $n10 * $n30 /100))e-2"
    printf "\n"
}