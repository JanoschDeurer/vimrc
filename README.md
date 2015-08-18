# vimrc
My latest vimrc it includes [vundle](https://github.com/gmarik/Vundle.vim) configurations for:
* [YouCompleteMe](https://github.com/Valloric/YouCompleteMe)
* [Ultisnippets](https://github.com/SirVer/ultisnips)
* [vim-localvimrc](https://github.com/embear/vim-localvimrc)
* [Nerdtree](https://github.com/scrooloose/nerdtree)
* [vim-multiple-cursors](https://github.com/terryma/vim-multiple-cursors)
* [vim-livedown](https://github.com/shime/vim-livedown)
* [vim-airline](https://github.com/bling/vim-airline)
* [vim-fugitive](https://github.com/tpope/vim-fugitive)
* and others that have been installed to make the upper plugins work nicely together.

**Note:** This vimrc is in most cases not sutable for server environments.

## Setup
For the setup it is assumed that you have installed [vundle](https://github.com/gmarik/Vundle.vim).
```bash
cd ~/.vim
git clone https://github.com/JanoschDeurer/vimrc
ln -s ~/.vim/vimrc/.vimrc ~/.vimrc
mkdir -p ~/.vim/tmpFiles
#Install Livedown to use Markdown preview
npm install -g livedown
vim +PluginInstall +qall
```
If you haven't used [YouCompleteMe](https://github.com/Valloric/YouCompleteMe) so far you have to set up this too. If so you will see a message after executing PluginInstall that tells you to install YouCompleteMe. Further instructions can be found in the [install section of YouCompleteMe](https://github.com/Valloric/YouCompleteMe#ubuntu-linux-x64-super-quick-installation). To make the vim-airline work properly you have to install [powerline-fonts](https://powerline.readthedocs.org/en/master/installation/linux.html#fonts-installation).

