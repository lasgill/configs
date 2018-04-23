#!/usr/bin/env bash

while read f; do
    gsettings set org.gnome.desktop.wm.keybindings $f
done < gnome-keybindings

# while read f; do
    # gsettings set org.gnome.shell.keybindings $f
# done < gnome-shell keybindings
