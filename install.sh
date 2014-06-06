# Must be ran from dotfiles root
BIN_FOLDER="/usr/local/bin"
DOTFILES_FOLDER="$(pwd)"

# Add aliases and functions
if [ ! -h "$HOME/.aliases" ]; then
  ln -s "$DOTFILES_FOLDER/aliases" "$HOME/.aliases"
fi
if [ ! -h "$HOME/.functions" ]; then
  ln -s "$DOTFILES_FOLDER/functions" "$HOME/.functions"
fi
if [ ! -h "$HOME/.vimrc.bundles" ]; then
  ln -s "$DOTFILES_FOLDER/vim/vimrc.bundles" "$HOME/.vimrc.bundles"
fi

# ZSH
if [ ! -d "$HOME/.oh-my-zsh" ]; then
  curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
fi

if [ ! -h "$HOME/.zshrc" ]; then
  ln -s "$DOTFILES_FOLDER/zshrc" "$HOME/.zshrc"
fi

if [ ! -h "$HOME/.tmux.conf" ]; then
  ln -s "$DOTFILES_FOLDER/tmux.conf" "$HOME/.tmux.conf"
fi

for plugin in $(ls -1 "$DOTFILES_FOLDER/git_plugins")
do
  if [ ! -h "$BIN_FOLDER/$plugin" ]; then
    ln -s "$DOTFILES_FOLDER/git_plugins/$plugin" "$BIN_FOLDER/$plugin"
  fi
done

for program in $(ls -1 "$(pwd)/bin")
do
  if [ ! -h "$BIN_FOLDER/$program" ]; then
    ln -s "$(pwd)/bin/$program" "$BIN_FOLDER/$program"
    chmod +x "$BIN_FOLDER/$program"
  fi
done

if [ ! -h "$BIN_FOLDER/notes" ]; then
  ln -s "$DOTFILES_FOLDER/bin/notes" "$BIN_FOLDER/notes"
  chmod +x "$BIN_FOLDER/notes"
fi

if [ ! -h "$BIN_FOLDER/replace" ]; then
  ln -s "$DOTFILES_FOLDER/bin/replace" "$BIN_FOLDER/replace"
  chmod +x "$BIN_FOLDER/replace"
fi

if [ ! -d "$HOME/.grc" ]; then
  ln -s "$DOTFILES_FOLDER/grc" "$HOME/.grc"
fi

# Homebrew formulas
brew bundle
