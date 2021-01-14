
# aliases
alias python='python3'

# functions
# update linux system
update_linux () { sudo apt update -y; }

#update linux packages
update_apt_packages () { sudo apt upgrade -y; }

# Autocompletes
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

