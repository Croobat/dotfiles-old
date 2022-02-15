# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export LS_COLORS="$LS_COLORS:ow=1;34:tw=1;34:"
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="xiong-chiamiov-plus"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
 zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
 zstyle ':omz:update' frequency 7

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
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
plugins=(
    git
    archlinux
    # zsh-autosuggestions
    zsh-history-substring-search
    you-should-use
    auto-notify
    zsh-syntax-highlighting
    )

    # Auto notify plugin
zstyle ':notify:*' blacklist-regex 'find|rofi|sncli|zathura|ranger|joplin'
zstyle ':notify:*' command-complete-timeout 180
zstyle ':notify:*' error-log /dev/null
zstyle ':notify:*' always-check-active-window no
zstyle ':notify:*' expire-time 2500

ZSH_DISABLE_COMPFIX=true

source $ZSH/oh-my-zsh.sh

source /usr/share/fzf/completion.zsh
source /usr/share/fzf/key-bindings.zsh

ZSH_HIGHLIGHT_STYLES[unknown-token]='fg=#ff79c6'



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

###             ALIASES             ###
## Modified commands
alias diff='colordiff'
alias grep='grep --color=auto'
alias more='less'
alias df='df -h'
alias du='du -c -h'
alias mkdir='mkdir -p -v'
alias nano='nano -w'
alias ping='ping -c 3'
alias dmesg='dmesg -HL'
alias pacinn="sudo pacman -S --needed"
alias yainn="yay -S --needed"
alias yainch="yay -S --mflags \"--skipchecksums --skippgpcheck\""
alias installed="pacman -Qqe > .pkglist.txt ; less .pkglist.txt"
alias app="AppImageLauncher ~/Applications/appimage-cli-tool-0.1.4-x86_64.AppImage"
alias awtest="killall Xephyr; Xephyr :5 & sleep 1 ; DISPLAY=:5 awesome"
alias getkey="$HOME/.scripts/getkey"
alias getwindow="$HOME/.scripts/getwindow"
alias history="less +G ~/.zsh_history"
alias t="trash"
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias findar="pacman -Slq | fzf -m --preview 'cat <(pacman -Si {1}) <(pacman -Fl {1} | awk \"{print \$2}\")' | xargs -ro sudo pacman -S"
alias findaur="yay -Slq | fzf -m --preview 'cat <(yay -Si {1}) <(yay -Fl {1} | awk \"{print \$2}\")\' | xargs -ro  yay -S"
alias tran='trans -brief :en'
alias trad='trans -brief :es'
alias gslog='git slog'
alias dwcomp='rm ~/.config/dwm/config.h ; sudo make clean install'

# App aliases
alias vim="nvim"
alias code="vscodium"
alias spt="ncspot"
alias mail="neomutt"
alias getcolor="chameleon"
alias palette="gcolor3"
alias sn="sncli"
alias binds="sxhkd"
alias bm="bashmount"
alias scim="sc-im"

# conf aliases
alias zconf="vim ~/.zshrc"
alias awconf="vim ~/.config/awesome/rc.lua"
alias dwconf="cd ~/.config/dwm"
alias awtconf="vim ~/.config/awesome/theme.lua"
alias atajosconf="vim ~/.config/sxhkd/sxhkdrc"
alias piconf="vim ~/.config/picom/picom.conf"
alias alaconf="vim ~/.config/alacritty/alacritty.yml"
alias bindsconf="vim ~/.config/sxhkd/sxhkdrc"
alias quteconf="vim ~/.config/qutebrowser/config.py"
alias qutequick="vim ~/.config/qutebrowser/quickmarks"
alias profile="vim ~/.xprofile"
alias vimconf="cd ~/.config/nvim"

# location aliases
alias desk="cd /usr/share/applications"

# Printer aliases
alias escanear="scanimage --format=png --output-file scan.png --progress"
alias scan="simple-scan"

## New commands
alias du1='du --max-depth=1'
alias hist='history | grep'         # requires an argument
alias openports='ss --all --numeric --processes --ipv4 --ipv6'
alias pgg='ps -Af | grep'           # requires an argument
alias ..='cd ..'

# Privileged access
alias sudo='sudo '
alias scat='sudo cat'
alias svim='sudo nvim'
alias root='sudo -i'
alias reboot='sudo systemctl reboot'
alias poweroff='sudo systemctl poweroff'
alias update='sudo pacman -Su'
alias netctl='sudo netctl'
alias nethogs='sudo nethogs'
alias updatedb='sudo updatedb --verbose'

## ls
alias ls='ls -hF --color=auto'
alias lr='ls -R'                    # recursive ls
alias ll='ls -l'
alias la='ll -A'
alias lx='ll -BX'                   # sort by extension
alias lz='ll -rS'                   # sort by size
alias lt='ll -rt'                   # sort by date
alias lm='la | more'

## Safety features
alias rm='rm -I'                    # 'rm -i' prompts for every file
alias rmr='rm -rfI'

# safer alternative w/ timeout, not stored in history
alias rm=' timeout 3 rm -Iv --one-file-system'
alias ln='ln -i'
alias chown='chown --preserve-root'
alias chx='chmod --preserve-root u+x'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'
alias cls=' echo -ne "\033c"'       # clear screen for real (it does not work in Terminology)

## Make Bash error tolerant
alias :q=' exit'
alias :Q=' exit'
alias :x=' exit'
alias cd..='cd ..'
