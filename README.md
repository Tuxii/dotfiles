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
