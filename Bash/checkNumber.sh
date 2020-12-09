#!/bin/bash

source addition.sh
source subtraction.sh
source multiplication.sh
source division.sh

function checkNumber {
    regExp='^[+-]?([0-9]*|[0-9]*\.[0-9]*)([\/*+-])([0-9]*|[0-9]*\.[0-9]*)$'
    if [[ $REPLY =~ $regExp ]]; then
        n2=`echo "$REPLY" | sed 's/[0-9.]//g'`
        n1=`echo "$REPLY" | cut -f1 -d$n2`
        n3=`echo "$REPLY" | cut -f2 -d$n2`
        if [[ "$n2" == "+" ]]; then
            addition
        elif [[ $n2 == "-" ]]; then
            subtraction
        elif [[ $n2 == "/" ]]; then
            division
        else
            multiplication
        fi
        echo exit 0
    else
        echo error 128
    fi
}