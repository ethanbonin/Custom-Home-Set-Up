RED="$(tput setaf 1)"
GREEN="$(tput setaf 2)"
NORMAL="$(tput sgr0)"

echo "\n\nInstalling oh-my-zsh \n\n"

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

cd ~
#Checking to see if a custom folder exists
if [ -d ~/.oh-my-zsh/custom/themes ]; then
	printf "${GREEN}"
  	echo "\nTheme folder already  exists."
	printf "${NORMAL}"
else
	
	printf "${RED}"
  	echo "\nTheme folder already  exists."
	printf "${NORMAL}"
  	cd ~/.oh-my-zsh/custom
 	mkdir themes
  	cd ~
fi

#Install the beautiful Line of PowerLine
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

#Auto Suggestions
git clone git://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
plugins=(zsh-autosuggestions)

#Installs the fonts plugin for the powerLine.. Remember to go to Preferences, Profiles, Texts and change the font to powerline
git clone https://github.com/powerline/fonts.git
cd fonts-masters
sh install.sh
cd ~


