call plug#begin('~/.config/nvim/plugged')

" Themes
Plug 'w0ng/vim-hybrid'                                  " Vim-hybrid theme
Plug 'kristijanhusak/vim-hybrid-material'               " Vim-hybrid material theme
Plug 'chriskempson/tomorrow-theme'                      " Tomorrow-night theme
Plug 'cseelus/sleepwalker-vim'
Plug 'ap/vim-css-color'
Plug 'chriskempson/base16-vim'
Plug 'Lokaltog/vim-distinguished'
Plug 'nanotech/jellybeans.vim'

" Utilities
Plug 'scrooloose/nerdtree'                              " File tree explorer
Plug 'majutsushi/tagbar'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'kien/rainbow_parentheses.vim'
Plug 'gregsexton/MatchTag'
Plug 'Raimondi/delimitMate'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/syntastic'
Plug 'mileszs/ack.vim'
Plug 'tpope/vim-speeddating'
Plug 'vim-scripts/Align'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'Lokaltog/vim-powerline'
Plug 'kien/ctrlp.vim'
Plug 'ervandew/supertab'
Plug 'The-NERD-Commenter'
Plug 'mattn/emmet-vim'
Plug 'unblevable/quick-scope'
Plug 'easymotion/vim-easymotion'
Plug 'bling/vim-airline'
Plug 'benekastah/neomake'

" Language-Specific Plugins
Plug 'pangloss/vim-javascript'
Plug 'wavded/vim-stylus'
Plug 'othree/html5.vim'
Plug 'digitaltoad/vim-jade'
Plug 'darthdeus/vim-slim'
Plug 'kchmck/vim-coffee-script'
Plug 'vim-scripts/c.vim'
Plug 'tpope/vim-rails'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'jcf/vim-latex'
Plug 'gblock0/vim-chino'
Plug 'moll/vim-node'
Plug 'elzr/vim-json'
Plug 'burnettk/vim-angular'

" Snipmate stuff
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'
Plug 'gblock0/snipmate-nodejs'
Plug 'matthewsimo/angular-vim-snippets'

" Tmux stuff
Plug 'christoomey/vim-tmux-navigator'
Plug 'benmills/vimux'

call plug#end()
