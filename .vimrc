" SETUP
" ####################
set encoding=utf-8

call plug#begin('~/.vim/plugged')
Plug 'mhinz/vim-startify'

" AIRLINE
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" THEMES
Plug 'morhetz/gruvbox'
Plug 'altercation/vim-colors-solarized'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'sonph/onehalf', {'rtp': 'vim/'}
Plug 'sickill/vim-monokai'

Plug 'majutsushi/tagbar'
Plug 'dense-analysis/ale'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/vim-peekaboo'    " Registers view
"Plug 'junegunn/vim-easy-align'

Plug 'mbbill/undotree'
Plug 'sirver/ultisnips'
" Plug 'honza/vim-snippets'

" Plug 'tmhedberg/SimpylFold'
Plug 'kalekundert/vim-coiled-snake'
Plug 'Konfekt/FastFold'
" Plug 'davidhalter/jedi-vim'
Plug 'vim-python/python-syntax'
Plug 'vim-scripts/indentpython.vim'

Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-unimpaired'

Plug 'yggdroot/indentline'
" Plug 'TaDaa/vimade'           " Fade Buffers
Plug 'jiangmiao/auto-pairs'
Plug 'ajh17/vimcompletesme'   " tab-completion plugin

call plug#end()

filetype plugin indent on
syntax enable
" set term=xterm-256color

" STARTIFY
let g:startify_relative_path = 1
let g:startify_files_number = 8
let g:startify_update_oldfiles = 1
let g:startify_change_to_dir = 1
let g:startify_session_persistence = 1
let g:startify_bookmarks = [
    \ { 'c': '~/.vimrc' },
    \ '~/Users/algelab/Library/Preferences/MAXON/',
    \ ]

" #################### COLOR
set background=dark
" set background=light

" let g:gruvbox_bold = 1
" let g:gruvbox_underline = 1
" let g:gruvbox_vert_split = "bg1"
" colorscheme  gruvbox
" colorscheme monokai
let g:dracula_italic = 0
" packadd! dracula
colorscheme dracula
" colorscheme solarized
" colorscheme onehalfdark
" let g:airline_theme='onehalfdark'


"#################### Airline Prefs
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#branch#enabled = 1


" #################### Indent Line
let g:indentLine_char_list = ['|', '¦', '┆', '┊']

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsSnippetDirectories=["UltiSnips"]
let g:UltiSnipsEditSplit="horizontal"
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsListSnippets="<c-tab>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

" Disable Background Color Erase (BCE) so that color schemes
" render properly when inside 256-color tmux and GNU screen.
if &term =~ '256color'
    set t_ut=
endif


" ALE
let g:ale_enabled = 0
let g:ale_sign_warning = '▲'
let g:ale_sign_error = '✗'
let g:ale_fixers = {'*': ['remove_trailing_lines', 'trim_whitespace']}
let g:ale_fix_on_save = 1


" VIMADE
let g:vimade = {}
let g:vimade.fadelevel = 0.7
let g:vimade.enablesigns = 1


" The matchit plugin makes the % command work better, but it is not backwards
" compatible.
" The ! means the package won't be loaded right away but when plugins are
" loaded during initialization.
if has('syntax') && has('eval')
  packadd! matchit
endif



