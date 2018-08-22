#!/bin/sh

function install_google_chrome {
	sudo echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list
	wget https://dl-ssl.google.com/linux/linux_signing_key.pub
	sudo apt-key add linux_signing_key.pub
	sudo apt update
	sudo apt install google-chrome-stable
}

function install_vim {

	
}
