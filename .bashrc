# Prompt
PS1="\[\033[31m\]\$( [ \j -gt 0 ]  && echo [ \j job\(s\) running ])\033[m\]
\[\033[35m\]\t\[\033[m\]-\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]
\$ "

# $ls
export CLICOLOR=1
export LSCOLORS=Exfxcxdxbxegedabagacad
alias ls='ls -F'

# $grewp to highlight matches
export GREP_OPTIONS='--color=auto'

# Increase history size and ignore duplicate lines
export HISTFILESIZE=10000
export HISTSIZE=10000
export HISTCONTROL=ignoredups

# Git commonly used commands
alias gs="git status"
alias gl="git log"
alias gll="git log --pretty='%Cred%h %Cblue(%ar) %Cgreen%an%n %Creset%s%n'"


#===============================================================================
# School stuff
#===============================================================================
# 15-122 Imperative Programming
export PATH=${PATH}:~/Downloads/cc0/bin/
alias rcoin='rlwrap coin'

# 15-150 Functional Programming
#   (?rvm left over from Ruby?; added SML path)
PATH=$PATH:$HOME/.rvm/bin:$HOME/sml/bin/sml
alias smlnj='rlwrap sml'

# Bioinformatics project
export PATH=${PATH}:~/Downloads/MUMmer3.23/
export PATH=${PATH}:/Applications/Mauve.app/Contents/MacOS/

