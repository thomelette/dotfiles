# dotfiles

This README is for dotfiles that I hold in my ~ or $HOME directory.

## Getting started on a new computer

Run the code in a terminal below. Note that ````_init_dotfiles.sh```` will move any potentially conflicting files to ````~./old_dotfiles/*```` - including ones you might already use like ````.bash_profile```` and ````.bashrc````, so look there first before you freak out.

````
cd ~
git clone --bare git@github.com:thomelette/dotfiles.git $HOME/.dotfiles.git
git --git-dir=$HOME/.dotfiles.git --work-tree=$HOME checkout main -- _init_dotfiles.sh
./_init_dotfiles.sh
````

