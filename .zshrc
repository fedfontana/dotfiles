# Set PATH, MANPATH, etc., for Homebrew.
eval "$(/opt/homebrew/bin/brew shellenv)"

autoload -Uz compinit compdef colors
compinit
colors

# Some useful options (man zshoptions)
setopt auto_cd
setopt multios

# Disable beeping
#unsetopt BEEP

# History command configuration
# Remove unnecessary blanks before adding a command to the history
setopt hist_reduce_blanks
# Delete duplicates first when HISTFILE size exceeds HISTSIZE
setopt hist_expire_dups_first
# Ignore commands that start with space
setopt hist_ignore_space

# Allow extended pattern matching
setopt extendedglob
# Allow comments in terminal
setopt interactive_comments
#zle_highlight=('paste:none')

# completion stuff
#unsetopt menu_complete # do not autoselect the first completion entry
#setopt menu_complete
unsetopt flowcontrol
#setopt auto_menu # show completion menu on successive tab press
#setopt complete_in_word
setopt always_to_end

# Take advantage of $LS_COLORS for completion as well.
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"

zstyle ':completion:*' menu select
#zstyle ':completion::complete:lsof:*' menu yes select
#zmodload zsh/complist

# Include hidden files in completion menu
_comp_options+=(globdots)

# Match current imput to history items
bindkey "^[[A" history-beginning-search-backward
bindkey "^[[B" history-beginning-search-forward

export ZSHCONFIGDIR=$HOME/.config/zsh

# Useful Functions
source "$ZSHCONFIGDIR/zsh-functions"

# Normal files to source
zsh_add_file "zsh-exports"
zsh_add_file "zsh-aliases"

# Plugins
zsh_add_plugin "zsh-users/zsh-autosuggestions"
zsh_add_plugin "zsh-users/zsh-syntax-highlighting"
zsh_add_plugin "zsh-users/zsh-completions"
zsh_add_plugin "hlissner/zsh-autopair"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

eval "$(starship init zsh)"

# Setup fzf
if [[ ! "$PATH" == */opt/homebrew/opt/fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}/opt/homebrew/opt/fzf/bin"
fi
# Use fzf key bindings
source "/opt/homebrew/opt/fzf/shell/key-bindings.zsh"
