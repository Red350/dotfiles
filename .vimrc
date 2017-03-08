" enable pathogen plugin manager
"execute pathogen#infect()
" allow plugins for individual files
"filetype plugin indent on

" disable vim beeps for windows 10
set novisualbell
set noerrorbells

" Use unix line endings
set ff=unix

" make tabs 4 columns wide
set tabstop=4
set softtabstop=4
" do not replace tabs with spaces
:set noexpandtab

" enable auto indenting
set autoindent
set cindent
" auto indent size to 4
set shiftwidth=4

" enable syntax highlighting
syntax on

" change syntax highlighting to dark background
set background=dark

" show line number
set number

" highlight the current line you are on (Currently disabled due to lag)
"set cursorline

" search as characters are entered
:set incsearch           
" highlight matches
:set hlsearch            

" bind kj to escape
:inoremap kj <Esc>

" if a line that wraps to multiple lines, this allows
" us to move to that fake line as if it were a real one
:nnoremap j gj
:nnoremap k gk

" bind , to leader
let mapleader=","

" <Ctrl-l> redraws the screen and removes any search highlighting.
:nnoremap <leader><space> :nohlsearch<CR>

" Rebind ctrl-j/k/l/h to move between splits
" This may break things
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" File specific settings

" css and txt
au BufEnter *.css,*.txt set nocindent
au BufLeave *.css,*.txt set cindent

" py
au BufEnter *.py set expandtab
au BufLeave *.py set noexpandtab

