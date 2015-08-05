" --- My Vimrc --- "
"Some stuff for vundle
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" ---- List of plugins I use --- "
Plugin 'gmarik/Vundle.vim'  " Vundle is for managing everything else
Plugin 'flazz/vim-colorschemes' " This is the block of colorschemes I use
Plugin 'ervandew/supertab' " Tab completion
Plugin 'joonty/vdebug' " Debug
Plugin 'scrooloose/syntastic' " Syntax help
Plugin 'vim-scripts/vimprj' " Custom vim settings for each project
Plugin 'Townk/vim-autoclose' " not sure..
call vundle#end() "All plugins to be called before this
filetype plugin indent on

" --- Custom settings --- "
syntax on " Enable the nice syntax.
set background=dark " Set my preferred background
colorscheme solarized " Chose my colorscheme
set lbr " Enable line break
set tw=500 " Text width
"no error noise
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

"fast terminal?
set ttyfast
