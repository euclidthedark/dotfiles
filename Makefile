setup_linux:
	sudo apt update -y && sudo apt upgrade -y
	sudo apt install python build-essential cmake vim-nox python3-dev mono-complete golang
	curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash
	nvm install lts/fermium
	nvm alias default lts/fermium
	nvm use default
	cat ~/dotfiles/.bashrc >> ~/.bashrc
	# Grab Plug for vim package management

setup_vim:
	# Grab vim plug
	rm -rf ~/.vimrc
	ln -s ~/dotfiles/.vimrc ~/.vimrc
	curl -fLo ~/dotfiles/.vim/autoload/plug.vim --create-dirs \
	     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	ln -s ~/dotfiles/.vim ~/.vim
	vim -E -c PlugInstall -c -q

setup_ycm:
	python3 ~/dotfiles/.vim/plugged/youcompleteme/install.py --clangd-completer --go-completer --ts-completer --rust-completer

