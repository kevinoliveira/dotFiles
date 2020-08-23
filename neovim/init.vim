call plug#begin()
Plug 'hzchirs/vim-material'
Plug 'leafgarland/typescript-vim'
" Plug 'Quramy/tsuquyomi'
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'francoiscabrol/ranger.vim'
call plug#end()


let g:material_style='oceanic'
set background=dark
colorscheme vim-material


let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'default'


set number norelativenumber
" set number relativenumber

" :augroup numbertoggle
" :  autocmd!
" :  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
" :  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
" :augroup END


set mouse=a

let mapleader="\<space>"

nnoremap <leader>; A;<esc>

map <C-n> :NERDTreeToggle<CR>

set tabstop=4

