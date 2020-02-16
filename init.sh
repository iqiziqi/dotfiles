#!/usr/bin/env bash

root=$(cd `dirname $0`; pwd)

ln -sf "$root/zsh/.zshrc" "$HOME/.zshrc"
ln -sf "$root/zsh/custom.zsh-theme" "$HOME/.oh-my-zsh/themes/custom.zsh-theme"
