# ##############################################################################
# Useful general purpose aliases
# ##############################################################################

# (dotfiles alias managed in .bashrc)
# alias dotfiles="git --git-dir=$HOME/.dotfiles.git --work-tree=$HOME"

alias ls="ls -l --color=auto"
alias ll="ls -la"

alias ..="cd .."
alias ...="cd ..; cd .."
alias ....="cd ..; cd ..; cd .."

alias proc="ps aux"
alias find="/usr/bin/find"

# cygwin specific code / aliases
if [[ "${PATH}" =~ "/cygdrive" ]]; then
  alias start='cygstart'
fi

# quickly open notepad++
# usage: npp filename.txt
# (windows only, i think)
function npp() {
	start notepad++ $1
}