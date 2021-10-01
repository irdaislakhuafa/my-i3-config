# If you come from zsh you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
ZSH=/usr/share/oh-my-zsh/

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

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

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
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

ZSH_CACHE_DIR=$HOME/.cache/oh-my-zsh
if [[ ! -d $ZSH_CACHE_DIR ]]; then
  mkdir $ZSH_CACHE_DIR
fi

source $ZSH/oh-my-zsh.sh

# linux distro logo every open terminal
alias nf='neofetch'
nf 

# simple to use
alias c='clear'
alias ..='cd ..'

# simple to edit fstab
alias edit-fstab='doas nvim /etc/fstab'
alias efstab='edit-fstab'

# for trim SSD
alias trim='doas fstrim -va'
alias trimx='trim && exit'

# control tlp
alias tlp-on='doas rsm enable tlp '
alias tlp-off='doas rsm disable tlp '

# control display manager
#alias sddm-on='doas rsm enable sddm '
#alias sddm-off='doas rsm disable sddm '

# simple to list directory and file
alias lash='ls -lash'
alias lss='ls -sh'
alias ll='ls -l'
alias la='ls -a'

# simple to exit
alias x='exit'

# simple to remove file
alias srm='doas rm'
alias srmr='doas rm -r'
alias srmrf='doas rm -rf'

# control java version
alias archlinux-java='doas archlinux-java'
alias java-set='doas archlinux-java set'
alias javav='java -version'
# simple
#alias jset="java-set java-'$1'-openjdk"

alias tlp-start='doas rsm start tlp '
alias tlp-stop='doas rsm stop tlp '

# see free memory
#alias free='free '

# trim only root directory
alias ltrim='doas fstrim -v / && doas fstrim -v /boot/EFI'
alias ltrimx='doas fstrim -v / && doas fstrim -v /boot/EFI && exit'

# control swap memory
alias swapon='doas swapon'
alias swapoff='doas swapoff'

# control optimus manager
alias switch-start='doas rsm start optimus-manager'
alias switch-on='doas rsm enable optimus-manager'
alias switch-off='doas rsm disable optimus-manager'

# control system performance
alias powersave='doas cpufreqctl --governor --set=powersave'
alias performance='doas cpufreqctl --governor --set=performance'
alias cpustat='doas cpufreqctl --governor --set='
alias power='powersave'
alias perform='performance'

# download youtube video with CLI
alias ytdl='youtube-dl'

# control web server localhost
alias xampp-panel='doas /opt/lampp/manager-linux-x64.run'
#alias xampp-start='doas /opt/lampp/xampp start'
#alias xampp-stop='doas /opt/lampp/xampp stop'
alias lampp-panel='xampp-panel'
#alias lampp-start='doas /opt/lampp/lampp start'
#alias lampp-stop='doas /opt/lampp/lampp stop'
#alias xampp='doas /opt/lampp/xampp'
#alias lampp='doas /opt/lampp/lampp'
#alias mysql-login='mysql -u root -h 127.0.0.1'

# control package manager
alias pac='doas pacman'
alias t='trizen'
alias p='pac'
alias :v='p'
alias fix='srm /var/lib/pacman/db.lck'

# see disk usage
alias df='df -h'

# search file with baloo
alias search='baloosearch'

# control charge battery
#alias setcharge='doas setcharge'
alias limit-charge='cat /sys/class/power_supply/BAT0/charge_control_end_threshold'

# for cleaning linux system
alias clean='srmrf ~/.cache/*  \
	&& srmrf /var/log/* \
	&& trizen -c \
	&& trizen -Scc'
alias cl='clean'

# go to BIOS without pressed F2 key
init="$(pstree -p | grep '(1)' | cut -d '(' -f 1)"
if [ "$init" = "runit" ]; then 
	alias BIOS='loginctl reboot --firmware-setup'
elif [ "$init" = "systemd" ]; then
	alias BIOS="systemctl reboot --firmware-setup"
fi
alias bios='BIOS'

# set editor
alias edit='doas nvim'

# to control configuration on zsh
alias ezsh='nvim ~/.zshrc && source ~/.zshrc'
alias szsh='source ~/.zshrc'

# play music on terminal
alias mocpt='mocp -T darkdot_theme'

# control grub bootloader
alias edit-grub="doas nvim /etc/default/grub && update-grub"
alias edit-grub-r='edit-grub && reboot'
alias egrub='edit-grub'
alias egrubr='edit-grub-r'
alias update-grub='doas grub-mkconfig -o /boot/grub/grub.cfg'

