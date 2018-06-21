set nocp

" Ansible vim config
"let g:ansible_unindent_after_newline = 1
let g:ansible_attribute_highlight = "ob"
let g:ansible_name_highlight = 'd'
let g:ansible_extra_keywords_highlight = 1
let g:ansible_normal_keywords_highlight = 'Constant'
let g:ansible_with_keywords_highlight = 'Constant'
let g:ansible_yamlKeyName = 'yamlKey'


call plug#begin('~/.vim/plugged')
" Normal plug
"Plug 'Yggdroot/indentLine'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

" ansible-vim-plug
Plug 'pearofducks/ansible-vim'
Plug 'altercation/vim-colors-solarized'
Plug 'stephpy/vim-yaml'
call plug#end()

filetype plugin indent on
syntax on
let g:solarized_termcolors=256
set background=dark
colorscheme solarized
set ai
set si

" Auto remove extra spaces
autocmd BufWritePre *.py :%s/\s\+$//e

"KEY BINDING
"Key bind ,ne - NERDTree
let mapleader = ","
nmap <leader>ne :NERDTree<cr>
