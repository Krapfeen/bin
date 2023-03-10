#!/bin/bash

if [ -z $1 ]; then
	echo -e "\033[91mInformation\033[0m"
elif [ $1 == 'command' ]; then

	if [ -z $2 ]; then
		echo -e "\033[91mInformation command\033[0m"
	else
		echo -e "\033[91mMiss argument\033[0m"
	fi
else
	echo -e "\033[91mMiss command\033[0m"
fi