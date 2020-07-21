#!/usr/bin/env bash 
# @author: YashKumarVerma <github.com/yashkumarverma>

#
# to run the script, you need to give it permissions to execute. for that, do
# chmod +x ./screenshot-manager.sh
#
# if you wish, you can change the following variable to change terminal output prefix
PREFIX="      | "
# the following variable changes the location of the folder which stores the screenshots
STORAGE_FOLDER="college-screenshots"
#
#
#
# Your configurations end here. Time to use it 


function template( ) { 
    echo "$PREFIX [Started] xyz"
    echo "$PREFIX [Finished] xyz"
}


# function to show usage
function show_usage() {
    echo "$PREFIX"
    echo "$PREFIX $0 help   => list this menu"
    echo "$PREFIX $0 show   => list the current screenshot"
}


# check if directory exists
if [[ -e "$STORAGE_FOLDER" ]] ;
then 
    echo "$PREFIX Old screenshot folder found"
else
    echo "$PREFIX Old screenshot folder not found, created"
    mkdir $STORAGE_FOLDER
fi


#  command router 
if [[ -z $1 ]]; then
    echo "$PREFIX No arguments passed."
    show_usage

# show help commands
elif [[ "$1" = "help" ]]; 
    then show_usage

# default message
else echo "$PREFIX Select a Valid choice from "
    show_usage
fi