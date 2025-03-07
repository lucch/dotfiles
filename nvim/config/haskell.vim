" Haskell

let g:neoformat_enabled_haskell = ['ormolu']
let g:neoformat_haskell_ormolu = { 'exe': 'ormolu', 'args': [] }
let g:ormolu_ghc_opt = ['TypeApplications', 'RankNTypes']

let g:neomake_haskell_enabled_makers = ['hlint']

" NERDCommenter
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_haskell = 0

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Tabularize
vmap a= :Tabularize /=<CR>
vmap a: :Tabularize /::<CR>
vmap a- :Tabularize /-><CR>
vmap a# :Tabularize /#-}<CR>

