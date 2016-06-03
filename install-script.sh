#/bin/sh

RCRC=rcrc rcup

ln -s ~/.dotfiles/zprezto/runcoms/zlogin ~/.zlogin
ln -s ~/.dotfiles/zprezto/runcoms/zlogout ~/.zlogout
ln -s ~/.dotfiles/zprezto/runcoms/zpreztorc ~/.zpreztorc
ln -s ~/.dotfiles/zprezto/runcoms/zprofile ~/.zprofile
ln -s ~/.dotfiles/zprezto/runcoms/zshenv ~/.zshenv
ln -s ~/.dotfiles/zprezto/runcoms/zshrc ~/.zshrc

chsh -s /usr/bin/zsh
