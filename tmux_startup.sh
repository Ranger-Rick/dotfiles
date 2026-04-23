devsession="dev"
autosession="auto"

#--- Dev Session ---
tmux new-session -d -s $devsession

tmux rename-window -t 0 'api'
tmux send-keys -t 'api' 'zsh' C-m
tmux send-keys -t 'api' 'cd /Users/rickbordelon/Documents/Projects/PioneerRx.Mobile.Api' C-m
tmux send-keys -t 'api' 'clear' C-m

tmux new-window -t $devsession:1 -n 'mobile'
tmux send-keys -t 'mobile' 'zsh' C-m
tmux send-keys -t 'mobile' 'cd /Users/rickbordelon/Documents/Projects/redsail-mobile-mono' C-m
tmux send-keys -t 'mobile' 'clear' C-m

tmux new-window -t $devsession:2 -n 'ouro'
tmux send-keys -t 'ouro' 'zsh' C-m
tmux send-keys -t 'ouro' 'cd /Users/rickbordelon/Documents/Projects/Ouro' C-m
tmux send-keys -t 'ouro' 'clear' C-m

tmux new-window -t $devsession:3 -n 'nvim'
tmux send-keys -t 'nvim' 'zsh' C-m
tmux send-keys -t 'nvim' 'cd ~/.config/nvim/' C-m
tmux send-keys -t 'nvim' 'clear' C-m

#--- Automation Session ---
tmux new-session -d -s $autosession
tmux rename-window -t 0 'auto'
tmux send-keys -t 'auto' 'zsh' C-m
tmux send-keys -t 'auto' 'cd ' C-m
tmux send-keys -t 'auto' 'cd /Users/rickbordelon/Documents/Projects/PioneerRxAutomation' C-m
tmux send-keys -t 'auto' 'source ~/py_envs/bin/activate' C-m
tmux send-keys -t 'auto' 'clear' C-m
