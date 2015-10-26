
# Default MySQL Auth
MYSQL_USER="root"
MYSQL_PASS="admin"

# GIT Folder Defines
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"
NO_COLOR="\[\033[0m\]"
PS1="\n$GREEN\u@\h$NO_COLOR:\w\n$YELLOW\$(parse_git_branch)$NO_COLOR\$ "

# Function to MySQL Connection.
mysql_login() {
  mysql -u $MYSQL_USER -p$MYSQL_PASS
}

# Function to Restart Apache.
apache_restart() {
  sudo service apache2 restart
}

# Function to Open Chrome Browser.
open_chrome() {
  google-chrome
}

# Function to Open Chrome Browser on Private Mode.
open_chrome_private() {
  google-chrome -incognito
}

# Function to Open Chrome and Find String
chrome_find() {
  query=""
  for q in $@
  do
    query="${query}${q}+"
  done
  google-chrome --args "http://www.google.com/search?q=${query}"
}

# Function to Open Chrome and Find any URL
chrome_url() {
  query=""
  for q in $@
  do
    query="${query}${q}"
  done
  google-chrome --args "${query}"
}

# Function to Open NetBeans 
beans() {
  ~/netbeans-8.0.2/bin/netbeans
}

# Function to Custom Prompt with Current GIT Branch
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1) /'
}

# GIT Alias
alias gst='git status'
alias gl='git pull'
alias gp='git push'
alias gd='git difftool'
alias glog='git log --pretty=oneline'
alias gck='git checkout'
alias gm='git merge'
alias gc='git commit'
alias gb='git branch'

# Custom Functions Alias
alias ml=mysql_login
alias ra=apache_restart
alias chrome=open_chrome
alias chromep=open_chrome_private
alias chromef=chrome_find
alias chromeu=chrome_url
alias netbeans=beans

# System Alias
alias sagi='sudo apt-get install'
alias upd_ub='sudo apt-get -y update'
alias upg_ub='sudo apt-get -y upgrade'

alias h='history'
alias tb2='tar -jxvf'
alias tbz='tar -zxvf'
alias b2='bzip2 -d'
alias b2z='bzip2 -z'
