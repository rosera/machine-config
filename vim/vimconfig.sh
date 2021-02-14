# vim-plug installation
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Create an undo directory
mkdir -p ~/.vim/undodir

# Download vim configuration
curl -fLo ~/.vimrc https://raw.githubusercontent.com/rosera/machine-config/master/vim/.vimrc
