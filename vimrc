" Don’t attempt to be compatible with plain Vi
set nocompatible

" Mangae plugins under ~/.vim/bundle with Pathogen
filetype off
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

" Run custom commands using ,<command>
let mapleader=","

" Edit/reload .vimrc with ,ev/,sv
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

" Hide buffers instead of closing them
" This makes navigating between buffers much easier
set hidden

" disable swap files
set nobackup
set noswapfile

" enable advanced colouring, if available
if &t_Co >= 256 || has("gui_running")
   colorscheme railscasts
endif

" enable basic colouring as defined by the terminal
if &t_Co > 2 || has("gui_running")
   syntax on
endif

" display tabs and spaces differently
set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.

" enable paste mode with F3
" paste mode allows dumb insertion of large blocks of text
set pastetoggle=<F3>

" enable scrolling with the pointing device (mouse/trackpad)
" note that this disables selection with the pointing device
" use vim-togglemouse to work around
set mouse=a

" disable the arrow keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" navigate up/down into wrapped lines
nnoremap j gj
nnoremap k gk

" toggle the file tree
map <F2> :NERDTreeToggle<CR>

" navigate between windows using Ctrl-[hjkl] instead of Ctrl-W [hjkl]
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" enable Mac-style word deletion (Opt-Delete)
map <M-Del> C-w

" clear highlighted search with ,/
nmap <silent> <leader>/ :nohlsearch<CR>

" MacVim-specific settings
set guifont=Menlo:h10	" display 10pt Menlo
set guioptions-=T		" don’t display the toolbar

" other settings
set number			" display line numbers
set tabstop=4		" display \t as four spaces
set backspace=indent,eol,start
					" delete over everything in insert mode
set autoindent		" enable auto-indent
set copyindent		" re-indent pasted text
set shiftwidth=4	" number of spaces to use for auto-indent
set shiftround		" use multiples of shiftwidth when indenting with '<' and '>'
set smarttab		" insert tabs based on shiftwidth, not tabstop
set showmatch		" highlight matching brackets
set ignorecase		" ignore case when searching
set smartcase		" ignore case when searching only if search is all-lowercase
set hlsearch		" highlight search terms
set incsearch		" search-as-you-type
set history=1000	" remember more commands and search history
set undolevels=1000	" use many muchos levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.class
					" ignore these filetypes
set title			" change the terminal's title
set wildmenu		" auto-complete filenames

" toggle spell check with F7
if v:version >= 700
    function! <SID>ToggleSpell()
       if &spell != 1
           setlocal spell spelllang=en_us
       else
           setlocal spell!
       endif
    endfunction
    nnoremap <silent> <F7> <ESC>:call <SID>ToggleSpell()<CR>
    setlocal spell spelllang=en_uk
endif
