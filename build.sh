#!/bin/bash

rm .build -r -f
mkdir .build

source ./variables.sh
source ./destinations.sh

bold="\033[1m"
normal="\033[0m"

for config_file_path in ${!dests[*]}
do 
    ## RAW FILE COPY
    printf "coping $bold$config_file_path$normal to build folder... "
    mkdir -p `dirname ".build/$config_file_path"`
    cp  "./$config_file_path" ".build/$config_file_path"
    printf "OK\n"

    ## ADDING FLAVORS
    flavor_file=$(echo `dirname $config_file_path`/"$1"@`basename $config_file_path`)
    if test -f "$flavor_file"; then
        printf "addind flavor file $bold$1$normal to $bold.build/$config_file_path$normal... "
        cat "$flavor_file" >> ".build/$config_file_path"
        printf "OK\n"
    fi

    ## REPLACING VARS
    printf "adding vars to $bold$config_file_path$normal... "
    for token_index in ${!vars[*]}
    do
        sed -i   "s/$token_index/${vars[$token_index]}/g"  ".build/$config_file_path"
    done
    printf "OK\n"

    ## MOVING FILE TO DESTINATION
    printf "coping from $bold$config_file_path$normal to $bold${dests[$config_file_path]}$normal... "
    # mkdir -p `dirname ${dests[$config_file_path]} | sed "s,$HOME,~,"`
    cp ".build/$config_file_path" ${dests[$config_file_path]}
    printf "OK\n"

    printf "\n"
done