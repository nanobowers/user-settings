#!/bin/bash

git config --global alias.co 'checkout'
git config --global alias.aa 'add -A'
git config --global alias.main 'checkout main'
git config --global alias.master 'checkout master'
git config --global alias.aliases 'config --global -l'
git config --global alias.publish '!f() { git push --set-upstream ${1:-origin} $(git branch show-current); }; f'
