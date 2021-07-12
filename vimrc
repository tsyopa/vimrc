call plug#begin('~/.vim/plugged')
Plug 'gosukiwi/vim-atom-dark'
Plug 'ayu-theme/ayu-vim'
Plug 'tomasr/molokai'

Plug 'neoclide/jsonc.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-surround'
"Plug 'codota/tabnine-vim'

Plug 'felipec/vim-sanegx'
Plug 'pangloss/vim-javascript'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'neoclide/coc.nvim' , { 'branch' : 'release' }
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'styled-components/vim-styled-components'
call plug#end()

colorscheme atom-dark-256
"colorscheme molokai
"colorscheme ayu
let ayucolor="dark"
let g:molokai_origayuinal = 1
let g:rehash256 = 1

set background=dark
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

" cursor in insert mode
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

autocmd FileType typescript setlocal softtabstop=2 shiftwidth=2
autocmd FileType typescriptreact setlocal softtabstop=2 shiftwidth=2

autocmd FileType java setlocal softtabstop=4 shiftwidth=4 expandtab! tabstop=4

autocmd BufRead,BufNewFile *.json set filetype=jsonc

vnoremap . :norm.<CR>

set rtp+=/usr/bin/fzf

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

autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear

" prettier settings
let g:prettier#autoformat_config_present = 1
let g:prettier#autoformat_require_pragma = 0

