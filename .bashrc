# Shell configuration file for bash


# Use 'dotfiles' in place of git (e.g. dotfiles status, dotfiles commit, etc.)
alias dotfiles="/usr/local/bin/git --git-dir=$HOME/.dotfiles.git --work-tree=$HOME"

# How to pull down to another system:
# git clone --bare https://path/to/repo.git $HOME/.dotfiles.git
# git --git-dir=$HOME/.dotfiles.git --work-tree=$HOME checkout
# (may fail here due to existing files)
# dotfiles config --local status.showUntrackedFiles no

# cd ~
# git clone --bare git@github.com:thomelette/dotfiles.git $HOME/.dotfiles.git
# git --git-dir=$HOME/.dotfiles.git --work-tree=$HOME checkout main -- _init_dotfiles.sh
# chmod +x _init_dotfiles.sh
# ./_init_dotfiles.sh
