# Ensure user-installed binaries take precedence
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export PATH=/usr/local/bin:$PATH

export PATH=/Users/paradite/bin/:$PATH

source ~/bin/git-completion.bash
source ~/bin/git-prompt.sh
 
export PS1='[\w$(__git_ps1 " (%s)")]\n\$ '
export PATH=$PATH:/Applications/Android\ Studio.app/sdk/platform-tools/

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# Setting PATH for Python 3.4
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.4/bin:${PATH}"
export PATH

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# Load .bashrc if it exists
test -f ~/.bashrc && source ~/.bashrc
# added by Anaconda3 4.1.1 installer
export PATH="/Users/paradite/anaconda/bin:$PATH"
