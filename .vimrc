set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'whatyouhide/vim-gotham'

Plugin 'scrooloose/nerdtree'

Plugin 'majutsushi/tagbar'

Plugin 'bling/vim-airline'

Plugin 'drmingdrmer/xptemplate'

Plugin 'thinca/vim-template'

Plugin 'scrooloose/nerdcommenter'

Plugin 'wesQ3/vim-windowswap'

Plugin 'davidhalter/jedi-vim'

Plugin 'kshenoy/vim-signature'

Plugin 'mileszs/ack.vim'

Plugin 'luochen1990/rainbow'

Plugin 'tpope/vim-surround'

Plugin 'raimondi/delimitmate'

Plugin 'ntpeters/vim-better-whitespace'

Plugin 'rhysd/committia.vim'

Plugin 'tpope/vim-fugitive'

Plugin 'gregsexton/gitv'

Plugin 'latex-box-team/latex-box'

Plugin 'armasm'

Plugin 'rdnetto/ycm-generator'

Plugin 'tikhomirov/vim-glsl'

Plugin 'scrooloose/syntastic'

Plugin 'HerringtonDarkholme/yats'

Plugin 'VimClojure'

Plugin 'paredit.vim'

Plugin 'tpope/vim-fireplace'

Plugin 'Shougo/vimproc.vim'

Plugin 'Shougo/deoplete.nvim'

Plugin 'roxma/nvim-yarp'

Plugin 'roxma/vim-hug-neovim-rpc'

Plugin 'purescript-contrib/purescript-vim'

Plugin 'calebsmith/vim-lambdify'

Plugin 'hashivim/vim-terraform'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


set t_Co=256
colorscheme gotham256
syntax on
set number

map <C-n> :NERDTreeToggle<CR>
map <F8> :TagbarToggle<CR>
map <C-a> :Ack <C-r><C-w><CR>
imap jj <Esc>

inoremap <Up> <NOP>
inoremap <Down> <NOP>
inoremap <Left> <NOP>
inoremap <Right> <NOP>

noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

tnoremap <Esc> <C-\><C-n>

set laststatus=2

filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" " when indenting with '>', use 4 spaces width
set shiftwidth=4
" " On pressing tab, insert 4 spaces
set expandtab

let g:deoplete#enable_at_startup = 1
let g:necoghc_enable_detailed_browse = 1

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:haddock_browser="/usr/bin/chromium"
let g:haddock_docdir="/usr/share/doc/ghc/html/"
