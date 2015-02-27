set nocompatible               " be iMproved
filetype off                   " required!

" ---------------------------

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
Plugin 'gmarik/Vundle.vim'

" plugins
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-cucumber'
Plugin 'iandoe/vim-osx-colorpicker'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-haml'
Plugin 'mileszs/ack.vim'
Plugin 'nanotech/jellybeans.vim'
Plugin 'kchmck/vim-coffee-script'
Plugin 'pangloss/vim-javascript'
Plugin 'elzr/vim-json'
Plugin 'flazz/vim-colorschemes'
Plugin 'groenewege/vim-less'
Plugin 'nono/vim-handlebars'
Plugin 'sjl/gundo.vim'
Plugin 'vim-ruby/vim-ruby'
Plugin 'darthdeus/vim-emblem'
Plugin 'kien/ctrlp.vim'
Plugin 'ervandew/supertab'

call vundle#end()
filetype plugin indent on

" Trim training whitespace when saving a file
autocmd BufWritePre * :%s/\s\+$//e

" default open nerdtree
au VimEnter *  NERDTree

syntax on
filetype plugin indent on
let mapleader = ","
set wrap
set number
set history=1000
set backspace=indent,eol,start

" Basic tab behavior
set autoindent
set expandtab
set smarttab
set shiftwidth=2
set tabstop=2

" tab completion
set wildmode=list:longest,list:full
set complete=.,w,t

" themes / colors
"set term=xterm-256color
set term=screen-256color
set background=dark
" colorscheme fine_blue
colorscheme jellybeans


" Color picker plugin settting
 let g:colorpicker_app = 'iTerm.app'
 let g:cssColorVimDoNotMessMyUpdatetimei = 1
" colorscheme macvim

set guifont=Menlo:h16

nnoremap <leader>sc :set spell!<CR>
nnoremap <leader>hs :set hls!<CR>

" statusline:
set laststatus=2

" make splits more natural
set splitbelow
set splitright

" cf the default statusline: %<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P
" format markers:
"   %< truncation point
"   %n buffer number
"   %f relative path to file
"   %m modified flag [+] (modified), [-] (unmodifiable) or nothing
"   %r readonly flag [RO]
"   %y filetype [ruby]
"   %= split point for left and right justification
"   %-35. width specification
"   %l current line number
"   %L number of lines in buffer
"   %c current column number
"   %V current virtual column number (-n), if different from %c
"   %P percentage through buffer
"   %) end of width specification
set statusline+=%<\ %n:%f\ %m%r%y%=%-35.(line:\ %l\ of\ %L,\ col:\ %c%V\ (%P)%)

" ---------------------------
" Backup

" Store temporary files in a central spot
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp

set backupskip=/tmp/*,/private/tmp/*


" ----------------------------
" File mutations

match ErrorMsg '\s\+$'

" ----------------------------
" File types

au BufRead,BufNewFile Vagrantfile,Berksfile,Gemfile,Hanfile setfiletype ruby

" ----------------------------
inoremap jk <Esc>
inoremap jK <Esc>

" ctrlp config
let g:ctrlp_custom_ignore = '\v[\/]\.?(tmp|node_modules|git|svn)'
