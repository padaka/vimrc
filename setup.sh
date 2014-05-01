#!/bin/bash

mkdir -p ~/.vim/autoload ~/.vim/bundle; \
mkdir -p ~/.vim/doc ~/.vim/plugin; \
curl -Sso ~/.vim/autoload/pathogen.vim \
  https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim

cd ~/.vim/bundle
# Clone plugins into the bundle
git clone https://github.com/ervandew/supertab.git
git clone https://github.com/kien/ctrlp.vim.git
git clone https://github.com/scrooloose/syntastic.git
git clone https://github.com/kien/rainbow_parentheses.vim.git

# Snipmate with dependencies
git clone https://github.com/MarcWeber/vim-addon-mw-utils.git
git clone https://github.com/tomtom/tlib_vim.git
git clone https://github.com/honza/vim-snippets.git
git clone https://github.com/garbas/vim-snipmate.git

# Tagbar (Depends on Exuberant ctags5.5)
#sudo apt-get install ctags
#git clone git://github.com/majutsushi/tagbar 

# Solarized theme
git clone git://github.com/altercation/vim-colors-solarized.git
mkdir -p ~/.vim/colors
cp ~/.vim/bundle/vim-colors-solarized/colors/solarized.vim ~/.vim/colors/.

# Update .vimrc
mv ~/.vimrc ~/.vimrc_old
cp "$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"/profile.vim \
  > ~/.vimrc
