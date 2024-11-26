# Vim Settings
these are just my personal-daily-use vim settings, shortcuts and used plugins.
Propably not relevant for anybody else but me :) 

# Installation
However, it is recommended to check out the repo at any place, execute
`init_plugins.sh` and then first create a symlink from `~/.vim` to this repo,
then create another symlink from `~/.vimrc` to `~/.vim/vimrc`. By doing it this
way, you can easily grab the latest changes (with a high chance that old stuff
is overriden) just by doing a git pull. 

For example: 
```sh
git clone git@github.com:Dante999/vim-settings.git ~/projects/vim-setting

ln -s ~/projects/vim-settings ~/.vim
ln -s ~/.vim/vimrc ~/.vimrc
```
