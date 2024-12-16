export EDITOR=/usr/local/bin/code

# Eternal bash history.
# ---------------------
# Undocumented feature which sets the size to "unlimited".
# http://stackoverflow.com/questions/9457233/unlimited-bash-history
export HISTFILESIZE=
export HISTSIZE=
# Change the file location because certain bash sessions truncate .bash_history file upon close.
# http://superuser.com/questions/575479/bash-history-truncated-to-500-lines-on-each-login
export HISTFILE=~/.bash_eternal_history

### Added by the Heroku Toolbelt
# export PATH="/usr/local/heroku/bin:$PATH"

source ~/bin/git-completion.bash
source ~/bin/git-prompt.sh
 
export PS1='[\w$(__git_ps1 " (%s)")]\n\$ '

export NVM_DIR="/Users/paradite/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# g<alias>
# https://gist.github.com/mwhite/6887990
# for .bashrc
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

function_exists() {
    declare -f -F $1 > /dev/null
    return $?
}

for al in `__git_aliases`; do
    alias g$al="git $al"

    complete_func=_git_$(__git_aliased_command $al)
    function_exists $complete_fnc && __git_complete g$al $complete_func
done

alias pps='pipenv shell'

# Show/hide
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'
alias http='python3 -m http.server'
alias gfp="git fetch --prune"
alias gcz="git cz"
alias grm=$'git branch -r | awk \'{print $1}\' | egrep -v -f /dev/fd/0 <(git branch -vv | grep origin) | awk \'{print $1}\' | xargs git branch -d'
alias grmd=$'git branch -r | awk \'{print $1}\' | egrep -v -f /dev/fd/0 <(git branch -vv | grep origin) | awk \'{print $1}\' | xargs git branch -D'
alias ios="open /Applications/Xcode.app/Contents/Developer/Applications/Simulator.app/"
alias android="emulator -avd Pixel_5_API_33 &"

export HOMEBREW_NO_AUTO_UPDATE=1