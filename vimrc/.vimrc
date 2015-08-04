"Vundle - used for our plugins
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim' 
Plugin 'flazz/vim-colorschemes'
Plugin 'ervandew/supertab'
Plugin 'joonty/vdebug'
Plugin 'mbbill/undotree' 
Plugin 'scrooloose/syntastic'
Plugin 'vim-scripts/vimprj'
Plugin 'spf13/PIV' 
Plugin 'tobyS/vmustache'
Plugin 'Townk/vim-autoclose'
Plugin 'vim-scripts/DfrankUtil'
"Other colorschemes
call vundle#end() "All plugins to be called before this
filetype plugin indent on

syntax on
set background=dark
colorscheme solarized 
set lbr
set tw=500

autocmd BufReadPost *
  \ if line("'\"") > 0 && line("'\"") <= line("$") |
  \  exe "normal! g`\"" |
  \ endif
autocmd BufRead,BufNewFile *.blade.php set filetype=html
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

imap jj <ESC>

set autochdir
set autoindent
set backspace=indent,eol,start
set backupdir=~/.vim/tmp
set backup
set confirm
set cursorline
set expandtab
set shiftwidth=2
set foldlevel=1
set foldmethod=syntax
set hidden
set history=1000
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set modeline
set modelines=1
set noexrc
set nostartofline
set notimeout ttimeout ttimeoutlen=200
set wrap
set number
set omnifunc=syntaxcomplete#Complete
set ruler
set scrolloff=5
set showcmd
set smartcase
set smartindent
set softtabstop=2
set statusline=%F\ [line\ %l/%L]\ [buffer\ %n]\ [column\ %c]
set tabstop=2
set title
set t_Co=256
set wildmenu

"White space
set list
set listchars=tab:>-,trail:·,eol:$
