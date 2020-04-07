#!/bin/bash

# install required packages
requirements=("git pip3 docker-compose docker")

apt-get update

for program in $requirements
do
	if [ ! -x "$(command -v $program)" ]; then

		echo "Installing $program..."

		case $program in
		git)
			apt-get install -y $program
		;;
		pip3)
			apt-get install -y python3-pip
		;;
		docker-compose)
			pip3 install docker-compose
		;;
		docker)
			curl -sSL https://get.docker.com | sh
			usermod -aG docker pi
		;;
		*)
		;;
		esac
	fi
done
