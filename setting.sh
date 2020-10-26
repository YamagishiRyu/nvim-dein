xcode-select --install

#---------------------------------------
# Install brew
#---------------------------------------
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
brew update

#---------------------------------------
# brew install 
#---------------------------------------
brew install git
brew install neovim
brew install anyenv
brew install fzf
brew install awscli
brew install gh
brew install jq
brew install mas
brew install mysql-client
brew install tree
brew install ripgrep
brew install ctags
brew install htop
brew install direnv
brew install git-secrets
brew install docker-compose

#---------------------------------------
# brew cask install
#---------------------------------------
brew cask install iterm2
brew cask install slack
brew cask install miniconda
brew cask install skype
brew cask install deepl
brew cask install cyberduck
brew cask install gimp
brew cask install skitch
brew cask install skim
brew cask install inkscape
brew cask install postman
brew cask install postgres
brew cask install docker
brew cask install adobe-acrobat-reader
brew cask install google-chrome
brew cask install firefox
brew cask install zotero
brew cask install zoomus
brew cask install google-cloud-sdk
brew cask install mactex
# brew cask install karabiner-elements
# brew cask install discord
# brew cask install river-sparkle
 
#---------------------------------------
# Application to install
#---------------------------------------
# LINE
# Pocket
# Govid for YouTube
# Toy viewer
# Vimari
# Comment Screen
## Trello

#---------------------------------------
# Preference file 
#---------------------------------------
ln -s .bash_profile ~/.bash_profile
ln -s .bashrc ~/.bashrc
ln -s .bash_functions ~/.bash_functions
ln -s .zprofile ~/.zprofile
ln -s .latexmk ~/.latexmk
ln -s .fzf.bash ~/.fzf.bash
ln -s .fzf.zsh ~/.fzf.zsh
cp .gitconfig ~/.gitconfig

#---------------------------------------
# Library Setting
#---------------------------------------
# latexmk
cp .latexmkrc ~/.latexmkrc
# sudo tlmgr install latexmk # to install latexmk

# vmd
# npm install -g vmd # npm もとから入ってない

# anyenv
anyenv init
anyenv install --init

# git secrets
git secrets --register-aws --global

# pip for default python 2.7
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python get-pip.py
pip install neovim

# conda setting
conda init
conda config --set auto_activate_base False
conda activate base
pip install neovim

# neovim setting
# after installing nodenv and node
