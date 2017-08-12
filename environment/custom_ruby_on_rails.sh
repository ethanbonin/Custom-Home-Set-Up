echo "\n\nInstalling Ruby on Rails\n\n"

#install Ruby & Rails
echo "\n\n\nInstall Ruby\n\n\n"

\curl -L https://get.rvm.io | bash -s stable
rvm | head -n 1
rvm use ruby --install --default
ruby -v

echo "\n\n\nInstalling Rails\n\n\n"
gem install rails --no-ri --no-rdoc
rails --version

