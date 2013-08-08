" use Vim settings only
set nocompatible

" initialize pathogen
runtime pathogen/autoload/pathogen.vim
call pathogen#incubate()
call pathogen#helptags()


" set number                 " line numbers
set number
set relativenumber                 " line numbers
set backspace=indent,eol,start        " allow backspace in insert mode
set history=1000
set showcmd                " show incomplete commands at the bottom
set showmode                " show mode at the bottom
set autoread                " read outside changes

set hidden                 " allow buffers in the background

" folders
silent execute '!mkdir -p $HOME/.vim/tmp/{backup,swap,view,undo}'
set backupdir=$HOME/.vim/tmp/backup/
set backup
set directory=$HOME/.vim/tmp/swap/
set viewdir=$HOME/.vim/tmp/view/
set undodir=$HOME/.vim/tmp/undo/
" store undo files, undo edits after deleting a buffer
set undofile
set viminfo='50,n$HOME/.vim/tmp/viminfo
" syntax, duh
syntax on


" search settings
set incsearch         " finds match as search is typed
set hlsearch          " highlighs search
nnoremap <Leader>q :nohlsearch<CR>


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

" a function to run things silently
command! -nargs=1 Silent
\ | execute ':silent !'.<q-args>
\ | execute ':redraw!'

" Display tabs and trailing spaces visually
set list listchars=tab:▶\ ,trail:·,extends:»,precedes:«

" set nowrap "Don't wrap lines
set linebreak "Wrap lines at convenient points
set showbreak=↪
set textwidth=119
set wrapmargin=120
set formatoptions=qrnl
set colorcolumn=120
set splitright splitbelow
set shortmess+=afilmnrxoOtTI

source ~/.vim/keybindings.vim

" use zenburn theme
" only if running in xterm, looks like shit on a tty
if $TERM == "linux"
    colorscheme vividchalk
else
    set t_Co=256
    let g:zenburn_high_Contrast=1
    let g:zenburn_force_dark_Background = 1
    colorscheme zenburn
endif

" supertab settings
let g:SuperTabDefaultCompletionType = "context"
let g:SuperTabNoCompleteAfter = ['^', ',', '"', '\s', "'"]

" completion functions
autocmd FileType php set omnifunc=phpcomplete#CompletePHP

" sytastic settings
let g:syntastic_auto_loc_list = 1
let g:syntastic_mode_map={ 'mode': 'active', 'active_filetypes': [], 'passive_filetypes': ['html'] }

" java
let no_java_maps=1

" cursor config
if &term =~ "xterm\\|rxvt"
  " in insert mode
  " let &t_SI = "\<Esc>]12;lightblue\x7"
  " otherwise
  " let &t_EI = "\<Esc>]12;grey\x7"
  " silent !echo -ne "\033]12;grey\007"
  " reset cursor when vim exits
  " autocmd VimLeave * silent !echo -ne "\033]112\007"
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
  " let &t_SI .= "\<Esc>[6 q"
  " let &t_EI .= "\<Esc>[2 q"
endif

" closetag plugin for html, xml, etc
autocmd FileType html,htmldjango,jinjahtml,eruby,mako let b:closetag_html_style=1
autocmd FileType html,xhtml,xml,htmldjango,jinjahtml,eruby,mako source ~/.vim/bundle/closetag/plugin/closetag.vim

" php doc
autocmd FileType php nnoremap <Leader>p :call PhpDoc()<CR>


" highlighting
highlight MatchParen cterm=bold ctermbg=black ctermfg=green
autocmd BufRead,BufNewFile *.qml set filetype=qml
autocmd BufRead,BufNewFile *.less set filetype=less

" ctrl p ignore
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/]\.?(git|hg|svn|dojo|dijit|dojox|util)$',
    \ 'file': '\v\.(exe|so|dll)$',
    \ }


" marker stuff
set foldmethod=manual
au BufWinLeave * silent! mkview
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

