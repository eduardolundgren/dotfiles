DF_CUSTOM=$HOME/dotfiles

for plugin ($plugins); do
  if [ -f $DF_CUSTOM/plugins/$plugin/$plugin.plugin.zsh ]; then
    source $DF_CUSTOM/plugins/$plugin/$plugin.plugin.zsh
  elif [ -f $ZSH/plugins/$plugin/$plugin.plugin.zsh ]; then
    source $ZSH/plugins/$plugin/$plugin.plugin.zsh
  fi
done