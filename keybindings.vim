
nnoremap <Leader>q :nohlsearch<CR>

" map commands for window switching
nnoremap <C-H> <C-w>h
nnoremap <C-L> <C-w>l
nnoremap <C-J> <C-w>j
nnoremap <C-K> <C-w>k

nnoremap <leader>h <C-w>5<
nnoremap <leader>l <C-w>5>
nnoremap <leader>j <C-w>5-
nnoremap <leader>k <C-w>5+

nnoremap <leader>ev :e $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <leader>ek :e $HOME/.vim/keybindings.vim<cr>

nnoremap H ^
nnoremap L $
" remap <esc> and disable arrows
inoremap jk <esc>

" disable EX mode
nnoremap Q <nop>
" git mappings
nnoremap <leader>gf :Git fetch<cr>
nnoremap <leader>gs :Gstatus<cr>
nnoremap <leader>gu :Git push<cr>
nnoremap <leader>gl :Git log --decorate --oneline --graph --all<cr>

" switching for relative line numbers
function! NumberToggle()
    if (&relativenumber == 1)
        set norelativenumber
    else
        set relativenumber
    endif
endfunc

nnoremap <C-n> :call NumberToggle()<cr>

set pastetoggle=<F2>

" undotree mapping
nnoremap U :UndotreeToggle<CR>
let g:undotree_SetFocusWhenToggle = 1

" special buffer delete
nnoremap <leader>x :Bdelete<cr>
nnoremap <leader>X :bdelete<cr>

" a subset of unimpaired, with modifications
nnoremap [q :cprevious<cr>
nnoremap ]q :cnext<cr>
nnoremap [Q :cfirst<cr>
nnoremap ]Q :clast<cr>
nnoremap [b :bprevious<cr>
nnoremap ]b :bnext<cr>
nnoremap [B :bfirst<cr>
nnoremap ]B :blast<cr>
nnoremap [t :tabprevious<cr>
nnoremap ]t :tabnext<cr>
nnoremap [T :tabfirst<cr>
nnoremap ]T :tablast<cr>
