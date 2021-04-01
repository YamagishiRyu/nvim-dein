# Setup fzf
# ---------
if [[ ! "$PATH" == */Users/wantedly369/.cache/dein/repos/github.com/junegunn/fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/Users/wantedly369/.cache/dein/repos/github.com/junegunn/fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/Users/wantedly369/.cache/dein/repos/github.com/junegunn/fzf/shell/completion.bash" 2> /dev/null

# Key bindings
# ------------
source "/Users/wantedly369/.cache/dein/repos/github.com/junegunn/fzf/shell/key-bindings.bash"
