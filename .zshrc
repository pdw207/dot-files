# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="skaro"


if [ -d "$HOME/.nvm" ]; then
  [[ -s "$HOME/.nvm/nvm.sh" ]] && source "$HOME/.nvm/nvm.sh"
fi


# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias be="bundle exec"
alias fb="foreman run bundle exec"
alias rakemigrate="be rake db:migrate && rake db:rollback && rake db:migrate"
alias ip="ifconfig | grep 'inet ' | grep -v 127.0.0.1 | cut -d\  -f2"
alias tree="find . -type d | sed -e 's/[^-][^\/]*\//  |/g' -e 's/|\([^ ]\)/|-\1/'"
alias gitlog="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(green)(%ar)%C(reset) %an%C(reset)%C(yellow)%d%C(reset) %C(white)%s%C(reset) %C(dim white)-'  --all"
alias curlpretty="echo curl http://0.0.0.0:4200/$1 | python -m json.tool"
alias grup="git remote update"
alias gromi="git rebase origin/master -i"
alias co="checkout"
alias month="cal $1 | grep --color -EC6 '\b$(date +%e | sed 's/ //g')'"
alias year="cal `date '+%Y'`"
alias today="date '+%m-%d-%Y'"
alias weather="curl wttr.in/01002"
alias dict="curl dict://dict.org/d:$1"
alias di="docker image ls"
alias dc="docker container ls -a"
alias dock="docker $1"
alias de="docker exec -it $1"
alias dockvol="docker inspect -f '{{ .Mounts }}' $1"
alias dockrm="docker rm $(docker ps -a -q -f status=exited)"
alias findbig="find . -type f -size +100M -print0 | xargs -0 ls -Shal | head"
# freckle() { git log --all --since="$*" --pretty=format:"%h%x09%an%x09%ad%x09%s" --date-order --author="Paul"; }


function heroku-load-backup {
    curl `heroku pg:backups public-url -a $1` | pg_restore -1 --if-exists -c -d $2
}

function supersub {
  ack -l "$1" "$3" | xargs perl -p -i -e "s/$1/$2/g"
}
# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to disable command auto-correction.
# DISABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration
export PATH="/bin:/user/bin:/.Local/bin:/usr/local/bin:/usr/local/sbin:/Users/paulwilson/Library/Python/2.7/bin:$PATH"
# export MANPATH="/usr/local/man:$MANPATH"
 export ANDROID_HOME=/Users/paulwilson/Library/Android/sdk
 export PATH=$ANDROID_HOME/platform-tools:$PATH
 export PATH=$ANDROID_HOME/tools:$PATH

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

eval "$(rbenv init -)"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"
# export PATH="$HOME/.rbenv/bin:$PATH"

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH="$HOME/.fastlane/bin:$PATH"

export PATH="/usr/local/opt/qt5/bin:$PATH"
