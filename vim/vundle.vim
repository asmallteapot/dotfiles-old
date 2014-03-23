" turn off filetype support
filetype off

" initialize vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let vundle manage vundle
Bundle 'gmarik/vundle'

""""""""""""""""""""""""""""""""""""""""
" BEGIN USER PLUGINS
""""""""""""""""""""""""""""""""""""""""

" search in files
Bundle 'mileszs/ack.vim'

" fuzzy file finder
Bundle 'kien/ctrlp.vim'

" colour schemes
Bundle 'chriskempson/tomorrow-theme', { 'rtp': 'vim/' }

" syntax colouring for markdown
Bundle 'tpope/vim-markdown'

" vim/tmux integration
Bundle 'christoomey/vim-tmux-navigator'

""""""""""""""""""""""""""""""""""""""""
" END USER PLUGINS
""""""""""""""""""""""""""""""""""""""""

" turn on filetype support
filetype plugin indent on
