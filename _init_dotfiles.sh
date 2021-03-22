#!/bin/bash

files="_init_dotfiles.sh \
       .bashrc \
       "

echo "Moving prior dotfiles before checkout..."

mkdir _old_dotfiles
for f in $files; do
    if [ -f "${f}" ]; then
	mv -n -v ${f} _old_dotfiles/${f}-`date "+%Y%m%d-%H%M%S"`
    fi 
done

echo "...done! Attempting git checkout..."

if git --git-dir=$HOME/.dotfiles.git --work-tree=$HOME checkout; then
    echo "...okay! Hiding untracked files..."
    
    # not sure why you have to do this; probably the checkout of one file
    git --git-dir=$HOME/.dotfiles.git --work-tree=$HOME reset --hard HEAD

    # hide untracked files by default
    git --git-dir=$HOME/.dotfiles.git --work-tree=$HOME config --local status.showUntrackedFiles no
    
    echo "...done! You're all set!"
    echo "Use 'dotfiles' instead of 'git' to version control files in your ~ directory."
    echo "(e.g. 'dotfiles status', 'dotfiles diff .bashrc', etc.)"
else
    echo "ERROR: Failed to checkout repo!"
fi
