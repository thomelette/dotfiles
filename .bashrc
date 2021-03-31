# Shell configuration file for bash

# Use 'dotfiles' in place of git (e.g. dotfiles status, dotfiles commit, etc.)
# to version-control these very files
alias dotfiles="git --git-dir=$HOME/.dotfiles.git --work-tree=$HOME"

# Some people use a different file for aliases
if [ -f "${HOME}/.bash_aliases" ]; then
  source "${HOME}/.bash_aliases"
fi

# prompt = for color

# git bash auto complete
# source ~/.bash_prompt
# PROMPT_COMMAND='__git_set_ps1_new'

# source ~/.git-completion.bash


# source ~/.git-prompt.sh
# PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '
# PROMPT_COMMAND='__git_ps1 "\u@\h:\w" "\\\$ "'
