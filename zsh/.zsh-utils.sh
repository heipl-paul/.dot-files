#########################
## Variable Definition ##
#########################

current_dir=$(dirname "$0")

############################################
## Util functions and additional nonsense ##
############################################

export GPG_TTY=$(tty)                       # When I feel bold, replace $(tty) with $TTY and see if that works  # forces GPG geys to go through TTY for github

##################
###### PATH ######
##################

### FPATH

# append _gh to fpath
fpath+=("$current_dir/_gh")

# export to sub-processes (make it inherited by child processes)
export FPATH


### ZSH $PATH

export PATH=".:$PATH"


######## OTHER EXAMPLE ########
# or prepend
# path=('/your/path' $path)


#######################################################
##### https://github.com/gradle/gradle-completion #####
#######################################################

# Default is `"/(build|integTest|out)/"`
export GRADLE_COMPLETION_EXCLUDE_PATTERN="/(build|integTest|samples|smokeTest|testFixtures|templates|out|features)/"
# Essentially turn off checking for changed scripts
export GRADLE_COMPLETION_EXCLUDE_PATTERN="gradle"

# USE BELOW TO REFRASH GRADLE COMPLETION CACHE
# __gradle-completion-init
#
# CUSTOMIZE WITH BELOW
# export GRADLE_CACHE_TTL_MINUTES=$(expr 1440 \* number_of_days_you_want)
#
# By default, the build script cache is invalidated every 3 weeks (30240 minutes).
#
# ANOTHER OPTION, BUT I DON'T GET IT:
# export GRADLE_COMPLETION_UNQUALIFIED_TASKS="true"


#########################
### BREW AUTOCOMPLETE ###
#########################


# This must be done before compinit is called. 

if type brew &>/dev/null
then
  FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"

  autoload -Uz compinit
  compinit
fi

FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"

####
