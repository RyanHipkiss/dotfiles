"Vundle - used for our plugins
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim' 
Plugin 'scrooloose/nerdtree' 
Plugin 'flazz/vim-colorschemes'
Plugin 'ervandew/supertab'
Plugin 'joonty/vdebug'
Plugin 'mbbill/undotree' 
Plugin 'scrooloose/syntastic'
Plugin 'vim-scripts/vimprj'
Plugin 'spf13/PIV' 
Plugin 'tobyS/vmustache'
Plugin 'tobyS/pdv'
Plugin 'Townk/vim-autoclose'
Plugin 'vim-scripts/DfrankUtil'
call vundle#end() "All plugins to be called before this
filetype plugin indent on

syntax on
colorscheme apprentice 
set lbr
set tw=500

autocmd BufReadPost *
	\ if line("'\"") > 0 && line("'\"") <= line("$") |
	\  exe "normal! g`\"" |
	\ endif
autocmd BufRead,BufNewFile *.blade.php set filetype=html
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

let g:pdv_template_dir=$HOME."/.vim/templates/pdv"
let g:PIVCreateDefaultMappings=0
let g:vimprj_dirNameForSearch="project.vim"
let mapleader=","

imap jj <ESC>
nmap <silent> <C-t> :NERDTreeToggle<CR>
imap <silent> <C-t> :NERDTreeToggle<CR>
:map <C-X> <ESC>:wq<CR>
:imap <C-X> <ESC>:wq<CR>
:imap vss <ESC>:vsplit<CR>
:nmap vss :vsplit<CR>

nnoremap <C-D> :call pdv#DocumentCurrentLine()<CR>
noremap <C-N><C-N> :set invnumber<CR>
noremap <C-P><C-P> :set invpaste<CR>
noremap <silent><leader>p :!php -l %<CR>
noremap <silent><leader>w :set nolist!<CR>

set autochdir
set autoindent
set backspace=indent,eol,start
set backupdir=~/.vim/tmp
set backup
set confirm
set cursorline
set expandtab
set foldlevel=1
set foldmethod=marker
set hidden
set history=1000
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set listchars=tab:>-,trail:·,eol:$
set modeline
set modelines=1
set noexrc
set nostartofline
set notimeout ttimeout ttimeoutlen=200
set nowrap
set number
set omnifunc=syntaxcomplete#Complete
set ruler
set scrolloff=5
set shiftwidth=4
set showcmd
set smartcase
set smartindent
set softtabstop=4
set statusline=%F\ [line\ %l/%L]\ [buffer\ %n]\ [column\ %c]
set tabstop=4
set title
set t_Co=256
set wildmenu

function! PhpDocHelper()
	let filename=expand("<cword>")
	let filename=tolower(filename)
	let filename=$HOME."/.vim/docs/php/".filename.".html"
	let filename=substitute(filename, "_", "-", "g")
	if filereadable(filename)
		let command="!lynx ".filename
		execute command
	endif
endfunction

noremap <silent><leader>d :call PhpDocHelper()<CR>

if filereadable($HOME."/.vim/custom.vim")
    execute ":source ".$HOME."/.vim/custom.vim"
endif
