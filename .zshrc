#TODO band aid fix, move it somewhere else
#autoload -Uz compinit
#compinit

#https://github.com/ohmyzsh/ohmyzsh/blob/master/themes/eastwood.zsh-theme
#source ~/.config/zsh/eastwood.zsh
export ZSHCONFIGDIR=$HOME/.config/zsh

# Take advantage of $LS_COLORS for completion as well.
#zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"

# some useful options (man zshoptions)
#setopt auto_cd
#setopt multios #??
#setopt prompt_subst #??
#setopt auto_pushd
#setopt pushd_ignore_dups
#setopt pushdminus

# from oh-my-zsh
# History command configuration
#setopt extended_history       # record timestamp of command in HISTFILE
#setopt hist_expire_dups_first # delete duplicates first when HISTFILE size exceeds HISTSIZE
#setopt hist_ignore_dups       # ignore duplicated commands history list
#setopt hist_ignore_space      # ignore commands that start with space
# Other
#setopt long_list_jobs

#setopt extendedglob nomatch
#setopt interactive_comments
#stty stop undef		# Disable ctrl-s to freeze terminal.
#zle_highlight=('paste:none')

# from ohmyzsh --- completion stuff
# unsetopt menu_complete # do not autoselect the first completion entry
#setopt menu_complete
#unsetopt flowcontrol
#setopt auto_menu # show completion menu on successive tab press
#setopt complete_in_word
#setopt always_to_end

# beeping is annoying
#unsetopt BEEP

#zstyle ':completion:*' menu select
# zstyle ':completion::complete:lsof:*' menu yes select
#zstyle ':completion:*' special-dirs true # complete . and .. special dirs
#zmodload zsh/complist
# compinit
#_comp_options+=(globdots)		# Include hidden files.

#autoload -U up-line-or-beginning-search
#autoload -U down-line-or-beginning-search
#zle -N up-line-or-beginning-search
#zle -N down-line-or-beginning-search

# Colors
#autoload -Uz colors && colors

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
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

eval "$(starship init zsh)"
