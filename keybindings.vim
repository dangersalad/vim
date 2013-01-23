
" map commands for window switching
nnoremap <C-H> <C-w>h
nnoremap <C-L> <C-w>l
nnoremap <C-J> <C-w>j<C-w>_
nnoremap <C-K> <C-w>k<C-w>_

" remap <esc> and disable arrows
inoremap jk <esc>
inoremap <esc> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

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
nnoremap <Leader>- :ls<CR>

" NERDTree Mappings
noremap <F5> <ESC>:NERDTreeToggle<CR>
noremap <F7> <ESC>:NERDTreeMirror<CR>

let g:tagbar_usearrows = 1

nnoremap <F6> :TagbarToggle<CR>
nnoremap - :Switch<CR>

set pastetoggle=<F2>

let g:snips_trigger_key="<C-@>"


