#!/bin/bash

user=$(whoami)

if [ $user != "root" ] ; then
    echo "ERROR: Must run as sudo:"
    echo "  sudo $0"
    exit -1
fi

if [ -e /etc/redhat-release ] ; then                 
    dnf install emacs # emacs
    dnf install tkcvs # tkdiff
    dnf install gitk
fi

if [ -e /etc/debian_version ] ; then
    apt install x11-apps # xclock for testing
    apt install gnupg2   # gpg
    apt install emacs-gtk
fi

