setup_linux:
	sudo apt update -y && apt upgrade -y
	git clone https://github.com/euclidthedark/dotfiles.git
	apt install python build-essential cmake vim-nox python3-dev mono-complete golang
	curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash
	nvm install lts/fermium
	nvm alias default lts/fermium
	nvm use default
	cat ~/dotfiles/.bashrc >> ~/.bashrc

