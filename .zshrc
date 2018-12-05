# Path to your oh-my-zsh installation.
export ZSH=/Users/Luigi/.oh-my-zsh

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
source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Add Anaconda
#export PATH="/home/luigi/anaconda3/bin:$PATH"

## To Do list
##   Create a todo.txt first
#cat ~/Dropbox/todo.txt
#alias t='cat ~/Dropbox/todo.txt'
#alias et='vim ~/Dropbox/todo.txt'

# $ls
#export CLICOLOR=1
#export LSCOLORS=Exfxcxdxbxegedabagacad
#alias ls='ls -F --color'
#alias ll='ls -Flh --color'
#alias la='ls -FlhA --color'
#alias gvim='mvim'

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

# Silver Searcher / Platinum Searcher
alias ag="pt"

ctags=/usr/local/bin/ctags

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/Luigi/Downloads/google-cloud-sdk/path.zsh.inc' ]; then source '/Users/Luigi/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/Luigi/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then source '/Users/Luigi/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

export PATH=~/flutter/bin:$PATH

source ~/.zsh_profile

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh

export GPG_TTY=$(tty)
