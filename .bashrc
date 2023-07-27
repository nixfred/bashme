# If not running interactively, don't do anything
[[ $- == *i* ]] || return

MESSAGE="St. Pete!"
VER="1.0"
#Variables Output
HOSTNAMEX=$(tail "/etc/hostname")
EXIP=$(wget -qO- https://ipecho.net/plain ; echo)
INIP=$(hostname -I)
LINE="%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
alias art='python3 ascii.py | lolcat'

###########
###NEW
############

alias ccc='/home/pi/bin/clippy/clippy.sh'
alias magicvm='sudo python3 /home/pi/bin/magicvm/magicvm.py'
alias chm='chmod +x '
alias fixdns='sudo cp /etc/resolv.confgood /etc/resolv.conf'
alias battery='upower -i /org/freedesktop/UPower/devices/battery_BAT1'

export OPENAI_API_KEY=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

####SSH####
alias fh='more /home/pi/.bash_history | grep '
alias bm='nano /home/pi/.bashrc && source /home/pi/.bashrc'
alias c='clear'
alias aa='sudo apt update && sudo apt upgrade -y'
alias gg='ssh g'
alias z='clear && ssh -X z'
alias gt='ssh -X gtl'
alias sn='sudo nano'
alias m='ssh -X moe'
alias mm='ssh moemac'
alias pp='ssh fnix@pure'
alias moemac='ssh -X moemac'
alias lin='ssh -X lin'
alias bee='ssh -X b'
alias b='ssh -X bee'
alias n='ssh -X n'
alias v='ssh -X 10.0.0.13'
alias v2='ssh -X 10.0.0.14'

####PING####
alias 1='ping 1.1.1.1'
alias 2='ping 10.0.0.2'
alias 3='ping 10.0.0.3'
alias 4='ping 10.0.0.4'
alias 5='ping 10.0.0.5'
alias r='ping 10.0.0.1'
alias 8='ping 8.8.8.8'
#alias q='ping 10.0.0.5'

#####Misc####
alias rssh='nano /home/pi/.ssh/known_hosts'
alias sr='sudo apt remove -y'
alias duu='du -hc | tail -n 1'
alias sx='sudo systemctl start gdm3'
alias um='upmach'
alias nc='sudo iptraf-ng -i all'
alias er='sudo nano /etc/resolv.conf'
alias ac='sudo apt autoclean'
alias rf='sudo apt remove firefox thunderbird -y'
alias ps='ps -la'
alias redcopy='scp b:/home/pi/.bashrc /home/pi/.bashrc'
alias web='httrack'
alias trim='sudo fstrim -av'
alias bb='cd /home/pi/bottom'
alias keyedit='nano /home/pi/.ssh/known_hosts'
alias eh='sudo nano /etc/hosts'
alias ef='sudo nano /etc/fstab'
alias out='wget -qO- https://ipecho.net/plain ; echo'
alias pst='ssh n speedtest'
alias t='tail /mnt/Public/messages'
alias dsp='sudo hdparm -tT /dev/sda'
alias ua='sudo apt update'
alias atp='apt'
alias rb='c && . ~/.bashrc'
alias ibm='ping ibm.com'
alias du='du -h'
alias xt='xterm -fa 'Monospace' -fs 12'
alias atp='apt'
alias ds='dropbox status'
alias lt='ssh lin speedtest'
alias cb='/home/pi/bin/copybash'
alias rst='sudo /var/www/html/admin/scripts/pi-hole/speedtest/speedtest-official.sh'
alias ecb='sudo nano /home/pi/bin/copybash'
alias keymake='ssh-keygen -t rsa'
alias kc='ssh-copy-id -i /home/pi/.ssh/id_rsa'
alias cf='cd /mnt/Public/'
alias tm='sudo tail -n 20 /var/log/syslog'
alias g='git'
alias starwars='telnet towel.blinkenlights.nl'
alias get='git'
alias pls='sudo'
alias ddu='du -sh * | sort -hr | head -20'
alias ..='cd ..'
alias info='inxi -BAFGmt -W 30655'
alias ai='sudo apt install -y '
alias si='sudo apt install -y '
alias ne='cmatrix'
alias ifc='ifconfig'
alias ipc='ifconfig'
alias ipconfig='ifconfig'
alias mnd='/home/pi/mountQdrives'
alias wea='ansiweather -l monroe,ga,us -u imperial -s true -d true && echo && date +%H:%M:%S' 
alias reboot='sudo reboot'
alias p='ping'
alias s='ssh -X'
alias hosts='sudo nano /etc/hosts'
#alias bm='nano /home/pi/Public/linux/.bashrc'
alias grep='grep --color=auto'
alias e='exit'
alias aptud='sudo apt-get update && sudo apt-get upgrade -y'
alias aaa='sudo apt-get update && sudo apt-get upgrade -y'
alias neo='neofetch'
alias dir='ncdu /'
alias jail='tail /var/log/fail2ban.log'
alias htop='sudo htop'
alias df='df -h'
alias live='vnstat --live'
alias ll='ls -alFh'
alias la='ls -Ah'
alias l='ls -CFh'
alias nn='nano'
alias hotp='htop'

#Sysbench
alias testcpu='sysbench --test=cpu run'
alias testmem='sysbench --test=memory run'
alias testio='sysbench --test=fileio --file-test-mode=seqwr run'
alias gb='/home/pi/bin/geekbench/geekbench5'
alias gaa='gaptud'

###############################################
#################  DISPLAY ####################
###############################################
echo
echo $VER | lolcat
echo $LINE | lolcat
figlet $MESSAGE | lolcat
figlet $HOSTNAMEX | lolcat
echo $LINE | lolcat
echo "External IP: "$EXIP | lolcat
echo "Internal IP: "$INIP | lolcat
uptime | lolcat
echo
#ansiweather -l monroe,ga,us -u imperial -s true -d true
### ART $ python3 ascii.py
###############################################
##############  STANDARD STUFF  ###############
###############################################

## get top process eating memory
alias mem='ps auxf | sort -nr -k 4'
alias mem10='ps auxf | sort -nr -k 4 | head -10'
## get top process eating cpu ##
alias chow='ps auxf | sort -nr -k 3'
alias chow10='ps auxf | sort -nr -k 3 | head -10'
#alias mc='mc /home/pi /mnt'

# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# some more ls aliases

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

export PATH="/home/pi/bin:$PATH"
export PATH="/usr/games/:$PATH"

