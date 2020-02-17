#!/usr/bin/env bash

root=$(cd `dirname $0`; pwd)

function install_zsh_plugin() {
  name=`basename $1`
  plugin_path="${ZSH_CUSTOM:-"$HOME/.oh-my-zsh/custom"}/plugins/$name"
  echo $plugin_path
  if [ ! -d "$plugin_path" ]; then
    echo "install oh-my-zsh plugin $name"
    git clone $1 $plugin_path
    echo "complete install oh-my-zsh plugin $name!!"
  else
    echo 'fuck'
  fi
}

install_zsh_plugin 'https://github.com/zsh-users/zsh-autosuggestions'

ln -sf "$root/zsh/.zshrc" "$HOME/.zshrc"
ln -sf "$root/zsh/custom.zsh-theme" "$HOME/.oh-my-zsh/themes/custom.zsh-theme"
