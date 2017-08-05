#!/bin/bash
# Make zsh to your defualt shell
chsh -s /bin/zsh
echo "Login into account again"
su $USER

# Clone and Upgrade Vim Plugin
echo "Installing Vim Plugins"
vim +PlugInstall 

# Clone fzf and install
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

# Clone and install hjem prompt
git clone https://github.com/cornerman/prompt-hjem ~/prompt-hjem
cd ~/prompt-hjem 
sudo make install

