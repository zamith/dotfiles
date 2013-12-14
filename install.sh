# Add aliases and functions
ln -s "$(pwd)/aliases" "$HOME/.aliases"
ln -s "$(pwd)/functions" "$HOME/.functions"

# ZSH
ln -s "$(pwd)/zshrc" "$HOME/.zshrc"

# The Silver Searcher
brew install the_silver_searcher
