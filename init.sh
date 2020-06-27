#!/usr/bin/env bash

root=$(cd `dirname $0`; pwd)

function install_oh_my_zsh() {
  if [ ! -d "$HOME/.oh-my-zsh" ]; then
    sh -c "$(curl -fsSL https://gitee.com/mirrors/oh-my-zsh/raw/master/tools/install.sh)"
  else
    echo 'oh-my-zsh is installed'
  fi
}

function install_zsh_plugin() {
  name=`basename $1`
  plugin_path="${ZSH_CUSTOM:-"$HOME/.oh-my-zsh/custom"}/plugins/$name"
  echo $plugin_path
  if [ ! -d "$plugin_path" ]; then
    echo "install oh-my-zsh plugin $name"
    git clone $1 $plugin_path
    echo "complete install oh-my-zsh plugin $name!!"
  else
    echo "plugin $name is installed"
  fi
}

# install oh-my-zsh
install_oh_my_zsh
install_zsh_plugin 'https://github.com/zsh-users/zsh-autosuggestions'

ln -sf "$root/zsh/.zshrc" "$HOME/.zshrc"
ln -sf "$root/zsh/custom.zsh-theme" "$HOME/.oh-my-zsh/themes/custom.zsh-theme"
