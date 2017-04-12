
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Required for ruby gems to work
PATH="$(ruby -e 'print Gem.user_dir')/bin:$PATH"

export EDITOR=vim
export BROWSER=firefox

# Aliases

if [ -f "$HOME/.alias" ]; then
   source "$HOME/.alias"
fi	

# Functions 

if [ -f "$HOME/.functions" ]; then
   source "$HOME/.functions"
fi	

BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"