" #################### FINDING FILES:
" Search down into subfolders
" Provides tab-completion for all file-related tasks
set path+=**
" Display all matching files when we tab complete
set wildmode=list:longest
set wildmenu
set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing
set wildignore+=*vim/backups*
set wildignore+=*sass-cache*
set wildignore+=*DS_Store*
set wildignore+=vendor/rails/**
set wildignore+=vendor/cache/**
set wildignore+=*.gem
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.gif

    " NOW WE CAN:
    " - Hit tab to :find by partial match
    " - Use * to make it fuzzy

    " THINGS TO CONSIDER:
    " - :b lets you autocomplete any open buffer


" BASICs
" ####################

set autoindent
set complete-=i "set complete=.,w,b,u,t
set smarttab
set backspace=indent,eol,start " Allow backspace for everything
set history=200		" keep 200 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set ttimeout		" time out for key codes
set ttimeoutlen=100	" wait up to 100ms after Esc for special key
set noswapfile
set tabstop=2
set softtabstop=2
set expandtab
set smartcase
set nobackup
set undodir=~/.vim/undodir
set undofile
set showcmd
set showmatch
set clipboard=unnamed
set number              " Line number
set cursorline
set nowrap       "Don't wrap lines
set linebreak    "Wrap lines at convenient points
set nostartofline " Keep the cursor on the same column
set autoread " check one time after 4s of inactivity in normal mode
" Show a few lines of context around the cursor.  Note that this makes the
" text scroll if you mouse-click near the start or end of the window.
set scrolloff=5
" set foldenable
" set nofoldenable        "dont fold by default
" set foldmethod=manual "fold based on indent
" set foldlevel=2
" set foldnestmax=2    "deepest fold is 3 levels
set viewoptions=folds,cursor
set sessionoptions=folds


if &listchars ==# 'eol:$'
  set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
endif

if !&scrolloff
  set scrolloff=1
endif
if !&sidescrolloff
  set sidescrolloff=5
endif
set display+=lastline

if v:version > 703 || v:version == 703 && has("patch541")
  set formatoptions+=j " Delet comment character when joining commented lines
endif

if &history < 1000
  set history=1000
endif
if &tabpagemax < 50
  set tabpagemax=50
endif

" Allow color schemes to do bright colors without forcing bold.
if &t_Co == 8 && $TERM !~# '^Eterm'
  set t_Co=16
endif

set incsearch
" Use <C-L> to clear the highlighting of :set hlsearch.
" if maparg('<C-L>', 'n') ==# ''
"   nnoremap <silent> <C-L> :nohlsearch<C-R>=has('diff')?'<Bar>diffupdate':''<CR><CR><C-L>
" endif

" Load matchit.vim, but only if the user hasn't installed a newer version.
if !exists('g:loaded_matchit') && findfile('plugin/matchit.vim', &rtp) ==# ''
  runtime! macros/matchit.vim
endif


au CursorHold * checktime

augroup BgHighlight
    autocmd!
    autocmd WinEnter * set colorcolumn=88
    autocmd WinLeave * set colorcolumn=0
augroup END


" #################### FZF
" Allow passing optional flags into the Rg command.
"   Example: :Rg myterm -g '*.md'
command! -bang -nargs=* Rg call fzf#vim#grep("rg --column --line-number --no-heading --color=always --smart-case " . <q-args>, 1, <bang>0)


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


" Whitespace highlights
" ####################
" Use the below highlight group when displaying bad whitespace is desired.
highlight BadWhitespace ctermbg=yellow guibg=red
" Display tabs at the beginning of a line in Python mode as bad.
au BufRead,BufNewFile *.py,*.pyw match BadWhitespace /^\t\+/
" Make trailing whitespace be flagged as bad.
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/


function! StripTrailingWhitespace()
  if !&binary && &filetype != 'diff'
    normal mz
    normal Hmy
    %s/\s\+$//e
    normal 'yz<CR>
    normal `z
  endif
endfunction

" #################### FILE BROWSING:
let g:netrw_winsize = 25
let g:netrw_banner=0        " disable annoying banner
let g:netrw_browse_split=4  " open in prior window
let g:netrw_altv=1          " open splits to the right
let g:netrw_liststyle=3     " tree view
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'

    " NOW WE CAN:
    " - :edit a folder to open a file browser
    " - <CR>/v/t to open in an h-split/v-split/tab
    " - check |netrw-browse-maps| for more mappings


" Persistent folds between Vim sessions
augroup AutoSaveFolds
  autocmd!
  " view files are about 500 bytes
  " bufleave but not bufwinleave captures closing 2nd tab
  " nested is needed by bufwrite* (if triggered via other autocmd)
  autocmd BufWinLeave,BufLeave,BufWritePost ?* nested silent! mkview!
  autocmd BufWinEnter ?* silent! loadview
augroup end


" -----------------------------------------------------------------------------
" Basic mappings
" -----------------------------------------------------------------------------
let mapleader = " "

" Bind F7 to fixing problems with ALE
nmap <F7> <Plug>(ale_fix)

nnoremap <Leader>u :UndotreeShow<CR>

" Press * to search for the term under the cursor or a visual selection and
" then press a key below to replace all instances of it in the current file.
nnoremap <Leader>r :%s///g<Left><Left>
nnoremap <Leader>rc :%s///gc<Left><Left><Left>

" The same as above but instead of acting on the whole file it will be
" restricted to the previously visually selected range. You can do that by
" pressing *, visually selecting the range you want it to apply to and then
" press a key below to replace all instances of it in the current selection.
xnoremap <Leader>r :s///g<Left><Left>
xnoremap <Leader>rc :s///gc<Left><Left><Left>

" Clear search
nnoremap <C-L> :nohlsearch<CR><C-L>

" TagbarToggle
nmap <F8> :TagbarToggle<CR>

" Smart way to move between panes
map <up> <C-w><up>
map <down> <C-w><down>
map <left> <C-w><left>
map <right> <C-w><right>

"FZF MAPS
nmap <Leader>f :Files<CR>
nmap <Leader>b :Buffers<CR>
nmap <Leader>h :History<CR>
nmap <Leader>t :BTags<CR>
nmap <Leader>l :BLines<CR>
nmap <Leader>: :History:<CR>
nmap <Leader>C :Commands<CR>

" easier write
nmap <leader>w :w!<cr>

" move in long lines
nnoremap k gk
nnoremap j gj

nnoremap <leader>- :call StripTrailingWhitespace()<cr>

"split navigations
if bufwinnr(1)
  map + <C-W>+
  map - <C-W>-
endif
" nnoremap <C-j> <C-w><C-j>
" nnoremap <C-k> <C-w><C-k>
" nnoremap <C-l> <C-w><C-l>
" nnoremap <C-h> <C-w><C-h>
