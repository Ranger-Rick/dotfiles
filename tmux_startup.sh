#!/bin/sh

#--- Dev Session ---
tmux new-session -d -s "dev" -n "nvim" -c "/Users/rickbordelon/.config/nvim"
tmux new-window -t "dev:1" -n "ouro" -c "/Users/rickbordelon/Documents/Projects/Ouro"
tmux new-window -t "dev:2" -n "dotfiles" -c "/Users/rickbordelon/Documents/Projects/dotfiles"

#--- Mobile Session ---
tmux new-session -d -s "mobile" -n "api" -c "/Users/rickbordelon/Documents/Projects/redsail-mobile-mono/legacy/PioneerRx.Mobile.Api"
tmux new-window -t "mobile:1" -n "mobile" -c "/Users/rickbordelon/Documents/Projects/redsail-mobile-mono"

#--- RxLocal Session ---
tmux new-session -d -s "rxlocal" -n "work" -c "/Users/rickbordelon/Documents/Projects/rxlocal-workspace"
