#!/bin/bash

# Don't forget to log these updates in the
# git thingy

# SO META THAT YOU MAP THESE THINGS
alias nb="atom ~/.aliases"
alias sb="source ~/.bash_profile"

# OPENING APPS
alias a="atom ."
alias o="open ."

# NAVIGATION
alias sl="ls"
alias ls="ls -G"
alias aa="cd ~/dev/appacademy"
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

# GIT
alias gs="git status"
alias ga.="git add ."
alias gcm="git commit -m"
alias gp="git push"
alias gl="git log"
alias gc="git clone"
alias gr="git reset"
alias author="git filter-branch -f --env-filter "GIT_AUTHOR_NAME='Hanhee Song'; GIT_AUTHOR_EMAIL='song.hanhee@gmail.com'; GIT_COMMITTER_NAME='Hanhee Song'; GIT_COMMITTER_EMAIL='song.hanhee@gmail.com';" HEAD"

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