sudo apt-get install curl
curl -L https://get.rvm.io | bash -s stable
rvm install 2.1.2
rvm gemset create tweet4yu
# next line is required every time terminal is open
rvm use ruby-2.1.2@tweet4yu
sudo apt-get install bundler
bundle install
