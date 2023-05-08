######################
##### ZSH CONFIG #####
######################

autoload -Uz compinit && compinit # This is zsh auto complete for git
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}'
fpath=(. $fpath)

# Load Git Branch Info
export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWSTASHSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=true
export GIT_PS1_SHOWCOLORHINTS=true

###### NOT CURRENTLY USING ZSH VCS INFO, BELOW IS AN EXAMPLE OF HOW IT WOULD WORK

# autoload -Uz vcs_info
# precmd () { vcs_info }
# autoload -U colors && colors 
# zstyle ':vcs_info:git:*' formats "on branch %{$fg[blue]%}%b%{$reset_color%} %m%u%c%{$reset_color%} "

# Working vcs_info, backup
# zstyle ':vcs_info:git:*' formats 'on branch %b '

###### end_comment

# Use tab to select completion
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)       # Include hidden files