#!/bin/echo source_this_script_do_not_execute_it

# cd to the parent directory of a file if the file is not a directory
function xcd () {
	if [ -z "$1" ] ; then
		echo "xcd needs an argument"
	elif [ -d $1 ] ; then
		cd $1
	elif [ -e $1 ] ; then
		cd $(dirname $1)
	else
		echo "cannot xcd to $1"
	fi
}
