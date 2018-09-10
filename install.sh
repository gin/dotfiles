# Install Homebrew
#ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
brew upgrade


# Install Zsh and Oh My Zsh
brew install zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"


# Install Node Version Manager
#brew install nvm
#mkdir ~/.nvm
#cp $(brew --prefix nvm)/nvm-exec ~/.nvm/
#export NVM_DIR=~/.nvm
#source $(brew --prefix nvm)/nvm.sh


# Tools
brew install tmux
brew install htop-osx
brew install tig
brew install jq
#brew install git-lfs


# Record terminal sessions
## $ asciinema rec
## Ctrl-D to finish.
#brew install asciinema


## Docker and tools. (download Kitematic (GUI) from docker.com)
#brew install docker
#
### provisions, configures
#brew install docker-machine
#
### multi-container app in 1 config file: `docker-compose up`
#brew install docker-compose
#
### multi-container (distributed) as 1 box
##brew install docker-swarm


## Python tools
#brew install Caskroom/cask/anaconda
#conda update conda


brew install go


# Solidity
#npm install -g solc
brew tap ethereum/ethereum
brew install solidity
brew linkapps solidity
