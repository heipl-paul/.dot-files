######################
##### ZSH CONFIG #####
######################

autoload -Uz compinit && compinit -i                                # This is zsh auto complete for git
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}'        # Match case agnostic
zstyle ':completion:*' menu select                                  # Tab goes into menu selection instead of autofill
zmodload zsh/complist
_comp_options+=(globdots)                                           # Include hidden files
fpath=(. $fpath)

# Load Git Branch Info
export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWSTASHSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=true
export GIT_PS1_SHOWCOLORHINTS=true
