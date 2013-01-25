alias soul="git --work-tree=$HOME --git-dir=$HOME/.soul.git"

alias viki="git --work-tree=$HOME/.viki/personal/ --git-dir=$HOME/.viki/personal/.git"
alias siki="git --work-tree=$HOME/.viki/sailthru/ --git-dir=$HOME/.viki/sailthru/.git"
alias piki="git --work-tree=$HOME/.viki/public/ --git-dir=$HOME/.viki/public/.git"
alias vikiz="viki add . ; viki commit -a -m 'viki' ; viki push origin master"
alias sikiz="siki add . ; siki commit -a -m 'siki' ; siki push origin master"
alias pikiz="siki add . ; piki commit -a -m 'piki' ; piki push origin master"
alias wiki="vikiz ; sikiz ; pikiz"
alias wikid="viki pull; siki pull; piki pull"

set fish_greeting
set BROWSER chromium-browser
alias e="gvim"
alias h="cd $HOME"
alias c="cd"
alias l="ls -ltrh --color=auto"
alias vw="gvim $HOME/.viki/index.wiki"

set name mbunday
alias qa "ssh ec2-184-72-234-254.compute-1.amazonaws.com"
alias qa2 "ssh 107.21.27.230"

alias sgate="ssh sailthru@ec2-184-72-234-254.compute-1.amazonaws.com"
alias vpc="ssh mbunday@107.21.27.230"
alias inny="ssh mbunday@63.251.23.254"

# sailthru devtools workflow aliases
alias rfc="php ~/s/devtools/workflow/rfc.php $1"
alias rfc-complete="php ~/s/devtools/workflow/rfc.php --complete $1"
alias mergereq="php ~/s/devtools/workflow/mergereq.php $1"
alias release-create="php ~/s/devtools/workflow/release-create.php $1"
alias release-qa="php ~/s/devtools/workflow/release-qa.php $1"
alias release-qa-signoff="php ~/s/devtools/workflow/release-qa-signoff.php $1"
alias release-merge="php ~/s/devtools/workflow/release-merge.php $1"
alias release-deploy="php ~/s/devtools/workflow/release-deploy.php $1"
alias pullreq="php ~/s/devtools/workflow/pullreq.php"

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
        printf '%s%s%s %s> ' (set_color $fish_color_cwd) (prompt_pwd) (set_color normal) (parse_git_branch)            
    else
        printf '%s%s%s> ' (set_color $fish_color_cwd) (prompt_pwd) (set_color normal)
    end 
end
