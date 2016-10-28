# My very own working-environment setup scripts and configs!

## Lay of the land

The status and process varies significantly among branches so special
reference must be made in each section.


## Description

* master

The master branch holds the currently stable, first version.
Script are not universal, meaning they won't work well in
non-Ubuntu distros.
They are also clunky and big and diffs from the original ones are
neither obvious nor reproducable.

* rom-fork

A different approach has been made to fix the problems above following
a colleague's `/dotfiles` repo.


## Results to achieve

* master

1. **bashrc**: with colors and a set of aliases.

2. **Git**: scripts git-completion and git-prompt sourced from bashrc

3. **Vim**: With my own .vimrc, some colorschemes, no plugin manager and
   the following plugins:

a. `trailing-whitespace.vim`
b. Pyflakes syntax checker (`/ftplugin/python`)
c. `after` commands for specific filetypes

* rom-fork

1. **bashrc**: with colors and a set of aliases. These must only be
   *additions* to the system-default bashrc provided, not a *complete
   override*.

2. **Git**: scripts git-completion and git-prompt sourced from. Git
   commands pre-ran to setup aliases, configuration.

3. **Vim**: With my own .vimrc, some colorschemes, *Vundle* plugin
   manager and the following plugins pre-installed:

a. `trailing-whitespace.vim`
- [ ] Done
b. Syntastic syntax checker
- [ ] Done
c. `after` commands for specific filetypes
- [ ] Done
d. Pylint linter
- [ ] Done

## Instructions

* master

```bash
$ cp .bashrc ~/
$ cp .git-* ~/
$ cp -r .vim* ~/
```

* rom-fork

```$ make all```
- [ ] Done



