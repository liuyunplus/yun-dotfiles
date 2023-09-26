#!/bin/bash

path=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

config_zsh() {
	rm -rf ~/.zshrc
	ln -sf $path/zshrc ~/.zshrc
	echo "zsh config done."
}

config_vim() {
	rm -rf ~/.config/nvim
	ln -sf $path/nvim ~/.config/nvim
	echo "neovim config done."
}

config_git() {
	rm -rf ~/.gitconfig
	rm -rf ~/.gitignore
	ln -sf $path/git/gitconfig ~/.gitconfig
	ln -sf $path/git/gitignore ~/.gitignore
	echo "git config done."
}

config_ssh() {
	rm -rf ~/.ssh/config
	ln -sf $path/ssh/config ~/.ssh/config

	ssh_home=$HOME/.ssh
	if [ ! -f "$ssh_home/id_rsa_github" ]; then
		ssh-keygen -q -m PEM -t rsa -b 4096 -N '' -C "liuyunplus@gmail.com" -f $ssh_home/id_rsa_github
	fi
	if [ ! -f "$ssh_home/id_rsa_gitee" ]; then
		ssh-keygen -q -m PEM -t rsa -b 4096 -N '' -C "liuyunplus@gmail.com" -f $ssh_home/id_rsa_gitee
	fi
	echo "ssh config done."
}

config_python() {
	rm -rf ~/.pip
	ln -sf $path/python/pip ~/.pip
	python3 -m venv ~/.pyenv
	echo "python config done."
}

config_latexmkrc() {
	rm -rf ~/.latexmkrc
	ln -sf $path/latex/latexmkrc ~/.latexmkrc
	echo "latex config done."
}

config_zsh
config_vim
config_git
config_ssh
config_python
config_latexmkrc

echo "安装成功！"
