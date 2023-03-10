#!/bin/bash

if [ -z $1 ]; then
	echo -e "\033[91mInformation\033[0m"
elif [ $1 == 'install' ]; then

	if [ -z $2 ]; then
		echo -e "\033[91mInformation command\033[0m"
    elif [ $2 == 'ssh' ]; then
        ssh-keygen -t ed25519 -C "theAndrewSchaefer@gmail.com"
		eval "$(ssh-agent -s)"
		ssh-add ~/.ssh/id_ed25519

		echo -e "\033[92mSSH key configuration is finished\033[0m"
		cat ~/.ssh/id_ed25519
		cat ~/.ssh/id_ed25519.pub
    elif [ $2 == 'npm' ]; then
        sudo apt install curl
		sudo curl -o https://raw.githubusercontent.com/nvm-sh/nvm/master/install.sh | bash
		command -v nvm
		nvm ls
		nvm install --lts
		install node
		nvm ls

		echo -e "\033[92mInstallation finished, packages installed\033[0m"
		node --version && npm --version
    elif [ $2 == 'git' ]; then
        sudo apt install git-all
	else
		echo -e "\033[91mMiss argument\033[0m"
	fi

elif [ $1 == 'git' ]; then

	if [ -z $2 ]; then
		echo -e "\033[91mInformation command\033[0m"
	elif [ $2 == 'local' ]; then
		git config --local user.name "Krapfeen"
		git config --local user.email theAndrewSchaefer@gmail.com
	elif [ $2 == 'global' ]; then
		git config --global user.name "Шефер Андрей"
		git config --global user.email Shefer@lanit.ru
	else
		echo -e "\033[91mMiss argument\033[0m"
	fi

else
	echo -e "\033[91mMiss command\033[0m"
fi