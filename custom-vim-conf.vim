
" Colorscheme
set background=dark
colorscheme deus

" Syntax
set textwidth=80 " maximum of 80 characters per line
set tabstop=4 " 1 tab = 4 spaces
set shiftwidth=4 " for when you use << and >>
set autoindent " on newline, keep current indentation
set expandtab& " disable using tabs instead of spaces (overridden from basic.vim)

" etc
set number " show line numbers
set foldcolumn=0 " no line number gap
set foldlevelstart=99 " disable folding

" SIMPL, see .vimdir/syntax/simpl.vim
au BufRead,BufNewFile *.simpl setfiletype simpl

" remap for <Alt>+<Right> key combo on mac
" Alt-Right on Mac maps to <Esc>f, so we will remap to <Esc>w
map <Esc>f <Esc>w

" disable bell
set visualbell t_vb=
