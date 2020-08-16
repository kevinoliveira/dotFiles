#!/bin/bash

rm .build -r -f
mkdir .build

source ./variables.sh
source ./destinations.sh

bold="\033[1m"
normal="\033[0m"

echo "building"
for config_file_path in ${!dests[*]}
do 
    printf "coping $bold$config_file_path$normal to build folder..."
    mkdir -p `dirname ".build/$config_file_path"`
    cp  "./$config_file_path" ".build/$config_file_path"
    printf "\tOK\n"

    printf "adding vars to  $bold$config_file_path$normal..."
    for token_index in ${!vars[*]}
    do
        printf "\t\tchanging $token_index to ${vars[$token_index]}..."
        sed -i   "s/$token_index/${vars[$token_index]}/g"  ".build/$config_file_path"
        printf "\tOK\n"
    done
    printf "\tOK\n"

done



# echo "${!vars[*]}"

# for index in ${!vars[*]}
# do
#     printf "$index ${vars[$index]}\n"
# done