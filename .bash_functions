# file search
fzf-z-search() {
  local res=$(z | sort -rn | cut -c 12- | fzf)
  if [ -n "$res" ]; then
      cd "$res"
  else
      return 1
  fi
}
alias ff=fzf-z-search

function gadd() {
    local selected
    selected=$(git status -s | fzf -m --ansi --preview="echo {} | awk '{print \$2}' | xargs git diff --color" --preview-window top:70% | awk '{print $2}')
    if [[ -n "$selected" ]]; then
        echo -n $selected | xargs git add
        selected=$(echo -n "$selected" | tr '\n' ' ')
        echo "Completed: git add $selected"
    fi
}
alias ga=gadd

fzf-ls-search() {
  local res=$(ls | fzf)
  if [ -n "$res" ]; then
    cd "$res"
  else
    return 1
  fi
}
alias lf=fzf-ls-search

fco_preview() {
  local tags branches target
  branches=$(
    git --no-pager branch --all \
      --format="%(if)%(HEAD)%(then)%(else)%(if:equals=HEAD)%(refname:strip=3)%(then)%(else)%1B[0;34;1mbranch%09%1B[m%(refname:short)%(end)%(end)" \
    | sed '/^$/d') || return
  tags=$(
    git --no-pager tag | awk '{print "\x1b[35;1mtag\x1b[m\t" $1}') || return
  target=$(
    (echo "$branches"; echo "$tags") |
    fzf --no-hscroll --no-multi -n 2 \
        --ansi --preview="git --no-pager log -150 --pretty=format:%s '..{2}'") || return
  git checkout $(awk '{print $2}' <<<"$target" )
}
alias gckb=fco_preview
