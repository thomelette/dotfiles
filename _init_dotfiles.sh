#!/bin/bash

files="_init_dotfiles.sh \
       .bashrc \
       "

echo "Moving prior dotfiles before checkout..."

for f in $files; do
    if [ -f "${f}" ]; then
	mv -n -v ${f} ${f}-`date "+%Y%m%d-%H%M%S"`
    fi 
done

echo "...done! Attempting git checkout..."

if git --git-dir=$HOME/.dotfiles.git --work-tree=$HOME checkout; then
    echo "...okay! Hiding untracked files..."
    dotfiles config --local status.showUntrackedFiles no
    echo "...done! You're all set!"
else
    echo "ERROR: Failed to checkout repo!"
fi
