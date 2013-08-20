export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:usr/texbin:/usr/X11/bin:$HOME/Scripts:$PATH"

#Basics
alias ls="ls -G"
alias a="ls -a"
alias curl="/usr/bin/curl"

#Shortcuts
alias up2="cd ../.."
alias up3="cd ../../.."
alias up4="cd ../../../.."
alias up5="cd ../../../../.."

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

# Alias for RoR 3
alias r="rails"

# Alias for git
alias gst='git status'
alias gco='git checkout'
alias gra='git reset --hard HEAD'
alias gpr='hub pull-request -b'
alias gprd='hub pull-request -b dev'
alias gprb='Use gprd, learn how to write!'

g() {
  if [ $# -eq 0 ]
  then
    gst -sb
  elif [ "$1" == "update" ]
  then
    git-on-dev
  elif [ "$1" == "nuke" ]
  then
    git-nuke
  elif [ "$1" == "br" ]
  then
    git co -b $2 && git-push-remote
  elif [ "$1" == "commit" ]
  then
    echo "Use 'g ct' instead!"
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
  git-on-dev "interactive" && git checkout dev && git merge $branch --ff-only && git push && git branch -D $branch && git push origin :$branch
}

function git-done-with-tests {
  branch=`git_branch_name`
  git checkout dev && git merge $branch --ff-only && bundle install && rake db:migrate db:test:prepare && rake && git push && git branch -D $branch && git push origin :$branch
}

function git-nuke {
  git branch -D $1 && git push origin :$1
}

function git-on-dev() {
  branch=`git_branch_name`
  git checkout dev && git pull --rebase
  git checkout $branch
  if [ "$1" == "interactive" ]
  then
    git rebase -i dev
  else
    git rebase dev
  fi
}

function git-push-remote() {
  branch=$(git_branch_name)
  git push --set-upstream origin $branch
}

#Group Buddies
alias b='bundle'
alias be='bundle exec'
alias c='cd /Users/zamith/Projects/groupbuddies/coachme-web'
alias zr='zeus rspec'
alias cuke='cucumber'

most() {
  history | awk '{CMD[$2]++;count++;}END { for (a in CMD)print CMD[a] " " CMD[a]/count*100 "% " a;}' | grep -v "./" | column -c3 -s " " -t | sort -nr | head -n20
}

retag()
{
  ctags -R --exclude=.git --exclude=log --exclude=tmp * $GEM_HOME/gems
}

hex2str()
{
  LINE=$(echo $@ | sed 's/ //g')
  echo $LINE | perl -ne 's/([0-9a-f]{2})/print chr hex $1/gie'
  echo ""
}

if [ -f ~/dotfiles/git-completion.bash ]; then
  source ~/dotfiles/git-completion.bash
fi

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
eval "$($HOME/Projects/groupbuddies/gb/bin/gb init -)"

ssh-add ~/.ssh/old_rsa
