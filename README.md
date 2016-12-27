## dotfiles
### Install
Use [rcm](https://github.com/thoughtbot/rcm) to symlink the dotfiles
~~~
lsrc # check if the symlink paths are correct
rcup # create the symlinks
rcdn # rollback the changes
~~~
Use install-script.sh to symlink the dotfiles using the settings provided by the rcrc file
### Atom
In order to save the list of installed package run :
~~~
apm list --instaled --bare > packages.list
~~~
Then on the new install run this command to install all the packages.
~~~
apm install --packages-file packages.list
~~~

### Terminix
~~~
sudo add-apt-repository ppa:webupd8team/terminix
sudo apt update
sudo apt install terminix
~~~

To set terminix as the default term and open it with `Ctrl+Alt+T`
~~~
gsettings set org.gnome.desktop.default-applications.terminal exec 'terminix'
~~~

### Ruby
To skip the installation fo the doc when installing a gem
~~~
echo "gem: --no-document" > ~/.gemrc
~~~
