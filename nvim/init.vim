" vim-plug
call plug#begin('~/.local/share/nvim/plugged')

" General/editing
Plug 'ctrlpvim/ctrlp.vim'
Plug 'johmsalas/text-case.nvim'
Plug 'neomake/neomake'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'sbdchd/neoformat'
Plug 'godlygeek/tabular'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'pbrisbin/vim-syntax-shakespeare'

" Ruby
Plug 'vim-ruby/vim-ruby'

" Swift
Plug 'keith/swift.vim'

" React.js
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
Plug 'mxw/vim-jsx', { 'for': 'javascript.jsx' }
Plug 'mattn/emmet-vim'

call plug#end()

for fpath in split(globpath('~/.config/nvim/config', '*.vim'), '\n')
    exe 'source' fpath
endfor
