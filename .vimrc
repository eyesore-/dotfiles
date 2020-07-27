" Auto load vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Directory for plugins
" - plugs
" start plugins
call plug#begin('~/.vim/plugs')

" Theme
Plug 'arcticicestudio/nord-vim'
Plug 'junegunn/goyo.vim'

" Initialize plugin system
call plug#end()

" Line number background
let g:nord_cursor_line_number_background = 1
" Default color
colorscheme nord
" Force cursor to new line after 80 characters
set textwidth=80
" Set character limit for Git commit
autocmd FileType gitcommit set textwidth=72
autocmd FileType gitcommit set colorcolumn=73
" Set character limit for Git commit title
autocmd FileType gitcommit set colorcolumn+=51
" Make Vim more useful
set nocompatible
" Enhance command-line completion
set wildmenu
" Allow cursor keys in insert mode
set esckeys
" Allow backpace in insert mode
set backspace=indent,eol,start
" Enable line numbers
set number
" Enable syntax highlighting
syntax on
" Highlight current line
set cursorline
" Make tabs as wide as two spaces
set tabstop=2
" Tabs to spaces
set expandtab
" Always show status line
set laststatus=2
" Enable mouse in all modes
set mouse=a
" Show the cursor position
set ruler
" Don't show intro message
set shortmess=atI
" Show current mode
set showmode
" Show filename in titlebar
set title
" Show partial command as it's being typed
set showcmd
" Start scrolling 3 lines before border
set scrolloff=3
" Autoindent
set autoindent
" Remove Thanks for Flying vim
set notitle
