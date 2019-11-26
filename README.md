# My configs

Configurations of mine that I use when setting up new machines.

Primarily for personal use, but if you find this useful, feel free to star or add any suggestions if ideas come to mind.


## [Oh My Zsh](https://github.com/ohmyzsh/ohmyzsh)

```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

Using the theme `agnoster` in `~/.zshrc`:

```
ZSH_THEME="agnoster"
```

This theme requires Powerline fonts.

## [Powerline fonts](https://github.com/powerline/fonts)

```
git clone https://github.com/powerline/fonts.git
cd fonts
./install.sh
```

The font *"Meslo LG S Regular for Powerline"* at 11 pt. works well in macOS's Terminal.app.

## [Terminal.app Espresso color scheme](https://github.com/lysyi3m/macos-terminal-themes)

The Espresso color scheme works great:

```
git clone https://github.com/lysyi3m/macos-terminal-themes
cd macos-terminal-themes
open schemes/
```

This will open a Finder window, double-click the `Espresso.terminal` file and the theme will be added to the terminal settings pane—just set as the default theme.

## [Ultimate vim configuration](https://github.com/amix/vimrc)

```
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh
```

To install and use the `deus` theme, and apply my custom configuration:

```
cd .vim_runtime/
curl https://raw.githubusercontent.com/joeraut/my-configs/master/custom-vim-conf.vim > my_configs.vim
cd my_plugins/
git clone https://github.com/ajmwagar/vim-deus
```
