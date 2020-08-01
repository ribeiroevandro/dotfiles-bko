# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
source $HOME/www/opensource/secrets/.secrets

source $HOME/www/opensource/dotfiles/config/functions/devspace.sh
source $HOME/www/opensource/dotfiles/config/functions/heppier.sh
source $HOME/www/opensource/dotfiles/config/functions/init_project.sh


export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_251.jdk/Contents/Home
export ANDROID_HOME=~/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

# Path to your oh-my-zsh installation.
export ZSH="/Users/$(whoami)/.oh-my-zsh"
export PATH="$PATH:/usr/local/bin"
export PATH=$PATH:~/.composer/vendor/bin

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="spaceship"

plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

# User configurations

# Emulators
alias nexus="emulator @Nexus"
alias nexus5Play="emulator @Nexus_5_Play"
alias pixel="emulator @Pixel"

# Recursively delete `.DS_Store` files
alias cleanup="find . -type f -name '*.DS_Store' -ls -delete"

# Clean Desktop
alias cleandesk="rm ~/Desktop/Screen*.png && rm ~/Desktop/Simulator*.png"

# Reload the shell (i.e. invoke as a login shell)
alias reload="exec $SHELL -l"

# Edit .zshrc
alias zedit="vim ~/dotfiles/config/.zshrc"

# Edit .vimrc
alias vedit="vim ~/dotfiles/config/.vimrc"

# Expo Accounts
# alias expersonal="expo logout && expo login -u 'username' -p 'password'"
alias expersonal="expo logout && expo login -u 'ribeiroevandro' -p 'lb5nYd20&i#nTGe9zh@SoEzjGy8fp#nj'"
alias extodavida="expo logout && expo login -u 'admin@todavida.com.br' -p 'Todavida123'"
alias exassissat="expo logout && expo login -u 'elisoncrestani@gmail.com' -p 'ElisonMKT'"


function iexpo() {
  expo init $1 && cd $1 && code $1
}

# Work directories
alias opensource="cd ~/www/opensource"
alias community="cd ~/www/community"

function work() {
  cd ~/www/work/$1
}

function mentoring() {
  cd ~/www/mentoring/$1
}

function colab() {
  cd ~/www/colab/$1
}

# Git Alter Origin
function gao() {
  git remote set-url origin $1
}

# Yarn add dependencies in TypeScript Projects
 function yts() {
  yarn add $1 && yarn add @types/$1 -D
 }

function mdd() {
  md $1 && cd $1
}

function push () {
  git push origin $(git branch | grep \* | sed 's/\*\s//') $@
}

function pull () {
  git pull origin $(git branch | grep \* | sed 's/\*\s//') $@
}

function clone () {
  DIR=$(echo $1 | sed "s?^.*:\(.*\)/\(.*\).git?\1--\2?")
  git clone $1 $DIR
}

newapi () {
  adonis new $1 --api-only --yarn
}

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# eval "$(rbenv init -)"
# rbenv settings
export RBENV_SHELL=zsh
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init - zsh)"

pasteinit() {
  OLD_SELF_INSERT=${${(s.:.)widgets[self-insert]}[2,3]}
  zle -N self-insert url-quote-magic # I wonder if you'd need `.url-quote-magic`?
}

pastefinish() {
  zle -N self-insert $OLD_SELF_INSERT
}
zstyle :bracketed-paste-magic paste-init pasteinit
zstyle :bracketed-paste-magic paste-finish pastefinish

SPACESHIP_PROMPT_ORDER=(
  user          # Username section
  dir           # Current directory section
  host          # Hostname section
  git           # Git section (git_branch + git_status)
  hg            # Mercurial section (hg_branch  + hg_status)
  exec_time     # Execution time
  line_sep      # Line break
  vi_mode       # Vi-mode indicator
  jobs          # Background jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
)
SPACESHIP_USER_SHOW=always
SPACESHIP_PROMPT_ADD_NEWLINE=false
SPACESHIP_CHAR_SYMBOL="❯"
SPACESHIP_CHAR_SUFFIX=" "

export PATH="/usr/local/sbin:$PATH"

### Added by Zinit's installer
if [[ ! -f $HOME/.zinit/bin/zinit.zsh ]]; then
    print -P "%F{33}▓▒░ %F{220}Installing DHARMA Initiative Plugin Manager (zdharma/zinit)…%f"
    command mkdir -p "$HOME/.zinit" && command chmod g-rwX "$HOME/.zinit"
    command git clone https://github.com/zdharma/zinit "$HOME/.zinit/bin" && \
        print -P "%F{33}▓▒░ %F{34}Installation successful.%f" || \
        print -P "%F{160}▓▒░ The clone has failed.%f"
fi
source "$HOME/.zinit/bin/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit
### End of Zinit installer's chunk

zinit light zdharma/fast-syntax-highlighting
zinit light zsh-users/zsh-autosuggestions
zinit light zsh-users/zsh-history-substring-search
zinit light zsh-users/zsh-completions
zinit light buonomo/yarn-completion
