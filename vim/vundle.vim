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

" navigation function definitions with ctrpl
Bundle 'tacahiroy/ctrlp-funky'

" colour schemes
Bundle 'chriskempson/tomorrow-theme', { 'rtp': 'vim/' }

" syntax colouring for markdown
Bundle 'tpope/vim-markdown'

" vim/tmux integration
Bundle 'christoomey/vim-tmux-navigator'

" Golang
Bundle 'https://github.com/fatih/vim-go'

" Swift
Bundle 'Keithbsmiley/swift.vim'

" gitgutter - shows git diff status in the gutter
Bundle 'airblade/vim-gitgutter'

""""""""""""""""""""""""""""""""""""""""
" END USER PLUGINS
""""""""""""""""""""""""""""""""""""""""

" turn on filetype support
filetype plugin indent on
