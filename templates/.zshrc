# Path to your oh-my-zsh configuration.
ZSH="<%- zsh.path_oh_my_zsh %>"

# Set name of the theme to load.
# Look in <%- zsh.path_oh_my_zsh %>/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="<%- zsh.theme_oh_my_zsh %>"

# Example aliases
# alias zshconfig="<%- editor %> ~/.zshrc"
# alias ohmyzsh="<%- editor %> <%- zsh.path_oh_my_zsh %>"

# Which plugins would you like to load? (plugins can be found in <%- zsh.path_oh_my_zsh %>/plugins/*)
# Custom plugins may be added to <%- zsh.path_oh_my_zsh %>/custom/plugins/
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