" vim: ts=4 sw=4 et
"
" Alexandre Lucchesi's Vim Configuration
"
" 'Perfection is achieved, not when there's nothing more to add,
"	but when there's nothing left to take away!'
"
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

filetype plugin indent on

set nobackup
set noswapfile
set hidden
set number
set autoindent
set hlsearch
set cmdheight=1
set textwidth=80
set shiftwidth=4
set tabstop=4
set expandtab
if v:version >= 703
    set colorcolumn=+1
endif
set mouse=a
"set clipboard=autoselectplus,exclude:cons\|linux
"set autochdir
set modeline

let mapleader=","
map <leader>n :bn<cr>
map <leader>p :bp<cr>
map <leader>d :bd<cr>

" solarized
syntax enable
set background=dark
colorscheme solarized

" neocomplcache
let g:neocomplcache_enable_at_startup = 1            " Enables the plugin.
let g:neocomplcache_enable_smart_case = 1            " Use smartcase.
let g:neocomplcache_enable_camel_case_completion = 1 " Use camel case completion.

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" nerdtree
autocmd vimenter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
map <leader>o :NERDTreeFind<cr>

" Check if NERDTree is open or active
function! IsNERDTreeOpen()
    return exists("t:NERDTreeBufName") && (bufwinnr(t:NERDTreeBufName) != -1)
endfunction

" Call NERDTreeFind if NERDTree is active, current window contains a modifiable
" file, and we're not in vimdiff
function! SyncTree()
    if &modifiable && IsNERDTreeOpen() && strlen(expand('%')) > 0 && !&diff
        NERDTreeFind
        wincmd p
    endif
endfunction

" Highlight currently open buffer in NERDTree
autocmd BufEnter * call SyncTree()

" vim-localvimrc
let g:localvimrc_ask = 0

" ctrlp
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
"let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_working_path_mode = 0
let g:ctrlp_dotfiles = 1

set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux

let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll|o)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }

" vim-markdown-pandoc
augroup pandoc_syntax
    au! BufNewFile,BufFilePre,BufRead *.md set filetype=markdown.pandoc
augroup END

" bindings
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>
nmap <silent> <C-h> :wincmd h<CR>
nmap <silent> <C-j> :wincmd j<CR>
nmap <silent> <C-k> :wincmd k<CR>
nmap <silent> <C-l> :wincmd l<CR>
map <C-n> :NERDTreeToggle<CR>
map <F2> :SyntasticToggle<CR>
nnoremap * *`` " Highlight but don't jump to next.
nnoremap # #``

" When yanking and pasting text, it does not change the text yanked.
" See: http://stackoverflow.com/questions/7163947/vim-paste-multiple-times
xnoremap p pgvy

