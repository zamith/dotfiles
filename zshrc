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
ZSH_THEME="zamith"

# Uncomment following line if you want to disable command autocorrection
DISABLE_CORRECTION="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(osx)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:usr/texbin:/usr/X11/bin:$HOME/Scripts:/usr/local/share/npm/bin:$PATH"
# export SSL_CERT_FILE="/usr/local/etc/openssl/cert.pem"
# export SSL_CERT_FILE="/usr/local/opt/curl-ca-bundle/share/ca-bundle.crt"

# Binstubs
export PATH=".git/safe/../../bin:$PATH"

# Git plugins
export PATH="$HOME/dotfiles/git_plugins:$PATH"

# My programs
export PATH="$HOME/dotfiles/bin:$PATH"

# NERDTree compatibility with zsh
export LC_ALL=en_US.utf-8
export LANG="$LC_ALL"

# Keep more history
export HISTSIZE=4000

safe_source "$HOME/dotfiles/zsh/colors"
safe_source "$HOME/.functions"
safe_source "$HOME/.aliases"
safe_source "$HOME/dotfiles/git/git.zsh"
safe_source "$HOME/dotfiles/git/completion.zsh"
safe_source "$HOME/dotfiles/zsh_plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh"
safe_source "$HOME/dotfiles/zsh/z.sh"
safe_source "$HOME/.zshrc.local"

fpath=(/usr/local/share/zsh-completions /usr/local/share/zsh/site-functions $fpath)
rm -f ~/.zcompdump; compinit

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# git-go config
export GH_LOGIN="zamith"

export EDITOR="vim"

# Add cargo binaries to the PATH
export PATH="$HOME/.cargo/bin:$PATH"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export TERMINFO="$HOME/.terminfo"

export GOPATH="/Users/zamith/.go/"
export PATH="$GOPATH/bin:$PATH"

# Alt+l
bindkey '‘' clear-screen

# Use ripgrep for FZF
export FZF_DEFAULT_COMMAND='rg --files --hidden --follow --glob "!.git/*"'
