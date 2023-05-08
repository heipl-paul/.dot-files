if tput setaf 1 &> /dev/null; then
	tput sgr0; # reset colors
	bold=$(tput bold);
	reset=$(tput sgr0);
	blue=$(tput setaf 33);
	cyan=$(tput setaf 37);
	green=$(tput setaf 10);
	orange=$(tput setaf 166);
	purple=$(tput setaf 125);
	red=$(tput setaf 124);
	violet=$(tput setaf 61);
	white=$(tput setaf 15);
	yellow=$(tput setaf 228);
else
	bold='';
	reset="\e[0m";
	blue="\e[1;34m";
	cyan="\e[1;36m";
	green="\e[1;32m";
	orange="\e[1;33m";
	purple="\e[1;35m";
	red="\e[1;31m";
	violet="\e[1;35m";
	white="\e[1;37m";
	yellow="\e[1;33m";
fi;

# Highlight the user name when logged in as root.
if [[ "${USER}" == "root" ]]; then
	userStyle="${red}";
else
	userStyle="${green}";
fi;

# Highlight the hostname when connected via SSH.
if [[ "${SSH_TTY}" ]]; then
	hostStyle="${bold}${red}";
else
	hostStyle="${orange}";
fi;

PS1+="\[\033]0;\w\007\]"    # Mind-blowingly stupid way of saying "name terminal after current working directory"
PS1="\[${bold}\]"           # After naming, restart PS1 with new value, and bold text
PS1+="\[${userStyle}\]\u"   # Dynamic userStyle based on is ROOT or !ROOT
PS1+="\[${white}\] @ "      # White '@' separator
PS1+="\[${hostStyle}\]\h"   # Dynamic host color based on SSH_TTY or not
PS1+="\[${white}\] : "      # White ':' separator
PS1+="\[${blue}\]\w"        # Blue Path (working directory)
PS1+="\$(prompt_git \""		# Start git prompt. Only starts if in git dir
PS1+="\[${white}\] "        # Change to white
PS1+="on branch "			# "on branch" literal
PS1+="\[${violet}\]\" \""	# Violet branch name
PS1+="\[${blue}\]\")";      # Blue for branch state: dirty, uncommited, untracked, etc
PS1+="\n"                   # Separate path and git info from input by new line
PS1+="\[${white}\]> "       # White '>' input prompt 
PS1+="\[${reset}\]"         # Reset all tput changes

export PS1;