# Atom Settings (and some extra aliases)

This is a list of all the atom settings/packages that I use & strongly recommend. The [atom settings](https://github.com/hanhee-song/atom_settings/blob/master/atom_settings.md) file is very self-explanatory, so the below is all about the [aliases](https://github.com/hanhee-song/atom_settings/blob/master/aliases.md). Read the below if you want some mad terminal shortcuts.

## Aliases for the shortcut addict

#### Aliases: what are they?

On the App Academy computers, running ```dt``` in terminal will bring you to the desktop. This is because ```dt``` is an alias for ```cd ~/Desktop```. Aliases map commands to shortcuts. I included a list of aliases that I use on a regular basis (in the context of App Academy work).

#### Aliases: initial setup

As part of the App Academy initial setup, you were probably instructed to do a few things in your native directory that you might not recall.

Run ```atom ~/.bash_profile``` to open the bash profile. You should see something like this.

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

### An explanation of the aliases

#### Editing aliases
```
alias nb="atom ~/.aliases"
alias sb="source ~/.bash_profile"
```
This is for when you want to make your own aliases OR look back at what aliases you have. nb ('nano bash') or sb ('source bash') will open and reload the aliases file, respectively. You will no longer need to use ```atom ~/.aliases``` to access the aliases. Note that you need to source (reload) the bash profile in every terminal tab that is already open (but it will obviously apply to all future tabs)

#### Special Notes on Aliases

```
alias rm="rmtrash"
```
The native ```rm``` command will non-recursively delete an item without sending it to trash, and ```rm -rf``` will forcibly & recursively delete a folder (recipe for disaster). Installing rmtrash will allow you to recursively move an item or a folder to the trash bin, a much safer way to delete things. (No need to use the ```-rf``` flag with ```rmtrash```!). I have an alias mapping ```rm``` to ```rmtrash``` to overwrite the native ```rm``` command. To use this particular alias, you have to install rmtrash.

Run ```brew install rmtrash```. If this doesn't work after two tries, check the rmtrash docs. (Also ensure that you have homebrew installed).

#### MY SERVER IS SEVERED! PANIC!
```
#KILL SERVER
alias rk="kill -9 $(lsof -i tcp:3000 -t)"
```

In the rare event that the server is disconnected improperly and I get a "something is already running on :3000" error when I rails s, I have to run this to fix it. Sometimes, the alias itself doesn't work but copy-pasting this code into terminal works. Weird stuff.

Making a commit is as simple as chaining ```gs```-```ga.```-```gs```-```gcm "message"```-```gp```.

The ```author``` alias is a shortcut for fixing the authorship history of a git. Replace my name and email with your name and emails. Or you could make me the author of your repos, that's fine too.
