# path
export PATH=$PATH:/opt/homebrew/bin

# prompt
eval "$(starship init zsh)"


# aliases
alias zshconfig='nvim ~/.zshrc'
alias sail='[ -f sail ] && sh sail || sh vendor/bin/sail'
alias saila='sail artisan'
alias tinker='php artisan tinker'
alias artisan='php artisan'
alias config='cd ~/.config'
alias alacrittyc='nvim ~/.config/alacritty/alacritty.toml'

# functions
function current_branch() {
  ref=$(git symbolic-ref head 2> /dev/null) || return
  echo ${ref#refs/heads/}
}

# git
alias gaa='git add --all'
alias gc='git commit -m'
alias ggl= "git pull origin $(current_branch)"
alias ggp="git push origin $(current_branch)"
alias gs='git status'

# plugins
source ~/.config/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.config/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /home/zack/.config/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# bun completions
[ -s "/home/zack/.bun/_bun" ] && source "/home/zack/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
