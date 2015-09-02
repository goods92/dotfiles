set nocompatible
filetype on
filetype off

set rtp+=~/.vim/bundle/vundle.vim/
call vundle#begin()

Bundle 'gmarik/vundle'

" UI
Bundle 'chriskempson/tomorrow-theme'
Bundle 'cseelus/sleepwalker-vim'
Bundle 'ap/vim-css-color'
Bundle 'chriskempson/base16-vim'
Bundle 'Lokaltog/vim-distinguished'
Bundle 'nanotech/jellybeans.vim'
Bundle 'w0ng/vim-hybrid'

" Language-Specific Plugins
Bundle 'pangloss/vim-javascript'
Bundle 'wavded/vim-stylus'
Bundle 'othree/html5.vim'
Bundle 'digitaltoad/vim-jade'
Bundle 'darthdeus/vim-slim'
Bundle 'kchmck/vim-coffee-script'
Bundle 'vim-scripts/c.vim'
Bundle 'tpope/vim-rails'
Bundle 'othree/javascript-libraries-syntax.vim'
Bundle 'jcf/vim-latex'
Bundle 'gblock0/vim-chino'
Bundle 'moll/vim-node'
Plugin 'elzr/vim-json'
Bundle "burnettk/vim-angular"

" Utilities
Bundle 'majutsushi/tagbar'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-repeat'
Bundle 'kien/rainbow_parentheses.vim'
Bundle 'gregsexton/MatchTag'
Bundle 'Raimondi/delimitMate'
Bundle 'tpope/vim-fugitive'
Bundle 'scrooloose/syntastic'
Bundle 'mileszs/ack.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'vim-scripts/Align'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'Lokaltog/vim-powerline'
Bundle 'kien/ctrlp.vim'
Bundle 'ervandew/supertab'
Bundle 'The-NERD-Commenter'
Bundle 'mattn/emmet-vim'
Bundle 'unblevable/quick-scope'

"Snipmate stuff
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "garbas/vim-snipmate"
Bundle "honza/vim-snippets"
Bundle "gblock0/snipmate-nodejs"
Bundle "matthewsimo/angular-vim-snippets"

" Tmux stuff
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'benmills/vimux'

call vundle#end()
