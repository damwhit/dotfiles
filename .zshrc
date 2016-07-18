# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
export ZSH_THEME="worace"

# Hide $USER@$HOSTNAME prefix unless in ssh session
# export DEFAULT_USER="Jason"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

alias ls='ls -GFh'

alias home='cd ~'
alias bash='atom ~/.bash_profile'
alias ga='git add'
alias gs='git status'
alias gc='git commit -m'
alias gp='git push'
alias gb='git checkout -b'
alias clone='git clone'
alias master='git checkout master'
alias gpom='git pull origin master'
alias be='bundle exec'

alias today='open http://today.turing.io'

alias cdt='cd ~/turing/'
alias cd1='cd ~/turing/1module'
alias cd2='cd ~/turing/2module'
alias cd3='cd ~/turing/3module'
alias cd4='cd ~/turing/4module'
alias cd1p='cd ~/turing/1module/projects'
alias cd3p='cd ~/turing/3module/projects'
alias cd2p='cd ~/turing/2module/projects'
alias cdp='cd ~/turing/4module/projects'
