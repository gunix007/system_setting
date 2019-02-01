There are 2 methods to enable bash-completion function.
1. get bash_completion.sh from web(e.g. https://github.com/scop/bash-completion).
then copy the bash_completion.sh to /etc/profile.d/bash_completion.sh

2. uncomment the below line in file /etc/bash.bashrc
#if ! shopt -oq posix; then
#  if [ -f /usr/share/bash-completion/bash_completion ]; then
#    . /usr/share/bash-completion/bash_completion
#  elif [ -f /etc/bash_completion ]; then
#    . /etc/bash_completion
#  fi
#fi

