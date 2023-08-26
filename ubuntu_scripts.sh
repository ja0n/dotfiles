#!/bin/bash

function install_apt_https {
  sudo apt-get install \
      apt-transport-https \
      ca-certificates \
      curl \
      gnupg-agent \
      software-properties-common
}

function install_essentials {
  sudo apt install git build-essential tmux
}

function install_docker {
  curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
  sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
}

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
  sudo apt install tesseract-ocr tesseract-ocr-por
}

function install_micro {
  sudo apt install micro
}

# Check if the function exists (bash specific)
if declare -f "$1" > /dev/null
then
  # call arguments verbatim
  "$@"
else
  # Show a helpful error
  echo "'$1' is not a known command" >&2
  echo "" >&2
  echo "List of available commands:" >&2
  declare -F | cut -d ' ' -f3-
  exit 1
fi
