#!/bin/bash

source parse.sh

function division {
    parse $n1 $n3
    printf %.2f "$((10**2 * $n10 / $n30))e-2"
    printf "\n"
}