# Path to your oh-my-zsh installation.
export ZSH=/Users/luigi/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="ys"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"



#===============================================================================
# My Preferences copied from bash
#===============================================================================

#-------------------------------------------------------------------------------
# To Do list
#-------------------------------------------------------------------------------
#   Create a todo.txt first
cat ~/Dropbox/todo.txt
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

# $ls
export CLICOLOR=1
export LSCOLORS=Exfxcxdxbxegedabagacad
alias ls='ls -F'
alias ll='ls -lha'
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

