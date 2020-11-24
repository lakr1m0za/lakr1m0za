#!/bin/bash
function checkNumber {
    regExp='^[+-]?([0-9]+\.?|[0-9]*\.[0-9]+)(\*\*|[/*+-])([0-9]+\.?|[0-9]*\.[0-9]+)$'
    if [[ $testNo =~ $regExp ]]
    then
        printf '%.1f' "$((10**3 * testNo))e-3"
        let check=1
    else
        echo $((testNo))
    fi
}
testNo=10/4
checkNumber
testNo=0.5+0.5
checkNumber
testNo=.5*.5
checkNumber