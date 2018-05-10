# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH=/data/data/com.termux/files/home/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="jeff"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

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
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

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

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"


# general
alias ll="ls -lahG"
alias reload="exec $SHELL -l"
alias profile="vim ~/.profile"
alias p="echo ''; cd ~/Sites; ls -c1; echo '';"
alias desktop="cd ~/Desktop"
alias server="python -m SimpleHTTPServer"
alias fact="echo '------------------------------------------------------------';  curl -s randomfunfacts.com | LANG=C sed -n 's/.*<i>\(.*\)<\/i>.*/\1/p'; echo '------------------------------------------------------------'"

# git
alias co="git checkout"
alias s="echo ''; git status -sb; echo ''"
alias c="git commit"
alias cm="fact; git commit -am"
alias stage="git add ."
alias pull="git pull"
alias pullr="git pull -r"
alias push="git push"
alias ri="git rebase -i"
alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias branch="git branch"
alias amend="git commit --amend -m"
alias gh="hub browse"

# squashes the current changes into the previous commit
fixup() {
  local OC=`git rev-parse HEAD`
  git add -A
  git commit --fixup=$OC
  git rebase -i --autosquash $OC~1
}

# pushes the branch you are on and opens compare on github for a PR
pushpr() {
  git push -u origin `git rev-parse --abbrev-ref HEAD`
  git compare
}

pullpr() {
  git fetch origin pull/$1/head:pr-$1
  git checkout pr-$1
}

# to be run after `npm version`, pushes tags, publishes, and opens release notes
publish(){
  push && push --tags && npm publish .
  echo `git config --get remote.origin.url` | sed -e 's/\.git/\/releases/g' | echo "`cat -`/new?tag=`git describe`" | xargs open
}

# node
alias reload-deps="rm -rf node_modules && npm i"

# iterm2 shell integration
test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

# postgres
export PGDATA='/usr/local/var/postgres'
export PGHOST=localhost

# android
export ANDROID_HOME='~/Library/Android/sdk'
export PATH="$ANDROID_HOME/platform-tools:$ANDROID_HOME/tools:$PATH"
