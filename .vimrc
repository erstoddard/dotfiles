set nocompatible
filetype off

" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

" Download plug-ins to the ~/.vim/plugged/ directory
call vundle#begin('~/.vim/plugged')

" Pluggins
Plugin 'sheerun/vim-polyglot'
Plugin 'scheakur/vim-scheakur'
Plugin 'preservim/nerdtree'
Plugin 'preservim/tagbar'
Plugin 'derekwyatt/vim-fswitch'
Plugin 'derekwyatt/vim-protodef'
Plugin 'ycm-core/YouCompleteMe'

" Let Vundle manage Vundle
Plugin 'VundleVim/Vundle.vim'
call vundle#end()
filetype plugin indent on

" Syntax Highlighting and Line Numbers
set nu
syntax on

" Indentation
set tabstop=4		" How many columns of whitespace a \t is worth
set shiftwidth=4	" How many columns of whitespace a "level of indentation" is worth

" Enable incremental and hgihlight search
set incsearch
set hlsearch

" Terminal and mouse settings
set termwinsize=12x0
set splitbelow
set mouse=a

" Tagbar config
let g:tagbar_autofocus = 1 " Focus the panel when opening it
let g:tagbar_autoshowtag = 1 " Highlight the active tag
let g:tagbar_position = 'botright vertical' " Make panel vertical and place on the right

" fswitch config
au! BufEnter *.cpp let b:fswitchdst = 'hpp,h'
au! BufEnter *.h let b:fswitchdst = 'cpp,c'

" ycm
let g:ycm_global_ycm_extra_conf = "~/.vim/ycm_extra_conf.py"

" Bindings
nmap <F2> :NERDTreeToggle<CR> 			" F2 to toggle NERDTree
nmap <F8> :TagbarToggle<CR> " Mapping to open and close the panel
nmap <C-Z> :vsplit <bar> :wincmd l <bar> :FSRight<CR>
nmap <buffer> <silent> <leader> ,PP  " Pull in prototypes
nmap <buffer> <silent> <leader> ,PN	 " Pull in prototypes without namespace

" Theme