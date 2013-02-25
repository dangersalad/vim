" use Vim settings only
set nocompatible

" initialize pathogen
runtime pathogen/autoload/pathogen.vim
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()


" set number 				" line numbers
set relativenumber 				" line numbers
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
nnoremap <Leader>q :nohlsearch<CR>


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
    colorscheme vividchalk
else
    set t_Co=256
    colorscheme zenburn
endif

" supertab settings
let g:SuperTabDefaultCompletionType = "context"

" sytastic settings
let g:syntastic_auto_loc_list = 1
let g:syntastic_mode_map={ 'mode': 'active', 'active_filetypes': [], 'passive_filetypes': ['html'] }

" cursor config
if &term =~ "xterm\\|rxvt"
  " in insert mode
  let &t_SI = "\<Esc>]12;lightblue\x7"
  " otherwise
  let &t_EI = "\<Esc>]12;grey\x7"
  silent !echo -ne "\033]12;grey\007"
  " reset cursor when vim exits
  autocmd VimLeave * silent !echo -ne "\033]112\007"
  " use \003]12;gray\007 for gnome-terminal
endif

if &term =~ '^xterm'
  " 1 or 0 -> blinking block
  " 2 solid block
  " 3 -> blinking underscore
  " 4 solid underscore
  " Recent versions of xterm (282 or above) also support
  " 5 -> blinking vertical bar
  " 6 -> solid vertical bar
  let &t_SI .= "\<Esc>[6 q"
  let &t_EI .= "\<Esc>[2 q"
endif



" highlighting
highlight MatchParen cterm=bold ctermbg=black ctermfg=green
autocmd BufRead,BufNewFile *.qml set filetype=qml
autocmd BufRead,BufNewFile *.less set filetype=less

" marker stuff
set foldmethod=manual
au BufWinLeave * mkview
au BufWinEnter * silent! loadview

"highlight for status bar
hi User1 ctermbg=235 ctermfg=red    guibg=#262626 guifg=red
hi User2 ctermbg=235 ctermfg=blue   guibg=#262626 guifg=blue
hi User3 ctermbg=235 ctermfg=green  guibg=#262626 guifg=green
hi User4 ctermbg=235 ctermfg=yellow  guibg=#262626 guifg=yellow
hi User5 ctermbg=235 ctermfg=lightgray  guibg=#262626 guifg=lightgray

" stats bar
set statusline=%3*%t
set statusline+=%1*%h%m%r%w
set statusline+=%=
set statusline+=%5*%l/%L
set statusline+=%1*%y%4*[%{strlen(&fenc)?&fenc:&enc}, " encoding
set statusline+=%{&fileformat}]              " file format
set statusline+=%2*
set statusline+=%{fugitive#statusline()}
set laststatus=2

