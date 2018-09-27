## .dotfiles

### Installations

ag.vim: the silversearcher https://github.com/ggreer/the_silver_searcher#installing

    sudo apt-get update && sudo apt-get install silversearcher-ag

jshint.vim: jshin http://jshint.com/install/

    sudo npm install -g jshint

tagbar: exuberant-ctags

    sudo apt-get install exuberant-ctags

eslint

    npm install -g eslint
    npm install -g babel-eslint
    npm install -g eslint-plugin-react

Zsh

    sudo apt-get -y install zsh
    chsh -s $(which zsh)

Oh My Zsh

    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"


### Install Vim plugins and symlink config files

Creates symlinks for dotfiles in dotfile dir.

    git clone https://github.com/klaari/dotfile.git ~/dotfile
    cd ~/dotfile && ./install.sh
