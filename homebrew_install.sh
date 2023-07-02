## Install Homebrew - requires system root password - press return to install the defaults
export HOMEBREW_NO_INSTALL_FROM_API=1
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

## Update brew
brew update --auto-update
