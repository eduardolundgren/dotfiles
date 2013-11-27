# Eduardo's dotfiles

![Preview](http://f.cl.ly/items/3i1Z3k0Z260P3V1A1s3M/dotfiles.png)

## Dependencies

1. Install [Git](http://git-scm.com), if you don't have it yet.
2. Install [NodeJS](http://nodejs.org/download/), if you don't have it yet.

## How to install?

```sh
$ sudo npm install dotfiles -g
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


## Credits

* Iterative installation based on [@holman's dotfiles](https://github.com/holman/dotfiles)
* OSX defaults based on [@mathiasbynens's dotfiles](https://github.com/mathiasbynens/dotfiles)
* Colorful logs based on [@davidsonfellipe's dotfiles](https://github.com/davidsonfellipe/dotfiles)
* Themes based on [@zenorocha's dracula](https://github.com/zenorocha/dracula-theme)

## Contributing

If you want to help, please read the [Contributing](https://github.com/eduardolundgren/dotfiles/blob/master/CONTRIBUTING.md) guide first.

## History

For detailed changelog, see [Releases](https://github.com/eduardolundgren/dotfiles/releases).

## License

[BSD License](https://github.com/eduardolundgren/dotfiles/blob/master/LICENSE.md) © Eduardo Lundgren