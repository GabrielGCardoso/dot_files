#install zsh
sudo apt install zsh -y
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" -y

#install vim
#sudo apt install vim -y
sudo apt install python-neovim -y

#install git
sudo apt install git -y

#this part here is verry personal use
#sudo add-apt-repository ppa:audacity-team/daily -y
sudo add-apt-repository ppa:ubuntuhandbook1/audacity -y
sudo apt-get update -y
sudo apt-get install audacity -y
# audacity installed 

#install sublime
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add - 
sudo apt-get install apt-transport-https -y
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update -y
sudo apt-get install sublime-text -y
#finish install sublime

#dependencys of asdf
sudo apt-get install jq -y
install asdf
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.7.8
echo -e "\n. $HOME/.asdf/asdf.sh" >> ~/.zshrc

#java by asdf
asdf plugin-add java https://github.com/halcyon/asdf-java.git 
asdf install java adopt-openjdk-8u242-b08
asdf global java adopt-openjdk-8u242-b08
echo ". ~/.asdf/plugins/java/set-java-home.zsh" >>  ~/.zshrc

#dart 
asdf plugin-add dart https://github.com/patoconnor43/asdf-dart.git
asdf dart install 2.7.2
asdf global dart 2.7.2 

#node
asdf plugin-add nodejs https://github.com/asdf-vm/asdf-nodejs.git
bash ~/.asdf/plugins/nodejs/bin/import-release-team-keyring
asdf nodejs install 13.13.0
asdf global nodejs 13.13.0

# vimrc
# touch ~/.vimrc
mkdir -p ~/.config/nvim/ 
wget https://raw.githubusercontent.com/GabrielGCardoso/dot_files/master/init.vim 
sudo mv init.vim ~/.config/nvim/init.vim
#touch ~/.config/nvim/init.vim

#vim plug maneger
curl -fLo ~/.config/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    
#nvim plug maneger
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

#install silver search Ag to fzf files into nvim
sudo apt-get update -y
sudo apt install silversearcher-ag -y

#install tmxu
sudo apt-get install tmux -y

#downloading neovim
curl -LO https://github.com/neovim/neovim/releases/download/nightly/nvim.appimage
chmod u+x nvim.appimage
sudo mv nvim.appimage /usr/bin/nvim

#install xcopy
sudo apt-get update -y 
sudo apt-get install -y xclip

#installing neovide
#https://github.com/Kethku/neovide
