echo '    .___      __    _____.__.__'
echo '  __| _/_____/  |__/ ____\__|  |   ____   ______'
echo ' / __ |/  _ \   __\   __\|  |  | _/ __ \ /  ___/'
echo '/ /_/ (  <_> )  |  |  |  |  |  |_\  ___/ \___ \'
echo '\____ |\____/|__|  |__|  |__|____/\___  >____  >'
echo '     \/                               \/     \/'

if which brew &> /dev/null; then
	echo "==> Checking Homebrew... OK"
else
	echo "==> Installing Homebrew (https://github.com/mxcl/homebrew/wiki/installation)..."
	/usr/bin/ruby -e "$(/usr/bin/curl -fsSL https://raw.github.com/mxcl/homebrew/master/Library/Contributions/install_homebrew.rb)"
	echo "==> OK"
fi

if which zsh &> /dev/null; then
	echo "==> Checking Z-Shell shell... OK"
else
	echo "==> Installing Z-Shell..."
	brew install zsh
	echo "==> OK"
fi

if [[ -d "$HOME/.oh-my-zsh" ]]; then
	echo "==> Checking ~/.oh-my-zsh... OK"
else
	echo "==> Cloning https://github.com/robbyrussell/oh-my-zsh.git into ~/.oh-my-zsh..."
	git clone https://github.com/robbyrussell/oh-my-zsh.git $HOME/.oh-my-zsh
	echo "==> OK"
fi

if [[ -d "$HOME/dotfiles" ]]; then
	echo "==> Checking ~/dotfiles... OK"
else
	echo "==> Cloning https://github.com/tmoreira2020/dotfiles.git into ~/dotfiles..."
	git clone https://github.com/tmoreira2020/dotfiles.git $HOME/dotfiles
	echo "==> OK"
fi

if [[ -d "$HOME/.git-tools" ]]; then
	echo "==> Checking ~/.git-tools... OK"
else
	echo "==> Cloning https://github.com/liferay/git-tools.git into ~/.git-tools..."
	git clone https://github.com/liferay/git-tools.git $HOME/.git-tools
	echo "==> OK"
fi

if [[ -d "$HOME/.oh-my-zsh/custom/plugins" ]]; then
	echo "==> Checking symlink $HOME/.oh-my-zsh/custom/plugins... OK"
else
	echo "==> Linking ~/dotfiles/plugins folder with ~/oh-my-zsh/custom/plugins..."
	ln -s $HOME/dotfiles/plugins $HOME/.oh-my-zsh/custom/
	echo "==> OK"
fi

if [[ -d "$HOME/.oh-my-zsh/custom/themes" ]]; then
	echo "==> Checking symlink $HOME/.oh-my-zsh/custom/themes... OK"
else
	echo "==> Linking ~/dotfiles/themes folder with ~/oh-my-zsh/custom/themes..."
	ln -s $HOME/dotfiles/themes $HOME/.oh-my-zsh/custom/
	echo "==> OK"
fi

if [[ -d "$HOME/.zshrc" || -f "$HOME/.zshrc" ]]; then
	echo "==> Backing up ~/.zshrc... OK"
	mv $HOME/.zshrc $HOME/.zshrc_bkp
fi

echo "==> Linking ~/.zshrc to ~/dotfiles/zsh/zshrc..."
ln -s $HOME/dotfiles/zsh/zshrc $HOME/.zshrc
echo "==> OK"

echo "==> Setting zsh as your default shell..."
chsh -s /bin/zsh
echo "==> OK"

if which pip &> /dev/null; then
	echo "==> Checking Python Package Index... OK"
else
	echo "==> Installing Python Package Index..."
	sudo easy_install pip
	echo "==> OK"
fi

if which legit &> /dev/null; then
	echo "==> Checking legit... OK"
else
	echo "==> Installing legit..."
	sudo pip install legit
	echo "==> OK"
fi
