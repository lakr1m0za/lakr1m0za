#!/bin/bash
#with spaces
while read; do
        [ "$REPLY" = exit ] && echo bye && exit
        [[ "$REPLY" =~ ^-?[0-9]+\ (\*\*|[/*+-])\ -?[0-9]+$ ]] && echo $((REPLY))
done
echo error
