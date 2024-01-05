# zsh
export ZSH="$HOME/.config/zsh"

autoload -U promptinit; promptinit

# source plugins local
source "$ZSH/plugins/archlinux.plugin.zsh"

source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

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
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
