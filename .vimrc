" Load plugins with vim-plug
call plug#begin('~/.vim/plugged')

"Plug 'fatih/vim-go'

Plug 'vim-jp/vim-go-extra'

"Plug 'vim-syntastic/syntastic'

"Plug 'rjohnsondev/vim-compiler-go'

call plug#end()

" Set go root
let g:golang_goroot = "/home/red/go"

" Set go compiler
autocmd FileType go compiler go

" gofmt on file save
autocmd FileType go autocmd BufWritePre <buffer> Fmt

" Run goimports on file save
let g:gofmt_command ="~/go/bin/goimports"

" case insensitive searching (case sensitive when you use a capital)
set ignorecase
set smartcase

" disable vim beeps for windows 10
set visualbell
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

set backspace=indent,eol,start
