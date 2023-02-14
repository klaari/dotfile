set nocompatible              " be iMproved, required

set guifont=Monospace\ 12

call plug#begin('~/.vim/plugged')

Plug 'VundleVim/Vundle.vim'
Plug 'mileszs/ack.vim'
Plug 'tmhedberg/matchit'
Plug 'scrooloose/nerdtree'
Plug 'tomtom/tcomment_vim'
Plug 'altercation/vim-colors-solarized'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'bling/vim-airline'
Plug 'terryma/vim-multiple-cursors'
Plug 'bronson/vim-trailing-whitespace'
Plug 'skwp/greplace.vim'
Plug 'arnaud-lb/vim-php-namespace'
Plug 'janko-m/vim-test'
" Plug 'prettier/vim-prettier'
Plug 'nelstrom/vim-visual-star-search'
Plug 'dense-analysis/ale'
Plug 'stephpy/vim-php-cs-fixer'
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
" Plug 'ncm2/ncm2'
" Plug 'roxma/nvim-yarp'
" Plug 'ctrlpvim/ctrlp.vim'
" Plug 'godlygeek/tabular'
" Plug 'ervandew/supertab'
" Plug 'honza/vim-snippets'
" Plug 'SirVer/ultisnips'
" Plug 'airblade/vim-gitgutter'
" Plug 'tpope/vim-fugitive'

call plug#end()

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

" Disable error sound
set noerrorbells
set vb t_vb=

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

" Map W to w
nnoremap :W :w<cr>

" Map ctrlp to fzf
nnoremap <C-p> :Files<CR>
nnoremap <Leader>b :Buffers<CR>
nnoremap <Leader>h :History<CR>
nnoremap <Leader>t :BTags<CR>
nnoremap <Leader>T :Tags<CR>

" Use ag with fzf, which supports .gitignore
let $FZF_DEFAULT_COMMAND = 'ag -g ""'

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
" Open on  the right side
let g:NERDTreeWinPos = "right"


"-----------------------------------------------------------------------------
" Vim Test Plugin Settings
"-----------------------------------------------------------------------------

nmap <silent> <leader>t :TestNearest<CR>
nmap <silent> <leader>T :TestFile<CR>
nmap <silent> <leader>a :TestSuite<CR>
nmap <silent> <leader>l :TestLast<CR>
nmap <silent> <leader>g :TestVisit<CR>



"-----------------------------------------------------------------------------
" ALE
"-----------------------------------------------------------------------------

let g:ale_javascript_eslint_executable = 'eslint_d'
let g:ale_javascript_eslint_use_global = 1

" Autofix entire buffer with eslint_d:
nnoremap <leader>f mF:%!eslint_d --stdin --fix-to-stdout<CR>`F

let g:ale_fixers = {
\   'vue': ['eslint'],
\   'javascript': ['eslint'],
\   'javascript.jsx': ['eslint'],
\   'typescript': ['eslint'],
\   'typescriptreact': ['eslint'],
\   'typescript.tsx': ['eslint'],
\   'css': ['prettier'],
\   'scss': ['prettier'],
\   'html': ['eslint', 'prettier'],
\   'json': ['prettier'],
\}

let g:ale_linter_aliases = {'vue': ['vue', 'javascript']}
let g:ale_linters = {'vue': ['eslint', 'vls'], 'javascript': ['eslint']}

let g:ale_linters_explicit = 1
let g:ale_fix_on_save = 1
let g:ale_sign_error = '●'
let g:ale_sign_warning = '.'
let g:ale_javascript_prettier_use_local_config = 1

let g:php_cs_fixer_rules = "@PSR2"          " options: --rules (default:@PSR2)
let g:php_cs_fixer_config_file = '.php_cs' " options: --config

let g:php_cs_fixer_verbose = 1
let g:php_cs_fixer_path = "vendor/bin/php-cs-fixer" " define the path to the php-cs-fixer.phar
let g:php_cs_fixer_php_path = "php"               " Path to PHP
let g:php_cs_fixer_enable_default_mapping = 1     " Enable the mapping by default (<leader>pcd)
let g:php_cs_fixer_dry_run = 0                    " Call command with dry-run option
let g:php_cs_fixer_verbose = 0


" " Use deoplete.
" let g:deoplete#enable_at_startup = 1

