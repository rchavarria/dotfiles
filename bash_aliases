#
# Some aliases defined for command line
#

# Some alias to edit vim, only one vim instance
alias v='gvim --remote-silent'

# git aliases
alias g='git'
alias gpom='git push origin master'
alias ga='git add --all'
alias gs='git status -sb'
alias gc='git commit '
alias gl='git log --pretty=oneline --reverse -30'
alias glg='git log -20 --graph --decorate --oneline'
alias glf='git log -10 --decorate --oneline --name-only'
alias gco='git checkout'
# hace commit sobre el último commit hecho (--amend) reutilizando el mensaje del HEAD (-C HEAD)
alias gca='git commit --amend -C HEAD'

# overwrite all local changes with latest changes on origin/master repository
alias remaster='git checkout master && git fetch origin && git reset --hard origin/master'

# youtube-dl
alias ydl='youtube-dl -f "(mp4)[height<400]"'
# youtube-dl, code 140 (audio)
alias ydla='youtube-dl -f 251'

# docker and docker-compose
alias dc='sudo docker-compose'

# did you forget to use `sudo`?
# thanks to [Liam O](https://twitter.com/liamosaur/status/506975850596536320)
alias fuck='sudo $(history -p \!\!)'

