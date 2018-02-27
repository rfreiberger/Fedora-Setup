set nocompatible
filetype off
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" Vundle
Plugin 'VundleVim/Vundle.vim'
" Vundle plugins
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdtree'
Plugin 'dracula/vim'
" This allows CTRL+N to toggle NERDTree
map <C-n> :NERDTreeToggle<CR>

" End of Vundle plugins
call vundle#end()
filetype plugin indent on
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
" Powerline fonts start
" set guifont=Inconsolata\ for\ Powerline:h15
" set guifont=Meslo\ LG\ L\ Regular\ for\ Powerline:h14
" let g:Powerline_symboles = 'fancy'
" set encoding=utf-8
" set fillchars+=stl:\ ,stlnc:\
" set termencoding=utf-8
" Powerline fonts end
set nocompatible
" adding split keymapping
" ctrl-j move to split below
" ctrl-k move to split above
" ctrl-l move to split right
" ctrl-h move to split left
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" Enable folding with the spacebar
nnoremap <space> za
" Python PEP8 formatting
" au BufNewFile,BufRead *.py
"    \ set tabstop=4
"    \ set softtabstop=4
"    \ set shiftwidth=4
"    \ set textwidth=79
"    \ set expandtab
"    \ set autoindent
"    \ set fileformat=unix
" Flag whitespaces
" au BufRead,BufNewFile *.py,*.pyc,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
set encoding=utf-8

" format
set autoindent
set backup
set nu
set smartindent
set showmatch
" set textwidth=80
set title
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
" syntax
syntax on
" support 256 colors in Lion terminal
set t_Co=256
" files
filetype on
filetype indent on
filetype plugin on
" always show file name
set modeline
set ls=2
" colorscheme
" colorscheme molokai
" colorscheme dracula
" colorscheme solarized
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//
" 
command R !python3 ./%
