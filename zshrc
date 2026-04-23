clear
echo "Hello Rick! Let's get to work!"
export PS1="Rick Bordelon -->"

export EDITOR="nvim"

alias glear="clear; git branch"
alias gstatus="clear; git status"
alias gsur="git submodule update --remote"
alias lgit="lazygit"
alias oc="opencode"
alias localip="ipconfig getifaddr en0"
alias change-pw="git config --global credential.helper osxkeychain"

alias dpad="./run.sh --del -d \"\$(epad)\""
alias dand="./run.sh --del --android"

alias ghost-config="nvim $HOME/Library/Application\ Support/com.mitchellh.ghostty/config"
alias bash-config="nvim ~/.zshrc"
alias nvim-config="nvim ~/.config/nvim/init.lua"
alias tmux-config="nvim ~/.tmux.conf"

alias wstart="networksetup -setairportpower en0 on"
alias wstop="networksetup -setairportpower en0 off"

sc()
{
    echo -n "https://support.pioneerrx.com/SupportCenter/IssueEdit.aspx?IssueNumber=$1" | pbcopy
    echo "Copied issue $1 to your clipboard!"
}

mbs()
{
    echo -n "<you didn't say the magic word!>" | pbcopy
    echo "Copied the Mobile Build Server's address to your clipboard: <you didn't say the magic word!>"
    echo "Server:    <you didn't say the magic word!>"
    echo "Scrambled: 5041"
    echo "RPN1:      5042"
    echo "RPN2:      5043"
}
