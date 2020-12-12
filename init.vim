"set nocompatible        " disable compatibility to old-time vi
set number              " add line numbers
set wrap                " turn on line wrapping
set wrapmargin=0        " wrap lines when coming within n characters from side
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
Plug 'lervag/vimtex' " Latex support
call plug#end()
" Set colour scheme for lightline, i.e. the statusline.
let g:lightline = {
    \ 'colorscheme': 'onedark',
    \ }

let g:fzf_layout = {'up':'~90%', 'window': { 'width': 0.8, 'height': 0.8, 'yoffset': 0.5, 'xoffset': 0.5, 'highlight': 'Todo', 'border': 'sharp' }}

" Customise fzf colors to match your color scheme
"let g:fzf_colors =
  "\ { 'fg':      ['fg', 'Normal'],
  "\ 'bg':      ['bg', 'Normal'],
  "\ 'hl':      ['fg', 'Comment'],
  "\ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  "\ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  "\ 'hl+':     ['fg', 'Statement'],
  "\ 'info':    ['fg', 'PreProc'],
  "\ 'border':  ['fg', 'Ignore'],
  "\ 'prompt':  ['fg', 'Conditional'],
  "\ 'pointer': ['fg', 'Exception'],
  "\ 'marker':  ['fg', 'Keyword'],
  "\ 'spinner': ['fg', 'Label'],
  "\ 'header':  ['fg', 'Comment'] }

"let g:terminal_color_0 = '#6272a4'
"let g:terminal_color_1 = '#F37F97'
"let g:terminal_color_2 = '#5ADECD'
"let g:terminal_color_3 = '#8897F4'
"let g:terminal_color_4 = '#bd93f9'
"let g:terminal_color_5 = '#ff79c6'
"let g:terminal_color_6 = '#8be9fd'
"let g:terminal_color_7 = '#bfaae3'
"" Bright
"let g:terminal_color_8  = '#6272a4'
"let g:terminal_color_9  = '#FF4971'
"let g:terminal_color_10 = '#18E3C8'
"let g:terminal_color_11 = '#8897F4'
"let g:terminal_color_12 = '#bd93f9'
"let g:terminal_color_13 = '#ff79c6'
"let g:terminal_color_14 = '#8be9fd'
"let g:terminal_color_15 = '#bfaae3'

colorscheme onedark
