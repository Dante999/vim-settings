#!/bin/bash

pushd bundle

git clone https://github.com/vim-airline/vim-airline
git clone https://github.com/morhetz/gruvbox.git
git clone https://github.com/preservim/tagbar.git
git clone https://github.com/preservim/nerdtree.git
git clone https://github.com/dense-analysis/ale.git
git clone https://github.com/martinda/Jenkinsfile-vim-syntax.git
git clone https://github.com/maralla/completor.vim.git
git clone https://github.com/MattesGroeger/vim-bookmarks.git
git clone https://github.com/ctrlpvim/ctrlp.vim.git
git clone https://github.com/aklt/plantuml-syntax.git

popd
