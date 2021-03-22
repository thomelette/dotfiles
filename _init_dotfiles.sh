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
    
    # not sure why you have to do this; probably the checkout of one file
    git --git-dir=$HOME/.dotfiles.git --work-tree=$HOME reset --hard HEAD

    source .bashrc
    dotfiles config --local status.showUntrackedFiles no
    
    echo "...done! You're all set!"
    echo "Use 'dotfiles' instead of 'git' to version control files in your ~ directory."
    echo "(e.g. 'dotfiles status', 'dotfiles diff .bashrc', etc.)
else
    echo "ERROR: Failed to checkout repo!"
fi
