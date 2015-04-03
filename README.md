# Eduardo's dotfiles

[![Dependencies Status](http://img.shields.io/david/eduardolundgren/dotfiles.svg?style=flat)](https://david-dm.org/eduardolundgren/dotfiles)
[![PeerDependencies Status](http://img.shields.io/david/peer/eduardolundgren/dotfiles.svg?style=flat)](https://david-dm.org/eduardolundgren/dotfiles#info=peerDependencies)

The first JavaScript-based dotfiles powered by [Grunt](http://gruntjs.com/).

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

## How to update?

```sh
$ dotfiles
```

Just type `dotfiles` and it lets you know when updates are available.

## What's included?

All my command-line tools and its configurations. Have fun :)

###### Aliases

* `server` Serve current folder over HTTP
* `subl` Open file/dir with [Sublime Text 3](http://www.sublimetext.com/3)
* `up` Go up N directories

###### Shell

* [ZSH](http://www.zsh.org/) for shell
* [ZSH highlighting](https://github.com/zsh-users/zsh-syntax-highlighting) for better UX
* [Oh my ZSH](https://github.com/robbyrussell/oh-my-zsh) for ZSH tweaking

###### Theme

* [Dracula](https://github.com/zenorocha/dracula-theme) for better syntax highlight for [ZSH](http://www.zsh.org/), [iTerm2](http://www.iterm2.com/) and [Alfred](http://www.alfredapp.com/)

###### General

* [Git Extras](https://github.com/visionmedia/git-extras)
* [Ngrok](https://ngrok.com/) for introspected tunnels to localhost
* [Z](https://github.com/rupa/z/) for quick navigation through folders

###### Ruby

* [Rbenv](https://github.com/sstephenson/rbenv) for Ruby version management
* [Ruby Build](https://github.com/sstephenson/ruby-build) for installing different Ruby versions
* [Compass](http://compass-style.org/) for Sass programming
* [Jekyll](http://jekyllrb.com/) for static generated website development

###### OSX

* Disable the sound effects on boot
* Dock: automatically hide and show
* Dock: enable animation when opening applications
* Dock: enable highlight hover effect for the grid view of a stack
* Dock: enable magnification
* Dock: enable spring loading for all Dock items
* Dock: make icons of hidden applications translucent
* Dock: minimize windows into their application's icon
* Enable full keyboard access for all controls
* Enable hot corners
* Enable snap-to-grid for icons on the desktop and in other icon views
* Enable subpixel font rendering on non-Apple LCDs
* Finder: allow quitting via ⌘ + Q; doing so will also hide desktop icons
* Finder: allow text selection in Quick Look
* Finder: automatically open a new window when a volume is mounted
* Finder: disable window and Get Info animations
* Finder: display full path as Finder window title
* Finder: enable AirDrop over Ethernet and on unsupported Macs running Lion
* Finder: enable spring loading for directories
* Finder: show all filename extensions
* Finder: show hidden files by default
* Finder: show path bar
* Finder: show status bar
* Follow the keyboard focus while zoomed in
* Four-letter codes for the other view modes: `icnv`, `Nlsv`, `Flwv`
* General: automatically illuminate built-in MacBook keyboard in low light
* General: automatically quit printer app once the print jobs complete
* General: automatically rearrange Spaces based on most recent use
* General: create .DS_Store files on network volumes
* General: enable "natural" (Lion-style) scrolling
* General: enable auto-correct
* General: enable Dashboard as an overlay
* General: enable HiDPI display modes (requires restart)
* General: Enable icons for hard drives, servers, and removable media on the desktop
* General: enable press-and-hold for keys instead of key repeat
* General: Enable save documents to iCloud
* General: enable scroll gesture with the Ctrl (^) modifier key to zoom
* General: enable smart dashes, they're annoying when typing code
* General: enable smart quotes, they're annoying when typing code
* General: enable the "Are you sure you want to open this application?" dialog
* General: enable the warning before emptying the Trash
* General: enable the warning when changing a file extension
* Increase grid spacing for icons on the desktop and in other icon views
* Increase sound quality for Bluetooth headphones/headsets
* Increase the size of icons on the desktop and in other icon views
* iTerm: enable prompt when quitting iTerm
* Menu bar: show remaining battery time (on pre-10.8); hide percentage
* Only use UTF-8 in Terminal.app
* Remove the auto-hiding Dock delay
* Remove the spring loading delay for directories
* Require password immediately after sleep or screen saver begins
* Restart automatically if the computer freezes
* Reveal IP address, hostname, OS version, etc. when clicking the clock
* Save screenshots in PNG format (other options: BMP, GIF, JPG, PDF, TIFF)
* Save screenshots to ~/Screenshots
* Set a blazingly fast keyboard repeat rate
* Set computer name (as done via System Preferences → Sharing)
* Set language and text formats
* Set magnification icon size to 80 pixels
* Set the icon size of Dock items to 48 pixels
* Show item info near icons on the desktop and in other icon views
* Show item info to the right of the icons on the desktop
* Show the ~/Library folder
* Speed up animation when hiding/showing the Dock
* Speed up Mission Control animations
* Trackpad: enable bottom right corner to right-click
* Trackpad: enable tap to click
* Turn off keyboard illumination when computer is not used for 5 minutes
* Use columns view in all Finder windows by default
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