#echo "untuk menampilkan wallpaper di TTY mode https://wiki.archlinux.org/index.php/Fbsplash#Console_background_images"

# browsing with CLI
alias google='w3m https://www.google.com'
alias sia='w3m "http://sia.unirow.ac.id/index.php?m=jadwal"'
alias facebook='w3m "https://free.facebook.com/home.php?ref_component=mfreebasic_home_header&ref_page=MNotificationsController&refid=48"'
alias fb='facebook'
alias gg='google'

# control power
alias off='doas poweroff'
alias boot='doas reboot'
alias suspend='doas loginctl suspend'

# see VGA load status
alias intel='doas intel_gpu_top'
alias nvidia='doas nvtop'

# control ranger file manager configuration
alias rconf='nvim ~/.config/ranger/rc.conf'

# control rofi configuration
alias roficonf='nvim ~/.config/rofi/config.rasi'

# control i3 cofiguration
alias i3config='nvim ~/.config/i3/config'
alias i3auto='nvim ~/.config/i3/autostart.sh'

# set brightness hardware
alias bset="doas brightnessctl -d 'intel_backlight' set"

# control network using iwd
getDevice="$(iwctl device list | grep station | awk '{print$1}')"
alias wscan='iwctl station $getDevice scan'
alias dlist='iwctl device list'
alias wlist='wscan && iwctl station $getDevice get-networks'
alias wlist-h='wscan && iwctl station $getDevice get-hidden-access-points'
alias wconnect='iwctl station $getDevice connect'
alias wconnect-h='iwctl station $getDevice connect-hidden'
alias wshow='iwctl station $getDevice show'
alias rwd='rsm restart iwd'
alias wdisconnect='iwctl station $getDevice disconnect'
alias won="doas wifi on"
alias wof="doas wifi off"

# setup multiple monitor
alias setmonleft='xrandr --output HDMI-1 --auto --left-of eDP-1'
alias setmonright='xrandr --output HDMI-1 --auto --right-of eDP-1'

# control the service
alias rsm='doas rsm'
alias sv='doas sv'
alias status='rsm status'
alias restart='rsm restart'
alias disable='rsm disable'
alias start='rsm start'
alias stop='rsm stop'
alias up='sv up'
alias down='sv down'

# record screen with ffmpeg
#alias rstf="ffmpeg -video_size $(xrandr | grep '*' | awk '{print$1}') -framerate 25 -f x11grab -i $DISPLAY"

# record screen with ffmpeg and audio Alsa
#alias rwa="ffmpeg -video_size $(xrandr | grep '*' | awk '{print$1}')  -framerate 25 -f x11grab -i $DISPLAY -f alsa -ac 2 -i hw:0"

# record screen with ffmpeg and audio pulseaudio
#alias rwp="ffmpeg -video_size $(xrandr | grep '*' | awk '{print$1}')  -framerate 25 -f x11grab -i $DISPLAY -f pulse -ac 2 -i default"

# simple server with python2
alias sser2='python2 -m SimpleHTTPServer'
alias sser='python -m http.server'

# back up all my configurations
#from="~/.config"
#to="/media/My_Drive/My_Config/.MyConfig"
#alias smc="cp -rv $from/i3* $to && cp -rv $from/htop $to && cp -rv $from/alacritty $to && cp -rv $from/nvim $to &&cp -rv $from/latte* $to && cp -rv $from/gtk* $to && cp -rv $from/ranger $to && cp -rv $from/rofi $to && cp -rv $from/neofetch $to && cp -rv /etc/X11/xorg.conf.d/* /media/My_Drive/My_Config/Xorg && cp -rv ~/.zshrc $to && cp -rv ~/.tmux $to/tmux && doas cp -rv /etc/runit/sv/agetty-tty1 $to/../runit && doas cp -rv /usr/bin/kbrightness $to/bin"
#alias imc="cp -rv $to/* $from && cp -rv /media/My_Drive/My_Config/Xorg/* /etc/X11/xorg.conf.d/ && cp -rv $to ~/ && cp -rv $to/tmux/* ~/ && doas cp -rv $to/../runit/* /etc/runit/sv/"

# create hotspot using create_ap
alias chots="doas create_ap --freq-band 2.4 $getDevice $getDevice"

# go to class
alias kelas="ranger /media/My_Drive/Kelas\ Terbuka/"
alias data="ranger /media/My_Drive"
alias projects="ranger /media/My_Drive/Kelas\ Terbuka/Projects"

