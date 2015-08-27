alias 'reload'=". ~/.zshrc && echo 'ZSH config reloaded from ~/.zshrc'" # Alias to reload zshrc
alias 'zshrc'="vim ~/.zshrc && reload" # Alias to open zshrc in vim and reload when closed
alias 'hidden'='ls -ld .*'
alias 'psg'='ps aux | grep -v grep | grep -i -e VSZ -e' # alias to list out ps aux for a process
alias 'history-top10'='history | awk '"'"'{CMD[$2]++;count++;}END { for (a in CMD)print CMD[a] " " CMD[a]/count*100 "% " a;}'"'"' | grep -v "./" | column -c3 -s " " -t | sort -nr | nl |  head -n10'
alias 'g11'='g++ -std=c++11' # to compile c++11, use the following: g11 [file.cpp] -o [executable_name]
alias 'c'='clear'
alias 'node'='nodemon'

# function to display cd history
function pd()
{
    if [[ $# -ge 1 ]];
    then
        choice="$1"
    else
        dirs -v
        echo -n "? "
        read choice
    fi
    if [[ -n $choice ]];
    then
        declare -i cnum="$choice"
        if [[ $cnum != $choice ]];
        then #choice is not numeric
            choice=$(dirs -v | grep $choice | tail -1 | awk '{print $1}')
            cnum="$choice"
            if [[ -z $choice || $cnum != $choice ]];
            then
                echo "$choice not found"
                return
            fi
        fi
        choice="+$choice"
    fi
    pushd $choice
}

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git rails ruby rvm node brew github osx coffee jsontools macports mercurial mysql-macports npm perl python tmux)

# jump up 'n' directories, where n is passed as a parameter
up(){
  local d=""
  limit=$1
  for ((i=1 ; i <= limit ; i++))
    do
      d=$d/..
    done
  d=$(echo $d | sed 's/^\///')
  if [ -z "$d" ]; then
    d=..
  fi
  cd $d
}

# mkdir, cd into it
mkcd () {
 mkdir -p "$*"
 cd "$*"
}

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

unsetopt correct_all

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"


