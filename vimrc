" Don’t attempt to be compatible with plain Vi
set nocompatible

" Manage plugins under ~/.vim/bundle with Pathogen
filetype off
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

" Turn on syntax highlighting and file type detection.
syntax enable
filetype plugin indent on

" Display incomplete commands and active mode
set showcmd
set showmode

" Intuitive backspacing.
set backspace=indent,eol,start

" Hide buffers instead of closing them
" This makes navigating between buffers much easier
set hidden

" Shell-style command-line completion
set wildmenu
set wildmode=list:longest
set wildignore=*.swp,*.bak,*.pyc,*.class

" Search is case-insensitive unless the expression contains a capital letter
set ignorecase
set smartcase

" Display relative line numbers
set number
set relativenumber

" Show cursor position
set ruler

" Highlight matches as you type.
set incsearch
set hlsearch

" Turn on line wrapping.
" Show 3 lines of context around the cursor.
set wrap                   
set scrolloff=3
set textwidth=80

" display tabs and spaces differently
set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.

" No beeping.
set visualbell

" Intelligent swap/backup file handling
set nobackup
set nowritebackup
set directory=$HOME/.vim/tmp//,.

" Display tabs as four spaces.
set tabstop=4
set shiftwidth=4
set shiftround
set smarttab

" ???
set cursorline

" Set the terminal's title
set title                         

" Default regexes to global
set gdefault
set laststatus=2

" Auto-indent, including after a paste
set autoindent
set copyindent

" Highlight matching brackets.
set showmatch

" Save lots of undo history.
set history=1000
set undolevels=1000

" Run custom commands using ,<command>
let mapleader=","

" Edit/reload .vimrc with ,ev/,sv
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>


""""""""""""""""""""""""""""""""""""""""
" Key bindings

" Shift-Enter to exit from insert mode
inoremap <S-CR> <Esc>l

" Use tab to jump between do/end, etc
nnoremap <tab> %
vnoremap <tab> %

" Colons? Semicolons? Same difference.
nnoremap ; :

" Press esc to clear search highlights
nnoremap <silent> <esc> :noh<return><esc>

" Quick window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Navigate up/down into wrapped lines
nnoremap j gj
nnoremap k gk

" Mac-style word deletion (Opt-Delete)
map <M-Del> C-w

" Toggle the file tree
map <F2> :NERDTreeToggle<CR>

" Toggle auto-indentation of large text blocks
set pastetoggle=<F3>


""""""""""""""""""""""""""""""""""""""""
" Appearance

set background=dark
colorscheme railscasts

hi Cursor guibg=white
hi Visual guibg=#333333 guifg=#EEEEEE

" NERDTree colors
autocmd VimEnter * hi NERDTreeDir guifg=#eeeeee gui=bold
autocmd VimEnter * hi NERDTreeDirSlash guifg=#eeeeee
autocmd VimEnter * hi NERDTreeExecFile gui=none


" MacVim appearance
set guifont=Menlo:h14             " Font family and font size.
set antialias                     " MacVim: smooth fonts.
set encoding=utf-8                " Use UTF-8 everywhere.
set guioptions-=T                 " Hide toolbar.
set guioptions-=L
set guioptions-=r                 " Don't show right scrollbar


""""""""""""""""""""""""""""""""""""""""
" Misc

" Remember last location in file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal g'\"" | endif
endif

" Thorfile, Rakefile, Vagrantfile and Gemfile are Ruby
au BufRead,BufNewFile {Gemfile,Rakefile,Vagrantfile,Thorfile,config.ru} set ft=ruby

" ZoomWin configuration
map <Leader><Leader> :ZoomWin<CR>

" MacVIM shift+arrow-keys behavior (required in .vimrc)
let macvim_hig_shift_movement = 1

" NERDTree configuration
let NERDTreeIgnore=['\.pyc$', '\.rbc$', '\~$']
map <F2> :NERDTreeToggle<CR>
let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1

" Command-T
let g:CommandTMaxHeight=20
let g:CommandTMatchWindowReverse=1

" Toggle spell check with F7
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


""""""""""""""""""""""""""""""""""""""""
" MacVim stuff
if has("gui_macvim")
  " Fullscreen takes up entire screen
  set fuoptions=maxhorz,maxvert

  " Command-][ to increase/decrease indentation
  vmap <D-]> >gv
  vmap <D-[> <gv

  " Command-/ to toggle comments
  map <D-/> <plug>NERDCommenterToggle<CR>
  imap <D-/> <Esc><plug>NERDCommenterToggle<CR>i

  " Command-Option-ArrowKey to switch viewports
  map <D-M-Up> <C-w>k
  imap <D-M-Up> <Esc> <C-w>k
  map <D-M-Down> <C-w>j
  imap <D-M-Down> <Esc> <C-w>j
  map <D-M-Right> <C-w>l
  imap <D-M-Right> <Esc> <C-w>l
  map <D-M-Left> <C-w>h
  imap <D-M-Left> <C-w>h

  " Adjust viewports to the same size
  map <Leader>= <C-w>=
  imap <Leader>= <Esc> <C-w>=
endif
