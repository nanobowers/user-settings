
#!/bin/bash
for i in .bashrc .bash_aliases .emacs .inputrc .Xresources ; do
    cp -f home/$i $HOME/$i
done
