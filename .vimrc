" enable pathogen plugin manager
"execute pathogen#infect()
" allow plugins for individual files
"filetype plugin indent on

" disable vim beeps for windows 10
set visualbell

" make tabs 4 columns wide
:set tabstop=4
" do not replace tabs with spaces
:set noexpandtab

" enable auto indenting
:set autoindent
:set cindent
" auto indent size to 4
:set shiftwidth=4

" change syntax highlighting to dark background
:set background=dark

" show line number
:set number

" highlight the current line you are on
:set cursorline

:set incsearch           " search as characters are entered
:set hlsearch            " highlight matches

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

" Make css files indent correctly
au BufEnter *.css set nocindent
au BufLeave *.css set cindent

" Disable cindent for text files
au BufEnter *.txt set nocindent
au BufLeave *.txt set cindent

"change the title of terminal to the file you are editing
let &titlestring = "vim(" . expand("%:t") . ")"
if &term == "screen"
	set t_ts=^[k
	set t_fs=^[\
endif
if &term == "screen" || &term == "xterm-256color"
	set title
endif
