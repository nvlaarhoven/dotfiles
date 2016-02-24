# Alias-es

alias l="ls -la"
alias h="heroku"
alias enva="source env/bin/activate"

alias ni="npm install"
alias ns="npm start"
alias nt="npm test"

# Catfish

ctp() {
  if [[ $@ == "start" ]]; then
      command ctf project start
  elif [[ $@ == "stop" ]]; then
      command ctf project stop
  elif [[ $@ == "restart" ]]; then
      command ctf project restart
  elif [[ $@ == "status" ]]; then
      command ctf project status
  elif [[ $@ == "stop" ]]; then
      command ctf project stop
  elif [[ $@ == "logs" ]]; then
      command ctf project logs
  elif [[ $@ == "shell" ]]; then
      command ctf project run -- python manage.py shell
  elif [[ $@ == "migrate" ]]; then
      command ctf project run -- python manage.py migrate
  else
      command ctf project "$@"
  fi
}

export PATH=${PATH}:~/usr/local/bin
export DYLD_LIBRARY_PATH=/usr/local/mysql/lib/
export PATH=$PATH:/Applications/MAMP/Library/bin/mysql
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin
export ANDROID_HOME=/usr/local/Cellar/android-sdk/24.4/
export REACT_EDITOR="atom" # Add atom to REACT_EDITOR for scriptin


# GitHub Personal Token (Mostly - Catfish)

if [ -f ~/.github_token ]; then
    export GITHUB_TOKEN=`cat ~/.github_token`
fi


# NVM

export NVM_DIR="/Users/Manos/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm


# Git Autocomplete & Prompt

# curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o ~/.git-completion.bash
source ~/.git-completion.bash

# curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh -o ~/.git-prompt.sh
source ~/.git-prompt.sh

# The various escape codes that we can use to color our prompt.
        RED="\[\033[0;31m\]"
     YELLOW="\[\033[1;33m\]"
      GREEN="\[\033[0;32m\]"
       BLUE="\[\033[1;34m\]"
     PURPLE="\[\033[0;35m\]"
  LIGHT_RED="\[\033[1;31m\]"
LIGHT_GREEN="\[\033[1;32m\]"
      WHITE="\[\033[1;37m\]"
 LIGHT_GRAY="\[\033[0;37m\]"
 COLOR_NONE="\[\e[0m\]"


# Determine the branch/state information for this git repository.
function set_git_branch() {
  GIT_PS1_SHOWDIRTYSTATE=true
  GIT_PS1_SHOWUNTRACKEDFILES=true
  GIT_PS1_SHOWCOLORHINTS=true
  GIT_PS1_SHOWUPSTREAM="auto"
  BRANCH="${PURPLE}$(__git_ps1)${COLOR_NONE}"
}


# Determine active Python virtualenv details.
function set_virtualenv () {
  if test -z "$VIRTUAL_ENV" ; then
      PYTHON_VIRTUALENV=""
  else
      PYTHON_VIRTUALENV="${BLUE}[`basename \"$VIRTUAL_ENV\"`]"
  fi
}


# Set the full bash prompt.
function set_bash_prompt () {
  PROMPT_SYMBOL="\n> "

  # Set the PYTHON_VIRTUALENV variable.
  set_virtualenv

  # Set the BRANCH variable.
  set_git_branch

  # Set the bash prompt variable.
  PS1="${LIGHT_GREEN}\u@\h${COLOR_NONE} ${YELLOW}\w ${PYTHON_VIRTUALENV}${COLOR_NONE}${BRANCH}${PROMPT_SYMBOL}"
}


# Tell bash to execute this function just before displaying its prompt.
PROMPT_COMMAND=set_bash_prompt
