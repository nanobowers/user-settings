


# first, emacs and git

sudo apt-get install emacs24
sudo apt-get install git

# then install RVM

command curl -sSL https://rvm.io/mpapis.asc | gpg --import -
curl -sSL https://get.rvm.io | bash -s stable
source ./.rvm/scripts/rvm
rvm install 2.1.5

# now get my user settings
git clone http://github.com/nanobowers/user-settings
