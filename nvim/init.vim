" vim-plug
call plug#begin('~/.local/share/nvim/plugged')

" General/editing
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'godlygeek/tabular'

" Haskell
Plug 'parsonsmatt/intero-neovim', { 'for': 'haskell' }
Plug 'neomake/neomake'

" Colors
Plug 'iCyMind/NeoSolarized'

call plug#end()

for fpath in split(globpath('~/.config/nvim/config', '*.vim'), '\n')
    exe 'source' fpath
endfor
