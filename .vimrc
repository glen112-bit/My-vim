call plug#begin()
Plug 'Yggdroot/indentLine'
Plug 'morhetz/gruvbox'
Plug 'scrooloose/nerdtree'
Plug 'easymotion/vim-easymotion'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'christoomey/vim-tmux-navigator'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/neco-syntax'  " Fuente general de auto completado
Plug 'ervandew/supertab'
Plug 'hail2u/vim-css3-syntax', { 'for': 'css' }
Plug 'othree/html5.vim', { 'for': 'html' }
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
Plug 'plasticboy/vim-markdown', { 'for': 'markdown' }
Plug 'jiangmiao/auto-pairs'
Plug 'terryma/vim-multiple-cursors'
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'w0rp/ale' "muestra errores
Plug 'cohama/lexima.vim'
Plug 'roxma/nvim-completion-manager'
Plug 'easymotion/vim-easymotion'
call plug#end()

colorscheme gruvbox

set number
set mouse=a
set numberwidth=1
set clipboard=unnamed
syntax enable
set showcmd
set ruler
set encoding=utf-8
set showmatch
set relativenumber
set sw=2
set laststatus=2
"set noshowmode

set hidden
set inccommand=split

let g:UltiSnipsEditSplit="vertical"
let mapleader=" "

map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
"map Caps Lock :<esc>
nmap <leader>s <Plug>(easymotion-s2)
nmap <leader>nt :NERDTreeFind<CR>
nmap <leader>s <plug>(easymotion-s2)
nmap s :w<CR>
nmap ss :wq<CR>
nmap q :q<CR>
nmap qq :q!<CR>
nnoremap <leader>; A;<esc>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <c-p> :Files<cr>"busca archivos relacionados 
nnoremap <c-f> :Ag<space>.                                      "busca palabras coincidentes dentro de la terminal

let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsSnippetsDir = '~/.config/nvim/UltiSnips'

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

if !has('nvim')
    Plug 'roxma/vim-hug-neovim-rpc'
endif
