" Setting for Vim-plug 
if empty(glob('~/.vim/autoload/plug.vim'))
        silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
                \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
        autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


" Mapleader is a space 
let mapleader = " "
let maplocalleader = ","

syntax enable
set relativenumber number
set showmatch 
set matchtime=2
set shiftround 
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set wrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set encoding=UTF-8 
set laststatus=2
set colorcolumn=80
silent !set foldmethod=manual
set ai
set cursorline
set mouse=""
set ruler
set backspace=indent,eol,start 
set formatoptions+=r
set history=100
set hlsearch
set confirm
set showcmd
set autowrite
set shortmess=a
set cmdheight=2
set noshowmode
set termwinsize=5*0
set splitbelow
highlight ColorColumn ctermbg=0 guibg=lightgrey

autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview 

" Plugin {{{

call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'vim-utils/vim-man'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'itchyny/lightline.vim'
Plug 'sirver/ultisnips'
Plug 'lervag/vimtex'
Plug 'KeitaNakamura/tex-conceal.vim'

call plug#end()

"}}}

colorscheme gruvbox
set background=dark

noremap <C-l> <C-w>l
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k

inoremap jj <ESC>
inoremap <c-d> <ESC>ddi
nnoremap <leader>date "=strftime("%v")<CR>P

onoremap p i(

" No UP DOWN LEFT RIGHT
nnoremap <Left> :vertical resize +2<CR>
nnoremap <Right> :vertical resize -2<CR>
nnoremap <Up> :resize -2<CR>
nnoremap <Down> :resize +2<CR>

nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr> 
nnoremap <leader>todo :vsplit /Users/cheng-yen.wu/Documents/Program/todo.md<cr>
noremap <leader><cr> :term ++close<cr>
tnoremap <leader><cr> <C-\><C-n>:q!<CR>

tnoremap <C-l> <C-w>l
tnoremap <C-h> <C-w>h
tnoremap <C-j> <C-w>j
tnoremap <C-k> <C-w>k
tnoremap <C-q> <C-\><C-n>:q!<CR>
" }}} 

" " abbreviation
iabbrev teh the 
iabbrev adn and
iabbrev waht what
iabbrev tehn then
iabbrev @@ cheng-yen.wu@polytechnique.edu
iabbrev ccopy Copyright 2013 Steve Losh, all rights reserved.

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ }

" veriable for vimtex
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'


setlocal spell
set spelllang=en_us
inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u



