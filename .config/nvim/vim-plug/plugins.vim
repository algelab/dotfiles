" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

Plug 'mhinz/vim-startify'

" AIRLINE
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" THEMES
Plug 'morhetz/gruvbox'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'sonph/onehalf', {'rtp': 'vim/'}
Plug 'sickill/vim-monokai'
Plug 'altercation/vim-colors-solarized'

Plug 'majutsushi/tagbar'
Plug 'dense-analysis/ale'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/vim-peekaboo'    " Registers view

Plug 'junegunn/vim-easy-align'
" Plug 'mbbill/undotree'
Plug 'sirver/ultisnips'
" Plug 'honza/vim-snippets'
" Plug 'kalekundert/vim-coiled-snake'
" Plug 'davidhalter/jedi-vim'
" Plug 'ajh17/vimcompletesme'   " tab-completion plugin

Plug 'tmhedberg/SimpylFold'
Plug 'Konfekt/FastFold'
Plug 'vim-python/python-syntax'
Plug 'vim-scripts/indentpython.vim'

Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-unimpaired'

Plug 'yggdroot/indentline'
Plug 'TaDaa/vimade'           " Fade Buffers
Plug 'jiangmiao/auto-pairs'
Plug 'unblevable/quick-scope'
" Plug 'easymotion/vim-easymotion'

Plug 'ThePrimeagen/vim-be-good'

call plug#end()
