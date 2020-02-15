#!/bin/bash

case $1 in
up)
    /usr/bin/amixer -q -c 0 sset 'Master' 5%+
    ;;
down)
    /usr/bin/amixer -q -c 0 sset 'Master' 5%-
    ;;
*)
    /usr/bin/amixer -q -c 0 sset 'Master' toggle
    ;;
esac

CURVOL=`amixer get Master | awk '/Mono.+/ {print $6=="[off]"?$6:$4}' | tr -d '[]'`

notify-send "Volume: $CURVOL"
