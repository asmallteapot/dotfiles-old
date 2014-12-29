" backwards compatibility is dumb
set nocompatible

" load vundle
if filereadable(expand("~/.vim/vundle.vim"))
	source ~/.vim/vundle.vim
endif

" needed to make vim load zshrc
set shell=zsh

" why are these not the defaults
set number				" line numbers
set cursorline			" highlight the current line
set backspace=indent,eol,start	" make the delete key act sane
set visualbell			" don't beep
set autoread			" reload files when changed

" status line
set showcmd				" show incomplete commands
set showmode			" show the current mode
set laststatus=2		" always show the status line
set ruler				" show the position of the cursor

" command completion
set wildmenu					" enable command completion
set wildmode=list:longest,full	" show longest matching string first

" ignore file patterns
set wildignore+=*.pyc

" set the terminal's title
set title

" This makes vim act like all other editors, buffers can
" exist in the background without being in a window.
" http://items.sjbach.com/319/configuring-vim-right
set hidden

" syntax colouring
syntax on
set background=dark
colorscheme Tomorrow-Night-Bright

" make comma the leader key
let mapleader=","

" turn off swapfiles
set noswapfile
set nobackup
set nowb

" make indentation not suck
set autoindent
set smartindent
set smarttab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set expandtab

" line wrapping
set wrap						" soft-wrap lines automatically
set linebreak					" don't wrap in the middle of words
set colorcolumn=81				" display a guide at the 80th column

" search
set incsearch		" incremental search (search as you type)
set hlsearch		" highlight search results
set ignorecase		" default to case-insensitive search
set smartcase		" searching for capital letters switches to case-sensitive

""""""""""""""""""""""""""""""""""""""""
" KEYBINDINGS
""""""""""""""""""""""""""""""""""""""""
" reload vimrc
nnoremap <leader>rc :source $MYVIMRC<return>

" reload gvimrc
nnoremap <leader>rg :source $MYGVIMRC<return>

" open and switch to a new split
nnoremap <leader>sv <C-w>v<C-w>l
nnoremap <leader>s <C-w>s<C-w>j

" kill trailing whitespace
nnoremap <leader>w :%s/\s\+$//<cr>:let @/=''<CR>

" toggle search highlights
nnoremap <C-f> :set hlsearch!<CR>

" use tab to jump between do/end etc.
nnoremap <tab> %
vnoremap <tab> %

""""""""""""""""""""""""""""""""""""""""
" PLUGIN CONFIGURATION
""""""""""""""""""""""""""""""""""""""""
" ack.vim
nnoremap <leader>a :Ack<space>		" Use ',a' to run an Ack search.


" ctrl-p
" keybindings
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" search in the root directory of the current project
" 'r' == nearest ancestor path with version control
" 'a' == directory of current file, unless shell CWD isn't direct ancestor
let g:ctrlp_working_path_mode = 'ra'

" open files created with ctrl-y in the current panel
let g:ctrlp_open_new_file = 'r'

" load extensions
let g:ctrlp_extensions = ['funky']

