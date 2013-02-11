" use Vim settings only
set nocompatible

" initialize pathogen
runtime pathogen/autoload/pathogen.vim
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()


set number 				" line numbers
" set backspace=indent,eol,start		" allow backspace in insert mode
set history=1000
set showcmd				" show incomplete commands at the bottom
set showmode				" show mode at the bottom
set autoread				" read outside changes

set hidden 				" allow buffers in the background

" syntax, duh
syntax on


" search settings
set incsearch 		" finds match as search is typed
set hlsearch  		" highlighs search


" ================ Persistent Undo ==================
" Keep undo history across sessions, by storing in file.
" Only works all the time.

silent !mkdir ~/.vim/backups > /dev/null 2>&1
set undodir=~/.vim/backups
set undofile

" ================ Indentation ======================

set autoindent
set smartindent
set smarttab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set expandtab


filetype plugin on
filetype indent on

" Display tabs and trailing spaces visually
set list listchars=tab:\ \ ,trail:·

set nowrap "Don't wrap lines
set linebreak "Wrap lines at convenient points

source ~/.vim/keybindings.vim

" use zenburn theme
" only if running in xterm, looks like shit on a tty
if $TERM == "linux"
    echo "tty?"
    colorscheme vividchalk
else
    set t_Co=256
    colorscheme zenburn
endif

" supertab settings
let g:SuperTabDefaultCompletionType = "context"

" sytastic settings
let g:syntastic_auto_loc_list = 1


" highlighting
highlight MatchParen cterm=bold ctermbg=black ctermfg=green
autocmd BufRead,BufNewFile *.qml set filetype=qml
autocmd BufRead,BufNewFile *.less set filetype=less

" marker stuff

set foldmethod=manual
au BufWinLeave * mkview
au BufWinEnter * silent loadview
