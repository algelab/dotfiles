"#################### PYTHON Setup PEP 8
au BufNewFile,BufRead *.pyp set filetype=python

augroup Python
au!
au BufNewFile,BufRead *.py
    \ set tabstop=4		|
    \ set softtabstop=4	|
    \ set shiftwidth=4	|
    \ set textwidth=79	|
    \ set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class	|
    \ set fileformat=unix
au FileType python nnoremap <buffer> <localleader>c I# <esc>
augroup END

let python_highlight_all = 1  " More syntax highlighting.

