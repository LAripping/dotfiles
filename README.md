
## Description

My very own working-environment setup scripts and configs!



## What it achieves

1. **bashrc**: with only *additions* to the system-default bashrc provided, not a complete
    override . So that a single `source .bashrc_<flav>_additions`
    must be appended to the default .bashrc

    * colors 
    * aliases. 

2. **Git**: 

   * scripts `git-completion` and `git-prompt` sourced from. 
   * Git commands pre-ran to setup aliases 
     * unstage
     * diff with color
     * lstree
     * configuration (name,email,editor,simple mode,color).

3. **Vim**: 

  * With my own .vimrc for general settings
  * Colorschemes 
       * Kafka
         * Termschool (only one with soft bg)
         * Codeschool
         * mod8
         * obsidian2
  * *Vundle*  plugin manager. With the following plugins auto-installed:
    * [Fugitive](https://github.com/tpope/vim-fugitive) (vim + git cmds)
    * [Syntastic](https://github.com/vim-syntastic/syntastic) (linter + syntax checker)
    * [AnsiEsc](https://github.com/vim-scripts/AnsiEsc) (view bash colors in vim)
    * [NERDTree](https://github.com/scrooloose/nerdtree) (directory viewer)

## Instructions

```$ make all```


## Plugins to check out
- [ ] [ctrlp](https://github.com/ctrlpvim/ctrlp.vim) auto-complete file opener
- [ ] [YouCompleteMe](https://github.com/Valloric/YouCompleteMe) auto-complete in edit mode