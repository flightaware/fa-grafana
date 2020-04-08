#!/bin/bash

# Script to install required programs to run fa-grafana

echo "Installing required programs to set up fa-grafana..."

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
			pip3 install docker-compose > /dev/null
		;;
		docker)
			curl -sSL https://get.docker.com | sh > /dev/null
			echo "Adding pi user to docker group..."
			usermod -aG docker pi
		;;
		*)
		;;
		esac
	else
		echo "$program installed. Proceeding..."
	fi
done

echo "All necessary programs installed! Clone the fa-grafana directory and start up docker containers using docker-compose."
