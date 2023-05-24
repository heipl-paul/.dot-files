#######################
###### FUNCTIONS ######
#######################

function docker_stop_all() {
	docker stop `(docker ps -q)`
}

#######################
#### ENV VARIABLES ####
#######################

export EDITOR="code -w"


#############################################
## USEFUL COMMANDS THAT I WILL 100% FORGET ##
#############################################

########### ${SDKMAN_CANDIDATES_DIR} ###########
# Prints path to SDK MAN downloaded SDKs
# Holds folders for all, this means the next interesting folder would be /java/current for example

########## ${CURRENT} ##########
# prints the currently used sdk

######### sdk use java ${CURRENT} ##########
# I'm not 100% this will work all the time, does current print both java and skala? Confusing
# but I could echo current, see what java SDK is up, then use "sdk use java [copy paste from above response]"