#!/bin/sh

#--- Dev Session ---
tmux new-session -d -s "dev" -n "nvim" -c "~/.config/nvim"
tmux new-window "dev:1" -n "ouro" -c "/Users/rickbordelon/Documents/Projects/Ouro"
tmux new-window "dev:2" -n "dotfiles" -c "/Users/rickbordelon/Documents/Projects/dotfiles"

#--- Mobile Session ---
tmux new-session -d -s "mobile" -n "api" -c "/Users/rickbordelon/Documents/Projects/redsail-mobile-mono/legacy/PioneerRx.Mobile.Api"
tmux new-window "mobile:1" -n "mobile" -c "/Users/rickbordelon/Documents/Projects/redsail-mobile-mono"

#--- RxLocal Session ---
tmux new-session "rxlocal" -n "work" -c "/Users/rickbordelon/Documents/Projects/rxlocal-workspace"
tmux new-window "rxlocal:1" -n "ouro" -c "/Users/rickbordelon/Documents/Projects/Ouro"
