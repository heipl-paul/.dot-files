# dot-files
Sharing dot-files across my UNIX devices

# How to use

Select between either zsh or bash

# ZSH

simply add the following to your `~/.zshrc` file:

```bash
source [path-to-repo]/zsh/.alias
source [path-to-repo]/zsh/.prompt
source [path-to-repo]/zsh/.zsh-git-info
```

Asssuming you cloned the repo directly in your home directory, it would look like this:

```bash
source ~/.dot-files/zsh/.alias
source ~/.dot-files/zsh/.prompt
source ~/.dot-files/zsh/.zsh-git-info
```

# BASH

simplly add the following to your `~/.bashrc` file:

```bash
source [path-to-repo]/bash/.git-prompt
source [path-to-repo]/bash/.ps1
source [path-to-repo]/bash/.alias
source [path-to-repo]/bash/.utils
```

Asssuming you cloned the repo directly in your home directory, it would look like this:

```bash
source ~/.dot-files/bash/.git-prompt
source ~/.dot-files/bash/.ps1
source ~/.dot-files/bash/.alias
source ~/.dot-files/bash/.utils
```