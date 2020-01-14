set shell=/bin/bash
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Plugins

" All of your Plugins must be added before the following line
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
Plugin 'jelera/vim-javascript-syntax'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'shougo/neocomplcache.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'junegunn/fzf'
Plugin 'heavenshell/vim-jsdoc'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'dhruvasagar/vim-table-mode'
Plugin 'rust-lang/rust.vim'
Plugin 'cespare/vim-toml'
Plugin 'uarun/vim-protobuf'
Plugin 'atelierbram/vim-colors_atelier-schemes'
Plugin 'flazz/vim-colorschemes',
Plugin 'rking/ag.vim',
Plugin 'racer-rust/vim-racer',
Plugin 'vim-syntastic/syntastic'

call vundle#end()            " required
filetype plugin indent on    " required

"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"
let g:neocomplcache_enable_at_startup = 1
let g:airline_theme='violet'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': ['<c-t>'],
    \ 'AcceptSelection("t")': ['<cr>', '<2-LeftMouse>'],
    \ }

" neocomplcache
let g:neocomplcache_enable_at_startup = 1 " 起動時に有効化
inoremap <expr><CR>  neocomplcache#smart_close_popup() . "\<CR>"
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"


syntax on

set relativenumber
set number

set fileencoding=utf-8
set encoding=utf-8

set tabstop=4
set expandtab
set smarttab
set shiftwidth=4
set softtabstop=4
set t_Co=256

nnoremap <S-h> gT
nnoremap <S-l> gt

let g:netrw_liststyle = 3
let g:racer_cmd = '/home/yuan.yao/.cargo/bin/racer'
let g:racer_experimental_completer = 1

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_python_checkers = ['python3']
let g:rustfmt_command = "cargo +nightly fmt -- --emit files"
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/debug/*,*/kcov/*,*/venv/*     " MacOSX/Linux
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }

set cursorline
hi CursorLine term=bold cterm=bold guibg=Grey40
color nord
color gruvbox 
