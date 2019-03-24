# dotfiles

This repository aims to keep track of all the steps necessary to setup my best work environment.

Clone this repository in a `.dotfiles` directory (required for rcm)
```
git clone git@github.com:Tuxii/dotfiles.git ~/.dotfiles
```

## Operating system  

Currently I use Ubuntu 18.04 on both a Dell XPS 15 9550 and Thinkpad T460p laptops.

Ideally I'd like to use Windows as my main working OS in order to have a better apps ecosystem and a better hardware compatibility. This could in theory be possible with WSL and Docker but as it stands now (March 2019), performance are too poor and some weird bugs are occuring with Docker to consider this solution for actual work.

## Desktop environment

I use Gnome Desktop which I consider the most modern and easy to use DE out there, even though it can be laggy or buggy sometimes. For lack of anything better, I'll stick to it.

Must have extensions

- [Dash to panel](https://extensions.gnome.org/extension/1160/dash-to-panel/)
- [Alternate Tab](https://extensions.gnome.org/extension/15/alternatetab/) - [Will be deprecated](https://blogs.gnome.org/fmuellner/2018/10/11/the-future-of-alternatetab-and-why-you-need-not-worry/)
- [No annoyance](https://extensions.gnome.org/extension/1236/noannoyance/)

## Laptop specific tweaks

### Thinkpad

#### Remap Home and End keys to PageUp and PageDown

Do yourself a favor and switch those keys.
To do so edit out `/usr/share/X11/xkb/symbols/pc`
Invert PGUP and PGDN command with the ones associated with HOME and END.
Once done, reboot.

Source: https://askubuntu.com/a/681740

### Dell XPS 15

Still to come, one day.

## Apps

### Atom

Go to https://atom.io/ and download the .deb

Prefer this way over snap and flatpak which are buggy IMO.

Atom settings are synced on a private gist using [sync-settings](https://atom.io/packages/sync-settings) package.

```
apm install sync-settings
GITHUB_TOKEN=<MY_TOKEN> GIST_ID=<GIST_ID> atom
```

Then select `Restore`

### Typora

Go to https://support.typora.io/Typora-on-Linux/ for installation instructions.

Works out of the box on bionic

## Terminal

### Terminal Emulator

Install [Tilix](https://gnunn1.github.io/tilix-web/) with on official Ubuntu repositories

```
sudo apt install tilix
```

To set Tilix as the default term and open it with `Ctrl+Alt+T`

```
gsettings set org.gnome.desktop.default-applications.terminal exec 'tilix'
```

#### Shell

Install ZSH
```
sudo apt install zsh
```
Set Zsh as the default shell
```
chsh -s $(which zsh)
```

Then install [Prezto](https://github.com/sorin-ionescu/prezto)

```
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
```

Use [rcm](https://github.com/thoughtbot/rcm) to symlink the dotfiles
rcm will create a symlink to every file in the current repo to the home directory

```
lsrc # check if the symlink paths are correct
rcup # create the symlinks
rcdn # rollback the changes

RCRC=rcrc <command> # will take into account the rcrc config file
```

## Ruby
[Gorails](https://gorails.com/setup/ubuntu/18.04) has the best guides for installing ruby and rails&.

To skip the installation fo the doc when installing a gem
~~~
echo "gem: --no-document" > ~/.gemrc
~~~
