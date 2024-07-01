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

# binds
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

# git
alias gaa='git add --all'
alias gc='git commit -m'
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
