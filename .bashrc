# Colored prompt
PS1="\[\033[35m\]\t\[\033[m\]-\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "

# History size
export HISTFILESIZE=3000
# Disable duplicate lines in history
export HISTCONTROL=ignoredups

# git
alias gs="git status"

# 15-122 Imperative Programming
export PATH=${PATH}:~/Downloads/cc0/bin/
alias rcoin='rlwrap coin'

# ?rvm, added SML path
PATH=$PATH:$HOME/.rvm/bin:$HOME/sml/bin/sml
alias smlnj='rlwrap sml'

