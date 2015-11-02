
" Plugins {{{
set nocompatible                  "Stops random characters
filetype off                      "Turn filetype off for vundle to work nicely

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"Plugins
Plugin 'gmarik/Vundle.vim'        "Vundle

"Nice Color Schemes
Plugin 'flazz/vim-colorschemes'   "Colorschemes
Plugin 'chriskempson/base16-vim'  "More Colours!

"Helpful for quicker working
Plugin 'ervandew/supertab'        "Simple Tab Completion
Plugin 'mattn/emmet-vim'          "Quicker HTML - Emmett for vim
Plugin 'scrooloose/nerdcommenter' "Commenter
Plugin 'Townk/vim-autoclose'      "Autocloses brackets etc
Plugin 'junegunn/vim-easy-align'  "Easy align vim

"Syntax help
Plugin 'scrooloose/syntastic'     "Syntax checking
Plugin 'evidens/vim-twig'

"Fuzzy file finder
Plugin 'kien/ctrlp.vim'           "Fuzzy finder for files 

call vundle#end()                 "All plugins to be called before this

filetype plugin indent on
" }}}
" Syntax & Colorschemes {{{
set t_Co=256                                        "Enable 256 colouring
syntax on                                           "Syntax enabled
autocmd BufEnter * set background=dark              "General files
autocmd BufEnter * colorscheme solarized            "General files

autocmd BufEnter *.css set background=dark          "CSS dark background
autocmd BufEnter *.css colorscheme Monokai          "CSS Colorscheme

autocmd BufEnter *.scss set background=dark         "SCSS dark background
autocmd BufEnter *.scss colorscheme Monokai         "SCSS colorscheme

autocmd BufEnter *.php colorscheme symfony          "PHP colorscheme

autocmd BufEnter *.html colorscheme codeburn        "HTML colorscheme

autocmd BufEnter *.conf colorscheme badwolf         "conf colorschemes
" }}}
" Keybinds {{{
let mapleader="," "leader becomes comma

"jj becomes ESC in insert mode
imap jj <ESC>

"move vertically by visual line
nnoremap j gj
nnoremap k gk

"remap saving techniques
nnoremap <leader>wq :wq<CR>
nnoremap <leader>w :w<CR>
" }}}
" Spaces & Tabs {{{
set shiftwidth=4
set softtabstop=4
set expandtab 
set tabstop=4
" }}}
"UI Layout {{{
set number      "Show line numbers
set showcmd     "Show command in bottom bar
set cursorline  " Highlight current line
set wildmenu    "visual autocomplete for command menu
set lazyredraw  "redraw when need to
set showmatch   "highlight matching [{()}]
set hlsearch    " Highlights search items
set incsearch   " Searches as we type
set t_Co=256  " Nice colours on vim
" }}}
" Folding {{{
set foldlevel=0
set foldmethod=syntax
set modeline
set modelines=1
" }}}
" Launch config {{{
set autochdir                                                 "Automatically change directory to file we are editing
set backspace=indent,eol,start                                "Backspace is used /w indents
set backupdir=~/.vim/tmp                                      "Where we store backups
set backup                                                    "Enables backup
set statusline=%F\ [line\ %l/%L]\ [buffer\ %n]\ [column\ %c]  "Change the display of the status line
set history=100                                               "vim enables history line remembering
set listchars=tab:>-,trail:·,eol:$                            "white space is shown using >-$ 
set confirm                                                   "Need to confirm things if files aren't saved on quit
set ttyfast
" }}}
" Indent {{{
set autoindent  "Automatically indent
set smartindent "Indents based on previous line
" }}}
" Error Bells {{{
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb= 
" }}}
" Vim Easy Align {{{

"Start interactive EasyAlign in visual mode (e.g.vip<Enter>)
vmap <Enter> <Plug>(EasyAlign)

"Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" }}}
" CtrlP {{{
nnoremap <silent> t :CtrlP<cr>
let g:ctrlp_working_path_mode = 'a'
let g:ctrlp_by_filename = 1
let g:ctrlp_max_files = 600
let g:ctrlp_max_depth =  5
" }}}

" vim:foldmethod=marker:foldlevel=0
