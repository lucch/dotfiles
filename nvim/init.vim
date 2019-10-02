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
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'pbrisbin/vim-syntax-shakespeare'

" Haskell
Plug 'itchyny/vim-haskell-indent', { 'for': 'haskell' }
Plug 'parsonsmatt/intero-neovim', { 'for': 'haskell' }

" Swift
Plug 'keith/swift.vim'

" React.js
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
Plug 'mxw/vim-jsx', { 'for': 'javascript.jsx' }
Plug 'mattn/emmet-vim'

" Colors
Plug 'iCyMind/NeoSolarized'

call plug#end()

for fpath in split(globpath('~/.config/nvim/config', '*.vim'), '\n')
    exe 'source' fpath
endfor
