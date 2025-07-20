#!/bin/echo source_this_script_do_not_execute_it
if [ -d $HOME/.bash-git-prompt ] ; then
    source $HOME/.bash-git-prompt/gitprompt.sh
else
    # Non-git prompt/
    PS1="\[\033[0;33m\]\w\[\033[0;0m\] \n\[\033[0;37m\]$(date +%H:%M:%S)\[\033[0;0m\] $ "
fi

