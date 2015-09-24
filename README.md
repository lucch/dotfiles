## dotvim

Installation:

    git clone git://github.com/alexandrelucchesi/dotvim.git ~/.vim

Create symlinks (only necessary for Vim version < 7.4):

    ln -s ~/.vim/vimrc ~/.vimrc
    ln -s ~/.vim/gvimrc ~/.gvimrc

Switch to the `~/.vim` directory, and fetch submodules:

    cd ~/.vim
    git submodule update --init

Upgrade all bundled plugins:

    git submodule foreach git pull origin master

