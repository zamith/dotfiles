export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:usr/texbin:/usr/X11/bin:$HOME/Scripts:/usr/local/share/npm/bin:$PATH"
export SSL_CERT_FILE=/usr/local/opt/curl-ca-bundle/share/ca-bundle.crt

#Postgres.app
export PATH="/Applications/Postgres.app/Contents/MacOS/bin:$PATH"

# My Prompt
parse_git_branch() {
git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/[\1]/'
}

chpwd() {
  if [ "$PWD" != "$MYOLDPWD" ]; then
    MYOLDPWD="$PWD"
    ls -ah
  fi
}

export PROMPT_COMMAND='chpwd;PS1="\[\033[0;33m\][\!] \h\`
if [[ \$? = "0" ]]; then echo "\\[\\033[32m\\]";
else echo "\\[\\033[31m\\]"; fi
\` \`
if [[ `pwd|wc -c|tr -d " "` > 60 ]]; then echo ":..$(expr "$PWD" : ".*\(/.*.\{40\}\)")";
else echo ${PWD/\/Users\/$(whoami)/\~}; fi
\`\[\] $(parse_git_branch)\[\][$(rvm current)]($(date "+%H:%M:%S"))\\[\\033[30m\\]\n\\[\\033[94m\\]$> \\[\\033[39m\\]";
echo -ne "\033]0;`hostname -s`:`pwd`\007"'
export CLICOLOR=TRUE

# aliases
if [ -e "$HOME/.aliases" ]; then
  source "$HOME/.aliases"
fi

# functions
if [ -e "$HOME/.functions" ]; then
  source "$HOME/.functions"
fi

if [ -f ~/dotfiles/git-completion.bash ]; then
  source ~/dotfiles/git-completion.bash
fi

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
eval "$($HOME/Projects/groupbuddies/gb/bin/gb init -)"

export SSL_CERT_FILE=/usr/local/opt/curl-ca-bundle/share/ca-bundle.crt
