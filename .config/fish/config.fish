alias soul="git --work-tree=$HOME --git-dir=$HOME/.soul.git"

alias subl="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"

alias gundo="git reset --soft HEAD~"

set fish_greeting
set BROWSER open

set -xU JAVA_HOME /Library/Java/JavaVirtualMachines/jdk1.8.0_72.jdk/Contents/Home
set -xU JAVA7_HOME /Library/Java/JavaVirtualMachines/jdk1.7.0_45.jdk/Contents/Home
set -xU JAVA8_HOME /Library/Java/JavaVirtualMachines/jdk1.8.0_72.jdk/Contents/Home
set -xU ANDROID_HOME ~/Library/Android/sdk

set PATH /usr/bin/core_perl /bin /usr/local/bin /usr/bin /sbin /usr/sbin /usr/local/heroku/bin /Users/zen/pear/bin /Applications/Postgres.app/Contents/Versions/9.3/bin $ANDROID_HOME/tools $ANDROID_HOME/platform-tools $PATH

set EDITOR vim

function e
  if test -f $argv
  else
    touch $argv
  end
  open -a MacVim $argv
end

alias h="cd $HOME"
alias c="cd"
alias l="ls -ltrh --color=auto"
alias vw="gvim $HOME/.viki/index.wiki"
alias be="bundle exec"

alias linode="ssh zen@50.116.9.112"

set fish_git_dirty_color red
function parse_git_dirty
    git diff --quiet HEAD ^&-
    if test $status = 1
        echo (set_color $fish_git_dirty_color)"*"(set_color normal)
    end
end

function parse_git_branch
    # git branch outputs lines, the current branch is prefixed with a *
    set -l branch (git branch --color ^&- | awk '/*/ {print $2}')
    echo $branch (parse_git_dirty)
end

function fish_prompt
    if test -n (parse_git_branch)
        printf '%s %s%s%s %s> ' (hostname) (set_color $fish_color_cwd) (prompt_pwd) (set_color normal) (parse_git_branch)
    else
        printf '%s %s%s%s> ' (hostname) (set_color $fish_color_cwd) (prompt_pwd) (set_color normal)
    end
end