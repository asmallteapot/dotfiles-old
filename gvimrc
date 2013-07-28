" ALWAYS USE UTF-8 EVERYWHERE
set encoding=utf-8

" hide superfluous widgets
set guioptions-=T	" hide toolbar
set guioptions-=L	" hide left scrollbar
set guioptions-=r	" hide right scrollbar

if has("gui_macvim")
	" enable antialiased fotns
	set antialias

	" Menlo 14pt
	set guifont=Menlo:h14

	" make full screen use the entire screen
	set fuoptions=maxhorz,maxvert

	" Command-][ to increase/decrease indentation
	vmap <D-]> >gv
	vmap <D-[> <gv

	" switch viewports with Command-Option-<arrow>
	map <D-M-Up> <C-w>k
	imap <D-M-Up> <Esc> <C-w>k
	map <D-M-Down> <C-w>j
	imap <D-M-Down> <Esc> <C-w>j
	map <D-M-Right> <C-w>l
	imap <D-M-Right> <Esc> <C-w>l
	map <D-M-Left> <C-w>h
	imap <D-M-Left> <C-w>h
endif
