# .vim

:page_facing_up: Personal log of .vimrc settings as I learn to use it


## Table of Contents
- [Install](#install)
- [Update](#update)
- [Pathogen Usage](#pathogen)
- [Vim Shortcuts](#Notable%20Shortcuts)
- [Learning Materials](#Learning%20Materials)
- [Support](#support)
- [Contributing](#contributing)

## Install
Option A: Clone with submodules
```bash
git clone --recursive https://github.com/mochsner/.vim ~/_vim
# (or) 
ln -s ~/_vim/vimrc ~/.vimrc
ln -s ~/_vim/gvimrc ~/.gvimrc

Option B: Clone then update submodules
```bash
git clone http://github.com/mochsner/.vim ~/_vim
ln -s ~/_vim/vimrc ~/.vimrc
ln -s ~/_vim/gvimrc ~/.gvimrc
cd ~/.vim
git submodule update --init --recursive # Incase of nested submodules
```

## Update
```bash
git submodule foreach git pull origin master
```
or
```bash
git submodule update --init --recursive # Incase of nested submodules
```

## Pathogen
Add submodules (new pathogen plugins)
```bash
cd ~/_vim/bundle/
git submodule add https://github.com/user/repo
```
Remove submodules (3 step process)
```https://stackoverflow.com/questions/1260748/how-do-i-remove-a-submodule
0. mv a/submodule a/submodule_tmp

1. git submodule deinit -f -- a/submodule    
2. rm -rf .git/modules/a/submodule
3. git rm -f a/submodule
# Note: a/submodule (no trailing slash)

# or, if you want to leave it in your working tree and have done step 0
3.   git rm --cached a/submodule
3bis mv a/submodule_tmp a/submodule
```
Pathogen modules are loaded automatically via .vim/autoload/pathogen.vim, and below in vimrc:
```
execute pathogen#infect()               ### Uses ~/.vim/bundle as the src folder
```
or
```
execute pathogen#infect('folder/{}')    ### Uses ~/.vim/folder as the src folder
```


### From VIM
- Source Vim Config `:source ./.vim/vimrc`
- Plugin Install `vim +PluginInstall +qall`

```sh
cd ~
git clone https://github.com/mochsner/.vim.git
```

## Notable Shortcuts
```vim
``` Yank all lines of a file ```
# %: refer to next command to work on all the lines
# y: to yank those lines
# +: copy to system clipboard
:%y+
```
## Learning Materials
- [Pathogen](https://github.com/tpope/vim-pathogen)
- [4 weeks of Vim](https://medium.com/actualize-network/how-to-learn-vim-a-four-week-plan-cd8b376a9b85)
- [Interactive tutorial](https://www.openvim.com/)
- [Vim Game](https://vim-adventures.com/)
- [Amazon: Practical Vim](https://www.amazon.com/dp/1680501275/ref=cm_sw_r_cp_awdb_t1_fD9yBb3108A64)

## Support
[open an issue](https://github.com/mochsner/.vim/issues/new)

## Contributing
Please contribute using [Github Flow](https://guides.github.com/introduction/flow/). Create a branch, add commits, and [open a pull request](https://github.com/mochsner/.vim/compare/).

<sub>README.md template taken from https://github.com/fraction/readme-boilerplate</sub>
