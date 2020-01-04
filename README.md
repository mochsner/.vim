# .vim

:page_facing_up: Personal log of .vimrc settings as I learn to use it


## Table of Contents

- [Usage](#usage)
- [Notable Shortcuts](#Notable%20Shortcuts)
- [Learning Materials](#Learning%20Materials)
- [Support](#support)
- [Contributing](#contributing)

## Usage

Go to shell's home directory. Clone there. Unsure if this requires restarting (will update)

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

- [4 weeks of Vim](https://medium.com/actualize-network/how-to-learn-vim-a-four-week-plan-cd8b376a9b85)
- [Interactive tutorial](https://www.openvim.com/)
- [Vim Game](https://vim-adventures.com/)
- [Amazon: Practical Vim](https://www.amazon.com/dp/1680501275/ref=cm_sw_r_cp_awdb_t1_fD9yBb3108A64)

## Support

Please [open an issue](https://github.com/mochsner/.vim/issues/new) for support.

## Contributing

Please contribute using [Github Flow](https://guides.github.com/introduction/flow/). Create a branch, add commits, and [open a pull request](https://github.com/mochsner/.vim/compare/).

<sub>README.md template taken from https://github.com/fraction/readme-boilerplate</sub>
