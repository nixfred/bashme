 pi  mintop  ~  more .bashrc
# If not running interactively, don't do anything
[[ $- == *i* ]] || return

#VER.91  -Not to shaby, now can you keep it?

MESSAGE="Do More!"
VER="2.0"
#Variables Output
HOSTNAMEX=$(tail "/etc/hostname")
EXIP=$(wget -qO- https://ipecho.net/plain ; echo)
INIP=$(hostname -I)
LINE="%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
alias art='python3 ascii.py | lolcat'
eval "$(ssh-agent -s)"  #git ssh
ssh-add ~/.ssh/id_rsa   #git ssh 

###
export OPENAI_API_KEY=<your_key>
#export OPENAI_API_KEY=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
###

###########
###NEW
############
alias trump='ssh trump'
alias eip='curl ifconfig.me'
alias kali='docker run -v /var/run/dbus:/var/run/dbus -v /var/run/polkit-1:/var/run/polkit-1 --rm -it -p 6901:6901 -e VN
C_PW=password kalilinux/kali-rolling'
alias large='sudo mount -t cifs //100.104.48.129/LARGE /mnt/large -o username=pi,password=<pw>!'
alias db='distrobox'
alias lin='ssh -L 5901:127.0.0.1:5901 pi@lin'
alias iip='curl http://ipecho.net/plain'
alias oip='proxychains curl http://ipecho.net/plain'
alias www='sudo python3 -m http.server'
alias pcc='sudo nano /etc/proxychains.conf'
alias pc='proxychains'
alias gdrive='sudo systemctl start rclone-gdrive.service'
alias cdb="cd /home/pi/bin"
alias ct="crontab -e"
alias sb="/home/pi/.sync_bashrc.sh"
alias ssss="sshfs "
alias mfiles="sudo sshfs pi@files:/home/pi/files /home/pi/files"
alias files="ssh -X files"
alias xxx="xclip -selection c < "
alias cmount="python3 /home/pi/bin/cloud_mount/cmount.py"
alias tss='/home/pi/bin/rsync_timeshift_to_Pub_Backups_timeshift-backup/rsync_timeshift_to_Pub_Backups_timeshift-backup.
sh'
alias linux='ssh -X linux'
alias pub='cd /home/pi/Pub'
alias Pub='sudo mount -t cifs //q/Pub /home/pi/Pub -o username=pi'
alias python='python3'
alias bh='more /home/pi/.bash_history | grep '
alias makegit'=/home/pi/bin/makegit/makegit.sh '
alias gp='git push origin main'
alias pushgit='/home/pi/bin/pushgit/pushgit.sh '
alias cd..='cd ..'
alias gitup='/home/pi/bin/gitup.sh'
alias appai='python3 /home/pi/bin/appai/appai.py'
alias ccc='/home/pi/bin/clippy/clippy.sh'
alias magicvm='sudo python3 /home/pi/bin/magicvm/magicvm.py'
alias chm='chmod +x '
alias fixdns='sudo cp /etc/resolv.confgood /etc/resolv.conf'
alias battery='upower -i /org/freedesktop/UPower/devices/battery_BAT1'
alias fh='more /home/pi/.bash_history | grep '
alias bm='nano /home/pi/.bashrc && source /home/pi/.bashrc'
alias bbm='nano /home/pi/.bashrc && source /home/pi/.bashrc && /home/pi/.sync_bashrc.sh'
alias c='clear'
alias aa='sudo nala update && sudo apt autoremove -y && flatpak update -y && cinnamon-spice-updater --update-all'
alias z='clear && ssh -X z'
alias pp='python3'

####PING####
alias 1='ping 1.1.1.1'
alias 2='ping 10.0.0.2'
alias 3='ping 10.0.0.3'
alias 4='ping 10.0.0.4'
alias 5='ping 10.0.0.5'
alias r='ping 10.0.0.1'
alias 8='ping 8.8.8.8'
alias q='ping 10.0.0.5'

#####Misc####
alias duu='du -hc | tail -n 1'
alias nc='sudo iptraf-ng -i all'
alias er='sudo nano /etc/resolv.conf'
alias ac='sudo apt autoclean'
alias ps='ps -la'
alias trim='sudo fstrim -av'
alias keyedit='nano /home/pi/.ssh/known_hosts'
alias eh='sudo nano /etc/hosts'
alias ef='sudo nano /etc/fstab'
alias out='wget -qO- https://ipecho.net/plain ; echo'
alias cst='ssh n speedtest'
alias t='tail /mnt/Public/messages'
alias du='du -h'
alias atp='apt'
alias keymake='ssh-keygen -t rsa'
alias kc='ssh-copy-id -i /home/pi/.ssh/id_rsa'
alias tm='sudo tail -n 20 /var/log/syslog'
alias g='git'
alias starwars='telnet towel.blinkenlights.nl'
alias get='git'
alias pls='sudo'
alias ddu='du -sh * | sort -hr | head -20'
alias ..='cd ..'
alias info='inxi -BAFGmt -W 30655'
alias si='sudo nala install -y '
alias ne='cmatrix'
alias ifc='ifconfig'
alias ipc='ifconfig'
alias ipconfig='ifconfig'
alias mnd='/home/pi/mountQdrives'
alias wea='ansiweather -l monroe,ga,us -u imperial -s true -d true && echo && date +%H:%M:%S' 
alias reboot='sudo reboot'
alias p='python3'
alias s='ssh -X'
alias hosts='sudo nano /etc/hosts'
alias grep='grep --color=auto'
alias e='exit'
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
HISTSIZE=10000
HISTFILESIZE=100000

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
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''
s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

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

alias sshh='sshpass -e ssh pi@10.0.0.$1'

##-----------------------------------------------------
## synth-shell-greeter.sh
if [ -f /home/pi/.config/synth-shell/synth-shell-greeter.sh ] && [ -n "$( echo $- | grep i )" ]; then
	source /home/pi/.config/synth-shell/synth-shell-greeter.sh
fi

##-----------------------------------------------------
## synth-shell-prompt.sh
if [ -f /home/pi/.config/synth-shell/synth-shell-prompt.sh ] && [ -n "$( echo $- | grep i )" ]; then
	source /home/pi/.config/synth-shell/synth-shell-prompt.sh
fi

##-----------------------------------------------------
## better-ls
if [ -f /home/pi/.config/synth-shell/better-ls.sh ] && [ -n "$( echo $- | grep i )" ]; then
	source /home/pi/.config/synth-shell/better-ls.sh
fi

##-----------------------------------------------------
## alias
if [ -f /home/pi/.config/synth-shell/alias.sh ] && [ -n "$( echo $- | grep i )" ]; then
	source /home/pi/.config/synth-shell/alias.sh
fi

##-----------------------------------------------------
## better-history
if [ -f /home/pi/.config/synth-shell/better-history.sh ] && [ -n "$( echo $- | grep i )" ]; then
	source /home/pi/.config/synth-shell/better-history.sh
fi
export BASHGPT_PREFIX='/usr/local'
export BASHGPT_BASHRC='/home/pi/.bashrc'
export BASHGPT_SHORTCUT_KEY=''
export BASHGPT_OPENAI_KEY='<key>'
export BASHGPT_MODEL='text-davinci-003'
export BASHGPT_TEMPERATURE='0'
export BASHGPT_MAX_TOKENS='100'
export BASHGPT_TEMPLATE='here is the bash command in a code block: {{TEXT}}'
. /usr/local/bash-gpt/bin/init

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export VK_ICD_FILENAMES=/usr/share/vulkan/icd.d/intel_icd.x86_64.json
export VK_LAYER_PATH=/usr/share/vulkan/explicit_layer.d


