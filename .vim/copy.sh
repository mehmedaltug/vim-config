#!/bin/bash

if [[ $# -ne 1 ]]; then
    path=`realpath $0`
    if [[ $path != "${HOME}/.vim/copy.sh" ]]; then
        path=${path::-13}
        cp -r "${path}/.vim" "$HOME"
        cp "${path}/.vimrc" "$HOME"
        exit
    fi
    echo "script needs 1 argument, provide the destination to copy the files"
    exit
fi

path=$1

rm -rf "${path}/.vimrc"
rm -rf "${path}/.vim"

shopt -s extglob
mkdir "${path}/.vim"
cp -r ~/.vim/!(plugged|jdtls) "${path}/.vim"
cp "${HOME}/.vimrc" "${path}/"
