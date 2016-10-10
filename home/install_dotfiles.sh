#!/bin/bash
for i in .bashrc .bash_aliases .emacs .inputrc ; do
    cp -f $i $HOME/$i
done
