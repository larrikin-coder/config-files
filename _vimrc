set nocompatible
filetype off

"set rtp+=~/vimfiles/bundle/vundle/
"call vundle#begin()

"Plugin 'VundleVim/Vundle.vim'
"Plugin 'vim-scripts/L9'
"Plugin 'tpope/vim-fugitive'
"Plugin 'rstacruz/sparkup'

"call vundle#end()"

call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'chriskempson/base16-vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Vim (Windows): '~/vimfiles/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Multiple Plug commands can be written in a single line using | separators
"Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" Initialize plugin system

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'vim-syntastic/syntastic'
Plug 'nvie/vim-flake8'
Plug 'NLKNguyen/papercolor-theme'

call plug#end()

map <silent> <C-n> :NERDTree<CR> 
 "'SHORTCUT FOR NERDTREE CREATED CONTROL-n'
nnoremap <C-s> :w<CR>
    "Shortcut for saving the file"
filetype plugin indent on

map <F11> <Esc>:call libcallnr("gvimfullscreen.dll", "ToggleFullScreen", 0)<CR>
let python_highlight_all=1
syntax on
colorscheme gruvbox 
set ruler
set number
set relativenumber
set smartindent
set hidden
set background=dark
set mouse=a
set st=4 sw=4 et
set shiftwidth=4
set backspace=indent,eol,start
set tabstop=4
set autoread
set laststatus=2
set statusline=Welcome!
set fillchars+=vert:\|
set guifont=Consolas:h10
let g:airline_theme='simple'
:set guioptions-=m                                                                    
:set guioptions-=T       
:set guioptions-=r                                
:set guioptions-=L
:set lines=999 columns=999

