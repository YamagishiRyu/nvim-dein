# Shell Setting
export EDITOR=zsh
export PROMPT_COMMAND="echo"
export FZF_DEFAULT_COMMAND='fd --type f --strip-cwd-prefix'
export FZF_BASE="/usr/local/bin/fzf"
export LANG=en_US.UTF-8 ## Vimでコピーした時に文字化けしないようにする
set -o vi
export PATH="~/.local/bin:/usr/local/bin:/usr/bin:/usr/local/sbin:$PATH"
export PATH="$HOME/Library/Python/2.7/bin:$PATH"
export PATH="/usr/local/opt/mysql-client/bin:$PATH"
export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"
export GOPATH="$HOME/go"
export PATH="$GOPATH/bin:$PATH"
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="$HOME/.nodenv/bin:$PATH"
# export PATH="/opt/homebrew/bin:$PATH" # path for M1 mac
export eval

# history setting
export HISTFILE="~/.zshhistory"
export HISTSIZE=10000
export SAVEHIST=100000
setopt hist_ignore_dups

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
alias gal='git add . && git commit'
alias gcb='git checkout -b'
alias gck='git checkout'
alias gcm='git checkout $(git symbolic-ref refs/remotes/origin/HEAD | sed 's@^refs/remotes/origin/@@')'
alias gcd='git checkout develop'
alias gd='git diff'
alias gp='git pull'
alias gl='git log'
alias ghp='gh pr create -w'
alias rr='bundle exec rails'
alias doc='docker-compose'
alias hs='history | grep ssh'
alias ca='conda activate'
alias ll='ls -la'
alias -g nt='&& osascript ~/.config/notification.scpt'
alias bu='bundle install -j4'
alias sd='kube sb sh -d bundle exec rails c'
alias qd='kube qa sh -d bundle exec rails c'
alias sp='bundle exec rspec -f p'

# library setting
# eval "$(/opt/homebrew/bin/brew shellenv)" # path for M1 mac
eval "$(gh completion -s zsh)"
eval "$(direnv hook zsh)"
eval "$(nodenv init -)"
# eval "$(rbenv init -)"
eval "$(pyenv init -)"
# for rye
. "$HOME/.rye/env"
source ~/.local/z/z.sh
eval "$(/usr/libexec/path_helper)"

source ~/.bash_functions

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/yamagishiryu/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/yamagishiryu/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/yamagishiryu/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/yamagishiryu/google-cloud-sdk/completion.zsh.inc'; fi
