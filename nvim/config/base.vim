" base

" General
set number
set cursorline
set scrolloff=3 " some lines around scroll for context
set textwidth=80
set colorcolumn=+1
set noswapfile

" Buffers
set hidden
set autoread  " auto reload files changed on disk
map <leader>bn :bn<cr>
map <leader>bp :bp<cr>
map <leader>bD :bd!<cr>

" Defaults to tabs over spaces
set shiftwidth=2
set tabstop=2
set expandtab

" Mouse
set mouse=a

" Leader
let mapleader=","
let maplocalleader=","

" Splits
nmap <silent> <C-h> :wincmd h<CR>
nmap <silent> <C-j> :wincmd j<CR>
nmap <silent> <C-k> :wincmd k<CR>
nmap <silent> <C-l> :wincmd l<CR>

" Search
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>
nnoremap * *`` " Highlight but don't jump to next.
nnoremap # #``

" Yanking
" When yanking and pasting text, it does not change the text yanked.
" See: http://stackoverflow.com/questions/7163947/vim-paste-multiple-times
xnoremap p pgvy
" Use system clipboard for yanks.
" set clipboard+=unnamedplus
