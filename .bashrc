# Show To Do list
#   Create a todo.txt first
cat ~/Dropbox/todo.txt
#===============================================================================
# To Do list
#===============================================================================
alias t='cat ~/Dropbox/todo.txt'
alias et='vim ~/Dropbox/todo.txt'


#echo -e "\[\033[31m\] color \[\033[m\]"   #red
#echo -e "\[\033[32m\] color \[\033[m\]"   #green
#echo -e "\[\033[33m\] color \[\033[m\]"   #yellow
#echo -e "\[\033[34m\] color \[\033[m\]"   #blue
#echo -e "\[\033[35m\] color \[\033[m\]"   #purple
#echo -e "\[\033[36m\] color \[\033[m\]"   #coral
#echo -e "\[\033[37m\] color \[\033[m\]"   #light grey
#echo -e "\[\033[30m\] color \[\033[m\]"   #black
#echo -e "\[\033[90m\] color \[\033[m\]"   #dark grey
#
#echo -e "\[\033[91m\] color \[\033[m\]"   #light red
#echo -e "\[\033[92m\] color \[\033[m\]"   #light green
#echo -e "\[\033[93m\] color \[\033[m\]"   #light yellow
#echo -e "\[\033[94m\] color \[\033[m\]"   #light blue
#echo -e "\[\033[95m\] color \[\033[m\]"   #light purple
#echo -e "\[\033[96m\] color \[\033[m\]"   #light coral
#echo -e "\[\033[97m\] color \[\033[m\]"   #white

# Prompt
PS1="\[\033[31m\]\$( [ \j -gt 0 ]  && echo [ \j job\(s\) running ])\[\033[m\]
\[\033[91m\]\D{(%a) %b-%d} [\t]\[\033[m\] \[\033[90m\]\u\[\033[m\]@\[\033[37m\]\h: \[\033[m\]\[\033[94m\]\w\[\033[m\]
\[\033[90m\]\$ \[\033[m\]"

# $ls
export CLICOLOR=1
export LSCOLORS=Exfxcxdxbxegedabagacad
alias ls='ls --color -F'
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


#===============================================================================
# School stuff
#===============================================================================
# 15-122 Imperative Programming
#export PATH=${PATH}:~/Downloads/cc0/bin/
#alias coin='rlwrap coin'

# 15-150 Functional Programming
#   (?rvm left over from Ruby?; added SML path)
#PATH=$PATH:$HOME/.rvm/bin:$HOME/sml/bin/sml
#alias smlnj='rlwrap sml'

# Bioinformatics project
#export PATH=${PATH}:~/Downloads/MUMmer3.23/
#export PATH=${PATH}:/Applications/Mauve.app/Contents/MacOS/

# Matlab
export PATH=${PATH}:/Applications/MATLAB_R2013a.app/bin/

# Python
#     python installed in both /usr/bin and /opt/local/bin
#     figure out pip and port and brew
alias python='python2.7'

# MacPorts stuff
export PATH=/opt/local/bin/:${PATH}
