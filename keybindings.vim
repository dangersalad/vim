
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

" maps for buffer commands
nnoremap <Leader>0 :b0<CR>
nnoremap <Leader>1 :b1<CR>
nnoremap <Leader>2 :b2<CR>
nnoremap <Leader>3 :b3<CR>
nnoremap <Leader>4 :b4<CR>
nnoremap <Leader>5 :b5<CR>
nnoremap <Leader>6 :b6<CR>
nnoremap <Leader>7 :b7<CR>
nnoremap <Leader>8 :b8<CR>
nnoremap <Leader>9 :b9<CR>
" nnoremap <Leader>- :ls<CR>
nnoremap <Leader>- :CtrlPBuffer<CR>
nnoremap <Leader>= :b#<CR>
nnoremap <Leader>s :CtrlPMixed<CR>

" NERDTree Mappings
noremap <F5> <ESC>:NERDTreeToggle<CR>
noremap <F7> <ESC>:NERDTreeMirror<CR>

let g:tagbar_usearrows = 1

nnoremap <F6> :TagbarToggle<CR>

set pastetoggle=<F2>


imap <C-@> <Plug>snipMateNextOrTrigger
smap <C-@> <Plug>snipMateNextOrTrigger

