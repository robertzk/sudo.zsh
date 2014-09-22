# Esc-S to insert sudo in front of command
function prepend-sudo { # Insert "sudo " at the beginning of the line
  if [[ $BUFFER != "sudo "* ]]; then
    BUFFER="sudo $BUFFER"; CURSOR+=5
  fi
}
zle -N prepend-sudo

# Old code I couldn't get to work that may be useful to somebody
#[[ -n "$keyinfo[Control]" ]] && \
#  bindkey "$keyinfo[Control]s" prepend-sudo

# Note: requires vi key bindings in zsh!
bindkey -M vicmd '\es' prepend-sudo
