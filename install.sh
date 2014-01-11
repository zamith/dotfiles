# Must be ran from dotfiles root
BIN_FOLDER="/usr/local/bin"

# Add aliases and functions
if [ ! -h "$HOME/.aliases" ]; then
  ln -s "$(pwd)/aliases" "$HOME/.aliases"
fi
if [ ! -h "$HOME/.functions" ]; then
  ln -s "$(pwd)/functions" "$HOME/.functions"
fi
if [ ! -h "$HOME/.vimrc.bundles" ]; then
  ln -s "$(pwd)/vim/vimrc.bundles" "$HOME/.vimrc.bundles"
fi

# ZSH
if [ ! -d "$HOME/.oh-my-zsh" ]; then
  curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
fi

if [ ! -h "$HOME/.zshrc" ]; then
  ln -s "$(pwd)/zshrc" "$HOME/.zshrc"
fi

if [ ! -h "$BIN_FOLDER/git-wtf" ]; then
  ln -s "$(pwd)/git_plugins/git-wtf" "$BIN_FOLDER/git-wtf"
fi

if [ ! -h "$BIN_FOLDER/notes" ]; then
  ln -s "$(pwd)/bin/notes" "$BIN_FOLDER/notes"
  chmod +x "$BIN_FOLDER/notes"
fi

if [ ! -d "$HOME/.grc" ]; then
  ln -s "$(pwd)/grc" "$HOME/.grc"
fi

# Homebrew formulas
brew install the_silver_searcher
brew install zsh-completions
brew install gawk

