########################
#### Alias Commands ####
########################

# Unix LifeHacks
alias ll="ls -lG"
alias la="ls -laG"
alias where="which"

# Docker
alias docker_ps_format="docker ps --format 'table {{.Names}}\t{{.Image}}\t{{.ID}}\t{{.Status}}\t{{.Ports}}'"
alias dpf_portless="docker ps --format 'table {{.Names}}\t{{.Image}}\t{{.ID}}\t{{.Status}}'"
alias dpf_imageless="docker ps --format 'table {{.Names}}\t{{.ID}}\t{{.Status}}\t{{.Ports}}'"
alias dpf=docker_ps_format
# TODO - write function that takes multiple string params, and then builds the above string
# call it dpf, remove this alias, make the default NAMES ID STATUS (Maybe IMAGE)


# Git
alias git_prune_local="git fetch --prune && git switch main && git branch | grep -v main | xargs git branch -d && git pull"
alias git_prune_local_hard="git fetch --prune && git switch main && git branch | grep -v main | xargs git branch -D && git pull"
alias git_prune_local_master_hard="git fetch --prune && git switch master && git branch | grep -v master | xargs git branch -D && git pull"
alias git_rebase_master="git fetch origin && git rebase origin/master"
alias git_rebase_main="git fetch origin && git rebase origin/main"
alias gpl=git_prune_local
alias gplh=git_prune_local_hard
alias gplmh=git_prune_local_master_hard

alias git_reset_hard="git reset --hard && git clean -fxd"
alias grh=git_reset_hard
alias commit="git commit -S -m"

alias gl="git log --pretty=oneline"
alias gb="git branch"
alias gba="git fetch --prune && git branch -a"

alias gs="git status"
alias gdm="git fetch origin && git diff origin/master"
alias gdmno="git fetch origin && git diff origin/master --name-only"
alias gfo="git fetch origin"
alias grom="git_rebase_main"
alias gromaster="git_rebase_master"

# GradleW
alias clean_build="./gradlew clean build"
alias gr="gradle"
alias gw="./gradlew"

# Brew
alias brew_list="brew leaves | xargs -n1 brew desc"
alias brew_list_tree="brew deps --tree --installed"

# SDK-Man
alias jhome="echo ${JAVA_HOME}"
alias sdk_list_java="sdk list java | grep -e installed -e local"

# GPG
alias gpg_list="gpg --list-secret-keys --keyid-format=long"


############################
######## FUNCTIONS #########
############################

function docker_stop_all() {
    docker stop `(docker ps -q)`
}