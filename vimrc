
""" Personal Preferences
set number
highlight LineNr ctermfg=grey " If gVim => highlight LineNr guifg=#050505
set hlsearch
set nrformats-=octal "for version < v8.0
set statusline="%f%m%r%h%w [%Y] [0x%02.2B]%< %F%=%4v,%4l %3p%% of %L"

filetype plugin indent on
" On pressing tab, insert 2 spaces
set expandtab
" show existing tab with 2 spaces width
set tabstop=2
set softtabstop=2
" when indenting with '>', use 2 spaces width
set shiftwidth=2

""" VUNDLE """""""""""""""""""""""""""""""""""""""""""
set nocompatible              " be iMproved, required
filetype off                  " require
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'tomasr/molokai'
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

""" GENERAL VUNDLE PLUGINS
"Plugin 'kana/vim-textobj-entire' " Commenting due to error on
"vim-textobj-entire/plugin/testobj/entire.vim: line 34, Unknown function:
"textobj#user#plugin - Date 12/15/2019
Plugin 'tpope/vim-commentary'
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

""" SYNTAX HIGHLIGHTING
"   RUBY
set nocompatible      " We're running Vim, not Vi!
syntax on             " Enable syntax highlighting
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins
Plugin 'vim-ruby/vim-ruby'


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

""" NON-PLUGIN STUFF
" :retab changes *everything*, not just start of lines
fun! Retab(expandtab)
    let l:spaces = repeat(' ', &tabstop)

    " Replace tabs with spaces
    if a:expandtab
        silent! execute '%substitute#^\%(' . l:spaces . '\)\+#\=repeat("\t", len(submatch(0)) / &tabstop)#e'
    " Replace spaces with tabs
    else
        silent! execute '%substitute#^\%(\t\)\+#\=repeat("' . l:spaces . '", len(submatch(0)))#e'
    endif
endfun

