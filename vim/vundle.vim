""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" begin vundle setup
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" required: be iMproved
set nocompatible

" required: temporarily disable filetype supprt
filetype off

" required: set the runtime path to include vundle
set rtp+=~/.vim/bundle/vundle/

" required: initialize vundle
" optional: install plugins to custom location by sending a path to #begin()
call vundle#begin()

" required: let vundle manage vundle
Plugin 'gmarik/vundle'


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" language support
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" golang 
Plugin 'https://github.com/fatih/vim-go'

" jinja2
Plugin 'Glench/Vim-Jinja2-Syntax'

" markdown
Plugin 'tpope/vim-markdown'

" rust
Plugin 'https://github.com/rust-lang/rust.vim'

" swift
Plugin 'Keithbsmiley/swift.vim'

" toml
Plugin 'https://github.com/cespare/vim-toml'


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" search in files
Plugin 'mileszs/ack.vim'

" fuzzy file finder
Plugin 'kien/ctrlp.vim'

" navigation function definitions with ctrlp
Plugin 'tacahiroy/ctrlp-funky'

" colour schemes
Plugin 'chriskempson/tomorrow-theme', { 'rtp': 'vim/' }

" vim/tmux integration
Plugin 'christoomey/vim-tmux-navigator'

" gitgutter - shows git diff status in the gutter
Plugin 'airblade/vim-gitgutter'

" search for documentation in Dash.app (Mac only)
Plugin 'rizzatti/dash.vim'

" autocomplete based on libclang
Plugin 'https://github.com/Valloric/YouCompleteMe'

" because other people have incorrect opinions about indentation
Plugin 'https://github.com/editorconfig/editorconfig-vim'

" syntax checker
Plugin 'https://github.com/scrooloose/syntastic'


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" finalize vundle setup
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" required: end the setup process
call vundle#end()

" required: enable filetype and indent support
filetype plugin indent on

