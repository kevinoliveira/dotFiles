#!/bin/bash

title="i3 shortcuts:"
widthpercent=33

typeset -A menu
menu=(
    [1 bar toggle]="i3-msg bar mode toggle"
    [2 toggle sticky]="i3-msg [con_id=\"__focused__\"] sticky toggle"
)

typeset -A colors
colors=(
    [-color-window]="#0000ff, #ffffff, #ffffff"
    [-color-normal]="#ffffff, #000000, #eee8d5, #000473, #ffffff"
)

