function safe_source()
{
  file_name=$1
  if [ -e "$file_name" ]; then
    source "$file_name"
  fi
}

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="ys"

# Uncomment following line if you want to disable command autocorrection
DISABLE_CORRECTION="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(osx)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:usr/texbin:/usr/X11/bin:$HOME/Scripts:/usr/local/share/npm/bin:$PATH"
export SSL_CERT_FILE=/usr/local/opt/curl-ca-bundle/share/ca-bundle.crt

# Binstubs
export PATH=".git/safe/../../bin:$PATH"

# NERDTree compatibility with zsh
export LC_ALL=en_US.utf-8
export LANG="$LC_ALL"

# Keep more history
export HISTSIZE=4000

safe_source "$HOME/.functions"
safe_source "$HOME/.aliases"
safe_source "$HOME/dotfiles/zsh_plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh"
safe_source "$HOME/.zshrc.local"

fpath=(/usr/local/share/zsh-completions $fpath)
rm -f ~/.zcompdump; compinit

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

# GRC
source "$(brew --prefix)/etc/grc.bashrc"

export NVM_DIR="/Users/zamith/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
