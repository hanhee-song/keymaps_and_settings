#!/bin/bash

# Convert px to REM
# alias rem="perl -p -i -e 's/(\d+)px/($1\/16).rem/ge' styles/style.css"
# You need to provide a file as an arg

# JAVA
# GRADLE
alias b="./gradlew build"

# POSTGRES
alias rmpid="rm ~/Library/Application\ Support/Postgres/var-9.6/postmaster.pid"

# PYTHON
alias py="python3.6"

# Open and load aliases file
alias nb="atom ~/.aliases"
alias sb="source ~/.bash_profile"

# OPENING APPS
alias a="atom ."
alias o="open ."
alias settings="pushd . && cd ~/dev/settings"
function md() { mkdir -p "$@" && cd "$_"; }
alias size='ECHO "FOLDERS =======" && du -sh */ && ECHO "ALL ===========" && du -sh *'
alias c="code ."

# NAVIGATION
alias sl="ls"
alias ls="ls -G"
alias dt="cd ~/Desktop"
alias d="pushd . && cd ~/dev"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias home="cd ~"
alias push="pushd ."
alias pop="popd"
alias rm="rmtrash"

# RUBY
alias irb="pry"
alias be="bundle exec"
alias ber="bundle exec rspec"
alias bi="bundle install"

# RAILS
alias rdbm="rails db:migrate"
alias rdbc="rails db:create"
alias rdbr="rails db:reset"
alias rdbd="rails db:drop"
alias rg="rails g"
alias rgmg="rails g migration"
alias rgmd="rails g model"
alias rgm="rails g model"
alias rgc="rails g controller"
alias rs="rails s"
alias rc="rails c"
#KILL SERVER
alias rk="sudo kill -9 $(lsof -i :3000 -t)"

# GIT
alias gi="git init"
alias gs="git status"
alias ga="git add"
alias ga.="git add ."
alias gcm="git commit -m"
alias gca="git commit --amend"
alias gp="git push"
alias gph="git push heroku master"
alias gb="git branch"
alias gc="git checkout"
alias gcb="git checkout -b"
alias gch="git checkout"
alias gl="git log"
alias gd="git diff"
alias gcl="git clone"
alias gr="git reset"
alias gm="git merge"
# alias author="git filter-branch -f --env-filter \"GIT_AUTHOR_NAME='Hanhee Song'; GIT_AUTHOR_EMAIL='song.hanhee@gmail.com'; GIT_COMMITTER_NAME='Hanhee Song'; GIT_COMMITTER_EMAIL='song.hanhee@gmail.com';\" HEAD"
alias grm="git rm --cached"

# FIGARO
alias fig="figaro heroku:set -e production"

# NPM
alias nr="npm run"
alias ni="npm install"

#FLUSH CACHE
alias flush="sudo killall -HUP mDNSResponder"

# make `g` behave like `git status` with no args, or `git` with args
g () {
  if [ $# -eq 0 ]
  then
    git status
  else
    git "$@"
  fi
}
__git_complete g _git
