#/bin/bash
# Simple script to create three folders.

declare -a arr=("backup" "swap" "undo")

for i in "${arr[@]}"
do
    if [[ -d "~/.vim/$i" ]];then
        printf "Directory $i exists"
    else
        mkdir "$HOME/.vim/$i"
        if [[ $status -ne 0 ]];then
            echo "Error creating directory $i"
            exit 1
        fi
    fi
done
