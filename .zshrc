setopt inc_append_history

HISTFILE=~/.zsh_history
HISTSIZE=999999999
SAVEHIST=$HISTSIZE

fpath=(~/.zsh $fpath)

# git completion
zstyle ':completion:*:*:git:*' script ~/.git-completion.bash
source ~/.git-prompt.sh

# prompt
NEWLINE=$'\n'
setopt PROMPT_SUBST ; PS1='[%~$(__git_ps1 " (%s)")]${NEWLINE}\$ '

# git aliases
for al in `git --list-cmds=alias`; do
    alias g$al="git $al"
done

# other aliases
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'
alias http='python3 -m http.server'
alias gfp="git fetch --prune"
alias gcz="git cz"
alias gdc="git diff --cached"
alias gdw="git diff --word-diff"

alias git-ignore='git update-index --skip-worktree'
alias git-unignore='git update-index --no-skip-worktree'

alias p='pnpm'

export HOMEBREW_NO_AUTO_UPDATE=1