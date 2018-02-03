" enable pathogen plugin manager
"execute pathogen#infect()

" enable plugins and indenting for different filetypes
filetype plugin indent on

" case insensitive searching (case sensitive when you use a capital)
set ignorecase
set smartcase

" disable vim beeps for windows 10
set novisualbell
set noerrorbells

" Use unix line endings
set ff=unix

" Spaces instead of tabs
set expandtab

" make tabs 4 columns wide
set tabstop=4
set softtabstop=4

" enable auto indenting
set autoindent

" auto indent size to 4
set shiftwidth=4

" enable syntax highlighting
syntax on

" change syntax highlighting to dark background
set background=dark

" show line number
set number

" search as characters are entered
:set incsearch           
" highlight matches
:set hlsearch            

" bind kj to escape
:inoremap kj <Esc>

" if a line wraps to multiple lines, this allows
" us to move to that fake line as if it were a real one
:nnoremap j gj
:nnoremap k gk

" bind ',' to leader
let mapleader=","

" leader <space> redraws the screen and removes any search highlighting.
:nnoremap <leader><space> :nohlsearch<CR>

" Rebind ctrl-j/k/l/h to move between splits
" This may break things
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

