#
# Some aliases defined for command line
#

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
alias remaster='git checkout master && git fetch origin && git reset --hard origin/master'

# youtube-dl
alias ydl='youtube-dl -f "(mp4)[height<400]"'
# youtube-dl, code 140 (audio)
alias ydla='youtube-dl -f 251'

# docker and docker-compose
alias dc='sudo docker-compose'

