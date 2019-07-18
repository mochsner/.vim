
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"[VUNDLE](https://vi.stackexchange.com/questions/388/what-is-the-difference-between-the-vim-plugin-managers)
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" more Plugin commands
" ...
call vundle#end()            " required
filetype plugin indent on    " required
