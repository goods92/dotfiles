""""""""""""""""""""
"  NERDTree
""""""""""""""""""""
nnoremap <leader>n :NERDTreeToggle<CR>

""""""""""""""""""""
"  Airline
""""""""""""""""""""
let g:airline_theme             = 'hybrid'
let g:airline#extensions#syntastic#enabled  = 0
let g:airline#extensions#whitespace#enabled = 0

  let g:airline#extensions#default#layout = [
      \ [ 'a', 'b', 'c' ],
      \ [ 'z', 'warning' ]
      \ ]

" vim-powerline symbols
let g:airline_left_sep = '▶'
let g:airline_right_sep = '◀'

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

let g:airline_symbols.branch     = '⎇'
let g:airline_symbols.readonly   = '∥'
let g:airline_symbols.linenr = '¶'
