## .dotfiles

### Installations

ag.vim: the silversearcher https://github.com/ggreer/the_silver_searcher#installing

    sudo apt-get update && sudo apt-get install silversearcher-ag

tagbar: exuberant-ctags

    sudo apt-get install exuberant-ctags

Zsh

    sudo apt-get -y install zsh
    chsh -s $(which zsh)

Oh My Zsh

    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

Node.js with https://github.com/creationix/nvm#installation

eslint

    npm install -D prettier
    npm install -D eslint
    npm install -D babel-eslint
    npm install -D eslint-plugin-react
    npm install -D eslint-plugins-prettier
    npm install -D eslint-config-prettier


### Install Vim plugins and symlink config files

Creates symlinks for dotfiles in dotfile dir.

    git clone https://github.com/klaari/dotfile.git ~/dotfile
    cd ~/dotfile && ./install.sh
