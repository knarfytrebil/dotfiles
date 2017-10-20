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
let g:airline_theme='solarized'
let g:airline#extensions#tabline#enabled = 1

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
set cursorline

set tabstop=4
set expandtab
set smarttab
set shiftwidth=4
set softtabstop=4

hi CursorLine cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
nnoremap <S-h> gT
nnoremap <S-l> gt

