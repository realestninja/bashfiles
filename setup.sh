#!/bin/bash

current_dir=`pwd`

path_to_all_scripts="$current_dir""/global"
destination="/usr/local/bin/"

printf '%50s\n' | tr ' ' -

for file in $path_to_all_scripts/*
do
	filename=${file%.sh}
	name=${filename##*/}
	if [ ! -f $destination$name ]; then
		printf "Creating symlink for: $name\n"
		sudo ln -s $file $destination$name
		sudo chmod a+x $destination$name
	else
		printf "Skipping - file exists: $name\n"
	fi
done

printf '%50s\n' | tr ' ' -
printf "All done.\n"
