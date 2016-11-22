/*
 * Copyright 2013, All Rights Reserved.
 *
 * Code licensed under the BSD License:
 * https://github.com/eduardolundgren/dotfiles/blob/master/LICENSE.md
 *
 * @author Eduardo Lundgren <eduardo.lundgren@gmail.com>
 */

'use strict';

var userhome = require('userhome');

var choicesDock = require('./templates/.osx-dock');
var choicesFinder = require('./templates/.osx-finder');
var choicesGeneral = require('./templates/.osx-general');
var choicesIterm = require('./templates/.osx-iterm');
var choicesTrackpad = require('./templates/.osx-trackpad');

function copyConfigChoicesAsBooleans(config, choices, from, to) {
    choices.forEach(function(choice) {
        config[to][choice.value] =
            config.choices[from].indexOf(choice.value) > -1;
    });
}

module.exports = function(grunt) {

    grunt.initConfig({

        // -- Bump -------------------------------------------------------------

        bump: {

            options: {
                commit: true,
                commitFiles: ['package.json'],
                commitMessage: 'Release v%VERSION%',
                createTag: true,
                files: ['package.json'],
                push: true,
                pushTo: 'origin',
                tagMessage: '',
                tagName: 'v%VERSION%'
            }

        },

        // -- Config -----------------------------------------------------------

        config: {

            aliases: {
                path_aliases: userhome('.dotfiles/.aliases')
            },

            git: {
                path_gitconfig: userhome('.dotfiles/.gitconfig'),
                path_gitconfig_system: userhome('.gitconfig'),
                path_gitignore: userhome('.dotfiles/.gitignore_global'),
                path_gitignore_system: userhome('.gitignore_global')
            },

            osx: {
                path_osx: userhome('.dotfiles/.osx')
            },

            ruby: {
                path_build: userhome('.dotfiles/.rbenv/plugins/ruby-build'),
                path_rbenv: userhome('.dotfiles/.rbenv'),
                path_rbenv_system: userhome('.rbenv')
            },

            themes: {
                path_dracula_alfred: userhome('.dotfiles/themes/alfred'),
                path_dracula_iterm: userhome('.dotfiles/themes/iterm'),
                path_dracula_zsh: userhome('.dotfiles/themes/zsh')
            },

            z: {
                path_z_system: userhome('.z')
            },

            vim: {
                path_vimrc: userhome('.dotfiles/.vimrc'),
                path_vimrc_system: userhome('.vimrc'),
                path_vundle: userhome('.dotfiles/.vundle')
            },

            zsh: {
                path_oh_my_zsh: userhome('.dotfiles/.oh-my-zsh'),
                path_plugin_syntax: userhome('.dotfiles/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting'),
                path_theme_dracula: userhome('.dotfiles/.oh-my-zsh/themes/dracula.zsh-theme'),
                path_zshrc: userhome('.dotfiles/.zshrc'),
                path_zshrc_system: userhome('.zshrc')
            }

        },

        // -- Prompt -----------------------------------------------------------

        prompt: {

            config: {
                options: {
                    questions: [
                        {
                            config: 'config.osx.computername',
                            default: 'eduardo',
                            message: 'Which computer name would you like to use?'
                        },
                        {
                            config: 'config.git.name',
                            default: 'Eduardo Lundgren',
                            message: 'Which Git name would you like to use?'
                        },
                        {
                            config: 'config.git.email',
                            default: 'eduardo.lundgren@liferay.com',
                            message: 'Which Git email would you like to use?'
                        },
                        {
                            config: 'config.editor',
                            default: 'subl -n -w',
                            message: 'Which editor would you like to use?'
                        },
                        {
                            config: 'config.zsh.plugins',
                            default: 'ant git history-substring-search z zsh-syntax-highlighting',
                            message: 'Which Oh My Zsh plugins would you like to use?'
                        },
                        {
                            config: 'config.zsh.theme_oh_my_zsh',
                            default: 'dracula',
                            message: 'Which Oh My Zsh theme would you like to use?'
                        },
                        {
                            choices: choicesGeneral,
                            config: 'config.choices.general',
                            message: 'Which OSX general options would you like to use?',
                            type: 'checkbox'
                        },
                        {
                            choices: choicesDock,
                            config: 'config.choices.dock',
                            message: 'Which Dock options would you like to use?',
                            type: 'checkbox'
                        },
                        {
                            choices: choicesFinder,
                            config: 'config.choices.finder',
                            message: 'Which Finder options would you like to use?',
                            type: 'checkbox'
                        },
                        {
                            choices: choicesIterm,
                            config: 'config.choices.iterm',
                            message: 'Which iTerm options would you like to use?',
                            type: 'checkbox'
                        },
                        {
                            choices: choicesTrackpad,
                            config: 'config.choices.trackpad',
                            message: 'Which Trackpad options would you like to use?',
                            type: 'checkbox'
                        }
                    ]
                }
            }

        },

        // -- Clean ------------------------------------------------------------

        clean: {

            all: {
                options: {
                    force: true
                },
                src: [
                    userhome('.dotfiles'),
                    '<%= config.ruby.path_rbenv_system %>',
                    '<%= config.z.path_z_system %>',
                    '<%= config.zsh.path_zshrc_system %>'
                ]
            }

        },

        // -- Templates --------------------------------------------------------

        template: {

            aliases: {
                options: {
                    data: '<%= config %>'
                },
                files: {
                    '<%= config.aliases.path_aliases %>': ['templates/.aliases']
                }
            },

            git: {
                options: {
                    data: '<%= config %>'
                },
                files: {
                    '<%= config.git.path_gitconfig %>': ['templates/.gitconfig'],
                    '<%= config.git.path_gitignore %>': ['templates/.gitignore_global']
                }
            },

            osx: {
                options: {
                    data: function() {
                        var config = grunt.config.data.config;
                        copyConfigChoicesAsBooleans(config, choicesDock, 'dock', 'osx');
                        copyConfigChoicesAsBooleans(config, choicesFinder, 'finder', 'osx');
                        copyConfigChoicesAsBooleans(config, choicesGeneral, 'general', 'osx');
                        copyConfigChoicesAsBooleans(config, choicesIterm, 'iterm', 'osx');
                        copyConfigChoicesAsBooleans(config, choicesTrackpad, 'trackpad', 'osx');
                        return config;
                    }
                },
                files: {
                    '<%= config.osx.path_osx %>': ['templates/.osx']
                }
            },

            vim: {
                options: {
                    data: '<%= config %>'
                },
                files: {
                    '<%= config.vim.path_vimrc %>': ['templates/.vimrc']
                }
            },

            zsh: {
                options: {
                    data: '<%= config %>'
                },
                files: {
                    '<%= config.zsh.path_zshrc %>': ['templates/.zshrc']
                }
            }

        },

        // -- Git --------------------------------------------------------------

        gitclone: {

            ruby_rbenv: {
                options: {
                    directory: '<%= config.ruby.path_rbenv %>',
                    repository: 'https://github.com/sstephenson/rbenv.git'
                }
            },

            ruby_build: {
                options: {
                    directory: '<%= config.ruby.path_build %>',
                    repository: 'https://github.com/sstephenson/ruby-build.git'
                }
            },

            oh_my_zsh: {
                options: {
                    directory: '<%= config.zsh.path_oh_my_zsh %>',
                    repository: 'https://github.com/robbyrussell/oh-my-zsh.git'
                }
            },

            theme_dracula_alfred: {
                options: {
                    directory: '<%= config.themes.path_dracula_alfred %>',
                    repository: 'https://github.com/dracula/alfred.git'
                }
            },

            theme_dracula_iterm: {
                options: {
                    directory: '<%= config.themes.path_dracula_iterm %>',
                    repository: 'https://github.com/dracula/iterm.git'
                }
            },

            theme_dracula_zsh: {
                options: {
                    directory: '<%= config.themes.path_dracula_zsh %>',
                    repository: 'https://github.com/dracula/zsh.git'
                }
            },

            vim_vundle: {
                options: {
                    directory: '<%= config.vim.path_vundle %>',
                    repository: 'https://github.com/gmarik/Vundle.vim.git'
                }
            },

            zsh_syntax_highlighting: {
                options: {
                    directory: '<%= config.zsh.path_plugin_syntax %>',
                    repository: 'https://github.com/zsh-users/zsh-syntax-highlighting.git'
                }
            }

        },

        // -- Symbolic links ---------------------------------------------------

        symlink: {

            git_config: {
                dest: '<%= config.git.path_gitconfig_system %>',
                relativeSrc: '<%= config.git.path_gitconfig %>'
            },

            git_ignore: {
                dest: '<%= config.git.path_gitignore_system %>',
                relativeSrc: '<%= config.git.path_gitignore %>'
            },

            ruby: {
                dest: '<%= config.ruby.path_rbenv_system %>',
                relativeSrc: '<%= config.ruby.path_rbenv %>'
            },

            sublime: {
                dest: '/usr/local/bin/subl',
                relativeSrc: '/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl'
            },

            zsh: {
                dest: '<%= config.zsh.path_zshrc_system %>',
                relativeSrc: '<%= config.zsh.path_zshrc %>'
            },

            vim: {
                dest: '<%= config.vim.path_vimrc_system %>',
                relativeSrc: '<%= config.vim.path_vimrc %>'
            },

            zsh_theme_dracula: {
                dest: '<%= config.zsh.path_theme_dracula %>',
                relativeSrc: '<%= config.themes.path_dracula_zsh %>/dracula.zsh-theme'
            }

        },

        // -- Exec -------------------------------------------------------------

        exec: {

            osx: {
                command: 'source <%= config.osx.path_osx %>',
                options: {
                    stdout: true,
                    stderr: true
                }
            },

            z: {
                command: 'touch <%= config.z.path_z_system %>',
                options: {
                    stdout: true,
                    stderr: true
                }
            },

            zsh: {
                command: 'chsh -s /bin/zsh',
                options: {
                    stdout: true,
                    stderr: true
                }
            },

            theme_alfred: {
                command: '[ -d "/Applications/Alfred 2.app" ] && open <%= config.themes.path_dracula_alfred %>/Dracula.alfredappearance || echo "Alfred App is not installed"',
                options: {
                     stdout: true,
                     stderr: true
                }
            },

            theme_iterm: {
                command: '[ -d "/Applications/iTerm.app" ] && open <%= config.themes.path_dracula_iterm %>/Dracula.itermcolors || echo "iTerm App is not installed"',
                options: {
                     stdout: true,
                     stderr: true
                }
            },

            ruby_compass: {
                command: 'sudo gem install compass',
                options: {
                    stdout: true,
                    stderr: true
                }
            },

            ruby_jekyll: {
                command: 'sudo gem install jekyll',
                options: {
                    stdout: true,
                    stderr: true
                }
            },

            ruby_update: {
                command: 'sudo gem update --system',
                options: {
                    stdout: true,
                    stderr: true
                }
            },

            brew: {
                command: 'ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"',
                options: {
                    stdout: true,
                    stderr: true
                }
            },

            brew_tig: {
                command: 'brew install tig'
            },

            vim_plugins: {
                command: 'vim +PluginInstall +qall'
            },

            git_extras: {
                command: '(cd /tmp && git clone --depth 1 https://github.com/visionmedia/git-extras.git && cd git-extras && sudo make install)'
            }

        }

    });

    grunt.task.registerTask('banner', function() {
        console.log(grunt.file.read('templates/.banner'));
    });

    grunt.loadNpmTasks('grunt-bump');
    grunt.loadNpmTasks('grunt-contrib-clean');
    grunt.loadNpmTasks('grunt-git');
    grunt.loadNpmTasks('grunt-prompt');
    grunt.loadNpmTasks('grunt-exec');
    grunt.loadNpmTasks('grunt-symlink');
    grunt.loadNpmTasks('grunt-template');

    grunt.registerTask('setup', ['banner', 'prompt', 'clean', 'template', 'gitclone', 'exec', 'symlink']);

};
