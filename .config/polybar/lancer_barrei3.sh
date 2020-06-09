#!/bin/bash

killall -q polybar

while pgrep -u $UID -x polybar >/dev/null; do sleep1; done

polybar barre-i3-gauche &
polybar barre-i3-centre &
polybar barre-i3-droite &

