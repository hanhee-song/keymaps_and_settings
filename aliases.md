#!/bin/bash

# Open and load aliases file
alias nb="atom ~/.aliases"
alias sb="source ~/.bash_profile"

# OPENING APPS
alias a="atom ."
alias o="open ."
alias settings="atom ~/dev/atom_settings"

# NAVIGATION
alias sl="ls"
alias ls="ls -G"
alias aa="cd ~/dev/appacademy"
alias dt="cd ~/Desktop"
alias dev="cd ~/dev"
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
alias rgmg="rails g migration"
alias rgmd="rails g model"
alias rgm="rails g model"
alias rdbr="rails db:reset"
alias rdbd="rails db:drop"
alias rgc="rails g controller"
#KILL SERVER
alias rk="kill -9 $(lsof -i tcp:3000 -t)"

# GIT
alias gi="git init"
alias gs="git status"
alias ga="git add"
alias ga.="git add ."
alias gcm="git commit -m"
alias gp="git push"
alias gl="git log"
alias gc="git clone"
alias gr="git reset"
alias author="git filter-branch -f --env-filter \"GIT_AUTHOR_NAME='Hanhee Song'; GIT_AUTHOR_EMAIL='song.hanhee@gmail.com'; GIT_COMMITTER_NAME='Hanhee Song'; GIT_COMMITTER_EMAIL='song.hanhee@gmail.com';\" HEAD"
alias grm="git rm --cached"

# NPM
alias npm.="npm install --save webpack react react-dom babel-core babel-loader babel-preset-es2015 babel-preset-react redux react-redux redux-devtools lodash redux-thunk redux-logger"

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
