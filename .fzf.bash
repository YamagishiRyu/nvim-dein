# Setup fzf
# ---------
if [[ ! "$PATH" == */Users/yamagishiryu/.cache/dein/repos/github.com/junegunn/fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/Users/yamagishiryu/.cache/dein/repos/github.com/junegunn/fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/Users/yamagishiryu/.cache/dein/repos/github.com/junegunn/fzf/shell/completion.bash" 2> /dev/null

# Key bindings
# ------------
source "/Users/yamagishiryu/.cache/dein/repos/github.com/junegunn/fzf/shell/key-bindings.bash"
