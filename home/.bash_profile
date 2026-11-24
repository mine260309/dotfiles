#. ~/.bashrc

source ~/.profile
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"


# Added by Antigravity CLI installer
export PATH="/home/mine/.local/bin:$PATH"
case ":$PATH:" in *:'/home/mine/.botmux/bin':*) ;; *) export PATH='/home/mine/.botmux/bin'":$PATH" ;; esac  # added by botmux installer
