# Astral

## About

A colorful theme for the ZSH shell that is decorated by chevrons.

Here is a preview that you can check out:

![](preview.png)

**Note:** the colors used in this shell theme will depend on your terminal
emulator's theme. This means that it may look different in your setup compared
to the preview. Theme used is [Flamerial](https://github.com/skippyr/flamerial).

In the prompt, you will find:

-	Your host and user name.
-	If you have sourced a virtual environment, its basename.
-	Your current directory path basename.
-	If inside a Git repository, the branch name and if there are changes to be
	commited.

## Installation

### Dependencies

In order to install and run this software properly, the following dependencies
must be installed:

-	**`git`**: required to clone this repository and obtain information about
	your Git repositories to show in the prompt.
-	**[A Nerd Fonts' font](https://www.nerdfonts.com/font-downloads)**: required
	to provide the pretty symbols used in the prompt.

### Procedures

Using a command-line utility, follow these steps:

-	Clone this repository using `git`.

```bash
git                                                                            \
   clone --depth 1 https://github.com/skippyr/astral                           \
   ~/.local/share/zsh/themes/astral
```

-	Add the following source rule to your `~/.zshrc` file. Ensure to not source
	any other theme to avoid causing conflicts.

```bash
source ~/.local/share/zsh/themes/astral/astral.zsh-theme
```

-	Reopen your shell session. At this point, the theme should be installed and
	running.

## Copyright

This software is under the MIT license. A copy of the license is bundled with
the source code.
