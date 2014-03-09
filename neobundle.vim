if has('vim_starting')
    set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#rc(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'Shougo/vimproc', {
            \ 'build' : {
            \     'windows' : 'make -f make_mingw32.mak',
            \     'cygwin' : 'make -f make_cygwin.mak',
            \     'mac' : 'make -f make_mac.mak',
            \     'unix' : 'make -f make_unix.mak',
            \    },
            \ }

NeoBundle "Shougo/unite.vim"
NeoBundle "tsukkee/unite-help"
NeoBundle "tsukkee/unite-tag"
NeoBundle "tpope/vim-fugitive"
NeoBundle "tpope/vim-surround"
NeoBundle "tpope/vim-repeat"
NeoBundle "tpope/vim-commentary"
NeoBundle "tpope/vim-vinegar"
NeoBundle "jnurmine/Zenburn"
NeoBundle "mhinz/vim-signify"
NeoBundle "Yggdroot/indentLine"
NeoBundle "tpope/vim-obsession"
NeoBundle "moll/vim-bbye"
NeoBundle "scrooloose/syntastic"
NeoBundle "sheerun/vim-polyglot"

NeoBundleCheck
