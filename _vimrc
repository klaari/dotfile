set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')
"
" let Vundle manage Vundle, required


Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'mileszs/ack.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'mattn/emmet-vim'
Plugin 'tmhedberg/matchit'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
"Plugin 'godlygeek/tabular'
Plugin 'tomtom/tcomment_vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-repeat'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'tpope/vim-surround'
Plugin 'ervandew/supertab'
Plugin 'bling/vim-airline'
Plugin 'majutsushi/tagbar'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'skwp/greplace.vim'
Plugin 'StanAngeloff/php.vim'
Plugin 'arnaud-lb/vim-php-namespace'
Plugin 'janko-m/vim-test'
Plugin 'posva/vim-vue'
Plugin 'pangloss/vim-javascript'
Plugin 'prettier/vim-prettier'
Plugin 'styled-components/vim-styled-components'
Plugin 'nelstrom/vim-visual-star-search'



Plugin 'Shougo/deoplete.nvim'
if !has('nvim')
  Plugin 'roxma/nvim-yarp'
  Plugin 'roxma/vim-hug-neovim-rpc'
endif

Plugin 'Shougo/neosnippet.vim'
Plugin 'Shougo/neosnippet-snippets'


" All of your Plugins must be added before the following line
call vundle#end()

" Helptags
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

set backupdir=~/.vimswap//,/var/tmp//,/tmp//,.
set directory=~/.vimbackup//,/var/tmp//,/tmp//,.

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

set backupdir=.backup/,~/.backup/,/tmp//
set directory=.swp/,~/.swp/,/tmp//
set undodir=.undo/,~/.undo/,/tmp//

" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>
" Clear search highligth
nnoremap <leader><space> :noh<cr>

" Toggle tagbar with f8
nmap <F8> :TagbarToggle<CR>

"Tcomment plugin
map <leader>c <c-_><c-_>

nnoremap <tab> %
vnoremap <tab> %
" disable arrow keys
" remap arrow keys
nnoremap <left> :bprev<CR>
nnoremap <right> :bnext<CR>
map <up> <nop>
map <down> <nop>
imap <up> <nop>
imap <down> <nop>
nnoremap j gj
nnoremap k gk
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

" Disable ZZ which writes a file and closes vim when you try to hit >>
map ZZ <nop>

" jk  to replace escape
imap jk <ESC>
imap kj <ESC>

" reselect last paste
nnoremap <expr> gp '`[' . strpart(getregtype(), 0, 1) . '`]'

" ctrl+tab tab navigation
map <c-tab> :tabnext<cr>
imap <c-tab> <esc>:tabnext<cr>i
map <c-s-tab> :tabprevious<cr>
imap <c-s-tab> <esc>:tabprevious<cr>i
map <c-t> :tabnew<cr>
imap <c-t> <esc>:tabnew<cr>i

" find current word in quickfix
nnoremap <leader>fw :execute "vimgrep ".expand("<cword>")." %"<cr>:copen<cr>
" find last search in quickfix
nnoremap <leader>ff :execute 'vimgrep /'.@/.'/g %'<cr>:copen<cr>

au FocusLost * :wa  " Save on losing focus

set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=85

"set list
"set listchars=tab:▸\ ,eol:¬

" Colors
syntax enable
set t_Co=256
let g:solarized_termtrans = 1
let g:solarized_termcolors=256
set background=dark
colorscheme solarized

" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
  "start searching from your project root instead of the cwd
  let g:ag_working_path_mode="r"
  let g:ackprg = 'ag --vimgrep --smart-case'
  cnoreabbrev ag Ack
  cnoreabbrev aG Ack
  cnoreabbrev Ag Ack
  cnoreabbrev AG Ack
endif

set runtimepath^=~/.vim/bundle/ctrlp.vim
"-----------------------------------------------------------------------------
" CtrlP Settings
"-----------------------------------------------------------------------------
let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:50,results:50'
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
" Syntastic recommended defaults
"-----------------------------------------------------------------------------
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']


"-----------------------------------------------------------------------------
" vim-gitgutter
"-----------------------------------------------------------------------------

let g:gitgutter_max_signs = 900
let g:gitgutter_realtime = 0


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

"-----------------------------------------------------------------------------
" Vim Test Plugin Settings
"-----------------------------------------------------------------------------

nmap <silent> <leader>t :TestNearest<CR>
nmap <silent> <leader>T :TestFile<CR>
nmap <silent> <leader>a :TestSuite<CR>
nmap <silent> <leader>l :TestLast<CR>
nmap <silent> <leader>g :TestVisit<CR>

let g:prettier#config#tab_width = 4
" Run Prettier before saving
let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue PrettierAsync


