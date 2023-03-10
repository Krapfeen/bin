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
	else
		echo -e "\033[91mMiss argument\033[0m"
	fi

else
	echo -e "\033[91mMiss command\033[0m"
fi