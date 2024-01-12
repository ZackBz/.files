# zsh
export ZSH="$HOME/.config/zsh"
export GOPATH="$HOME/go/bin"
export PATH="$GOPATH:$PATH"

autoload -U promptinit; promptinit


#functions

function current_branch() {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo ${ref#refs/heads/}
}

# source plugins local
source "$ZSH/plugins/archlinux.plugin.zsh"

source "$ZSH/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh"

# aliases
alias zshconfig='vim ~/.zshrc'
alias tmuxconfig='vim ~/.config/tmux/tmux.conf'
alias tmuxks='tmux kill-session'
alias tmuxksa='tmux kill-session -a'
alias sail='[ -f sail ] && sh sail || sh vendor/bin/sail'
alias tinker='php artisan tinker'
alias artisan='php artisan'
alias pint='./vendor/bin/pint'
alias config='/usr/bin/git --git-dir=$HOME/.files/ --work-tree=$HOME'
alias snow='cd ~/code/snowlabs'

# git

alias gaa='git add --all'
alias gc='git commit -m'
alias ggl= "git pull origin $(current_branch)"
alias ggp="git push origin $(current_branch)"
alias gs='git status'

# style
zstyle :prompt:pure:git:stash show yes

# helpers
routes () {
        if [[ ! -n $1 ]]
        then
                php artisan route:list
        else
                php artisan route:list | grep -i "$1"
        fi
}

# set prompt
prompt pure

# needs to be sourced at EOF
source "$ZSH/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
