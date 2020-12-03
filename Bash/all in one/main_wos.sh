#!/bin/bash
#without spaces
while read; do
        [ "$REPLY" = exit ] && echo bye && exit
        [[ "$REPLY" =~ ^([0-9.]+)(\*\*|[/*+-])([0-9]*\.?)$ ]] && echo $((REPLY))
        printf '%.1f' "$( printf '%.1g' "0.5+0.5" )"
done
echo error
