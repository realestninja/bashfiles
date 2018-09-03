# Get Vim
sudo apt install vim
sudo apt install vim-gnome -y

# Get Dotfiles and create folder structure
git clone https://github.com/realestninja/Dotfiles.git ~/
mkdir ~/Code
mkdir ~/.vim
mkdir ~/.vim/bundle
mkdir ~/.i3
mkdir ~/Pictures/Screenshots
mkdir ~/temporary

# Create symlinks
ln -s ~/Dotfiles/.vim/.vimrc ~
ln -s ~/Dotfiles/i3config/config ~/.i3/config
ln -s ~/Dotfiles/fonts ~/.fonts
ln -s ~/Dotfiles/compton/compton.conf ~/.config/compton.conf
ln -s ~/Dotfiles/tmux/.tmux.conf ~

# Clear fonts cache, applies new fonts
fc-cache -f -v

# Download and set shell to solarized-dark
git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell
base16_solarized-dark

sudo apt install texlive-full
sudo apt install ranger 
sudo apt install gdebi-core
sudo apt install alacarte
sudo apt install chrome-gnome-shell
sudo apt install git
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

# Get scripts
mkdir ~/Scripts
git clone https://github.com/realestninja/bashfiles.git ~/Scripts

# Install vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

sudo apt install i3
# i3 gaps installation for ubuntu -> https://gist.github.com/dabroder/813a941218bdb164fb4c178d464d5c23

# get extras
# tool for backlight buttons on thinkpad x1 carbon 2nd gen -> https://github.com/haikarainen/light#installation
git clone https://github.com/haikarainen/light.git ~/temporary
# polybar download
git clone https://github.com/jaagr/polybar.git ~/temporary

# Install unimatrix
sudo curl -L https://raw.githubusercontent.com/will8211/unimatrix/master/unimatrix.py -o /usr/local/bin/unimatrix
sudo chmod a+rx /usr/local/bin/unimatrix

# Gnome 3 Extensions
# https://extensions.gnome.org/extension/55/media-player-indicator/
# https://extensions.gnome.org/extension/750/openweather/
# https://extensions.gnome.org/extension/8/places-status-indicator/
# https://extensions.gnome.org/extension/7/removable-drive-menu/

