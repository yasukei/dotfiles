#!/bin/bash

mkdir -p "$HOME"/bin

current_dir=`pwd`

for f in ?*
do
	[[ "$f" = "." ]] && continue
	[[ "$f" = ".." ]] && continue
	[[ "$f" = "$0" ]] && continue
	[[ "$f" = ".git" ]] && continue

	if [[ "$f" =~ .*\.sh ]]; then
		bash ./"$f" || exit $?
	elif [[ -d "$f" ]]; then
		cd "$f"
		bash ./INSTALL.sh || exit $?
		cd "$current_dir"
	else
		echo "skip $f"
	fi
done

