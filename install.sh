# Must be ran from dotfiles root

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
if [ ! -h "$HOME/.zshrc" ]; then
  ln -s "$(pwd)/zshrc" "$HOME/.zshrc"
fi

# The Silver Searcher
brew install the_silver_searcher
