# Shell Setting
export EDITOR=zsh
export PROMPT_COMMAND="echo"
export FZF_DEFAULT_COMMAND='rg --files --hidden --no-ignore-vcs --follow --glob "!.git/*"'
set -o vi
export PATH=~/.local/bin:$PATH
export PATH="$HOME/.anyenv/bin:$PATH"
export PATH="$HOME/Library/Python/2.7/bin:$PATH"

# alias setting
alias vi='nvim'
alias vf='vi $(fzf --preview "cat {}")'
alias ba='vi ~/.config/.bash_profile'
alias pa='vi ~/.config/dein/plugins.toml'
alias gs='git status'
# alias ga='git add'
alias gu='git push -u origin'
alias gb='git branch'
alias gc='git commit'
alias gcb='git checkout -b'
alias gck='git checkout'
alias gcm='git checkout master'
alias gcd='git checkout develop'
alias gp='git pull'
alias gl='git log'
alias ghp='gh pr create -w'
alias rr='bundle exec rails'
alias doc='docker-compose'
alias hs='history | grep ssh'
alias ca='conda activate'
alias ll='ls -la'

# library setting
eval "$(gh completion -s zsh)"
eval "$(direnv hook zsh)"
eval "$(anyenv init -)"
eval "$(/usr/libexec/path_helper)"
source /Users/yamagishiryu/.local/z/z.sh
source ~/.bash_functions
source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc'
source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc'
