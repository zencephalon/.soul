alias home="git --work-tree=$HOME --git-dir=$HOME/.soul.git"
set fish_greeting
alias e="gvim"
alias h="cd $HOME"

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
