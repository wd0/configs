export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8

alias aps='apt-cache search'
alias vi='vim'
alias tmux='tmux -2'
alias ls='ls --color' 
alias l='ls -la'

export TERM=xterm-256color
export EDITOR=vi 
export PAGER=less
export PS1='\e[0;34m\u@\h\e[m\e[0;31m\w\e[m\e[1;31m$ \e[m'
export PATH="$PATH:~/bin"

alias python=python3

function countdown() {
date1=$((`date +%s` + $1)); 
while [ "$date1" -ge `date +%s` ]; do 
    echo -ne "$(date -u --date @$(($date1 - `date +%s`)) +%H:%M:%S)\r";
    sleep 0.1
done
}
function stopwatch() {
date1=`date +%s`; 
while true; do 
    echo -ne "$(date -u --date @$((`date +%s` - $date1)) +%H:%M:%S)\r"; 
    sleep 0.1
done
}
