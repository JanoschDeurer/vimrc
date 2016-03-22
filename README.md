# vimrc

My latest vimrc it includes [vundle](https://github.com/gmarik/Vundle.vim)
configurations for:

* [YouCompleteMe](https://github.com/Valloric/YouCompleteMe)
* [Ultisnippets](https://github.com/SirVer/ultisnips)
* [vim-localvimrc](https://github.com/embear/vim-localvimrc)
* [Nerdtree](https://github.com/scrooloose/nerdtree)
* [vim-multiple-cursors](https://github.com/terryma/vim-multiple-cursors)
* [vim-livedown](https://github.com/shime/vim-livedown)
* [vim-airline](https://github.com/bling/vim-airline)
* [vim-fugitive](https://github.com/tpope/vim-fugitive)
* [syntastic](https://github.com/scrooloose/syntastic)
* and others that have been installed to make the upper plugins work nicely together.

**Note:** This vimrc is in most cases not sutable for server environments.

## Setup

For the setup it is assumed that you have installed
[vundle](https://github.com/gmarik/Vundle.vim). If this is set up, you can
install the vimrc:

```bash
cd ~/.vim
git clone https://github.com/JanoschDeurer/vimrc
ln -s ~/.vim/vimrc/.vimrc ~/.vimrc
mkdir -p ~/.vim/tmpFiles
vim +PluginInstall +qall
```

### YouCompleteMe

If you haven't used [YouCompleteMe](https://github.com/Valloric/YouCompleteMe)
so far you have to set up this too. If so you will see a message after executing
PluginInstall that tells you to install YouCompleteMe. Further instructions can
be found in the [install section of
YouCompleteMe](https://github.com/Valloric/YouCompleteMe#ubuntu-linux-x64-super-quick-installation).

### Color sheme

This .vimrc uses [solarized color shemes](http://ethanschoonover.com/solarized)
for extensions. If you use vim in a gui like gvim you have to configure it to
 use solarized colors. Otherwise you have to configure your terminal emulator,
 this can be done for the gnome terminal with [these helpfull
 scripts](https://github.com/Anthony25/gnome-terminal-colors-solarized). If
 you want to use a different color sheme you have to change the configurations
 for the extensions.

### vim-livedown

To make [vim-livedown](https://github.com/shime/vim-livedown) work you have to
install [node](https://nodejs.org/en/) as well as
[livedown](https://github.com/shime/livedown):

```bash
sudo apt-get install nodejs nodejs-legacy
# install livedown globally
sudo npm install -g livedown
```

### vim-airline

To make the [vim-airline](https://github.com/bling/vim-airline) plugin work
properly you have to install
[powerline-fonts](https://powerline.readthedocs.org/en/master/installation/linux.html#fonts-installation).

### syntastics

Syntastic does not bring any style checkers by itself. Therefore you have to
install style checkers for the languages you want to work with. Compatible
style checkers can be found at the [syntastic
wiki](https://github.com/scrooloose/syntastic/wiki/Syntax-Checkers). With this
you can install the style checkers i use:

```bash
# CSS Linter
npm install -g csslint

# Javascript Linter
npm install -g eslint_d
# Javascript with Angular
npm install eslint-plugin-angular

# Markdown Linter
gem install mdl

# Python3
apt-get install pylint3
pip3 install flake8


```
