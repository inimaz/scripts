# Goal of this script: install node version manager (nvm) + node + set node 14.17.0 as default version
echo 'Installing nvm (to be able to switch node version)'
# Download nvm + install it
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash

# Make it usable in the same cli, no need to close the terminal
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Install node
nvm install v14.17.0

# Setting 14.17.0 as default
# Important note: One needs to remove versions higher than the default, else nvm will pick the highest version and ignore default
nvm alias default v14.17.0
nvm use default