#!/bin/bash

declare -A dests
dests=(
    # i3 window manager
    [i3wm/config]="../.config/i3/config"
    [i3wm/i3status.conf]="../.config/i3/i3status.conf"
    
    # rofi menu
    [rofi/config]="../.config/rofi/config"
    [rofi/theme.rasi]="../.config/rofi/theme.rasi"
    
    # neovim
    [neovim/init.vim]="../.config/nvim/init.vim"

    # xfce-terminal
    [xfce4-terminal/terminalrc]="../.config/xfce4/terminal/terminalrc"

    # scripts
    [scripts/rofigen.sh]="../.scripts/rofigen.sh"
    [scripts/i3-shortcuts.sh]="../.scripts/i3-shortcuts.sh" 
)
