### A list of all the settings and packages that I use

Tip 1: press ctrl + shift + m to view this file in markdown.

Tip 2: press cmd + , to access atom preferences

*All settings are default unless otherwise stated*
  
### Packages
#### Community Packages
* atom-beautify: great for those who aren't bothered to format their code perfectly the first time around. I don't use it myself.
* highlight-selected: highlights all instances of the word currently selected. Helpful to know where a method/variable is being invoked, and assists in finding typos.
* minimap: great for navigating large files
* minimap-highlight-selected: a combination of the above two
* multi-cursor: create new cursors by pressing option + up or option + down. Great time-saver.
* pigments: shows colors in CSS files
* ruby-block: when you select an 'end', it shows the corresponding start of the block. Helpful for complicated nests.
  * Highlight Line Number: true
  * Show Bottom Panel: false

#### Core Packages
* autocomplete-plus:
  * Maximum Visible Suggestions: 5
  * Keymap For Confirming A Suggestion: tab.  *This is super crucial! It'll be hard to get used to it, but once you do, you'll never go back.*
  * Minimum Word Length: 2.  *The downside is negated by the keymap change.*
  * Allow Backspace To Trigger Autocomplete: true.  *The downside is negated by the keymap change.*
* autosave
  * enabled: true. This will make your life so much easier.
* (Optional) whitespace:
  * Ignore Whitespace Only Lines: true. When saving a file, any whitespace-only line will be ignored. Furthermore, creating new lines while at least one indent in will preserve spaces created on each previous line. This is just my preferred behavior, but it can leave a bit of a mess when used carelessly.

### Core
* (Optional) Close Deleted File Tabs: true. Not really crucial but kinda helpful when trashing a lot of things. Doesn't happen too often though, and it can be annoying when checking out branches.
* Close Empty Windows: false. Makes it so that hitting cmd + W once too many times doesn't close all of atom.

### Editor
* Scroll Past End: true
* Show Indent Guide: true
* Show Invisibles: true

### Keybindings
*Paste these settings into your keymap file, which is linked under Keybindings.*

Here are the powers that are granted to you by these keymaps:
* ctrl-tab, ctrl-shift-tab: exactly how these shortcuts function in Google Chrome. They will cycle through open tabs right and left, respectively. (The default behavior is to cycle through them in order of most-recently-used, which is super annoying). This will not cycle across split view.
* cmd-shift-t: this will reopen a tab if you accidentally closed it. You can invoke it multiple times in a row.
* tab in fuzzy finder: when using cmd + t to find a file, pressing tab will select the file just like shift-enter.
* shift-backspace: will now delete the next character rather than the previous character. (Believe me, this one is one of my most frequently used shortcuts.)
* *movement commands*: the following can take a bit of time to adjust to, but are extremely rewarding when used proficiently.
  * ctrl-[ijkl]: when holding ctrl, you can use i, j, k, and l like arrow keys.
  * ctrl-[uo]: when holding ctrl, you can use u and o to go to the front or end of a line (like cmd-left and cmd-right).
  * ctrl-alt-[ijkl]: ctrl-alt-j and ctrl-alt-l will move left and right by word (same as alt-left and alt-right). ctrl-alt-i and ctrl-alt-k are the same as up and down.

```
'body':
  # note that the following commands can also be natively
  # invoked with alt-cmd-left and alt-cmd-right
  'ctrl-tab': 'pane:show-next-item'
  'ctrl-tab ^ctrl': 'unset!'
  'ctrl-shift-tab': 'pane:show-previous-item'
  'ctrl-shift-tab ^ctrl': 'unset!'
  # Reopen closed tab
  'cmd-shift-t': 'pane:reopen-closed-item'


'.fuzzy-finder atom-text-editor[mini]':
  'tab': 'fuzzy-finder:invert-confirm'
  
'atom-text-editor':
  'ctrl-j': 'core:move-left'
  'ctrl-k': 'core:move-down'
  'ctrl-l': 'core:move-right'
  'ctrl-i': 'core:move-up'
  'ctrl-u': 'editor:move-to-first-character-of-line'
  'ctrl-o': 'editor:move-to-end-of-line'
  'ctrl-alt-j': 'editor:move-to-beginning-of-word'
  'ctrl-alt-l': 'editor:move-to-end-of-word'
  'ctrl-alt-i': 'core:move-up'
  'ctrl-alt-k': 'core:move-down'
  # the three backwards deletes.
  'shift-backspace': 'core:delete'
  'alt-shift-backspace': 'editor:delete-to-end-of-word'
  'shift-cmd-backspace': 'editor:delete-to-end-of-line'
  # the following are experimental. Currently testing.
  # They're not super helpful...
  'ctrl-shift-j': 'core:select-left'
  'ctrl-shift-k': 'core:select-down'
  'ctrl-shift-l': 'core:select-right'
  'ctrl-shift-i': 'core:select-up'
  'ctrl-alt-shift-j': 'editor:select-to-beginning-of-word'
  'ctrl-alt-shift-l': 'editor:select-to-end-of-word'
  'ctrl-alt-shift-k': 'core:select-down'
  'ctrl-alt-shift-i': 'core:select-up'

```
