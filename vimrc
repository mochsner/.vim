""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" vimrc for use my Marc Ochsner
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
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
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" PATHOGEN
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
execute pathogen#infect()
"call pathogen#runtime_append_all_bundles()
"call pathogen#helptags()
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" END PATHOGEN
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""----------------------------------------------------------------------------
""" VUNDLE 
"""----------------------------------------------------------------------------
  " set nocompatible              " be iMproved, required
  " filetype off                  " require
  " " set the runtime path to include Vundle and initialize
  " set rtp+=~/.vim/bundle/Vundle.vim
  " call vundle#begin()
  " Plugin 'tomasr/molokai'
  " " let Vundle manage Vundle, required
  " Plugin 'gmarik/Vundle.vim'
  " """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  " """  General Vundle Plugins must go below here
  " """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  " " surround.vim (github: https://github.com/tpope/vim-surround)
  " Plugin 'tpope/vim-surround'
  " "Plugin 'jaxbot/browserlink.vim'
  " "Plugin 'kana/vim-textobj-entire' " Commenting due to error on
  " "vim-textobj-entire/plugin/testobj/entire.vim: line 34, Unknown function:
  " "textobj#user#plugin - Date 12/15/2019
  " Plugin 'tpope/vim-commentary'
  " " The following are examples of different formats supported.
  " " Keep Plugin commands between vundle#begin/end.
  " " plugin on GitHub repo
  " Plugin 'tpope/vim-fugitive'
  " " plugin from http://vim-scripts.org/vim/scripts.html
  " " Plugin 'L9'
  " " Git plugin not hosted on GitHub
  " Plugin 'git://git.wincent.com/command-t.git'
  " " git repos on your local machine (i.e. when working on your own plugin)
  " " Plugin 'file:///home/gmarik/path/to/plugin'
  " " The sparkup vim script is in a subdirectory of this repo called vim.
  " " Pass the path to set the runtimepath properly.
  " Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
  " " Install L9 and avoid a Naming conflict if you've already installed a
  " " different version somewhere else.
  " " Plugin 'ascenator/L9', {'name': 'newL9'}
  " Plugin 'godlygeek/tabular'
  " Plugin 'plasticboy/vim-markdown'
  " "Plugin 'iamcco/markdown-preview.nvim'
  " let vim_markdown_preview_github=1
  " Plugin 'JamshedVesuna/vim-markdown-preview'
  " " HEx Colors
  " Plugin 'chrisbra/Colorizer' " TODO Currently broken - errors out during :ColorHighlight
  " " Vagrant - VM Provisioning + Configuration Filse
  " Plugin 'hashivim/vim-vagrant'
  " " Color CSVs by column. Including RBQL queries
  " " To run an RBQL query either press F5 or enter the query in vim command line e.g. :Select a1, a2
  " " See: https://github.com/mechatroner/rainbow_csv for queries
  " Plugin 'mechatroner/rainbow_csv'
  " "   RUBY
  " set nocompatible      " We're running Vim, not Vi!
  " syntax on             " Enable syntax highlighting
  " filetype on           " Enable filetype detection
  " filetype indent on    " Enable filetype-specific indenting
  " filetype plugin on    " Enable filetype-specific plugins
  " Plugin 'vim-ruby/vim-ruby'
  " Plugin 'dense-analysis/ale'
  " """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""^
  " " All of your Plugins must be added before the following line
  " """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""^
  " call vundle#end()            " required
  " filetype plugin indent on    " required
  " " To ignore plugin indent changes, instead use:
  " "filetype plugin on
  " "
  " " Brief help
  " " :PluginList       - lists configured plugins
  " " :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
  " " :PluginSearch foo - searches for foo; append `!` to refresh local cache
  " " :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
  " "
  " " see :h vundle for more details or wiki for FAQ
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" NON-PLUGIN STUFF
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Syntax Highlighting
" color dracula -- CURRENTLY NOT FOUND
"let g:molokai_original = 1
let g:rehash256 = 1
syntax on
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
""" RUNNING PYTHON SHORTCUT
autocmd FileType python map <buffer> <F9> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F9> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>
""" JEKYLL PAGES (https://ryanlue.com/posts/2016-11-03-vim-plugins-for-jekyll)

" Disable built-in event handling...
let g:bl_no_autoupdate = 1

" ...in lieu of custom event handler to force delay inside Jekyll directories.
let s:delay_interval = '1000m'
let s:bl_pagefileexts  =
      \ [ 'html' , 'js'     , 'php'  ,
      \   'css'  , 'scss'   , 'sass' ,
      \   'slim' , 'liquid' , 'md'     ]

function! s:setupHandlers()
  let s:path_flag = '%:p:h' | let s:this_path = expand(s:path_flag)
  while s:this_path != $HOME
    if !empty(globpath(s:this_path,'_config.yml'))
      exec 'sleep ' . s:delay_interval | break
    endif
    let s:path_flag .= ':h' | let s:this_path = expand(s:path_flag)
  endwhile
  if expand('%:e:e') =~ 'css'
    :BLReloadCSS
  else
    :BLReloadPage
  endif
endfunction

" Removed since storage file for this become corrupted
"augroup browserlink
"  autocmd!
"  exec 'autocmd BufWritePost *.' . join(s:bl_pagefileexts, ',*.') . ' call s:setupHandlers()'
"augroup END
" Allow w!! to save as sudo
cmap w!! %!sudo tee > /dev/null %

map <F12> :call FillLine('-')
nnoremap <F5> :GundoToggle<CR>

"" START NERDTREE
silent! nmap <C-p> :NERDTreeToggle<CR>
silent! map <F3> :NERDTreeFind<CR>
let g:NERDTreeMapActivateNode="<F3>"
let g:NERDTreeMapPreview="<F4>"
"" END NERDTREE

""" 'dense-analysis/ale'
let g:syntastic_yaml_checkers = ['yamllint']
let b:ale_linters = {'javascript': ['eslint']}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CUSTOM FUNCTIONS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" fill rest of line with characters
function! FillLine( str )
    " set tw to the desired total length
    let tw = &textwidth
    if tw==0 | let tw = 80 | endif
    " strip trailing spaces first
    .s/[[:space:]]*$//
    " calculate total number of 'str's to insert
    let reps = (tw - col("$")) / len(a:str)
    " insert them, if there's room, removing trailing spaces (though forcing
    " there to be one)
    if reps > 0
        .s/$/\=(' '.repeat(a:str, reps))/
    endif
endfunction
" remove trailing white space
fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun
