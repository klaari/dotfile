## .dotfiles

### Requirements

ag.vim: the silversearcher https://github.com/ggreer/the_silver_searcher#installing

    sudo apt-get install silversearcher-ag

jshint.vim: jshin http://jshint.com/install/

    sudo npm install -g jshint

tagbar: exuberant-ctags

    sudo apt-get install exuberant-ctags

### Install

Creates symlinks for dotfiles in dotfile dir.

    git clone https://github.com/klaari/dotfile.git ~/dotfile
    cd ~/dotfile && ./install.sh
