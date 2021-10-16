call plug#begin('~/.vim/plugged')
Plug 'gosukiwi/vim-atom-dark'
Plug 'ayu-theme/ayu-vim'
Plug 'tomasr/molokai'
Plug 'morhetz/gruvbox'
Plug 'ciaranm/inkpot'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'rakr/vim-one'
Plug 'lifepillar/vim-solarized8'
Plug 'vim-scripts/ScrollColors'

Plug 'mhinz/vim-startify'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-commentary'
Plug 'neoclide/jsonc.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-surround'

Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'felipec/vim-sanegx'
Plug 'pangloss/vim-javascript'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'neoclide/coc.nvim' , { 'branch' : 'release' }
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'styled-components/vim-styled-components'
call plug#end()

set nocompatible
set ttyfast

set keymap=russian-jcukenwin
set iminsert=0
set imsearch=0
highlight lCursor guifg=NONE guibg=Cyan

let ayucolor="dark"
let g:molokai_origayuinal = 1
let g:rehash256 = 1
set background=dark
set termguicolors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

colorscheme palenight

set encoding=utf-8
set t_BE=
set number
set autoindent 
set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab
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
set ignorecase smartcase
set list listchars=tab:›\ ,trail:•,extends:#,nbsp:.

" cursor in insert mode
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

autocmd FileType typescript setlocal softtabstop=2 shiftwidth=2
autocmd FileType typescriptreact setlocal softtabstop=2 shiftwidth=2
autocmd FileType javascript setlocal softtabstop=2 shiftwidth=2

autocmd FileType java setlocal softtabstop=4 shiftwidth=4 expandtab! tabstop=4

autocmd BufRead,BufNewFile *.json set filetype=jsonc

vnoremap . :norm.<CR>

set rtp+=/usr/bin/fzf
let $FZF_DEFAULT_COMMAND = 'ag -g ""'

" coc settings
let g:coc_global_extensions = [ 'coc-tsserver' ]
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> gn <Plug>(coc-rename)
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
nmap <silent> go :CocCommand tsserver.organizeImports<CR>
nmap <silent> gq :CocCommand tsserver.executeAutofix<CR>
nnoremap <silent> K :call CocAction('doHover')<CR>
nnoremap <c-p> :Commands<CR>

autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear

" prettier settings
"let g:prettier#autoformat_config_present = 1
let g:prettier#autoformat_require_pragma = 0

