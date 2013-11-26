# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="<%- zsh.theme_oh_my_zsh %>"

# Example aliases
# alias zshconfig="<%- editor %> ~/.zshrc"
# alias ohmyzsh="<%- editor %> ~/.oh-my-zsh"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(<%- zsh.plugins %>)

source $ZSH/oh-my-zsh.sh

# Disable auto correct
unsetopt correct_all
unsetopt correct

# Load user aliases if found.
if [[ -f "$HOME/.aliases" ]]; then
    source $HOME/.aliases
fi