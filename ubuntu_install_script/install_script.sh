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
	sudo apt install git -y
fi

echo ''
read -p "Create Folders and download Dotfiles? (y/N)? " -n 1 -r
if [[ $REPLY =~ ^[Yy]$  ]]
then
	# Get Dotfiles and create folder structure
	git clone https://github.com/realestninja/Dotfiles.git ~/Dotfiles
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
	sudo add-apt-repository ppa:jonathonf/vim
	sudo apt update
	sudo apt install vim -y
	sudo apt install vim-gnome -y

	# Install vundle
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

echo ''
read -p "Create symlinks to Dotfiles? (y/N)? " -n 1 -r
if [[ $REPLY =~ ^[Yy]$  ]]
then
	# Create symlinks
	rm ~/.bashrc
	ln -s ~/Dotfiles/bash/.bashrc ~
	ln -s ~/Dotfiles/vim/.vimrc ~
	ln -s ~/Dotfiles/i3config/config ~/.i3/config
	ln -s ~/Dotfiles/fonts ~/.fonts
	ln -s ~/Dotfiles/compton/compton.conf ~/.config/compton.conf
	ln -s ~/Dotfiles/tmux/.tmux.conf ~
fi

echo ''
read -p "Get tmux plugin manager (tpm)? (y/N)? " -n 1 -r
if [[ $REPLY =~ ^[Yy]$  ]]
then
	mkdir -p ~/.tmux/plugins/tpm
	git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
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
fi

echo ''
read -p "Install software? (y/N)? " -n 1 -r
if [[ $REPLY =~ ^[Yy]$  ]]
then
	sudo apt install texlive-full -y
	sudo apt install ranger -y
	sudo apt install gdebi-core -y
	sudo apt install alacarte -y
	sudo apt install chrome-gnome-shell -y
	sudo apt install tree -y
	sudo apt install autoreconf  -y
	sudo apt install make -y
	sudo apt install cmake -y
	sudo apt install curl -y
	sudo apt install feh -y
	sudo apt install vlc -y
	sudo apt install clementine -y
	sudo apt install scrot -y
	sudo apt install gthumb -y
	sudo apt install filezilla -y
	sudo apt install xclip -y
	sudo apt install gimp -y
	sudo apt install xdotool -y
	sudo apt install xserver-xorg-input-synaptics -y
	sudo apt install fortune -y
	sudo apt install cowsay -y
	sudo apt install compton -y
	sudo apt install tmux -y
	sudo apt install xtrlock -y
	sudo apt install nodejs -y
	sudo apt install npm -y
	sudo apt install docker -y
	sudo add-apt-repository ppa:dawidd0811/neofetch
	sudo apt update
	sudo apt install neofetch -y
fi



echo ''
read -p "Get scripts? (y/N)? " -n 1 -r
if [[ $REPLY =~ ^[Yy]$  ]]
then
	# Get scripts
	mkdir ~/Scripts
	git clone https://github.com/realestninja/bashfiles.git ~/Scripts
	cd ~/Scripts
	sh ~/Scripts/setup.sh
	cd
fi

echo ''
read -p "Install i3? (y/N)? " -n 1 -r
if [[ $REPLY =~ ^[Yy]$  ]]
then
	sudo apt install i3 -y
	# i3 gaps installation for ubuntu -> https://gist.github.com/dabroder/813a941218bdb164fb4c178d464d5c23
fi

echo ''
read -p "Install Extras (light, polybar, unimatrix)? (y/N)? " -n 1 -r
if [[ $REPLY =~ ^[Yy]$  ]]
then
	# get extras
	# tool for backlight buttons on thinkpad x1 carbon 2nd gen -> https://github.com/haikarainen/light#installation
	git clone https://github.com/haikarainen/light.git ~/temporary/light/

	# polybar download
	git clone https://github.com/jaagr/polybar.git ~/temporary/polybar/

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

