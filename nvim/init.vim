" vim-plug
call plug#begin('~/.local/share/nvim/plugged')

" General/editing
Plug 'ctrlpvim/ctrlp.vim'
Plug 'neomake/neomake'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'sbdchd/neoformat'
Plug 'godlygeek/tabular'
Plug 'vim-airline/vim-airline'

" Haskell
Plug 'itchyny/vim-haskell-indent', { 'for': 'haskell' }
Plug 'parsonsmatt/intero-neovim', { 'for': 'haskell' }

" Colors
Plug 'iCyMind/NeoSolarized'

call plug#end()

for fpath in split(globpath('~/.config/nvim/config', '*.vim'), '\n')
    exe 'source' fpath
endfor
