# vimrc
My latest vimrc it includes [vundle](https://github.com/gmarik/Vundle.vim) configurations for:
* YouCompleteMe
* Ultisnippets
* Supertab

**Note:** This vimrc is in most cases not sutable for server environments as it uses YouCompleteMe.

## Setup
For the setup it is assumed that you have installed [vundle](https://github.com/gmarik/Vundle.vim).
```bash
cd ~/.vim
git clone https://github.com/JanoschDeurer/vimrc
ln -s ~/.vim/vimrc/.vimrc ~/.vimrc
mkdir -p ~/.vim/tmpFiles
vim +PluginInstall +qall
```
If you haven't used [YouCompleteMe](https://github.com/Valloric/YouCompleteMe) so far you have to set up this too. If so you will see a message after executing PluginInstall that tells you to install YouCompleteMe. Further instructions can be found in the [install section of YouCompleteMe](https://github.com/Valloric/YouCompleteMe#ubuntu-linux-x64-super-quick-installation).

