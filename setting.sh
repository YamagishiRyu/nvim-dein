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
brew install mysql
brew install tree
brew install ripgrep
brew install ctags
brew install htop
brew install direnv
brew install git-secrets
brew install docker-compose
brew install pipenv

#---------------------------------------
# brew cask install
#---------------------------------------
brew install iterm2
brew install slack
brew install deepl
brew install skitch
brew install skim
brew install postman
brew install postgres
brew install docker
brew install firefox
brew install zoom
brew install google-cloud-sdk
#brew cask install cyberduck
#brew cask install gimp
#brew cask install inkscape
#brew cask install adobe-acrobat-reader
#brew cask install google-chrome
#brew cask install zotero
#brew cask install skype
#brew cask install mactex
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
/bin/bash ~/.config/bootstrap/link.sh

#---------------------------------------
# Library Setting
#---------------------------------------
# latexmk
#cp .latexmkrc ~/.latexmkrc
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

# neovim setting
# after installing nodenv and node

git clone https://github.com/rupa/z.git ~/.local
