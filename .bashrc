#===============================================================================
# Show To Do list
#   Create a todo.txt first
#===============================================================================
#cat ~/Dropbox/todo.txt
#alias t='cat ~/Dropbox/todo.txt'
#alias et='vim ~/Dropbox/todo.txt'

#echo -e "\[\e[31m\] red \[\e[m\]"
#echo -e "\[\e[32m\] green \[\e[m\]"
#echo -e "\[\e[33m\] yellow \[\e[m\]"
#echo -e "\[\e[34m\] blue \[\e[m\]"
#echo -e "\[\e[35m\] purple \[\e[m\]"
#echo -e "\[\e[36m\] coral \[\e[m\]"
#echo -e "\[\e[37m\] light gray \[\e[m\]"
#echo -e "\[\e[30m\] black \[\e[m\]"
#echo -e "\[\e[90m\] dark gray \[\e[m\]"
#
#echo -e "\[\e[91m\] red \[\e[m\]"
#echo -e "\[\e[92m\] green \[\e[m\]"
#echo -e "\[\e[93m\] yellow \[\e[m\]"
#echo -e "\[\e[94m\] blue \[\e[m\]"
#echo -e "\[\e[95m\] purple \[\e[m\]"
#echo -e "\[\e[96m\] coral \[\e[m\]"
#echo -e "\[\e[97m\] white \[\e[m\]"

RESET="\[\e[0m\]"

BLACK="\[\e[30m\]"
LGRAY="\[\e[37m\]"
DGRAY="\[\e[90m\]"
RED="\[\e[91m\]"
GREEN="\[\e[92m\]"
YELLOW="\[\e[93m\]"
BLUE="\[\e[94m\]"
PURPLE="\[\e[95m\]"
CORAL="\[\e[96m\]"
WHITE="\[\e[97m\]"

PS1="$RED\$( [ \j -gt 0 ]  && echo [ \j job\(s\) running ])$RESET
$CORAL\D{(%a) %b-%d} [\t] $LGRAY\u$DGRAY@$LGRAY\h: $YELLOW\w
$DGRAY\$$RESET "

# $ls
export CLICOLOR=1
export LSCOLORS=Exfxcxdxbxegedabagacad
alias ls='ls --color -F'
alias l='ls --color -lhF'
alias ll='ls --color -lhF'
alias la='ls --color -lhFA'
alias gvim='mvim'

# $grewp to highlight matches
export GREP_OPTIONS='--color=auto'

# Increase history size and ignore duplicate lines
export HISTFILESIZE=10000
export HISTSIZE=10000
export HISTCONTROL=ignoredups

# Git commonly used commands
alias gss="git status"
alias gs="git status --short --branch"
alias gl="git log"
# --pretty options in `git help log` under /format:<string>/ 
alias glo="git log --pretty='%C(yellow)%h %C(blue)(%aD) %C(green)%an%n %C(reset)%s%n'"
alias gll="git log --pretty='%C(yellow)%h %C(blue)(%ar) %C(green)%an %C(reset)%s'"
alias glg="git log --graph --decorate --pretty=oneline --abbrev-commit --all"
# -M flag ignores moving text; -w ignores white space
alias gb="git blame -M --date short"
