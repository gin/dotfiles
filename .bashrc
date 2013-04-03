# Colored prompt
PS1="\[\033[35m\]\t\[\033[m\]-\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "

# Colored $ls
export CLICOLOR=1
export LSCOLORS=Exfxcxdxbxegedabagacad
alias ls='ls -F'

# $grewp to highlight matches
export GREP_OPTIONS='--color=auto'

# Increase history size and ignore duplicate lines
export HISTFILESIZE=10000
export HISTSIZE=10000
export HISTCONTROL=ignoredups

# git alias
alias gs="git status"
alias gl="git log"

# 15-122 Imperative Programming
export PATH=${PATH}:~/Downloads/cc0/bin/
alias rcoin='rlwrap coin'

# ?rvm, added SML path
PATH=$PATH:$HOME/.rvm/bin:$HOME/sml/bin/sml
alias smlnj='rlwrap sml'

# Bioinformatics project
export PATH=${PATH}:~/Downloads/MUMmer3.23/

