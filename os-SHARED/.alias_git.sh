# SHARED - GIT ALIASES

test_message="TEST GIT aliases"
alias alias_git="echo '$test_message'"

#-- git log FILES to see which files were updated
alias glf="$(create_alias 'git log --graph --oneline --name-status')"

alias gc="$(create_alias 'git checkout')"
alias gb="$(create_alias 'git branch')"

alias gs="$(create_alias 'git status')"
alias gd="$(create_alias 'git diff')"

#-- to see staged (added) changes (hunk)
alias gdc="$(create_alias 'git diff --cached')"

alias ga="$(create_alias 'git add ')"
alias gaa="$(create_alias 'git add . ;')"
alias grs="$(create_alias 'git restore --staged ')"

#-- git log PATCHES to see the diffs in each
alias glp="$(create_alias 'git log -p ')"
#-- can add --author='Reinhardt' to see changes  by specific people
#-- just another alias to make it easier to view changes
alias glshow="$(create_alias 'git log -p ')"

#-- to push changes into the stash
alias gspush="$(create_alias 'git stash push ')"

#-- to see a list of stashed patches
alias gslist="$(create_alias 'git stash list ')"
alias gsshow="$(create_alias 'git stash show -p ')"
# git stash show -p 3 // to see the #4 stashed patch/changes

# git show stash@{0} // to show tracked files stashed in index 0
# git show stash@{0}^3 // to show untracked files stashed in index 0

#-- to apply changes from a certain stash index (0 being at the top)
# git stash apply <stash-index>

# git stash push -m "message" <path>
# git stash drop <number>
alias gsdrop="$(create_alias 'git stash drop ')"

alias gf="$(create_alias 'git fetch ')"
#alias gp='git pull'

## GIT MERGE

#-- to merge another branch into your current branch
# git merge incomingBranch

## GIT REBASE

#-- to rebase your current branch with another branch
# git rebase incomingBranch

#-- to rebase your current branch from the remote branch
# git fetch
# git rebase origin/master

## Squash Commits on your branch

#-- to find the number of commits to squash
# git log
#-- to open interactive to squash commits and give a better commit message
# git rebase -i HEAD~<number-of-commits>
# git rebase -i HEAD~9
#-- To push up the changes
# git push --force origin feature/COR-7412-edocs-re-write-create-feature-switch

### Rebase your branch to resolve merge conflicts 
#&& to consolidate your changes on top of the branch you want to merge into
#"git rebase feature/DEP-118"
#>>
#Make sure your local has all the latest changes of the destination branch (ex: DEP-118) 
#>>
#Then change back to your branch to rebase


alias gl="$(create_alias 'git log ')"
# git log - to see if your current changes match the remote

#-- to see which commits are on your master which you haven't yet pushed
# git log origin/master..master
#alias gld='echo "// git log diff b/w remote"; git log origin/master..master'

#-- to see which commits are on origin/master but not yet on master

# git log master..origin/master

#-- git log graph
log_format="%C(dim white)%d%C(reset) %s %C(dim white)[%h %ae %cr]%C(reset)"
glg_command="git log --graph --pretty=format:\"${log_format}\""
alias glg="$(create_alias "${glg_command}")"

alias glgraph="$(create_alias "git log --graph")"

alias glgr="$(create_alias "git log --graph --pretty=reference --relative-date")"
alias gl1="$(create_alias "git log --graph --oneline")"

#-- git log patches to see the diffs in each
alias glp="$(create_alias "git log -p")"
#-- can add --author='Reinhardt' to see changes  by specific people
#-- just another alias to make t easier to view changes
alias glshow="$(create_alias "git log -p")"

#-- to reset to a previous commit but careful as you lose everything 
# git reset --hard <commit-ID || HEAD>

#-- to revert a certain commit or the last commit on HEAD
#-- the diff with reset is that this does the opposite of the given commit 
#-- note: must use full hash that you can get from git log 
# git revert <commit-hash || HEAD>

#-- to cherry pick a commit from another branch
# git cherry-pick <commmit-hash>



## SCRIPTS

# GIT COMMIT IF GIT COMMIT SCRIPT FILE EXISTS
alias gcm="$(create_script_alias "~/dotfiles/SCRIPTS/.gitcommit.sh")"

# SYNC IF SYNC FILE EXISTS
alias sy="$(create_script_alias "~/dotfiles/SCRIPTS/.sync.sh")"
alias sync="$(create_script_alias "~/dotfiles/SCRIPTS/.sync.sh")"
