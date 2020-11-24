"set nocompatible        " disable compatibility to old-time vi
set number              " add line numbers
set wrap                " turn on line wrapping
set wrapmargin=8        " wrap lines when coming within n characters from side
set linebreak           " set soft wrapping
set autoindent          " indent a new line the same amount as a line just typed
set wildmode=list:longest " complete files like a shell
set shell=$SHELL
set title " set terminal title
set cmdheight=1 " command bar height
set mat=2 " how many tenths of a second to blink
set updatetime=300
set termguicolors " enable true colour support


if has('nvim')
    set signcolumn=yes
elseif version >= 800
    set signcolumn=yes
endif

let mapleader = ","
nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>
nmap <Leader>o :NERDTreeToggle<CR>

set smarttab            " tab respects 'tabstop', 'shiftwidth', and 'softtabstop'
set tabstop=4           " number of columns occupied by a tab character.
set shiftwidth=4        " width for auto-indents
set softtabstop=4       " see multiple spaces as tabstops so <BS> does the right thing
set expandtab           " convert tabs to whitespace

set cc=80               " set an 80 character line ruler
set noshowmatch           " do not do the bracket animation thing
set hlsearch            " highlight search results

syntax on               " syntax highlighting. Could try changing to 'enable'.
filetype plugin indent on " allows auto-indenting depending on file type

if has('nvim')
    call plug#begin('~/.config/nvim/plugged') " Not going to work on Windows.
else
    call plug#begin('~/.vim/plugged')
endif

Plug 'preservim/nerdtree' " File tree
Plug 'joshdick/onedark.vim' " General theme
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } " Fuzzy search thing.
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'
Plug 'itchyny/lightline.vim' " Colourful statuslines.
Plug 'tpope/vim-fugitive' " Git command support
Plug 'airblade/vim-gitgutter' " Git symbol support
Plug 'preservim/nerdcommenter' " Multi-line commenting for git.
Plug 'mileszs/ack.vim' " Lets you search files for names, e.g. function names.
Plug 'junegunn/rainbow_parentheses.vim' " Colourful matching brackets!
call plug#end()
" Set colour scheme for lightline, i.e. the statusline.
let g:lightline = {
    \ 'colorscheme': 'onedark',
    \ }

let g:fzf_layout = {'up':'~90%', 'window': { 'width': 0.8, 'height': 0.8, 'yoffset': 0.5, 'xoffset': 0.5, 'highlight': 'Todo', 'border': 'sharp' }}

colorscheme onedark
