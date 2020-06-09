" move in long lines
nnoremap k gk
nnoremap j gj

" Use alt + hjkl to resize windows
nnoremap <M-j>    :resize -2<CR>
nnoremap <M-k>    :resize +2<CR>
nnoremap <M-h>    :vertical resize -2<CR>
nnoremap <M-l>    :vertical resize +2<CR>

" I hate escape more than anything else
" inoremap jk <Esc>
" inoremap kj <Esc>

" Easier Write
nmap <Leader>w :w!<cr>

" Smart Way to move between panes
map <up> <C-w><up>
map <down> <C-w><down>
map <left> <C-w><left>
map <right> <C-w><right>

" Clear search
nnoremap <C-L> :nohlsearch<CR><C-L>

" TagbarToggle
nmap <F8> :TagbarToggle<CR>

"FZF MAPS
nmap <Leader>f :Files<CR>
nmap <Leader>b :Buffers<CR>
nmap <Leader>h :History<CR>
nmap <Leader>t :BTags<CR>
nmap <Leader>l :BLines<CR>
nmap <Leader>: :History:<CR>
nmap <Leader>C :Commands<CR>
