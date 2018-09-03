# Ubuntu - easy install script

echo '###########################################'
echo '#                                         #'
echo "#   Ubuntu 16.04 / 18.04 - easy install   #"
echo '#                                         #'
echo '###########################################'
echo ''

echo ''

read -p "Git required. Install git? (y/N)? " -n 1 -r
if [[ $REPLY =~ ^[Yy]$  ]]
then
	sudo apt install git
fi

echo ''
read -p "Create Folders and download Dotfiles? (y/N)? " -n 1 -r
if [[ $REPLY =~ ^[Yy]$  ]]
then
	# Get Dotfiles and create folder structure
	git clone https://github.com/realestninja/Dotfiles.git ~/
	mkdir ~/Code
	mkdir ~/.vim
	mkdir ~/.vim/bundle
	mkdir ~/.i3
	mkdir ~/Pictures/Screenshots
	mkdir ~/temporary
fi

echo ''
read -p "Install Vim? (y/N)? " -n 1 -r
if [[ $REPLY =~ ^[Yy]$  ]]
then
	# Get Vim
	sudo apt install vim
	sudo apt install vim-gnome -y

	# Install vundle
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

echo ''
read -p "Create symlinks to Dotfiles? (y/N)? " -n 1 -r
if [[ $REPLY =~ ^[Yy]$  ]]
then
	# Create symlinks
	ln -s ~/Dotfiles/vim/.vimrc ~
	ln -s ~/Dotfiles/i3config/config ~/.i3/config
	ln -s ~/Dotfiles/fonts ~/.fonts
	ln -s ~/Dotfiles/compton/compton.conf ~/.config/compton.conf
	ln -s ~/Dotfiles/tmux/.tmux.conf ~
	ln -s ~/Dotfiles/bash/.bashrc ~
	source ~/.bashrc
fi

echo ''
read -p "Clear fonts cache / Apply new fonts? (y/N)? " -n 1 -r
if [[ $REPLY =~ ^[Yy]$  ]]
then
	# Clear fonts cache, applies new fonts
	fc-cache -f -v
fi

echo ''
read -p "Download and set shell to solarized-dark? (y/N)? " -n 1 -r
if [[ $REPLY =~ ^[Yy]$  ]]
then
	# Download and set shell to solarized-dark
	git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell
	base16_solarized-dark
fi

echo ''
read -p "Install software? (y/N)? " -n 1 -r
if [[ $REPLY =~ ^[Yy]$  ]]
then
	sudo apt install texlive-full
	sudo apt install ranger 
	sudo apt install gdebi-core
	sudo apt install alacarte
	sudo apt install chrome-gnome-shell
	sudo apt install autoreconf 
	sudo apt install make
	sudo apt install cmake
	sudo apt install curl
	sudo apt install feh
	sudo apt install scrot
	sudo apt install xdotool
	sudo apt install xserver-xorg-input-synaptics
	sudo apt install neofetch
	sudo apt install fortune
	sudo apt install cowsay
	sudo apt install compton
	sudo apt install tmux
	sudo apt install unclutter
	sudo apt install xtrlock
	sudo apt install nodejs
	sudo apt install npm
	sudo apt install docker
fi

echo ''
read -p "Get scripts? (y/N)? " -n 1 -r
if [[ $REPLY =~ ^[Yy]$  ]]
then
	# Get scripts
	mkdir ~/Scripts
	git clone https://github.com/realestninja/bashfiles.git ~/Scripts
	sh ~/Scripts/setup.sh
fi

echo ''
read -p "Install i3? (y/N)? " -n 1 -r
if [[ $REPLY =~ ^[Yy]$  ]]
then
	sudo apt install i3
	# i3 gaps installation for ubuntu -> https://gist.github.com/dabroder/813a941218bdb164fb4c178d464d5c23
fi

echo ''
read -p "Install Extras (light, polybar, unimatrix)? (y/N)? " -n 1 -r
if [[ $REPLY =~ ^[Yy]$  ]]
then
	# get extras
	# tool for backlight buttons on thinkpad x1 carbon 2nd gen -> https://github.com/haikarainen/light#installation
	git clone https://github.com/haikarainen/light.git ~/temporary

	# polybar download
	git clone https://github.com/jaagr/polybar.git ~/temporary

	#unimatrix
	sudo curl -L https://raw.githubusercontent.com/will8211/unimatrix/master/unimatrix.py -o /usr/local/bin/unimatrix
	sudo chmod a+rx /usr/local/bin/unimatrix
fi

echo ''
echo ''
echo '-------------------------------------------'
echo ''
echo 'All done.'
echo ''
read -p "Open list for downloads required to be done manually?? (y/N)? " -n 1 -r
if [[ $REPLY =~ ^[Yy]$  ]]
then
	firefox manual-installs.html
fi

echo ''
