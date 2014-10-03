# Must be ran from dotfiles root
BIN_FOLDER="/usr/local/bin"
DOTFILES_FOLDER="$(pwd)"

function safe_link()
{
  if [ ! -h "$HOME/.$1" ]; then
    ln -s "$DOTFILES_FOLDER/$1" "$HOME/.$1"
  fi
}

function safe_link_program()
{
  if [ ! -h "$BIN_FOLDER/$1" ]; then
    ln -s "$DOTFILES_FOLDER/bin/$1" "$BIN_FOLDER/$1"
    chmod +x "$BIN_FOLDER/$1"
  fi
}

# Link all config files
safe_link "aliases"
safe_link "functions"
safe_link "zshrc"
safe_link "tmux.conf"
safe_link "grc"
safe_link "rspec"
safe_link "gitconfig"
safe_link "gemrc"

safe_link "vim"

safe_link_program "notes"
safe_link_program "replace"

if [ ! -h "$HOME/.vimrc" ]; then
  ln -s "$DOTFILES_FOLDER/vim/vimrc" "$HOME/.vimrc"
fi

# Install oh-my-zsh
if [ ! -d "$HOME/.oh-my-zsh" ]; then
  curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
fi

# Install all git plugins
for plugin in $(ls -1 "$DOTFILES_FOLDER/git_plugins")
do
  if [ ! -h "$BIN_FOLDER/$plugin" ]; then
    ln -s "$DOTFILES_FOLDER/git_plugins/$plugin" "$BIN_FOLDER/$plugin"
  fi
done

# Install all binaries
for program in $(ls -1 "$(pwd)/bin")
do
  if [ ! -h "$BIN_FOLDER/$program" ]; then
    ln -s "$(pwd)/bin/$program" "$BIN_FOLDER/$program"
    chmod +x "$BIN_FOLDER/$program"
  fi
done

# Homebrew formulas
brew bundle
