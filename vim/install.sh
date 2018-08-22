sudo apt remove --purge vim vim-runtime vim-gnome vim-tiny vim-gui-common
sudo apt install -y liblua5.1-dev luajit libluajit-5.1 python-dev python3-dev ruby-dev libperl-dev libncurses5-dev libatk1.0-dev libx11-dev libxpm-dev libxt-dev
sudo apt install checkinstall
sudo rm -rf /usr/local/share/vim /usr/bin/vim

# vim_source="vim"
vim_source=$(mktemp -d)
git clone https://github.com/vim/vim $vim_source

cd $vim_source/src
make distclean
cd ..


./configure \
	--enable-multibyte \
	--enable-perlinterp=dynamic \
	--enable-rubyinterp=dynamic \
	--enable-pythoninterp=dynamic \
	--with-python-config-dir=/usr/lib/python2.7/config-x86_64-linux-gnu \
	--enable-python3interp \
	--with-python3-config-dir=/usr/lib/python3.5/config-3.5m-x86_64-linux-gnu \
	--enable-luainterp \
	--with-luajit \
	--enable-cscope \
	--with-features=huge \
	--enable-fontset \
	--enable-largefile \
	--with-compiledby="$USER" \
	--enable-fail-if-missing

make && sudo make install
