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
Plugin 'vim-scripts/DfrankUtil' " Vim utilities
Plugin 'scrooloose/nerdcommenter' " Commentr
Plugin 'chriskempson/base16-vim' "more colors!
call vundle#end() "All plugins to be called before this
filetype plugin indent on

" --- Custom settings --- "
syntax on " Enable the nice syntax.

"Lets check what file type and change the colorscheme
autocmd BufEnter * set background=dark
autocmd BufEnter * colorscheme solarized 

autocmd BufEnter *.css colorscheme molokai set background=dark && list
autocmd BufEnter *.scss colorscheme molokai set background=dark && list

autocmd BufEnter *.php colorscheme Tomorrow-Night 

autocmd BufEnter *.html colorscheme codeburn

autocmd BufEnter *.conf colorscheme badwolf 

set lbr " Enable line break
set tw=500 " Text width
"no error noise
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb= 

imap jj <ESC>
set autochdir " Automatically change directory to file we are editing
set autoindent " Automatically indent
set backspace=indent,eol,start "Backspace is used /w indents
set backupdir=~/.vim/tmp " Where we store backups
set backup " Enables backup
set confirm " Need to confirm things if files aren't saved on quit
set cursorline " Highlight current line
set expandtab 
set shiftwidth=2
set foldlevel=1
set foldmethod=syntax
set hidden
set history=1000
set hlsearch " Highlights search items
set ignorecase
set incsearch " Searches as we type
set laststatus=2
set modeline
set modelines=1
set noexrc
set nostartofline
set notimeout ttimeout ttimeoutlen=200
set wrap
set number " Enables numbers
set omnifunc=syntaxcomplete#Complete
set ruler
set scrolloff=5
set showcmd
set smartcase
set smartindent " Indents based on previous line
set softtabstop=2
set statusline=%F\ [line\ %l/%L]\ [buffer\ %n]\ [column\ %c]
set tabstop=2
set title
set t_Co=256 " Sets colors
set wildmenu

"White space
set listchars=tab:>-,trail:·,eol:$

"fast terminal?
set ttyfast
