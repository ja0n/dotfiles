#!/bin/sh

function install_google_chrome {
	sudo echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list
	wget https://dl-ssl.google.com/linux/linux_signing_key.pub
	sudo apt-key add linux_signing_key.pub
	sudo apt update
	sudo apt install google-chrome-stable
}

function install_plank {
  sudo add-apt-repository -y ppa:ricotz/docky
  sudo apt update
  sudo apt install plank
}

function install_gcolor2 {
  cd ~/Downloads
  wget http://mirrors.kernel.org/ubuntu/pool/universe/g/gcolor2/gcolor2_0.4-2.1ubuntu1_amd64.deb
  sudo apt install ./gcolor2_0.4-2.1ubuntu1_amd64.deb
}

function install_meld {
  sudo apt install meld
}

function install_ag {
  sudo apt install silversearcher-ag
}

function install_tesseract {
  sudo apt install tesseract-ocr
}
