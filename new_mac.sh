#!/bin/bash

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until `new_mac.sh` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

brew tap caskroom/versions
brew tap caskroom/fonts

brew install caskroom/cask/brew-cask
#brew cask install google-chrome
brew cask install chromium
brew cask install totalfinder
brew cask install sublime-text3
brew cask install iterm2-beta
brew cask install alfred
brew cask install gpgtools
brew cask install textmate
brew cask install adium
brew cask install sourcetree
brew cask install diffmerge
brew cask install dropbox
brew cask install menumeters
brew cask install 1password
brew cask install cloud
brew cask install airserver
brew cask install fantastical
# Not official
# brew cask install tinkertool
brew cask install xscope3
brew cask install limechat
brew cask install flash
brew cask install spotify
brew cask install shiftit
brew cask install xquartz
brew cask install licecap
brew cask install bettertouchtool
brew cask install vagrant
brew cask install firefox
brew cask install thunderbird
brew cask install wineskin-winery
brew cask install tunnelblick
brew cask install mplayerx
brew cask install sequel-pro
brew cask install phpstorm
brew cask install asepsis
brew cask install java
brew cask install font-source-code-pro
brew cask install openvanilla
brew cask install karabiner
brew cask install totals
brew cask install vmware-fusion
brew cask install coconutbattery
brew cask install beyond-compare
brew cask install cleanmymac
brew cask install skype
brew cask install airmail-beta
brew cask install slack
brew cask install night-owl
brew cask install virtualbox
brew cask install chefdk
brew cask install chronicle
brew cask install kensington-trackball-works
brew cask install chicken
brew cask install trim-enabler
brew cask install textexpander
brew cask install macdown
brew cask install coteditor
brew cask install chromatic
brew cask install atom
brew cask install vlc
brew cask install android-studio
brew cask install the-unarchiver
brew cask install brackets
brew cask install munki
brew cask install bit-slicer
brew cask install smcfancontrol
brew cask install kitematic
brew cask install java6
brew cask install crosspack-avr

brew install libtool --universal
brew install wine
brew install winetricks
brew install wget
brew install git
brew install zsh
echo "/usr/local/bin/zsh" | sudo tee -a /etc/shells

chsh -s /usr/local/bin/zsh

brew install the_silver_searcher
brew install ack
brew install tree
brew install ispell
brew install aspell --lang=en
brew install ctags
brew install sshfs
brew install ssh-copy-id
brew install mysql
brew install android-sdk
brew install libxml2
brew install mackup
brew install httpie
brew install pidcat
brew install watch
brew install imagemagick
brew install hub
brew install gnu-sed --with-default-names
brew install chromedriver
brew install homebrew/dupes/rsync
brew install s3cmd

# iterm2
# Preferences → Profiles → Keys
# Load Preset -> Xterm with Numpad
# ⌥Delete - Send Hex Codes: 0x17
# ⌥← - Send ESC Sequence b
# ⌥→ - Send ESC Sequence f
# num-enter - Send Hex Codes: 0xd

# Setup git
git config --global credential.helper osxkeychain
git config --global core.editor 'emacsclient -t'
git config --global push.default current

# install oh my zsh
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh

# install RVM
\curl -L https://get.rvm.io | bash
# rvm install 2.2.2 --disable-binary
rvm install 2.2.2 --disable-binary
rvm use --create --default 2.2.2@mac
gem install lunchy

brew install node
brew install python
xcode-select --install

npm install -g http-server

#Emacs
#brew install emacs --HEAD --use-git-head --cocoa --srgb
brew tap railwaycat/emacsmacport
brew install emacs-mac --with-spacemacs-icon

sudo rm /usr/bin/emacs
sudo rm -rf /usr/share/emacs
#mkdir -p ~/Library/LaunchAgents
#ln -sfv /usr/local/opt/emacs/*.plist ~/Library/LaunchAgents

# curl -fsSkL https://raw.github.com/cask/cask/master/go | python
#curl -L https://github.com/bbatsov/prelude/raw/master/utils/installer.sh | sh
mv ~/.emacs.d ~/.emacs.bak
git clone --recursive https://github.com/syl20bnr/spacemacs ~/.emacs.d

brew tap homebrew/versions
brew tap --repair

git clone git://github.com/ndbroadbent/scm_breeze.git ~/.scm_breeze
~/.scm_breeze/install.sh

android update sdk --no-ui --filter 'platform-tools'

mkdir ~/security/
git clone https://github.com/chengr28/RevokeChinaCerts.git ~/security/RevokeChinaCerts
cd ~/security/RevokeChinaCerts/Mac
sudo sh ./RevokeChinaCerts.sh
