sudo apt install zsh
sudo -s 'echo /usr/local/bin/zsh >> /etc/shells'
chsh -s $(which zsh)
