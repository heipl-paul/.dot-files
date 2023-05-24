############################################
## Human readable local variables for PS1 ##
############################################

# COLORS
PS_COLOR_="%F{"

PS_LIME="10}"
PS_BRIGHT_GREEN="82}"
PS_LESS_BRIGHT_GREEN="76}"

PS_LIGHT_BLUE="33}"
PS_STEEL_BLUE="75}"

PS_ORANGE="178}"
PS_BETTER_ORANGE="166}"
PS_ORANGE_RED="202}"
PS_DARK_ORANGE="208}"

PS_BRIGHT_YELLOW="11}"
PS_FADED_BRIGHT_YELLOW="226}"

PS_RED="196}"

PS_COLOR_END="%f"

# LIGAMENTS

PS_HASH=" # "
PS_AT=" @ "
PS_FOR=" : "

# COMMANDS
PS_SPACE=' '
PS_USER='%n'
PS_HOST_NAME='%m'                      # %m up to first '.' use %2m or other integer to tell how long should hostname be, or %M for full hostname 
PS_IF_ROOT_USE_HASH='%#'               # if user is root, replaces prompt with hash sign
PS_PWD_OR_HOME='%~'
PS_NEWLINE=$'\n'
PS_PROMPT_SYMBOL='> '
PS_SHOW_TIME='%t'
PS_SHOW_DEFAULT_ZSH_GIT_INFO='${vcs_info_msg_0_}'
PS_SHOW_DEFAULT_GIT_STATUS='$(__git_ps1 "%s")'
# Old PS1: %n@%m %1~ %

# COMPOUND COMMANDS
PS_LIME_USER=${PS_COLOR_}${PS_LIME}${PS_USER}${PS_COLOR_END}
PS_ORANGE_HOST=${PS_COLOR_}${PS_BETTER_ORANGE}${PS_HOST_NAME}${PS_COLOR_END}
PS_BLUE_FULL_PATH=${PS_COLOR_}${PS_LIGHT_BLUE}${PS_PWD_OR_HOME}${PS_COLOR_END}
PS_COLORED_DEFAULT_GIT_STUATUS='$(__git_ps1 " on branch %s")'
BACKUP_PS1_GIT_STATUS=' on branch '${PS_COLOR_}${PS_BRIGHT_YELLOW}${PS_SHOW_DEFAULT_GIT_STATUS}${PS_COLOR_END}

##################
##### PROMPT #####
##################

## PROMPT APPENDING!!!
# If you want to append to existing prompt, do PROMPT+='$(whatever)'
# If you want to prepend to prompt, do PROMPT='$(whatever)'+PROMPT
# Notice the single quotes. You need to set the option PROMPT_SUBST to make it work. Again, fuck if I know what this means

setopt PROMPT_SUBST # Apparently, this lets you use ${} in the prompt variable. I think.

# PROMPT
PROMPT=${PS_LIME_USER}
PROMPT+=${PS_AT}
PROMPT+=${PS_ORANGE_HOST}
PROMPT+=${PS_FOR}
PROMPT+=${PS_BLUE_FULL_PATH}
PROMPT+=${PS_COLORED_DEFAULT_GIT_STUATUS}
PROMPT+=${PS_NEWLINE}
PROMPT+=${PS_PROMPT_SYMBOL}

# RIGHT PROMPT
RPROMPT=${PS_SHOW_TIME}