#!/bin/bash

# Install Software
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Oh-My-Zsh:
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Install all the casks
brew install cask
# Firefox
brew cask install firefox
# Slack
brew  cask install slack
# Evernote
brew cask install evernote
# Atom
brew cask install atom
# Dropbox
brew cask install dropbox
# 1Password
brew cask install 1Password
# Caffeine
brew cask install caffeine
# Authy
brew cask install authy
# iterm2
brew cask install iterm2
# keybase
brew cask install keybase
# virtualbox (requires a prompt  for allowing this in apple's system extension)
brew cask install virtualbox

# Tmux
brew install tmux
# Instal tmux plugin manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
cat >~/.tmux.conf <<EOL
# List of plugins
set -g @plugin 'tmux-plugins/tpm'
set -g @plugin 'tmux-plugins/tmux-sensible'
set -g @plugin 'jimeh/tmux-themepack'
# Initialize TMUX plugin manager (keep this line at the very bottom of tmux.conf)
run '~/.tmux/plugins/tpm/tpm'
EOL

# jq
brew install jq
#tree command
brew install tree
##Zsh
brew install zsh zsh-completions
# awscli
brew install awscli
# gpg
brew install gpg

#Spacemacs
brew tap d12frosted/emacs-plus
brew install emacs-plus --HEAD --with-natural-title-bars
brew linkapps emacs-plus
git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d

# Install npm

brew install npm

