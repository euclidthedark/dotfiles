default: setup_c setup_neovim

setup_c:
	sudo apt install make cmake gcc g++

setup_git:
	sudo apt install git

setup_neovim: install_nvm install_py
	sudo apt install ripgrep nvm && \
	python3 -m pip install virtualenv

install_nvm:
	wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash && \
	cat # NVM for Node #
	cat export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")" [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" >> .bashrc

install_py:
	sudo apt install python2 python3 pip python3-pip python3-venv
