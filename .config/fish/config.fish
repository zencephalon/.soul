alias home="git --work-tree=$HOME --git-dir=$HOME/.soul.git"
set fish_greeting
alias e="gvim"
alias h="cd $HOME"

set name mbunday
set qa "ec2-184-72-234-254.compute-1.amazonaws.com"
set qa2 "107.21.27.230"

alias sgate="ssh sailthru@ec2-184-72-234-254.compute-1.amazonaws.com"
alias vpc="ssh mbunday@107.21.27.230"
alias inny="ssh mbunday@63.251.23.254"

# sailthru devtools workflow aliases
alias rfc="php ~/dev/devtools/workflow/rfc.php $1"
alias rfc-complete="php ~/dev/devtools/workflow/rfc.php --complete $1"
alias mergereq="php ~/dev/devtools/workflow/mergereq.php $1"
alias release-create="php ~/dev/devtools/workflow/release-create.php $1"
alias release-qa="php ~/dev/devtools/workflow/release-qa.php $1"
alias release-qa-signoff="php ~/dev/devtools/workflow/release-qa-signoff.php $1"
alias release-merge="php ~/dev/devtools/workflow/release-merge.php $1"
alias release-deploy="php ~/dev/devtools/workflow/release-deploy.php $1"
alias pullreq="php ~/dev/devtools/workflow/pullreq.php"
