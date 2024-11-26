#!/bin/bash

git clone https://github.com/vim-airline/vim-airline bundle/vim-airline
git clone https://github.com/morhetz/gruvbox.git bundle/gruvbox
git clone https://github.com/preservim/tagbar.git bundle/tagbar
git clone https://github.com/preservim/nerdtree.git bundle/nerdtree
git clone https://github.com/dense-analysis/ale.git bundle/ale

# in addition to 'ale', until I figure out why ale's completion/hover is not working
git clone https://github.com/maralla/completor.vim.git bundle/completor.vim
