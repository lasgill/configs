if [ -z "$TMUX" ]; then
  exec tmux
fi

alias micro="env TERM=xterm-256color $(which micro)"

export VISUAL=micro
export EDITOR="$VISUAL"

export FZF_DEFAULT_OPTS="--reverse --height 50%"

[ -f ~/.fzf.bash ] && source ~/.fzf.bash


add_to_file_history () {
  local file="$(realpath $1)"
  sed -i "\:$file: d" ~/.file_history
  echo "$file" >> ~/.file_history
  echo "$(tail -n 100 ~/.file_history)" > ~/.file_history
}

openfile () {
  if [[ $# -eq 1 ]]; then
    local file=$(cd $1 && fzf)
  else
    local file=$(fzf)
  fi
  if [[ $file ]]; then
    add_to_file_history $file
    micro $file
  fi
}

openrecent () {
  local file=$(tac ~/.file_history | xargs realpath --relative-to=$(pwd) 2>/dev/null | fzf)
  if [[ $file ]]; then
    add_to_file_history $file
    micro $file
  fi
}

bind '"\C-o":"openfile\n"'
bind '"\C-p":"openrecent\n"'
