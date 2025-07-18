#  Aliases 
[[ -f ~/.zshrc-personal ]] && . ~/.zshrc-personal

# Add your configurations here
export EDITOR=nvim
export TERM=kitty

# For better vi mode integration
export KEYTIMEOUT=1
export VI_MODE_SET_CURSOR=true

# XDG compliance for tools
export CUDA_CACHE_PATH="$XDG_CACHE_HOME/nv"
export DOCKER_CONFIG="$XDG_CONFIG_HOME/docker"

#for not showing % at the end of cpp run files
PROMPT_EOL_MARK=''

_comp_options+=(globdots) # lets you tab complete hidden files by default

# fnm
if [[ -d "$HOME/.local/share/fnm" ]]; then
    export PATH="$HOME/.local/share/fnm:$PATH"
    eval "$(fnm env)"
fi

# zoxide
if command -v zoxide &> /dev/null; then
    eval "$(zoxide init zsh)"
fi
