alias soul="git --work-tree=$HOME --git-dir=$HOME/.soul.git"

alias viki="git --work-tree=$HOME/.viki/personal/ --git-dir=$HOME/.viki/personal/.git"
alias piki="git --work-tree=$HOME/.viki/public/ --git-dir=$HOME/.viki/public/.git"
alias vikiz="viki add $HOME/.viki/personal/* ; viki commit -a -m 'viki' ; viki push origin master"
alias pikiz="piki add $HOME/.viki/public/* ; piki commit -a -m 'piki' ; piki push origin master"
alias wu="vikiz ; sikiz ; pikiz"
alias wd="viki pull origin master; siki pull origin master; piki pull origin master"

set fish_greeting
set BROWSER chromium-browser
set -xU GOPATH $HOME/h/go
set -xU SAILTHRU_ENV sandbox
set PATH /home/zen/.gem/ruby/1.9.1/bin /Users/zen/.gem/ruby/2.0.0/bin /usr/bin/core_perl /bin /usr/local/bin /usr/bin /sbin /usr/sbin /usr/local/heroku/bin /Users/zen/pear/bin $PAT
set -xU JAVA_HOME /Library/Java/JavaVirtualMachines/jdk1.7.0_45.jdk/Contents/Home
set EDITOR vim
alias e="open -a MacVim"

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

function ws
    set j $argv
    grep $j .viki/ -R --exclude "*.swp" --exclude-dir ".git" -l -i
    read n
    vim (grep $j .viki/ -R --exclude "*.swp" --exclude-dir ".git" -l -i | head -$n | tail -1)
end

set name mbunday
alias qa "ssh ec2-184-72-234-254.compute-1.amazonaws.com"
alias qa2 "ssh 107.21.27.230"

alias deploy="ssh zen@50.116.9.112 'cd prj/zencephalon-mt; git pull origin master'"
alias linode="ssh zen@50.116.9.112"

alias rfc="php ~/dev/devtools/workflow/rfc.php"
alias rfc_complete="php ~/dev/devtools/workflow/rfc.php --complete"
alias rfc-review="php ~/dev/devtools/workflow/rfc.php --review $1"
alias pullreq="php ~/dev/devtools/workflow/pullreq.php"
alias git_branch="php ~/dev/devtools/workflow/git-branch.php"

alias s_create="php ~/dev/devtools/workflow/create.php"
alias s_complete="php ~/dev/devtools/workflow/complete.php"
alias s_release="php ~/dev/devtools/workflow/release.php"

alias release_create="php ~/dev/devtools/workflow/release-create.php"
alias release_deploy="php ~/dev/devtools/workflow/release-deploy.php"

alias q01-q="ssh -L 8161:ec2ev-qa1:8161 mbunday@107.21.27.230"

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

function publish
    rm ~/.viki/public_html/*
    vim ~/.viki/public/index.wiki -S ~/generate_html.vim
    cp ~/.viki/web/style.css ~/.viki/public_html/
    sudo rm /usr/share/nginx/html/public_wiki/*
    sudo cp ~/.viki/public_html/* /usr/share/nginx/html/public_wiki/
end
