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

# append
fpath+=("$current_dir/_gh")

# export to sub-processes (make it inherited by child processes)
export FPATH


######## OTHER EXAMPLE ########
# or prepend
# path=('/your/path' $path)