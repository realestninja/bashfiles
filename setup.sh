#!/bin/bash

current_dir=`pwd`

path_to_all_scripts="$current_dir""/global"
destination="/usr/local/bin/"

for file in $path_to_all_scripts/*
do
	filename=${file%.sh}
	name=${filename##*/}
	printf "Creating symlink for: $name\n"
	sudo ln -s $file $destination$name
	sudo chmod a+x $destination$name
done

printf '%50s\n' | tr ' ' -
printf "All done.\n"
