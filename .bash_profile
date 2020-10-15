# PATH
# ruby
export PATH="$HOME/.rbenv/shims:$PATH"
# if which rbenv > /dev/null; then eval "(rbenv init -)"; fi
# eval "$(rbenv init -)"
export PATH=/Applications/Postgres.app/Contents/Versions/latest/bin:$PATH
# python
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
# go
export GOENV_ROOT="$HOME/.goenv"
export PATH="$GOENV_ROOT/bin:$PATH"
eval "$(goenv init -)"
export PATH="$GOPATH/bin:$PATH"
export CC=/usr/bin/clang
# nodenv
eval "$(nodenv init -)"
export PATH="$HOME/.nodenv/shims:$PATH"
#nodebrew
# export PATH=$HOME/.nodebrew/current/bin:$PATH
# node_modules
export NODE_PATH="/Users/yamagishiryu/.nodebrew/node/v11.1.0/lib/node_modules"

# Bash Setting
export PROMPT_COMMAND="echo"
export FZF_DEFAULT_COMMAND='rg --files --hidden --no-ignore-vcs --follow --glob "!.git/*"'
set -o vi
export PATH=~/.local/bin:$PATH

# alias setting
alias vi='nvim'
alias vf='vi $(fzf --preview "cat {}")'
alias ba='vi ~/.bash_profile'
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

eval "$(gh completion -s bash)"

source /Users/yamagishiryu/Documents/cloud_doc_for_macbook_pro/test/sh/z/z.sh
source ~/.bashrc
source ~/.bash_functions

export PATH="$HOME/.cargo/bin:$PATH"

# direnv
eval "$(direnv hook bash)"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/yamagishiryu/Downloads/google-cloud-sdk/path.bash.inc' ]; then . '/Users/yamagishiryu/Downloads/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/yamagishiryu/Downloads/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/yamagishiryu/Downloads/google-cloud-sdk/completion.bash.inc'; fi

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/yamagishiryu/.pyenv/versions/anaconda3-5.3.1/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/yamagishiryu/.pyenv/versions/anaconda3-5.3.1/etc/profile.d/conda.sh" ]; then
        . "/Users/yamagishiryu/.pyenv/versions/anaconda3-5.3.1/etc/profile.d/conda.sh"
    else
        export PATH="/Users/yamagishiryu/.pyenv/versions/anaconda3-5.3.1/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

