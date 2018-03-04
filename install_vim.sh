cd
mv .vim .vim_backup
# Required for vim plugins
sudo apt install cmake
mkdir -p .vim/autoload
wget -O .vim/autoload/plug.vim https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

