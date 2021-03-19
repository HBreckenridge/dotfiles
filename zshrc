# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
#ZSH_THEME="blinks"
#ZSH_THEME="crcandy"
#ZSH_THEME="suvash"
#ZSH_THEME="ys"
ZSH_THEME="xiong-chiamiov-plus"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "agnoster" "agnoster" "linuxonly" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

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
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)
plugins=(dotfiles/ohmyzsh/plugins/zsh-autosuggestions)
plugins=(dotfiles/ohmyzsh/plugins/zsh-syntax-highlighting)
# Zsh Auto Suggestions

# Load zsh-syntax-highlighting.
source ~/pR1sM/dotfiles/ohmyzsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Load zsh-autosuggestions.
source ~/pR1sM/dotfiles/ohmyzsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# Enable autosuggestions automatically.
zle-line-init() {
    zle autosuggest-start
    }
    zle -N zle-line-init

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
###Add path variable to bash shell
export PATH="$PATH:$HOME/pR1sM/myTools/apps/code_portable/VSCode-linux-x64/bin/"

###___###__Add my shortcut aliases to bash shell config file
# Directory Shortcuts

alias projects="cd ~/pR1sM/implement/projects"
alias apps="cd ~/pR1sM/myTools/apps"
alias implement="cd ~/pR1sM/implement"
alias tools="cd ~/pR1sM/myTools"
alias working="cd ~/pR1sM/working"
alias snippets="cd ~/pR1sM/resources/code_snippets"
# Other Dir/File Shortcuts
alias ..="cd .."
alias todo="gedit ~/pR1sM/__brain__/todo.txt"
# TURN touchpad on/off
alias touchoff='''xinput set-prop 16 "Device Enabled" 0'''
alias touchon='''xinput set-prop 16 "Device Enabled" 1'''
# 
# SSH
#  Logon to user : root @ 138.68.63.8  system : svr-microservice-staging ssh root@138.68.63.8
alias svrstage-root='''ssh root@138.68.63.8'''
alias svrstage-svrms='''ssh svr-ms@138.68.63.8'''
# soundscapeVR
alias ssh-svr='''eval $(ssh-agent -s) && ssh-add /home/nach0/pR1sM/.keys/.ssh/soundscape'''
# git
alias ssh-git='''eval $(ssh-agent -s) && ssh-add /home/nach0/pR1sM/.keys/.ssh/ssh.git'''
# git repo aliases
alias ga="git add"
alias gc="git commit -m"
alias gpom="git push origin master"
alias gs="git status"
alias gl="git log"
#Print aliases for reminder
