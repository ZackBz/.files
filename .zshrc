# zsh
export ZSH="$HOME/.config/zsh"

autoload -U promptinit; promptinit
prompt pure

# source

source "$ZSH/plugins/archlinux.plugin.zsh"

# aliases
alias zshconfig='vim ~/.zshrc'
alias tmuxconfig='vim ~/.config/tmux/tmux.conf'
alias sail='[ -f sail ] && sh sail || sh vendor/bin/sail'
alias tinker='php artisan tinker'
alias artisan='php artisan'
alias pint='./vendor/bin/pint'
alias config='/usr/bin/git --git-dir=$HOME/.files/ --work-tree=$HOME'

routes () {
        if [[ ! -n $1 ]]
        then
                php artisan route:list
        else
                php artisan route:list | grep -i "$1"
        fi
}
