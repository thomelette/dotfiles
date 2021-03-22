# dotfiles

This README is for dotfiles that I hold in my ~ or $HOME directory.

## Getting started on a new computer

Run the following,

````
cd ~
git clone --bare git@github.com:thomelette/dotfiles.git $HOME/.dotfiles.git
git --git-dir=$HOME/.dotfiles.git --work-tree=$HOME checkout main -- _init_dotfiles.sh
chmod +x _init_dotfiles.sh
./_init_dotfiles.sh
````

