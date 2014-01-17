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

#Postgres.app
export PATH="/Applications/Postgres.app/Contents/MacOS/bin:$PATH"
export PATH="/Applications/Postgres93.app/Contents/MacOS/bin:$PATH"

# NERDTree compatibility with zsh
export LC_ALL=en_US.utf-8
export LANG="$LC_ALL"

# Keep more history
export HISTSIZE=4000

# aliases
if [ -e "$HOME/.aliases" ]; then
  source "$HOME/.aliases"
fi

# functions
if [ -e "$HOME/.functions" ]; then
  source "$HOME/.functions"
fi

# completions
fpath=(/usr/local/share/zsh-completions $fpath)
rm -f ~/.zcompdump; compinit

if [ -e "$HOME/dotfiles/zsh_plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh" ]; then
  source "$HOME/dotfiles/zsh_plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh"
fi

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
eval "$($HOME/Projects/groupbuddies/gb/bin/gb init -)"

if [ -e "$HOME/.ssh/old_rsa" ]; then
  ssh-add ~/.ssh/old_rsa
fi

cdpath=($HOME/Projects/groupbuddies $HOME/Projects/personal)

# GRC
source "$(brew --prefix)/etc/grc.bashrc"
