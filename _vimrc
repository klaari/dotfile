filetype off                    " force reloading *after* pathogen loaded
execute pathogen#infect()
:call pathogen#helptags()
filetype plugin indent on       " enable detection, plugins and indenting in one step
syntax on

let $PATH=substitute(system("echo \$PATH"), "\r\*\n", "", "g")
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
set macmeta
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
imap jk <ESC>

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
set t_Co=256
"let g:solarized_termcolors=16
let g:solarized_termcolors=256
colorscheme solarized

set runtimepath^=~/.vim/bundle/ctrlp.vim
"-----------------------------------------------------------------------------
" CtrlP Settings
"-----------------------------------------------------------------------------
let g:ctrlp_switch_buffer = 'E'
let g:ctrlp_tabpage_position = 'c'
let g:ctrlp_working_path_mode = 'rc'
"let g:ctrlp_root_markers = ['.project.root']
let g:ctrlp_custom_ignore = '\v%(/\.%(git|hg|svn)|\.%(class|o)$|/target/)'
let g:ctrlp_open_new_file = 'r'
let g:ctrlp_open_multiple_files = '1ri'
let g:ctrlp_prompt_mappings = {
  \ 'PrtSelectMove("j")':   ['<c-n>'],
  \ 'PrtSelectMove("k")':   ['<c-p>'],
  \ 'PrtHistory(-1)':       ['<c-j>', '<down>'],
  \ 'PrtHistory(1)':        ['<c-i>', '<up>']
\ }
map ,fb :CtrlPBuffer<cr>
map ,ff :CtrlPCurFile<cr>
map ,fr :CtrlP<cr>
map ,fm :CtrlPMixed<cr>

"-----------------------------------------------------------------------------
" NERD Tree Plugin Settings
"-----------------------------------------------------------------------------
" Toggle the NERD Tree on an off with F7
nmap <F7> :NERDTreeToggle<CR>

" Close the NERD Tree with Shift-F7
nmap <S-F7> :NERDTreeClose<CR>

" Show the bookmarks table on startup
let NERDTreeShowBookmarks=1

" Don't display these kinds of files
let NERDTreeIgnore=[ '\.ncb$', '\.suo$', '\.vcproj\.RIMNET', '\.obj$',
                   \ '\.ilk$', '^BuildLog.htm$', '\.pdb$', '\.idb$',
                   \ '\.embed\.manifest$', '\.embed\.manifest.res$',
                   \ '\.intermediate\.manifest$', '^mt.dep$' ]
