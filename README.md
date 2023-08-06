# Astral
## About
A colorful theme for the ZSH shell.
![](preview.png)

It can show you:
-   Your host and user names.
-   If inside a Git repository, the branch and if there are changes to be commited.
-   Your current directory.

## Installation
### Dependencies
The following dependencies must be installed to install this software properly:
-   `git`
-   A Nerd Font's font.

### Procedures
-   Clone this repository.
```bash
git\
    clone --depth=1 https://github.com/skippyr/astral\
    ~/.local/share/zsh/themes/astral
```

-   Add the following source rule to your `~/.zshrc` file. Ensure to not source other theme.
```bash
source ~/.local/share/zsh/themes/astral/astral.zsh-theme
```

-   Reopen ZSH.

## Copyright
This software is under the MIT license. A copy of the license is bundled with the source code.
