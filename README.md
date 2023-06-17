# Astral

The Astral project is minimal and colorful ZSH-theme.

Right below, there is a preview that you check out.

![](./images/preview.png)

In the preview, the Astral theme was used in the Kitty terminal with the Gruvbox theme. Font used was Dejavu Sans Mono.

The colors used in the theme may vary in your setup, as it depends on the terminal emulator's theme you are using.

## Features

It can show you:

* Your user and hostname.
* The name of sourced virtual environments.
* Your current directory path base name.
* The name of the current branch and if has changes to commit, if you are inside a Git repository.

## Installation

For any installation, you need to first install the dependencies required for it to work:

* Install `git`.

	This tool is used to get information about your repositories.

* Install a font patched by the [Nerd Fonts project](https://github.com/ryanoasis/nerd-fonts).

	These fonts contains the pretty symbols used in the theme.

After installing those, it is time to choose a method to install it. Choose the one that best fits your needs.

### Installing Manually (recommended)

By installing it manually, you do not need to download any more dependencies. Due to this, it is the recommeded choice for most users.

Follow these steps:

* Clone this repository.

	For these examples, the theme will be installed at `~/.local/share/zsh/themes` to keep things organized.

	```bash
	git clone --depth=1 https://github.com/skippyr/astral ~/.local/share/zsh/themes/astral
	```

* Add a source rule in your `~/.zshrc` file to include that theme you just cloned.

	```bash
	source ~/.local/share/zsh/themes/astral/astral.zsh-theme
	```

+ Reopen your ZSH session.

That finished the installation. The theme now should be ready for you to use.

### Installing On Top Of OhMyZSH

Installing it on top of the OhMyZSH framework requires specific instructions due to its directory structure.

Follow these steps:

* Install the [OhMyZSH framework](https://github.com/ohmyzsh/ohmyzsh).

	Information about how to install it can be found in its repository on GitHub.

* Clone this repository to the OhMyZSH's custom themes directory.

	```bash
	git clone --depth=1 https://github.com/skippyr/astral ${ZSH_CUSTOM:-${HOME}/.oh-my-zsh/custom}/themes/astral
	```

* Change the value of the variable `ZSH_THEME` in your `~/.zshrc` to use the theme you cloned.

	```bash
	ZSH_THEME="astral/astral"
	```

* Reopen your ZSH session.

That finished the installation. The theme now should be ready for you to use.


## Issues

Report issues through the [issues tab](https://github.com/skippyr/astral/issues).

## Contributions

If you want to contribute to this project, check out its [contributions guidelines](https://skippyr.github.io/materials/pages/contributions_guidelines.html).

## License

This project is released under the terms of the MIT license.

Copyright (c) 2023, Sherman Rofeman. MIT License.

