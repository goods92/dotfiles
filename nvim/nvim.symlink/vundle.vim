set nocompatible
filetype on
filetype off

set rtp+=~/.nvim/bundle/vundle.vim

call vundle#begin()

Bundle 'gmarik/vundle'
Bundle 'scrooloose/nerdtree'
Plugin 'mattn/emmet-vim'
Bundle 'othree/html5.vim'
Bundle 'chriskempson/base16-vim'
Bundle 'scrooloose/syntastic'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'unblevable/quick-scope'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'moll/vim-node'
Plugin 'elzr/vim-json'
Plugin 'burnettk/vim-angular'
Plugin 'gregsexton/MatchTag'
Plugin 'Raimondi/delimitMate'
Plugin 'vim-scripts/Align'
Plugin 'Lokaltog/vim-powerline'
Plugin 'kien/ctrlp.vim'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'ervandew/supertab'
Plugin 'The-NERD-Commenter'

call vundle#end()
