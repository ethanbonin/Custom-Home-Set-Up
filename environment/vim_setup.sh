RED="$(tput setaf 1)"
NORMAL="$(tput sgr0)"

echo "\n\nRunning vim_setup script.\n\n\n"

brew install vim
echo "Created .vimrc"
touch .vimrc

echo "\n\nInstalling Pathogen Package Manager"
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

echo execute pathogen#infect'()' > .vimrc
echo >> .vimrc
echo >> .vimrc
echo >> .vimrc

echo "Installing Custom Plugins: Javascript, JSX, Surround, Syntastic, Nerdtree"
git clone https://github.com/pangloss/vim-javascript.git ~/.vim/bundle/vim-javascript
git clone https://github.com/mxw/vim-jsx.git ~/.vim/bundle/vim-jsx
git clone git://github.com/tpope/vim-surround.git ~/.vim/bundle/vim-surround
git clone https://github.com/scrooloose/syntastic ~/.vim/bundle/syntastic
git clone https://github.com/scrooloose/nerdtree ~/.vim/bundle/nerdtree
git clone https://github.com/itchyny/lightline.vim ~/.vim/bundle/lightline.vim




echo "\n\n--Writing Custom Preferences to .vimrc"
echo '"'Custom Preferences for Vim >> .vimrc
echo syntax on >> .vimrc
echo filetype plugin indent on >> .vimrc
echo set history=1000 >> .vimrc
echo set undolevels=1000 >> .vimrc
echo set shell=bash'\' -i >> .vimrc
echo set scrolloff=5 >> .vimrc
echo set t_Co=256 >> .vimrc
echo  >> .vimrc
echo >> .vimrc
echo >> .vimrc

echo "--Writing custom editing preferences to .vimrc"
echo '"'Custom Editing Preferences >> .vimrc
echo set mouse=a >> .vimrc
echo set backspace=indent,eol,start >> .vimrc
echo set hlsearch >> .vimrc
echo set ic >> .vimrc
echo set number >> .vimrc
echo let g:jsx_ext_required = 0 >> .vimrc
echo let g:javascript_plugin_jsdoc = 1 >> .vimrc