# Quick open and mount /dev/sda*
#alias msda="cd $(udisksctl mount -b /dev/sda1 | awk '{print$4}')"

# to Arch Linux
alias arch='doas mount /dev/nvme0n1p3 /media/ArchLinux && doas arch-chroot /media/ArchLinux'

# show nvme health and TBW
alias nvme-health="doas smartctl -A /dev/nvme0n1"
#alias written="nvme-health | grep 'Written:' | awk '{print $5, $6}i'"
#alias reads="nvme-health | grep 'Read:' | awk '{print $5, $6}'"
#alias tbw="echo '$(write)' -> '$(reads)'" 

# edit picom.conf
alias piconf="doas nvim /etc/xdg/picom.conf"

# run spring boot
alias srun="mvn spring-boot:run"

# edit i3blocks config
alias i3bl="nvim ~/.config/i3blocks/config"

# show Spring Boot logo
#alias lspring="cat /media/My_Drive/Kelas\ Terbuka/Spring.logo"
#spring
alias tospring="ranger /media/My_Drive/Kelas\ Terbuka/Spring\ Boot\ Enviroment/"
# play mpv with nvidia
alias npv="prime-run mpv"

# git
alias glone="git clone"

# test speed network
alias ntest='speedtest --simple'

# CLI calculator
alias calc="/opt/calc/calc.sh"

# set default editor
export VISUAL=nvim;
export EDITOR=nvim;

# edit zram
alias mzram='doas nvim /etc/modprobe.d/zram.conf'
alias ezram='doas nvim /etc/udev/rules.d/10-zram.rules'

# lampp
alias lstart='doas lampp start'
alias lstop='doas lampp stop'
alias lstatus='doas lampp status'

# xinitrc
alias exinitrc='nvim ~/.xinitrc'

# aria2c
alias aria2nf='aria2c --file-allocation=none'
alias aria='aria2c'

# see ip
alias sip='ip a | grep global | awk '{print$2}' | cut -d "/" -f 1'

# mode GPU
alias gmode='cat ~/.config/i3/mode'
alias egmode='nvim ~/.config/i3/mode'

# edit runit scripts
alias efunctions='edit /lib/rc/functions'

# webcam with mpv
alias webcam='mpv /dev/video1 \
	--no-cache \
	--no-demuxer-thread \
	--video-sync=audio \
	--vd-lavc-threads=1 \
	--no-audio \
	--window-scale=0.5 \
	--vf=hflip \
	--profile=low-latency \
	--untimed \
	--opengl-glfinish=yes \
	--fps=60 \
	--framedrop=no \
	--speed=1.01 \
	--opengl-swapinterval=0 \
	--no-correct-pts '
alias wcam='webcam'

# color
# foreground
blue="$fg[blue]"
red="$fg[red]"
yellow="$fg[yellow]"
green="$fg[green]"

# simple foreground color
B="$blue"
R="$red"
Y="$yellow"
G="$green"

# background
bblue="$bg[blue]"
bred="$bg[red]"
byellow="$bg[yellow]"
bgreen="$bg[green]"

# simple foreground color
bB="$blue"
bR="$red"
bY="$yellow"
bG="$green"


if [ "$(tty)" = "/dev/tty1" ]; then
	tmux
fi

# edit pacman config
alias epac='edit /etc/pacman.conf'

# edit record screen file directory
alias drecord='nvim /home/artix/.config/i3/scripts/ffmpeg/directory'

# edit trizen config
alias etri='nvim ~/.config/trizen/trizen.conf'

# shortcut ranger
# go to removable drives
alias removable='ranger /run/media/artix'
# go to mtp devices
alias media='ranger /media/My_Media'

# arch-chroot
alias archroot='doas arch-chroot'

# edit account data
alias eacc='nvim /media/My_Drive/Kelas\ Terbuka/Account.Me'

# git
alias grph='git log \
	--all \
	--decorate \
	--oneline \
	--graph'
alias gadd='git add'
alias gout='git checkout'
alias gmit='git commit'
alias gmrg='git merge'
alias gbr='git branch'
alias gps='git push'

# My Custom PATH
# postgresql
export PATH=/opt/lappstack-7.4.22-0/postgresql/bin:$PATH
export PATH=/opt/lappstack-7.4.22-0:$PATH
# mysql
export PATH=/opt/lampp/bin:$PATH
export PATH=/opt/lampp:$PATH
# app image
export PATH=/home/artix/Applications:$PATH

# terminal
export TERM=xterm-256color
