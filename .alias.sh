########################
#### Alias Commands ####
########################

# Unix LifeHacks
alias ll="ls -lGh"
alias la="ls -laGh"
alias where="which"

# Docker
alias docker_ps_format="docker ps --format 'table {{.Names}}\t{{.Image}}\t{{.ID}}\t{{.Status}}\t{{.Ports}}'"
alias dpf_portless="docker ps --format 'table {{.Names}}\t{{.Image}}\t{{.ID}}\t{{.Status}}'"
alias dpf_imageless="docker ps --format 'table {{.Names}}\t{{.ID}}\t{{.Status}}\t{{.Ports}}'"
alias dpf=docker_ps_format
alias dpfl=dpf_portless #dpf light
alias dcu="docker compose up"
alias dcud="docker compose up -d"
alias dcd="docker compose down"
# TODO - write function that takes multiple string params, and then builds the above string
# call it dpf, remove this alias, make the default NAMES ID STATUS (Maybe IMAGE)


# Git
alias git_prune_local="git fetch --prune && git switch main && git branch | grep -v main | xargs git branch -D && git pull"
alias git_prune_local_hard="git_reset_hard && git_prune_local"
alias git_prune_local_master="git fetch --prune && git switch master && git branch | grep -v master | xargs git branch -D && git pull"
alias git_prune_local_hard_master="git_reset_hard && git_prune_local_master"
alias git_rebase_master="git fetch origin && git rebase origin/master"
alias git_rebase_main="git fetch origin && git rebase origin/main"
alias gpl=git_prune_local
alias gplh=git_prune_local_hard
alias gplhm=git_prune_local_master_hard

alias git_reset_hard="git reset --hard && git clean -fxd"
alias grh=git_reset_hard
alias commit="git commit -S -m"
alias acommit="git add . && git commit -S -m"

alias gl="git log --pretty=oneline"
alias glg="git log --oneline --graph --decorate --all"
alias gb="git branch"
alias gba="git fetch --prune && git branch -a"

alias gs="git status"
alias gsa="git add . && git status"
alias gdm="git fetch origin && git diff origin/main"
alias gdmno="git fetch origin && git diff origin/main --name-only"
alias gdmaster="git fetch origin && git diff origin/main"
alias gdmaster_no="git fetch origin && git diff origin/main --name-only"
alias gfo="git fetch origin"
alias grom="git_rebase_main"
alias gromaster="git_rebase_master"

# GradleW
alias clean_build="./gradlew clean build"
alias gr="gradle "
alias gw="./gradlew "
alias _cb="clean build"
alias _ca="clean assemble"

# Brew
alias brew_list="brew leaves | xargs -n1 brew desc"
alias brew_list_tree="brew deps --tree --installed"

# SDK-Man
alias jhome="echo ${JAVA_HOME}"
alias sdk_list_installed="sdk installed | glow - "

# GPG
alias gpg_list="gpg --list-secret-keys --keyid-format=long"


############################
######## FUNCTIONS #########
############################

function docker-stop-all() {
    docker stop `(docker ps -q)`
}