alias 'reload'=". ~/.zshrc && echo 'ZSH config reloaded from ~/.zshrc'" # Alias to reload zshrc
alias 'rl'='reload'
alias 'hidden'='ls -ld .*'
alias 'psg'='ps aux | grep -v grep | grep -i -e VSZ -e' # alias to list out ps aux for a process
alias 'history-top10'='history | awk '"'"'{CMD[$2]++;count++;}END { for (a in CMD)print CMD[a] " " CMD[a]/count*100 "% " a;}'"'"' | grep -v "./" | column -c3 -s " " -t | sort -nr | nl |  head -n10'
alias 'history-top20'='history | awk '"'"'{CMD[$2]++;count++;}END { for (a in CMD)print CMD[a] " " CMD[a]/count*100 "% " a;}'"'"' | grep -v "./" | column -c3 -s " " -t | sort -nr | nl |  head -n20'
alias 'g11'='g++ -std=c++11' # to compile c++11, use the following: g11 [file.cpp] -o [executable_name]
alias 'c'='clear'
alias 'ht'='history-top10'
alias 'rmrf'='rm -rf'
alias 'dot'='cd ~/dotfiles'
alias 'a'='alias | grep'
alias 'treenpm'='tree -I node_modules'
alias 'ndm'='nodemon'
alias 'm'='mongod --dbpath data/db'
alias 'tmuxrc'="nvim ~/.tmux.conf && tmux source-file ~/.tmux.conf && echo 'TMUX config reloaded'"
alias 'zshrc'="nvim ~/.zshrc && reload" # Alias to open zshrc in vim and reload when closed
alias 'll'='colorls -lA --sd'
alias 'l'='colorls -l1 --sd'
alias 'cls'='colorls'
alias 'clsl'='colorls -l'
alias '..'='cd ..'
alias '...'='cd ../..'

# Git aliases
alias g='git'
alias ga='git add'
alias gc='git commit'
alias gcm='git commit -m'
alias gb='git branch'
alias gp='git push'

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

man() {
      env \
      LESS_TERMCAP_mb=$(printf "\e[1;31m") \
      LESS_TERMCAP_md=$(printf "\e[1;31m") \
      LESS_TERMCAP_me=$(printf "\e[0m") \
      LESS_TERMCAP_se=$(printf "\e[0m") \
      LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
      LESS_TERMCAP_ue=$(printf "\e[0m") \
      LESS_TERMCAP_us=$(printf "\e[1;32m") \
      man "$@"
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

# POWERLEVEL9k Customizations
POWERLEVEL9K_MODE='nerdfont-complete'
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon ssh dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status battery time )

# Custom Battery settings
POWERLEVEL9K_BATTERY_CHARGING='yellow'
POWERLEVEL9K_BATTERY_CHARGED='green'
POWERLEVEL9K_BATTERY_DISCONNECTED='$DEFAULT_COLOR'
POWERLEVEL9K_BATTERY_LOW_THRESHOLD='10'
POWERLEVEL9K_BATTERY_LOW_COLOR='red'
POWERLEVEL9K_BATTERY_ICON='\uf1e6 '
POWERLEVEL9K_BATTERY_VERBOSE=false

# Custom shell
POWERLEVEL9K_CUSTOM_SHELL="echo -n  '\uf489' Shell"
POWERLEVEL9K_CUSTOM_SHELL_FOREGROUND="black"
POWERLEVEL9K_CUSTOM_SHELL_BACKGROUND="red"


