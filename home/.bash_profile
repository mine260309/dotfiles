#. ~/.bashrc

source ~/.profile
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# Deduplicate PATH while preserving first-seen order
PATH="$(printf '%s' "$PATH" | awk -v RS=: -v ORS=: '!seen[$0]++ && $0 != ""' | sed 's/:$//')"
export PATH
