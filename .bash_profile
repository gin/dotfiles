# Load .bashrc, containing non-login related bash initialization
source ~/.bashrc

## Setting PATH for Python 2.7
## The orginal version is saved in .bash_profile.pysave
#PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
#export PATH
#
## Load RVM into a shell session *as a function*
#[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
#
#### Added by the Heroku Toolbelt
#export PATH="/usr/local/heroku/bin:$PATH"
#
## MacPorts Installer addition on 2013-01-15_at_11:07:12: adding an appropriate PATH variable for use with MacPorts.
#export PATH=/opt/local/bin:/opt/local/sbin:$PATH
## Finished adapting your PATH environment variable for use with MacPorts.
#
## Manually added SML $PATH
#export PATH="/usr/local/sml/bin:$PATH"
#
## Setup Amazon EC2 Command-Line Tools
#export EC2_HOME=~/.ec2
#export PATH=$PATH:$EC2_HOME/bin
#export EC2_PRIVATE_KEY=`ls $EC2_HOME/pk-*.pem`
#export EC2_CERT=`ls $EC2_HOME/cert-*.pem`
#export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Home/
