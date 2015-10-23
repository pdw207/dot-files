set nocompatible               " be iMproved
filetype off                   " required!

" ---------------------------
" let Vundle manage Plugins
" :PluginInstall to update plugins
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'

" directory view
Plugin 'scrooloose/nerdtree'

" key mappings
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-surround'
Plugin 'mileszs/ack.vim'
Plugin 'thoughtbot/vim-rspec'
Plugin 'Emmet.vim'

" color
Plugin 'nanotech/jellybeans.vim'

" syntax highlighting
Plugin 'vim-ruby/vim-ruby'
Plugin 'wavded/vim-stylus'
Plugin 'tpope/vim-haml'
Plugin 'darthdeus/vim-emblem'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'nono/vim-handlebars'
Plugin 'elzr/vim-json'
Plugin 'kchmck/vim-coffee-script'
Plugin 'pangloss/vim-javascript'
Plugin 'terryma/vim-multiple-cursors'

" navigate files via ctrl + p
Plugin 'kien/ctrlp.vim'

" autocomplete
Plugin 'ervandew/supertab'
Plugin 'tpope/vim-endwise'

"Git Blame
Plugin 'vim-fugitive'
call vundle#end()
" ---------------------------
filetype plugin indent on

" Trim training whitespace when saving a file
autocmd BufWritePre * :%s/\s\+$//e


syntax on
filetype plugin indent on

" general settings
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
set clipboard=unnamed

" tab completion
set wildmode=list:longest,list:full
set complete=.,w,t

" colorscheme fine_blue
colorscheme jellybeans

" ctrlp config
let g:ctrlp_custom_ignore = '\v[\/]\.?(tmp|node_modules|bower|git|svn)'

" Toggle spelling mode with ,s
nnoremap <silent> <leader>s :set spell!<CR>

" Toggle nerdtree
nnoremap <silent> <leader>n :NERDTree<CR>

"Allow ctr + c copy
map <C-c> "+y<CR>

" RSpec.vim mappings
let g:rspec_runner = "os_x_iterm"
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>a :call RunAllSpecs()<CR>
" make splits more natural
set splitbelow
set splitright

" statusline:
set laststatus=2

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

" Store temporary files in a central spot
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp

set backupskip=/tmp/*,/private/tmp/*

" File mutations
match ErrorMsg '\s\+$'

" dont map
inoremap jk <Esc>


"fix issue with syntax highlights in es6 file extentions
autocmd BufRead,BufNewFile *.es6 setfiletype javascript

