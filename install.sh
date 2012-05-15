echo "==> Installing Homebrew (https://github.com/mxcl/homebrew/wiki/installation)..."
/usr/bin/ruby -e "$(/usr/bin/curl -fsSL https://raw.github.com/mxcl/homebrew/master/Library/Contributions/install_homebrew.rb)"
echo "done.\n"

echo "==> Installing zsh shell..."
brew install zsh
echo "done.\n"

if [[ ! -d "$HOME/.oh-my-zsh" ]]; then
	echo "Cloning https://github.com/robbyrussell/oh-my-zsh.git into ~/.oh-my-zsh..."
	git clone https://github.com/robbyrussell/oh-my-zsh.git $HOME/.oh-my-zsh
	echo "done.\n"
fi

if [[ ! -d "$HOME/dotfiles" ]]; then
	echo "==> Cloning https://github.com/eduardolundgren/dotfiles.git into ~/dotfiles..."
	git clone https://github.com/eduardolundgren/dotfiles.git $HOME/dotfiles
	echo "done.\n"
fi

if [[ ! -d "$HOME/.git-tools" ]]; then
	echo "==> Cloning https://github.com/liferay/git-tools.git into ~/.git-tools..."
	git clone https://github.com/liferay/git-tools.git $HOME/.git-tools
	echo "done.\n"
fi

echo "==> Linking ~/dotfiles/plugins folder with ~/oh-my-zsh/custom/plugins..."
ln -s $HOME/dotfiles/plugins $HOME/.oh-my-zsh/custom/
echo "done.\n"

echo "==> Linking ~/dotfiles/themes folder with ~/oh-my-zsh/custom/themes..."
ln -s $HOME/dotfiles/themes $HOME/.oh-my-zsh/custom/
echo "done.\n"

echo "==> Adding symlink from ~/.zshrc to ~/dotfiles/zsh/zshrc..."
if [[ -f "$HOME/.zshrc" ]]; then
	mv ~/.zshrc ~/.zshrc_bkp
fi
ln -s ~/dotfiles/zsh/zshrc ~/.zshrc
echo "done.\n"

echo "==> Setting zsh as your default shell..."
chsh -s /bin/zsh
echo "done.\n"

echo "==> Installing Python Package Index..."
sudo easy_install pip
echo "done.\n"

echo "==> Installing legit..."
sudo pip install legit
echo "done.\n"

echo "==> Installing dependencies gems..."
sudo gem install github
echo "done.\n"