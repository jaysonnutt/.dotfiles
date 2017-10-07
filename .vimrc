"************************************************************
"*                                                          *
"*                       .vimrc                             *
"*                                                          *
"************************************************************

" Vundle: git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

"************************************************************
"*                                                          *
"*                       Vundle Plugins                     *
"*                                                          *
"************************************************************

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'jiangmiao/auto-pairs'
Plugin 'airblade/vim-gitgutter'
Plugin 'mattn/emmet-vim'
Plugin 'kien/ctrlp.vim'
Plugin 'NLKNguyen/papercolor-theme'
Plugin 'vim-syntastic/syntastic'
Plugin 'Valloric/YouCompleteMe'
Plugin 'easymotion/vim-easymotion'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

call vundle#end()
filetype plugin indent on

"************************************************************
"*                                                          *
"*                   Plugin Settings                        *
"*                                                          *
"************************************************************

let g:ctrlp_by_filename=1
let g:ctrlp_show_hidden=1

let g:airline_theme='tomorrow'

"************************************************************
"*                                                          *
"*                   Settings                               *
"*                                                          *
"************************************************************

set background=dark
colorscheme PaperColor

set nocompatible                 " Makes vim not backwards compatible
set number             	         " Makes line numbers visable
set relativenumber 	         " Makes line numbers relative to current line
set path+=**            	 " Recursive find
set wildmenu       	         " Tab-complete menu
set mouse=a             	 " Allows you to use the mouse on the window
set backspace=indent,eol,start   " Backspace over anything
set laststatus=2                 " Always show the statusline
set incsearch                    " Searches for things before hitting enter
set noshowmode 			 " Removes the --INSERT-- message

syntax enable                    " Syntax highlighting

"************************************************************
"*                                                          *
"*                        Mappings                          *
"*                                                          *
"************************************************************

" NERDTree toggle and window navigation

map ,t :NERDTreeToggle<cr>
map <c-h> <c-w>h
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l

" Tab navigation

map tj :tabnext<cr>
map tk :tabprevious<cr>
map tx :tabclose<cr>

" Unmap the arrow keys

no <down> ddp
no <left> <Nop>
no <right> <Nop>
no <up> ddkP
ino <down> <Nop>
ino <left> <Nop>
ino <right> <Nop>
ino <up> <Nop>
vno <down> <Nop>
vno <left> <Nop>
vno <right> <Nop>
vno <up> <Nop>

" Auto-center

nmap G Gzz
nmap n nzz
nmap N Nzz
nmap } }zz
nmap { {zz 
