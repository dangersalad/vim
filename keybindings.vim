
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

" NERDTree Mappings
map <F5> <ESC>:NERDTreeToggle<CR>
map <F7> <ESC>:NERDTreeMirror<CR>

let g:tagbar_usearrows = 1

nnoremap <F6> :TagbarToggle<CR>
nnoremap - :Switch<CR>

set pastetoggle=<F2>

let g:snips_trigger_key="<C-@>"


