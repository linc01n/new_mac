#!/bin/bash

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until `new_mac.sh` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

brew tap caskroom/versions
brew tap caskroom/fonts
brew tap linc01n/linc01n

#brew cask install google-chrome
brew cask install chromium
# brew cask install sublime-text3
brew cask install iterm2-beta
brew cask install alfred
brew cask install gpgtools
brew cask install textmate
brew cask install adium
brew cask install sourcetree
brew cask install diffmerge
# brew cask install dropbox
brew cask install yujitach-menumeters
brew cask install 1password
brew cask install cloud
brew cask install airserver
brew cask install fantastical1
# Not official
# brew cask install tinkertool
brew cask install xscope3
brew cask install limechat
brew cask install flash
brew cask install spotify
brew cask install phoenix
brew cask install xquartz
brew cask install licecap
brew cask install vagrant
brew cask install firefox
brew cask install thunderbird
brew cask install wineskin-winery
brew cask install tunnelblick
brew cask install mplayerx
brew cask install sequel-pro
brew cask install valentina-studio
# brew cask install phpstorm
# brew cask install asepsis
brew cask install java
brew cask install font-source-code-pro
brew cask install openvanilla
brew cask install karabiner
# brew cask install totals
brew cask install vmware-fusion
brew cask install coconutbattery
# brew cask install beyond-compare
# brew cask install cleanmymac
brew cask install skype
brew cask install airmail-beta
brew cask install slack
brew cask install night-owl
brew cask install virtualbox
brew cask install chefdk
brew cask install chronicle
brew cask install kensington-trackball-works
brew cask install chicken
# brew cask install trim-enabler
# brew cask install textexpander
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
brew cask install sshfs
brew cask install techstoreclub-simple-comic
brew cask install steam
brew cask install visual-studio-code
brew cask install transmission-remote-gui
brew cask install mpv
brew cask install calibre
brew cask install mactex

brew tap osx-cross/avr
brew install avr-libc
brew install dfu-programmer
brew install teensy_loader_cli

brew install libtool --universal
brew install wine
brew install winetricks
brew install wget
brew install htop
brew install go
brew install git
brew install zsh
echo "/usr/local/bin/zsh" | sudo tee -a /etc/shells

chsh -s /usr/local/bin/zsh

brew install the_silver_searcher
brew install ack
brew install tree
# brew install ispell
brew install aspell --lang=en
brew install ctags
brew install ssh-copy-id
brew install autossh
brew install mariadb
brew install postgresql
brew install android-sdk
brew install libxml2
brew install mackup
brew install httpie
brew install pidcat
brew install watch
brew install imagemagick
brew install hub
brew install coreutils
brew install gnu-sed --with-default-names
brew install chromedriver
brew install homebrew/dupes/rsync
brew install s3cmd
brew install tmux

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
git config --global pull.rebase true
git config --global diff.compactionHeuristic true

# install oh my zsh
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh

# install RVM
\curl -L https://get.rvm.io | bash
source ~/.rvm/scripts/rvm
echo 'bundler' >> ~/.rvm/gemsets/global.gems
echo 'rubocop' >> ~/.rvm/gemsets/global.gems
echo 'pygmentize' >> ~/.rvm/gemsets/global.gems
rvm install 2.3.1 --disable-binary
rvm use --create --default 2.3.1@mac
gem install lunchy
gem install redcarpet

brew install node
brew install python
xcode-select --install

npm install -g http-server
npm install -g coffee-script

pip install pygments

#Emacs
#brew install emacs --HEAD --use-git-head --with-cocoa --with-gnutls --with-rsvg --with-imagemagick
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
sudo sh ./import-trust-settings.sh


# Enable key repeat
defaults write -g ApplePressAndHoldEnabled -bool false

# Create go path
mkdir -p ~/projects/go
