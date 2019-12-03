#! /usr/local/gnu/bin/bash
dir="."
if [ "$1" != "" ]; then
    cd $1
fi

echo "Looking at " $dir " directory."
echo "There are following subdirectorys."
echo "Which directory do you want to see? (1=quit): "

while [ 1 ]; do
    dlist="quit $( ls -aF | grep / )"
    select dir in $dlist; do
	if [ "$dir" = "quit" ]; then
	    exit
	else
	    cd $1/$dir
	    pwd
	fi
	break
	exec $HOME/literacy/dsearch.bash
    done
done

    
    
