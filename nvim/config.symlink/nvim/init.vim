source ~/.config/nvim/plugins.vim
colorscheme gruvbox "tomorrow-night
set foldmethod=marker

"" User Interface {{{
filetype plugin on
syntax on

set t_Co=256
set background=dark
"Set line numbers
:set number
set nowrap
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab
:set laststatus=2
:set incsearch
:set cursorline

let $NVIM_TUI_ENABLE_TRUE_COLOR=1
let g:deoplete#enable_at_startup = 1

set clipboard=unnamed
" }}}

"General Settings {{{

let g:session_autoload = 'no'
set modelines=0

:let mapleader = "\<Space>"

"If focus is lost on vim then save file
au FocusLost * :wa

" Use jj instead of escape 
inoremap jj <ESC> 

"Tab key matches bracket pairs
nnoremap <tab> %
vnoremap <tab> %

"JavaScript Library Support
let g:used_javascript_libs = 'underscore, backbone, angularjs, jquery, prelude, node'

"Change window movement commands
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
" }}}

" Plugin Support {{{

"Nerdtree shortcuts
map <silent> <C-n> :NERDTreeFocus<CR>
nmap <leader>n :NERDTree<CR>

" enable quick_scope conditionally
let g:qs_enable = 0
let g:qs_enable_char_list = [ 'f', 'F', 't', 'T' ]
function! Quick_scope_selective(movement)
  let needs_disabling = 0
  if !g:qs_enable
    QuickScopeToggle
    redraw!
    let needs_disabling = 1
  endif
  let letter = nr2char(getchar())
  if needs_disabling
    QuickScopeToggle
  endif
  return a:movement . letter
endfunction
" quick_scope maps, operator-pending mode included (can do 'df' with hint)
for i in g:qs_enable_char_list
  execute 'noremap <expr> <silent>' . i . " Quick_scope_selective('". i . "')"
endfor

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
" }}}
