" nerdtree

autocmd vimenter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

map <leader>o :NERDTreeFind<cr>  " reveal file in NERDTree
map <C-n> :NERDTreeToggle<CR>

