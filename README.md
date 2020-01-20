# My configs

Configurations of mine that I use when setting up new machines.

Primarily for personal use, but if you find this useful, feel free to star or add any suggestions if ideas come to mind.


## [Oh My Zsh](https://github.com/ohmyzsh/ohmyzsh)

For macOS/Linux:

```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

Use `zsh` as the default shell for user `ubuntu` (useful when there is no password by default, e.g. Ubuntu on EC2):

```
sudo chsh ubuntu -s /usr/bin/zsh
```

Using the theme `agnoster` in `~/.zshrc`: (requires Powerline fonts)

```
ZSH_THEME="agnoster"
```

[Sublime Text aliases](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/sublime):

```
plugins=(git sublime)
```

Hide the username/hostname by adding the following to the bottom of `~/.zshrc`:

```
prompt_context () { }
```

### Fix locales:

Write the following to `/etc/default/locale`:

```
LC_CTYPE=en_US.UTF-8
LC_ALL=en_US.UTF-8
LANG=en_US.UTF-8
```

If that doesn't fix it, try the commands below one after another until the problem is resolved:

```
sudo dpkg-reconfigure locales
sudo locale-gen en_US.UTF-8
sudo localectl set-locale LANG=en_US.UTF-8
```

## [Powerline fonts](https://github.com/powerline/fonts)

For macOS/Linux:

```
git clone https://github.com/powerline/fonts.git
cd fonts
./install.sh
```

The font *"Meslo LG S Regular for Powerline"* at 11 pt. works well in macOS's Terminal.app.

## [Espresso color scheme](https://github.com/lysyi3m/macos-terminal-themes) for macOS Terminal.app

The Espresso color scheme looks great:

```
git clone https://github.com/lysyi3m/macos-terminal-themes
cd macos-terminal-themes
open schemes/
```

This will open a Finder window, just double-click the `Espresso.terminal` file and the theme will be added to the terminal settings pane—just set as the default theme.

## [Ultimate vim configuration](https://github.com/amix/vimrc)

For macOS/Linux:

```
# Install Ultimate vimrc
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh
# Install and use the `deus` theme, and apply my custom configuration:
git clone https://github.com/ajmwagar/vim-deus ~/.vim_runtime/my_plugins/vim-deus/
curl -s https://raw.githubusercontent.com/joeraut/my-configs/master/custom-vim-conf.vim > ~/.vim_runtime/my_configs.vim
```
