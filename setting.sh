#---------------------------------------
# Install brew
#---------------------------------------
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
brew update

#---------------------------------------
# brew install 
#---------------------------------------
brew bundle --file ~/.config/Brewfile

#---------------------------------------
# oh my zsh
#---------------------------------------
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/Aloxaf/fzf-tab ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/fzf-tab
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

#---------------------------------------
# Library Setting
#---------------------------------------
# git secrets
# git secrets --register-aws --global

# pip for default python 2.7
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python get-pip.py
pip install neovim

# neovim setting
# after installing nodenv and node

git clone https://github.com/rupa/z.git

#---------------------------------------
# Preference file 
#---------------------------------------
/bin/bash ~/.config/bootstrap/link.sh
