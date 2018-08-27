#!/bin/bash
for i in .bashrc .bash_aliases .emacs .inputrc .Xresources ; do
    cp -f $i $HOME/$i
done
