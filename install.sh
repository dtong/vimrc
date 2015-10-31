#!/bin/bash -x

VIM_DIR=~/.vim
BUNDLE_DIR=$VIM_DIR/bundle
VUNDLE_PATH=$BUNDLE_DIR/Vundle.vim

echo "$VUNDLE_PATH"

if [ ! -d "$BUNDLE_DIR" ]; then
    `mkdir -p $BUNDLE_DIR`
fi

`git clone https://github.com/VundleVim/Vundle.vim.git ${VUNDLE_PATH}`
`cp ./.vimrc ${VIM_DIR}/.vimrc`
`ln -s ${VIM_DIR}/.vimrc ~/.vimrc`

vim +PluginInstall +qall
