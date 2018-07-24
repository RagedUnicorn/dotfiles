#!/bin/bash

brew update
brew upgrade

brew install bash
brew install bash-completion2

# Switch to using brew-installed bash as default shell
if ! fgrep -q '/usr/local/bin/bash' /etc/shells; then
  echo '/usr/local/bin/bash' | sudo tee -a /etc/shells;
  chsh -s /usr/local/bin/bash;
fi

# Install more recent versions of some macOS tools.
brew install vim --with-override-system-vi
brew install grep
brew install openssh
brew install screen

# Install infrastructure tools
brew install terraform
brew install awscli
brew install kubernetes-cli

# Remove outdated versions from the cellar.
brew cleanup
