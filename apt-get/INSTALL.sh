#!/bin/bash

echo '#'
echo '# apt-get'
echo '#'

echo ''
echo '## apt-get update'
echo '##'
sudo apt-get update

echo ''
echo '## apt-get install'
echo '##'
for f in ?*
do
	[[ "$f" = "." ]] && continue
	[[ "$f" = ".." ]] && continue
	[[ "$f" = ".git" ]] && continue

	# skip *.sh
	[[ "$f" =~ .*\.sh ]] && continue

	# skip '_' prefix files
	[[ "$f" =~ _.* ]] && continue

	sudo apt-get install -y --show-progress "$f"
done

