set nocompatible " Be iMproved, required.
set title " Show file tile in terminal.
syntax enable " Enable syntax highlighting.

set expandtab " Use spaces instead of tabs.

set cursorline " Highlight current line.
set nowrap " No wrap lines.
set number " Always line numbers.
set ruler " Always show current position.

set autoread " Set to auto read when a file is changed from the outside.
set autowrite " Automatically write a file when leaving a modified buffer.

set nobackup " Don't backup orignal files.
set nowritebackup " Don't bakup original files.

set hlsearch " Highlight search results.
set incsearch " Makes search act like search in modern browsers.

" Disable navigation with keyboard arrows.
noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>

" Plugin List.
call plug#begin()
  " File Explorer.
  Plug 'preservim/nerdtree'
  " Install fzf is not installed on system.
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  " Fuzzy search accross all files.
  Plug 'junegunn/fzf.vim'
call plug#end()

