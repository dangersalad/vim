
" map commands for window switching
nnoremap <C-H> <C-w>h
nnoremap <C-L> <C-w>l
nnoremap <C-J> <C-w>j
nnoremap <C-K> <C-w>k

nnoremap <leader>h <C-w>5<
nnoremap <leader>l <C-w>5>
nnoremap <leader>j <C-w>5-
nnoremap <leader>k <C-w>5+


" remap <esc> and disable arrows
inoremap jk <esc>

" disable EX mode
nnoremap Q <nop>


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
