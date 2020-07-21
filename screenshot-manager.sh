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
    echo "$PREFIX $0 help           => list this menu"
    echo "$PREFIX $0 show           => list the current screenshot"
    echo "$PREFIX $0 save dsa       => save DSA class screenshots"
    echo "$PREFIX $0 save dsa --lab => save DSA lab screenshots"
}


# check if directory exists
echo "$PREFIX"
if [[ -e "$STORAGE_FOLDER" ]] ;
then 
    echo "$PREFIX Using old screenshot folder"
else
    echo "$PREFIX Old screenshot folder not found, created"
    mkdir $STORAGE_FOLDER
fi
echo "$PREFIX"

#  command router 
if [[ -z $1 ]]; then
    echo "$PREFIX No arguments passed."
    show_usage
    exit 1
fi