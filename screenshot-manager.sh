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
# folder name format
DATE=$(date +"%B %d %G - %A")
#
#
# Your configurations end here. Time to use it 

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

# check if subject name passed or not. if not, then end the session 
if [[ -z $1 ]]; then
    echo "$PREFIX No arguments passed."
    show_usage
    exit 1
fi


# generate separate but attached folder for lab
TARGET_PATH="$STORAGE_FOLDER/$1/$DATE"
if [[ "$2" = "--lab" ]]; then
    echo "$PREFIX Processing as lab class"
    TARGET_PATH="$STORAGE_FOLDER/$1-lab/$DATE"
fi

# if user reaches here, it means that they have entered the subject
if [[ -e "$TARGET_PATH" ]] ;
then 
    # if foldr exists, check if today's date folder exist
    echo "$PREFIX Screenshots of this class are already present."
    echo "$PREFIX Running again, nothing is being deleted. chill"
else
    mkdir -p "$TARGET_PATH"
    echo "$PREFIX folder for screenshots of this class not found"
    echo "$PREFIX folder for screenshots of this class created"
fi


# if user has reached here, it means the desired folder is created till now, time to move the contnet
mv *.jpg *.png "$TARGET_PATH"

echo "$PREFIX Done"
