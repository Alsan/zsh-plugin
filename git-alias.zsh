is_inside_git_repo="$(git rev-parse --is-inside-work-tree 2>/dev/null)"

alias 'add=git add'
alias 'add-all add -A'
alias 'amend=git commit --amend --no-edit'
alias 'amend-all=git commit -a --amend --no-edit'
alias 'branch=git branch'
alias 'checkout=git checkout'
alias 'clean=git clean -fd'
alias 'clone=git clone'
alias 'commit=git commit -m'
alias 'commit-all=git commit -am'
alias 'commit-amend-msg=git commit --amend -m'
alias 'delete=git rm'
alias 'fetch=git fetch'
alias 'forget=git rm --cached'
alias 'init=git init'
alias 'log=git log --oneline --graph --decorate'
alias 'resolve=git mergetool'
alias 'merge=git merge'
alias 'pull=git pull'
alias 'push=git push'
alias 'remote=git remote'
alias 'reset=git reset'
alias 'status=[ $is_inside_git_repo==true ] && git status || status'
alias 'tag=git tag'

function diff() {
	if [ $is_inside_git_repo ]; then
		if (( $# == 0 )); then
			git diff
		else
			git diff $1
		fi
	else
		diff $1 $2
	fi
}
