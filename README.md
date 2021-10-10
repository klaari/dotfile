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
  "parserOptions": {
    "ecmaVersion": 7,
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
  "parserOptions": {
    "ecmaVersion": 7
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
