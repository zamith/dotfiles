export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:usr/texbin:/usr/X11/bin:$HOME/Scripts:$PATH"
#export rvm_path=$HOME/.rvm

# Utils-menu related
export UTILS_PROJECT_PATH='/Users/luis/.utils-menu'
export PATH="$PATH":"$UTILS_PROJECT_PATH"/Bin
source "$UTILS_PROJECT_PATH"/BASHRC/profiles/all

#Basics
alias ls="ls -G"
alias a="ls -a"
alias curl="/usr/bin/curl"

#Shortcuts
export Cripto=$HOME/Documents/Universidade/MEI/CSSI/
export SD=$HOME/Documents/Universidade/MEI/SD/
export Handy=$HOME/Code/Ruby/GroupBuddies/HandyAnt/site_files
export Tese=$HOME/Documents/Universidade/MEI/Tese
export Derbygit=$HOME/Documents/Universidade/MEI/Tese/Code/derbyGit
alias handy="cd $Handy"
alias changeBack="/System/Library/Frameworks/ScreenSaver.framework/Resources/ScreenSaverEngine.app/Contents/MacOS/ScreenSaverEngine -background"
alias nt="newTab ''"
alias site="cd /Users/luis/Code/Rails/MySite"
alias gb-themes="cd /Users/luis/Code/Ruby/GroupBuddies/gb-handyant-themes"
alias up2="cd ../.."
alias up3="cd ../../.."
alias up4="cd ../../../.."
alias up5="cd ../../../../.."

## Zamith Scripts Aliases
alias rnew="$HOME/Scripts/rnew.rb"

#Configs Java
export CLASSPATH=.
export JAVA_HOME=/System/Library/Java/JavaVirtualMachines/1.6.0.jdk/Contents/Home
export ANT_HOME=/Users/luis/Downloads/apache-ant-1.8.4
export PATH="$PATH:$ANT_HOME/bin"

#Configs Derby
export DERBY_INSTALL=/Users/luis/Documents/Universidade/MEI/Tese/Code/db-derby-10.8.1.2-bin
export DERBY_HOME=$DERBY_INSTALL
export CLASSPATH=$DERBY_INSTALL/lib/derby.jar:$DERBY_INSTALL/lib/derbytools.jar:$DERBY_INSTALL/lib/derbyclient.jar:$DERBY_INSTALL/lib/derbynet.jar:$CLASSPATH
alias ij="java org.apache.derby.tools.ij"

#Configs Cassandra
alias cassandraServer="$CASSANDRA_HOME/bin/cassandra -f"
export CASSANDRA_HOME=/Users/luis/Code/Utilities/apache-cassandra-0.7.4

killCassandra()
{
  for pid in $(ps -ax | grep cassandra | cut -d ' ' -f1)
  do
    kill -9 $pid
  done
}

#Configs MySQL
alias mysql=/usr/local/mysql/bin/mysql
alias mysqladmin=/usr/local/mysql/bin/mysqladmin


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
\`\[\] $(parse_git_branch)\[\][$(rvm current)]($(date "+%H:%M:%S")): \\[\\033[30m\\]";
echo -ne "\033]0;`hostname -s`:`pwd`\007"'
export CLICOLOR=TRUE


# Alias for RoR 2.3
alias gmodel="ruby script/generate model"
alias gcont="ruby script/generate controller"
alias gmigr="ruby script/generate migration"
alias ss="ruby script/server"
alias sc="ruby script/console"
alias rdb="rake db:migrate"
alias db_reborn="rake db:migrate:reset && rake db:seed"
alias gogodata="rake db:fill:nemum_data:all"

# Alias for RoR 3
alias r="rails"

# Alias for git
alias gst='git status'
alias gco='git checkout'
alias git="$HOME/bin/hub"

g() {
  if [ $# -eq 0 ]
  then
    gst
  elif [ "$1" == "update" ]
  then
    git-on-dev
  elif [ "$1" == "nuke" ]
  then
    git-nuke
  else
    git "$@"
  fi
}

function git_branch_name {
  val=`git branch 2>/dev/null | grep '^*' | colrm 1 2`
  echo "$val"
}

function git-done {
  branch=`git_branch_name`
  git checkout dev && git merge $branch --ff-only && bundle install && rake db:migrate db:test:prepare && rake && git push && git branch -D $branch && git push origin :$branch
}

function git-nuke {
  git branch -D $1 && git push origin :$1
}

function git-on-dev {
  branch=`git_branch_name`
  git checkout dev && git pull --rebase 
  git checkout $branch
  git rebase dev
}

#Group Buddies

alias c='cd /Users/luis/Code/Ruby/GroupBuddies/coachme'
alias rb='cd /Users/luis/Code/Ruby/GroupBuddies/roundabet'
alias blog='cd /Users/luis/Code/Ruby/blog.zamith.pt/octopress'
alias v='vim'

most() {
  history | awk '{CMD[$2]++;count++;}END { for (a in CMD)print CMD[a] " " CMD[a]/count*100 "% " a;}' | grep -v "./" | column -c3 -s " " -t | sort -nr | head -n20
}

retag()
{
  ctags -R --exclude=.git --exclude=log --exclude=tmp * $GEM_HOME/gems
}

ha()
{
  cd $Handy
  if [ -n "$1" ]
  then
    case $1 in
      "master") git checkout master;;
      "actions") git checkout features/admin-actions;;
      "events") cd vendor/plugins/event_manager/; mate .;;
      *) git checkout $1;;
    esac
  fi
}


## Utils

deploy()
{
  deployHandy
}

hex2str()
{
  LINE=$(echo $@ | sed 's/ //g')
  echo $LINE | perl -ne 's/([0-9a-f]{2})/print chr hex $1/gie'
  echo ""
}

export PATH="$PATH:$HOME/.rvm/bin"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM function

if [ -f ~/dotfiles/git-completion.bash ]; then
  source ~/dotfiles/git-completion.bash
fi

##
# Your previous /Users/luis/.bash_profile file was backed up as /Users/luis/.bash_profile.macports-saved_2011-06-07_at_18:17:22
##

# MacPorts Installer addition on 2011-06-07_at_18:17:22: adding an appropriate PATH variable for use with MacPorts.
export PATH=$PATH:/opt/local/bin:/opt/local/sbin
# Finished adapting your PATH environment variable for use with MacPorts.

export MAGICK_HOME="/Users/luis/ImageMagick-6.7.0-4"
export PATH="$PATH:$MAGICK_HOME/utilities"
export DYLD_LIBRARY_PATH="$MAGICK_HOME/lib"
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/Library/Frameworks/R.framework/Libraries
export R_HOME=/Library/Frameworks/R.framework/Resources
export PATH="$PATH:/Library/PostgreSQL/9.0/bin"
export PATH="$PATH:/usr/local/texlive/2012/bin/universal-darwin/"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

### Added GB super scripts
eval "$(/Users/luis/Code/Ruby/GroupBuddies/gb/bin/gb init -)"

### SMLNJ
export PATH="$PATH:/usr/local/smlnj-110.75/bin"

