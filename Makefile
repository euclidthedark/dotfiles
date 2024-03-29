setup_linux:
	sudo apt update -y && sudo apt upgrade -y
	sudo apt install python build-essential cmake vim-nox python3-dev mono-complete golang tmux xclip pylint python3-pip
	# install nvm
	curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash
	# install rustup for windows linux subsystem
	curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
	bash -c "$(wget https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh -O -)"
	cat ~/dotfiles/.bashrc >> ~/.bashrc

setup_tmux:
	git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
	ln -s ~/dotfiles/.tmux.conf ~/.tmux.conf
	tmux source ~/.tmux.conf

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

setup_neovim:
	sudo apt install neovim
	mkdir -p ~/.config/nvim
	touch ~/.config/nvim/init.vim
	cat ~/dotfiles/nvim/init.vim >> ~/.config/nvim/init.vim

setup_node:
	nvm install lts/fermium
	nvm alias default lts/fermium
	nvm use default

source_vim:
	vim -E -c PlugInstall -c -q

