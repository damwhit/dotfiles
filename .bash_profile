[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

export NVM_DIR=~/.nvm
. $(brew --prefix nvm)/nvm.sh

export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin


export CLICOLOR=1

export LSCOLORS=ExFxBxDxCxegedabagacad

em () {
  open -a /usr/local/Cellar/emacs/24.5/Emacs.app/Contents/MacOS/Emacs $*
}

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
alias psy='./psysh'

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
alias jobs='cd ~/turing/jobs'

function md { mkdir $1; cd $1; }

# PROMPT
  function parse_git_branch {
    branch=`git rev-parse --abbrev-ref HEAD 2>/dev/null`
    if [ "HEAD" = "$branch" ]; then
      echo "(no branch)"
    else
      echo "$branch"
    fi
  }

  function prompt_segment {
    if [[ ! -z "$1" ]]; then
      echo "\[\033[${2-33};44m\]${1}\[\033[0m\]"
    fi
  }

  if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
  fi

  function build_mah_prompt {
    # time
    ps1="$(prompt_segment " \@ ")"

    # cwd with coloured current directory
    # path="$(dirname `pwd`)"
    # dir="$(basename `pwd`)"
    # ps1="${ps1} $(prompt_segment " ${path}/")$(prompt_segment "$dir " 34)"

    # cwd
    ps1="${ps1} $(prompt_segment " \w ")"

    # git branch
    git_branch=`parse_git_branch`
    if [[ ! -z "$git_branch" ]]; then ps1="${ps1} $(prompt_segment " $git_branch " 32)"; fi

    # next line
    ps1="${ps1}\n🌞  " #=>this is where the pizza is

    # output
    PS1="$ps1"
  }

  PROMPT_COMMAND='build_mah_prompt'

# Setting PATH for Python 3.5
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
export PATH

# Homebrew PHP CLI
export PATH="$(brew --prefix homebrew/php/php56)/bin:$PATH"
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export PATH="$HOME/.composer/vendor/bin:$PATH"
