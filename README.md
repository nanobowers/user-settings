

# from fedora24 starting point:
```
sudo dnf install emacs # emacs
sudo dnf install tkcvs # tkdiff
sudo dnf install gitk
``` 

# pull magic git-bash prompt
``` 
cd ~ && git clone https://github.com/magicmonty/bash-git-prompt.git .bash-git-prompt --depth=1
```
# Install RVM
```
command curl -sSL https://rvm.io/mpapis.asc | gpg --import -
curl -sSL https://get.rvm.io | bash -s stable
source ./.rvm/scripts/rvm
rvm install 2.1.5 # or rvm reinstall 2.1.5
```

# now get my user settings
```
 git clone http://github.com/nanobowers/user-settings
 cd user-settings/home && ./install_dotfiles.sh
```
