call plug#begin('~/.vim/plugged')
Plug 'gosukiwi/vim-atom-dark'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'neoclide/coc.nvim' , { 'branch' : 'release' }
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
call plug#end()

colorscheme atom-dark-256
set background=dark
set t_BE=
set number
set autoindent 
set softtabstop=4
set expandtab
set hlsearch
set nowrap
set colorcolumn=81
set ttyfast
set ttimeout
set ttimeoutlen=50
set lazyredraw
set title
set autoread
set history=1000
set wildmenu
set wildmode=longest:full,full

autocmd FileType typescript setlocal softtabstop=2 shiftwidth=2
autocmd FileType typescriptreact setlocal softtabstop=2 shiftwidth=2

autocmd FileType java setlocal softtabstop=4 shiftwidth=4 expandtab! tabstop=4

vnoremap . :norm.<CR>

set rtp+=/usr/bin/fzf

" coc settings
let g:coc_global_extensions = [ 'coc-tsserver' ]
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" prettier settings
let g:prettier#autoformat_config_present = 1
let g:prettier#autoformat_require_pragma = 0

