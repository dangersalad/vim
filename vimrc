set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set number
set foldmethod=marker

syntax on
filetype plugin indent on

" map NERDTreeToggle to F5
map <F5> <ESC>:NERDTreeToggle<CR>
map <F6> <ESC>:TlistToggle<CR>
map <F7> <ESC>:NERDTreeMirror<CR>

" map commands for window switching
map <C-H> <C-w>h
map <C-L> <C-w>l
map <C-J> <C-w>j<C-w>_
map <C-K> <C-w>k<C-w>_

" disable comment formatting
set formatoptions=tnq

" use 256 colors
set t_Co=256
" set t_AB=^[[48;5;%dm
" set t_AF=^[[38;5;%dm

" use zenburn theme
colorscheme zenburn
