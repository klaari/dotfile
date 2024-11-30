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

fzf

    sudo apt-get install fzf

diff-so-fancy

    sudo add-apt-repository ppa:aos1/diff-so-fancy
    sudo apt update
    sudo apt install diff-so-fancy

Node.js with https://github.com/creationix/nvm#installation

#### eslint & prettier

    npm install -D prettier
    npm install -D eslint
    npm install -D eslint-plugin-prettier
    npm install -D eslint-config-prettier
    npm install -D babel-eslint
    npm install -D eslint-plugin-react

.eslintrc.js (react)
```
{
  "root": true,
  "parserOptions": {
    "ecmaVersion": 8,
    "sourceType": "module",
    "ecmaFeatures": {
      "jsx": true
    }
  },
  "env": {
    "es6": true
  },
  "plugins": ["prettier"],
  "extends": [
    "plugin:prettier/recommended",
    "plugin:react/recommended"
  ],
  "rules": {
    "prettier/prettier": [
      "error",
      {
        "tabWidth": 4,
        "trailingComma": "es5"
      }
    ]
  }
}
```

.eslintrc.json (vanilla js)
```
{
  "root": true,
  "parserOptions": {
    "ecmaVersion": "latest",
    "sourceType": "module" // Use ECMAScript modules with node.js
  },
  "env": {
    "es6": true
  },
  "plugins": ["prettier"],
  "extends": ["plugin:prettier/recommended"],
  "rules": {
    "prettier/prettier": [
      "error",
      {
        "tabWidth": 4,
        "trailingComma": "es5"
      }
    ]
  }
}
```


### Install Vim plugins and symlink config files

Creates symlinks for dotfiles in dotfile dir.

    git clone https://github.com/klaari/dotfile.git ~/dotfile
    cd ~/dotfile && ./install.sh
