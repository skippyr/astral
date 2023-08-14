# Astral
## About
A colorful theme for the ZSH shell that is decorated by chevrons.

Here is a preview that you can check out:

![](preview.webp)

Note: the colors used in this shell theme depends on your terminal emulator's
      theme. This means that it may look different in your setup compared to the
      preview.

In the prompt, you will find:

- Your host and user names.
- If you have sourced a virtual environment, its base name.
- Your current directory path base name.
- If inside a Git repository, the branch name and if there are changes to be
  committed.

## Installation
### Dependencies
In order to install and run this software properly, the following dependencies
must be installed:

- `git`: required to clone this repository and obtain information about your
         Git repositories to show in the prompt.
- [A Nerd Fonts' font](https://www.nerdfonts.com/font-downloads):
    required to provide the pretty symbols used in the prompt.

### Procedures
Using a command-line utility, follow these steps:

- Clone this repository using `git`.

```bash
git                                                                            \
    clone --depth 1 https://github.com/skippyr/astral                          \
    ~/.local/share/zsh/themes/astral
```

- Add the following source rule in your `~/.zshrc` file. Ensure to not source
  any other theme to avoid causing conflicts.

```bash
source ~/.local/share/zsh/themes/astral/astral.zsh-theme
```

- Open a new shell session. At this point, the theme should be installed and
  running.

## Support
Report issues, questions and suggestions through its [issues page](https://github.com/skippyr/astral/issues).

## Copyright
This software is under the MIT license. A copy of the license is bundled with
the source code.
