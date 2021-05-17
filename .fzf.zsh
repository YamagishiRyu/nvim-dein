# Setup fzf
# ---------
if [[ ! "$PATH" == */Users/ryu/.cache/dein/repos/github.com/junegunn/fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/Users/ryu/.cache/dein/repos/github.com/junegunn/fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/Users/ryu/.cache/dein/repos/github.com/junegunn/fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/Users/ryu/.cache/dein/repos/github.com/junegunn/fzf/shell/key-bindings.zsh"
