# If not running interactively, don't do anything
[[ $- != *i* ]] && return

###############################################################################
# VERSION & BASIC DISPLAY
###############################################################################
VERSION="2.0"
MESSAGE="Do More!"
LINE="%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"

# Basic environment variables (edit, if needed)
HOSTNAMEX="$(cat /etc/hostname)"
EXIP="$(curl -s https://ipecho.net/plain)"
INIP="$(hostname -I)"

###############################################################################
# MOTD / GREETER
###############################################################################
echo
echo "$VERSION" | lolcat
echo "$LINE" | lolcat
figlet "$MESSAGE" | lolcat
figlet "$HOSTNAMEX" | lolcat
echo "$LINE" | lolcat
echo "External IP: $EXIP" | lolcat
echo "Internal IP: $INIP" | lolcat
uptime | lolcat
echo

###############################################################################
# ENVIRONMENT VARIABLES
###############################################################################
# For security, keep your real API keys out of this file; use placeholders or 
# store in separate, non-committed files that you source here.
export OPENAI_API_KEY="<openai_key>"
export BASHGPT_OPENAI_KEY="<bashgpt_key>"
# export BASHGPT_* variables if you use them (commented out if not needed):
# export BASHGPT_MODEL="text-davinci-003"
# export BASHGPT_TEMPERATURE="0"
# export BASHGPT_MAX_TOKENS="100"
# export BASHGPT_TEMPLATE="here is the bash command in a code block: {{TEXT}}"

###############################################################################
# PATHS
###############################################################################
export PATH="$HOME/bin:$PATH"
export PATH="/usr/games:$PATH"
export NVM_DIR="$HOME/.nvm"

# Load NVM if present
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  

# Vulkan
export VK_ICD_FILENAMES=/usr/share/vulkan/icd.d/intel_icd.x86_64.json
export VK_LAYER_PATH=/usr/share/vulkan/explicit_layer.d

###############################################################################
# PROMPT CUSTOMIZATION (COLOR)
###############################################################################
if [[ "$TERM" =~ .*color.* ]] && command -v tput &>/dev/null; then
  if tput setaf 1 &>/dev/null; then
    PS1="\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ "
  else
    PS1="\u@\h:\w\$ "
  fi
else
  PS1="\u@\h:\w\$ "
fi

###############################################################################
# ALIASES & FUNCTIONS
###############################################################################
# Common Tools
alias c='clear'
alias ll='ls -alFh --color=auto'
alias la='ls -Ah --color=auto'
alias l='ls -CFh --color=auto'
alias nn='nano'
alias pls='sudo'
alias df='df -h'
alias du='du -h'
alias duu='du -hc | tail -n 1'
alias ddu='du -sh * | sort -hr | head -20'
alias htop='sudo htop'
alias grep='grep --color=auto'
alias ps='ps -la'
alias trim='sudo fstrim -av'

# Quick System Update (on Debian-based systems)
alias sysup='sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y'

# Networking & IP
alias eip='curl ifconfig.me'
alias iip='curl -s http://ipecho.net/plain'
alias oip='proxychains curl http://ipecho.net/plain'

# Quick ping check (Pass an IP or domain to ping)
function pingx() {
  ping -c 4 "$1"
}

# SSH & Mount
alias ssh='ssh -X'
alias sshh='sshpass -e ssh pi@10.0.0.$1'  # Example usage: sshh 5
alias large='sudo mount -t cifs //100.104.48.129/LARGE /mnt/large -o username=pi,password=<pw>!'  # Redact actual pw

# Git Aliases
alias gp='git push origin main'
alias gc='git commit -m'
alias ga='git add'
alias gs='git status'
alias gl='git log --oneline --graph --decorate'

# Python & Docker
alias p='python3'
alias pp='python3'
alias kali='docker run -v /var/run/dbus:/var/run/dbus -v /var/run/polkit-1:/var/run/polkit-1 --rm -it -p 6901:6901 -e VNC_PW=password kalilinux/kali-rolling'

# Others
alias art='python3 ascii.py | lolcat'
alias battery='upower -i /org/freedesktop/UPower/devices/battery_BAT1'
alias fixdns='sudo cp /etc/resolv.confgood /etc/resolv.conf'

# Sysbench
alias testcpu='sysbench --test=cpu run'
alias testmem='sysbench --test=memory run'
alias testio='sysbench --test=fileio --file-test-mode=seqwr run'

###############################################################################
# OPTIONAL: LOAD ANY EXTRA FILES
###############################################################################
# Check if additional config files exist and source them
for EXTRA_CONF in ~/.bash_aliases ~/.bash_functions ~/.config/synth-shell/synth-shell-greeter.sh; do
  [[ -f "$EXTRA_CONF" ]] && source "$EXTRA_CONF"
done

###############################################################################
# HISTORY SETTINGS
###############################################################################
HISTSIZE=10000
HISTFILESIZE=100000
HISTCONTROL=ignoreboth
shopt -s histappend
shopt -s checkwinsize

###############################################################################
# COMPLETION
###############################################################################
if ! shopt -oq posix; then
  if [[ -f /usr/share/bash-completion/bash_completion ]]; then
    . /usr/share/bash-completion/bash_completion
  elif [[ -f /etc/bash_completion ]]; then
    . /etc/bash_completion
  fi
fi
