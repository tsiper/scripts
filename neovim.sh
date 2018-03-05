# Installing prerequisites
sudo apt install -y software-properties-common python-software-properties
sudo add-apt-repository -y ppa:neovim-ppa/stable
sudo apt-get update
sudo apt-get install -y python-dev python-pip python3-dev python3-pip

# Installing neovim
sudo apt-get install -y neovim

# Making default editor
sudo update-alternatives --skip-auto --install /usr/bin/vi vi /usr/bin/nvim 60
sudo update-alternatives --skip-auto --config vi
sudo update-alternatives --skip-auto --install /usr/bin/vim vim /usr/bin/nvim 60
sudo update-alternatives --skip-auto --config vim
sudo update-alternatives --skip-auto --install /usr/bin/editor editor /usr/bin/nvim 60
sudo update-alternatives --skip-auto --config editor

# Adding vim-plug to the directory
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Adding alias to the ~/.vimrc
ln -s -f ~/.vimrc ~/.config/nvim/init.vim

# Adding alias to bashrc and zshrc
echo "alias vim=nvim" >> ~/.bashrc
echo "alias vim=nvim" >> ~/.zshrc

# Installing the packages
vim +PlugInstall +qall
