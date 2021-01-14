setup_linux:
	sudo apt update -y && apt upgrade -y
	apt install python
  apt install build-essential cmake vim-nox python3-dev
	curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash
	apt install mono-complete golang

