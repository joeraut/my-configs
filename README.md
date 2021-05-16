# My configs

Configurations of mine that I use when setting up new machines.

Primarily for personal use, but if you find this useful, feel free to star or add any suggestions if ideas come to mind.


## [Oh My Zsh](https://github.com/ohmyzsh/ohmyzsh)

For macOS/Linux:

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

Use `zsh` as the default shell for user `ubuntu` (useful when there is no password by default and Oh My Zsh's attempt to do this fails, e.g. Ubuntu on EC2):

```bash
sudo chsh ubuntu -s /usr/bin/zsh
```

Install base `.zshrc`, which uses the `agnoster` theme and sets up common aliases: *(NB: requires Powerline fonts - see below)*

```bash
curl -sL https://github.com/joeraut/my-configs/raw/master/custom-zshrc > ~/.zshrc
```

[Sublime Text aliases](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/sublime):

```
plugins=(sublime)
```

Hide the username/hostname by adding the following to the bottom of `~/.zshrc`:

```
prompt_context () { }
```

## [Espresso color scheme](https://github.com/lysyi3m/macos-terminal-themes) for macOS Terminal.app

The Espresso color scheme looks great:

```bash
curl -sL https://github.com/lysyi3m/macos-terminal-themes/raw/master/themes/Espresso.terminal > Espresso.terminal
open Espresso.terminal
```

This will open Terminal and add the theme. Set it as the default theme in Terminal preferences.

## [Powerline fonts](https://github.com/powerline/fonts)

For macOS/Linux:

```bash
git clone https://github.com/powerline/fonts.git
cd fonts && ./install.sh
```

The font *"Meslo LG S for Powerline"*, Regular at 11 pt. works well in macOS's Terminal.app.

## [Ultimate vim configuration](https://github.com/amix/vimrc)

For macOS/Linux:

```bash
# Install Ultimate vimrc
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh
# Install and use the `deus` theme, and apply my custom configuration:
git clone https://github.com/ajmwagar/vim-deus ~/.vim_runtime/my_plugins/vim-deus/
curl -sL https://github.com/joeraut/my-configs/raw/master/custom-vim-conf.vim > ~/.vim_runtime/my_configs.vim
```

## Miscellaneous extras

### Fix locales:

Write the following to `/etc/default/locale`:

```
LC_CTYPE=en_US.UTF-8
LC_ALL=en_US.UTF-8
LANG=en_US.UTF-8
```

If that doesn't fix it, try the commands below one after another until the problem is (hopefully) resolved.

```bash
sudo locale-gen en_US.UTF-8
sudo localectl set-locale LANG=en_US.UTF-8
```

Finally, try:
```bash
sudo dpkg-reconfigure locales
```
