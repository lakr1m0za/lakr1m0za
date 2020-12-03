#!/bin/bash
#with spaces
while read; do
        [ "$REPLY" = exit ] && echo bye && exit
        [[ "$REPLY" =~ ^-?[0-9.]+\ (\*\*|[/*+-])\ -?[0-9.]+$ ]] && echo $((REPLY))
        printf %.1f "$((10**3 * 10 / 4))e-3"
done
echo error
