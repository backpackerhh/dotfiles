alias 1='cd -1'
alias 2='cd -2'
alias 3='cd -3'
alias 4='cd -4'
alias 5='cd -5'
alias 6='cd -6'
alias 7='cd -7'
alias 8='cd -8'
alias 9='cd -9'
alias _='sudo'
alias ls='ls --color=tty'
alias la='ls -lAh'
alias ll='ls -lh'
alias lsa='ls -lah'
alias cpd='cd $HOME/Documents/Projects'

# dotfiles
alias dotfiles='cd $DOTFILES_PATH'
alias dgc='$DOTLY_PATH/bin/dot git commit'
alias dgd='$DOTLY_PATH/bin/dot git pretty-diff'
alias dglog='$DOTLY_PATH/bin/dot git pretty-log'

# Git
alias g=git
alias ga='git add'
alias gaa='git add --all'
alias gap='git add --patch'
alias gau='git add --update'
alias gav='git add --verbose'
alias gam='git am'
alias gapp='git apply'
alias gbl='git blame -w'
alias gb='git branch'
alias gba='git branch -a'
alias gbd='git branch -d'
alias gbD='git branch -D'
alias gbm='git branch -m'
alias gbr='git branch -r'
alias gbt='git branch --track'
alias gbv='git branch -v'
alias gbs='git bisect'
alias gbsb='git bisect bad'
alias gbsg='git bisect good'
alias gbsn='git bisect new'
alias gbso='git bisect old'
alias gbsr='git bisect reset'
alias gbss='git bisect start'
alias gcln='git clean'
alias gclndr='git clean --dry-run'
alias gclnf='git clean -f'
alias gclni='git clean -i'
alias gclo='git clone'
alias gclosub='git clone --recurse-submodules'
alias gc='git commit --verbose'
alias gca='git commit --verbose --amend'
alias gcane='git commit --verbose --amend --no-edit'
alias gcf='git config'
alias gcfl='git config --list'
alias gcfg='git config --global'
alias gco='git checkout'
alias gcob='git checkout -b'
alias gcp='git cherry-pick'
alias gcpa='git cherry-pick --abort'
alias gcpc='git cherry-pick --continue'
alias gd='git diff'
alias gdc='git diff --cached'
alias gf='git fetch'
alias gfa='git fetch --all'
alias gfp='git fetch --all --prune'
alias gftag='git fetch --tags'
alias gfmtp='git format-patch'
alias gi='git init'
alias gk='gitk --all --branches &!'
alias glog='git log'
alias glogf='git log --follow'
alias glogg='git log --graph'
alias gloggp='git log --graph --pretty="%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ad) %C(bold blue)<%an>%Creset"'
alias glogo='git log --oneline'
alias glogp='git log --patch'
alias glogr='git log --walk-reflogs'
alias glogs='git log --stat'
alias glogS='git log -S'
alias glogu='git log --unified'
alias glsf='git ls-files'
alias gm='git merge'
alias gma='git merge --abort'
alias gms='git merge --squash'
alias gmtl='git mergetool'
alias gpl='git pull'
alias gplr='git pull --rebase'
alias gplra='git pull --rebase --autostash'
alias gp='git push'
alias gpdr='git push --dry-run'
alias gpf='git push --force'
alias gpfs='git push --force-with-lease --force-if-includes'
alias gptag='git push --tags'
alias gpu='git push -u'
alias grmta='git remote add'
alias grmtp='git remote prune'
alias grmtmv='git remote rename'
alias grmtrm='git remote remove'
alias grmtset='git remote set-url'
alias grmtup='git remote update'
alias grb='git rebase'
alias grba='git rebase --abort'
alias grbc='git rebase --continue'
alias grbi='git rebase --interactive'
alias grbo='git rebase --onto'
alias grbs='git rebase --skip'
alias grs='git reset'
alias grsh='git reset --hard'
alias grsk='git reset --keep'
alias grsp='git reset --patch'
alias grss='git reset --soft'
alias grtr='git restore'
alias grtrs='git restore --staged'
alias grtrsw='git restore --staged --worktree'
alias grv='git revert'
alias grm='git rm'
alias grmc='git rm --cached'
alias grmf='git rm -f'
alias gslog='git shortlog'
alias gslognm='git shortlog --no-merges'
alias gsh='git show'
alias gshs='git show --pretty=short'
alias gst='git status'
alias gsts='git status --short'
alias gsta='git stash'
alias gstaa='git stash apply'
alias gstac='git stash clear'
alias gstal='git stash list'
alias gstap='git stash pop'
alias gstas='git stash show'
alias gstasu='git stash save -u'
alias gtag='git tag'
alias gtaga='git tag --annotate'
alias gtagl='git tag --sort=-v:refname -n --list'
alias gsw='git switch'
alias gswc='git switch --create'
alias guidx='git update-index'
alias gunwip='git rev-list --max-count=1 --format="%s" HEAD | grep -q "\--wip--" && git reset HEAD~1'
alias gwip='git add -A; git rm $(git ls-files --deleted) 2> /dev/null; git commit --no-verify --no-gpg-sign --message "--wip-- [skip ci]"'
alias gpristine='git reset --hard && git clean --force -dfx'

# Docker
alias dcdown='docker compose down'
alias dctkill='docker ps | fzf | awk '\''{print $1}'\'' | xargs docker kill'
alias dctlogs='docker ps | fzf | awk '\''{print $1}'\'' | xargs docker logs'
alias dctls='docker ps'
alias dctprune='docker container prune'
alias dctrm='docker ps | fzf | awk '\''{print $1}'\'' | xargs docker rm'
alias dctrmall='docker rm $(docker ps -aq)'
alias dctstat='docker ps | fzf | awk '\''{print $1}'\'' | xargs docker stats'
alias dctstop='docker ps | fzf | awk '\''{print $1}'\'' | xargs docker stop'
alias dctvo='docker ps -a | fzf | awk '\''{print $1}'\'' | xargs docker inspect -f '\''{{ json .Mounts }}'\'' | python -m json.tool'
alias dcup='docker compose up'
alias dcupb='docker compose up --build'
alias dib='docker build'
alias dibt='docker build -t'
alias dils='docker image ls'
alias diprune='docker image prune'
alias dirm='docker image ls | fzf | awk '\''{print $3}'\'' | xargs docker rmi'
alias dirmall='docker rmi $(docker images -q) -f'
alias dirun='docker image ls | fzf | awk '\''{print $3}'\'' | xargs docker run --rm'
alias dstat='docker stats'
alias dsysprune='docker system prune'
alias dvols='docker volume ls'
alias dvoprune='docker volume prune'
alias dvorm='docker volume ls | fzf | awk '\''{print $2}'\'' | xargs docker volume rm'
alias dvormall='docker volume rm $(docker volume ls -q)'

# Rails
alias RED='RAILS_ENV=development'
alias REP='RAILS_ENV=production'
alias RET='RAILS_ENV=test'
alias devlog='tail -f log/development.log'
alias prodlog='tail -f log/production.log'
alias testlog='tail -f log/test.log'

# Bundle
alias be='bundle exec'
alias bi='bundle install'
alias bu='bundle update'

# Python
alias python=python3
