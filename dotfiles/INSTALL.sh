#!/bin/bash

echo '#'
echo '# make symbolic links of dotfiles from $HOME'
echo '#'

for f in .*
do
	[ "$f" = "." ] && continue
	[ "$f" = ".." ] && continue
	[ "$f" = ".git" ] && continue

	# concatenate '.cat' suffix files
	[[ "$f" =~ .*\.cat ]] && cat `pwd`/"$f" >> "$HOME"/"${f%.cat}" && continue

	ln -snfv `pwd`/"$f" "$HOME"/"$f"
done
