# Eduardo's dotfiles

The first JavaScript based dotfiles powered by [Grunt](http://gruntjs.com/).

![Preview](http://f.cl.ly/items/423c1j0C0r0x1c0C033f/dotfiles.png)

## Dependencies

1. Install [Git](http://git-scm.com), if you don't have it yet.
2. Install [NodeJS](http://nodejs.org/download/), if you don't have it yet.

## How to install?

```sh
$ [sudo] npm install -g dotfiles
```

This will install [dotfiles](http://npmjs.org/dotfiles) from [NPM](http://npmjs.org).

## How to setup?

```sh
$ dotfiles setup
```

This will symlink the appropriate files into your home directory. It may ask your password multiple times during the process.

You could also setup things separated by running `setup:alfred`, `setup:git`, `setup:iterm`, `setup:osx`, `setup:ruby`, or `setup:zsh`.

## How to update?

```sh
$ dotfiles
```

Just type `dotfiles` and it lets you know when updates are available.

## What's included?

All my command-line tools and its configurations. Have fun :)

###### Shell

* [ZSH](http://www.zsh.org/) for shell
* [Oh my ZSH](https://github.com/robbyrussell/oh-my-zsh) for ZSH tweaking

###### Theme

* [Dracula](https://github.com/zenorocha/dracula-theme) for better syntax highlight for [ZSH](http://www.zsh.org/), [iTerm2](http://www.iterm2.com/) and [Alfred](http://www.alfredapp.com/)

###### General

* [Z](https://github.com/rupa/z/) for quick navigation through folders
* [Shell highlighting](https://github.com/zsh-users/zsh-syntax-highlighting) Fish shell like syntax highlighting for Zsh

###### NodeJS

* [N](https://github.com/visionmedia/n) for Node version management
* [Bower](http://bower.io/) for front-end package management
* [DocPad](http://docpad.org/) for static generated website development
* [Grunt](http://gruntjs.com/) for task automation
* [JSHint](http://www.jshint.com/) for JavaScript code quality
* [NodeGH](http://www.nodegh.io/) GitHub command line tools
* [NodeGH Gif](https://github.com/node-gh/gh-gif) NodeGH plugin for commenting on pull requests/issues using GIF reactions.
* [NodeGH Jira](https://github.com/node-gh/gh-jira) NodeGH plugin for integrating Jira, an issue management system

###### Ruby

* [Rbenv](https://github.com/sstephenson/rbenv) for Ruby version management
* [Ruby Build](https://github.com/sstephenson/ruby-build) for installing different Ruby versions
* [Compass](http://compass-style.org/) for Sass programming
* [Jekyll](http://jekyllrb.com/) for static generated website development

###### OSX

* Automatically hide and show the Dock
* Automatically illuminate built-in MacBook keyboard in low light
* Automatically open a new Finder window when a volume is mounted
* Automatically quit printer app once the print jobs complete
* Avoid creating .DS_Store files on network volumes
* Disable auto-correct
* Disable press-and-hold for keys in favor of key repeat
* Disable smart dashes as they’re annoying when typing code
* Disable smart quotes as they’re annoying when typing code
* Disable the sound effects on boot
* Disable the warning before emptying the Trash
* Disable the warning when changing a file extension
* Disable the “Are you sure you want to open this application?” dialog
* Disable “natural” (Lion-style) scrolling
* Display full POSIX path as Finder window title
* Don’t animate opening applications from the Dock
* Don’t automatically rearrange Spaces based on most recent use
* Don’t display the annoying prompt when quitting iTerm
* Don’t show Dashboard as a Space
* Enable AirDrop over Ethernet and on unsupported Macs running Lion
* Enable full keyboard access for all controls (e.g. enable Tab in modal dialogs)
* Enable HiDPI display modes (requires restart)
* Enable highlight hover effect for the grid view of a stack (Dock)
* Enable snap-to-grid for icons on the desktop and in other icon views
* Enable spring loading for all Dock items
* Enable spring loading for directories
* Enable subpixel font rendering on non-Apple LCDs
* Finder: allow quitting via ⌘ + Q; doing so will also hide desktop icons
* Finder: allow text selection in Quick Look
* Finder: disable window animations and Get Info animations
* Finder: show all filename extensions
* Finder: show hidden files by default
* Finder: show path bar
* Finder: show status bar
* Follow the keyboard focus while zoomed in
* Four-letter codes for the other view modes: `icnv`, `Nlsv`, `Flwv`
* Hot corners
* Increase grid spacing for icons on the desktop and in other icon views
* Increase sound quality for Bluetooth headphones/headsets
* Increase the size of icons on the desktop and in other icon views
* Keep-alive: update existing `sudo` time stamp until `.osx` has finished
* Make Dock icons of hidden applications translucent
* Menu bar: show remaining battery time (on pre-10.8); hide percentage
* Minimize windows into their application’s icon
* Only use UTF-8 in Terminal.app
* Remove the auto-hiding Dock delay
* Remove the spring loading delay for directories
* Require password immediately after sleep or screen saver begins
* Restart automatically if the computer freezes
* Reveal IP address, hostname, OS version, etc. when clicking the clock in the login window
* Save screenshots in PNG format (other options: BMP, GIF, JPG, PDF, TIFF)
* Save screenshots to ~/Screenshots
* Save to disk (not to iCloud) by default
* Set a blazingly fast keyboard repeat rate
* Set computer name (as done via System Preferences → Sharing)
* Set language and text formats
* Set the icon size of Dock items to 36 pixels
* Show icons for hard drives, servers, and removable media on the desktop
* Show item info near icons on the desktop and in other icon views
* Show item info to the right of the icons on the desktop
* Show the ~/Library folder
* Speed up animation when hiding/showing the Dock
* Speed up Mission Control animations
* Trackpad: enable tap to click for this user and for the login screen
* Trackpad: map bottom right corner to right-click
* Turn off keyboard illumination when computer is not used for 5 minutes
* Use columns view in all Finder windows by default
* Use scroll gesture with the Ctrl (^) modifier key to zoom
* When performing a search, search the current folder by default

For the full configuration list [click here](https://github.com/eduardolundgren/dotfiles/blob/master/templates/.osx)

## Credits

* OS X defaults based on [@mathiasbynens's dotfiles](https://github.com/mathiasbynens/dotfiles)
* Themes based on [@zenorocha's dracula](https://github.com/zenorocha/dracula-theme)

## Contributing

If you want to help, please read the [Contributing](https://github.com/eduardolundgren/dotfiles/blob/master/CONTRIBUTING.md) guide first.

## History

For detailed changelog, see [Releases](https://github.com/eduardolundgren/dotfiles/releases).

## License

[BSD License](https://github.com/eduardolundgren/dotfiles/blob/master/LICENSE.md) © Eduardo Lundgren