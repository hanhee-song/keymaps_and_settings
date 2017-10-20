# Atom Settings (and some extra aliases)

This is a list of all the atom settings/packages that I use & strongly recommend. The atom settings file is very self-explanatory, so the below is all about the aliases.

The aliases are optional. If you want the aliases, read the below.

## Aliases for the shortcut addict

#### Aliases: what are they?

On the App Academy computers, running ```dt``` in terminal will bring you to the desktop. This is because ```dt``` is an alias for ```cd ~/Desktop```. Aliases map commands to shortcuts. I included a list of aliases that I use on a regular basis (in the context of App Academy work).

#### Aliases: initial setup

As part of the App Academy initial setup, you were probably instructed to do a few things in your native directory that you might not recall.

Run ```atom ~/.bash_profile``` to open the bash profile. You should see the following.

```###
# Do not place configuration here.
#
# Because .bash_profile has precedence over .bashrc in Apple computers,
# this file is necessary to guard against creating a .bash_profile and
# accidentally overrideing all of the configuration in .bashrc
#
# All it should do is load .bashrc
###

# NB: save all aliases in .aliases!

source "$HOME/.bashrc"
```

(Just to show how this is all linked:) When you run ```atom ~/.bashrc```, you should see on lines 29/30:

```
# load aliases
[[ -f "$HOME/.aliases" ]] && source "$HOME/.aliases"
```

The ```~/.aliases``` is where all the aliases will live. Paste the contents of the aliases file into there.

#### Tangent: Installing rmtrash on brew

I have an ```rm``` alias overwriting the native ```rm``` command.

The native ```rm``` command will non-recursively delete an item without sending it to trash, and ```rm -rf``` will forcibly & recursively delete a folder (recipe for disaster). Installing rmtrash will allow you to recursively move an item or a folder to the trash bin, a much safer way to delete things. (No need to use the ```-rf``` flag with ```rmtrash```!). I have an alias mapping ```rm``` to ```rmtrash``` to overwrite the native ```rm``` command. To use this particular alias, you have to install rmtrash.

Run ```brew install rmtrash```. If this doesn't work after two tries, check the rmtrash docs.


### An explanation of the aliases

#### Editing aliases
This is for when you want to make your own aliases OR look back at what aliases you have. nb ('nano bash') or sb ('source bash') will open and reload the aliases file, respectively. You will no longer need to use ```atom ~/.aliases``` to access the aliases. Note that you need to source (reload) the bash profile in every terminal tab that is already open (but it will obviously apply to all future tabs)
```
alias nb="atom ~/.aliases"
alias sb="source ~/.bash_profile"
```

#### Opening atom or finder

```a``` will run the familiar ```atom .```. ```o``` will open finder at the current directory. The last one will not work for you because that's just specifically how I set up my directories to git push my settings.
```
alias a="atom ."
alias o="open ."
alias settings="atom ~/dev/atom_settings"
```

#### Navigating via terminal

These commands are pretty self-explanatory. The ```aa``` alias to cd into my App Academy folder will obviously not work for you - you can change it to wherever your App Academy folder is.

```
# NAVIGATION
alias sl="ls"
alias ls="ls -G"
alias aa="cd ~/dev/appacademy"
alias dev="cd ~/dev"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias home="cd ~"
```

#### terminal teleportation

Read the docs for pushd and popd. Super interesting commands, not super crucial to learn.

```
alias push="pushd ."
alias pop="popd"
```

#### rmtrash

This will run the aforementioned brew package.

```
alias rm="rmtrash"
```

#### Ruby and Rails commands

Not used very frequently but still nice to have.

```
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
```

#### MY SERVER IS SEVERED! PANIC!

In the rare event that the server is disconnected improperly and I get a "something is already running on :3000" error when I rails s, I have to run this to fix it.

```
#KILL SERVER
alias rk="kill -9 $(lsof -i tcp:3000 -t)"
```

#### Git & NPM commands

Making a commit is as simple as chaining ```gs```-```ga.```-```gs```-```gcm "message"```-```gp```.

The ```author``` alias is a shortcut for fixing the authorship history of a git. Replace my name and email with your name and emails. Or you could make me the author of your repos, that's fine too.

```npm.```: "Is there a better way to run npm install --save package package package...???" Yes.

```
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
```
