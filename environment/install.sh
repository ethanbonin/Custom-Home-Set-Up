RED="$(tput setaf 1)"
NORMAL="$(tput sgr0)"


#Install Homebrew. Package manager to easily install stuff
echo "\n\nInstalling Homebrew\n\n"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

#This is to install command line tools from xcode without downloading xcode
gcc

sh ~/Environment/environment/custom_npm_node_setup.sh
sh ~/Environment/environment/custom_ohmyzsh.sh
sh ~/Environment/environment/custom_ruby_on_rails.sh
sh ~/Environment/environment/vim_setup.sh
sh ~/Environment/environment/custom_apm_packages.sh


#Install git
echo "\n\n\nInstalling Git\n\n\n"
brew install git

printf "${RED}"
echo "\n\n\nWARNING!! - DO NOT FORGET TO CONFIG GIT\n\n\n"
printf "${NORMAL}"

#this install googler and it installs  pip3
echo "\n\n\nInstalling Googler\n\n\n"
brew install googler

#Install Funcational Languages, cause i'm nerdy. and I love functional programming
brew cask install haskell-platform

brew install elm

cd ~
sudo rm -r Environment/
