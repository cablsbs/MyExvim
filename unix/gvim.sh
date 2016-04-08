#!/bin/bash

#cwd=$(pwd)
#escape_cwd=$(printf "%q" "$(pwd)")
cwd="/home/chris/Workspace/exvim"
escape_cwd=$(printf "%q" "$cwd")
gvim \
    -u "${cwd}/.vimrc" \
    --cmd "let g:exvim_custom_path='${cwd}'" \
    --cmd "set runtimepath=${escape_cwd}/vimfiles,\$VIMRUNTIME,${escape_cwd}/vimfiles/after" \
    ${1:+"$@"}
