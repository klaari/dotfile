filetype off                    " force reloading *after* pathogen loaded
call pathogen#infect()
call pathogen#helptags()
filetype plugin indent on       " enable detection, plugins and indenting in one step
syntax on

" Disabled Vi support
set nocompatible

set modelines=0

set smartindent
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" Change the mapleader from \ to ,
let mapleader=","
let maplocalleader="\\"

" Basics
set encoding=utf-8
set scrolloff=5                 " Minimum number of screen lines above and below the cursor.
set autoindent                  " always set autoindenting on
set copyindent                  " copy the previous indentation on autoindenting
set virtualedit=all             " allow the cursor to go in to "invalid" places
set hlsearch                    " highlight search terms
set incsearch                   " show search matches as you type
set ignorecase                  " ignore case when searching
set showmatch
set smartcase                   " ignore case if search pattern is all lowercase,
                                "    case-sensitive otherwise
set showmode
set showcmd
set hidden                      " Hides buffers instead of closing them
set wildmenu
set wildmode=list:longest
"set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set relativenumber
set undofile
set guioptions-=T  "remove toolbar

" Wrap text instead of being on one line
set lbr

" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>
" Clear search highligth
nnoremap <leader><space> :noh<cr>

nnoremap <tab> %
vnoremap <tab> %
" disable arrow keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>
nnoremap j gj
nnoremap k gk
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

" ;; to replace escape       
imap ;; <ESC>

" ctrl+tab tab navigation
map <c-tab> :tabnext<cr>
imap <c-tab> <esc>:tabnext<cr>i
map <c-s-tab> :tabprevious<cr>
imap <c-s-tab> <esc>:tabprevious<cr>i
map <c-t> :tabnew<cr>
imap <c-t> <esc>:tabnew<cr>i

au FocusLost * :wa  " Save on losing focus

set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=85

"set list
"set listchars=tab:▸\ ,eol:¬

" Colors
syntax enable
set background=dark
colorscheme solarized
