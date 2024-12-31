################################################################################
#                            .bashrc MASTER CONFIG
#           A consolidated bash configuration with common enhancements
################################################################################

# --------------------------------------------------------------------
# 1. NON-INTERACTIVE CHECK
# --------------------------------------------------------------------
# Exit if not running interactively
[[ $- != *i* ]] && return

# --------------------------------------------------------------------
# 2. ENVIRONMENT VARIABLES
# --------------------------------------------------------------------
# NOTE: Replace <PLACEHOLDER> with actual values, or source from .env files
export OPENAI_API_KEY="<openai_key>"
export BASHGPT_OPENAI_KEY="<bashgpt_key>"
export BASHGPT_MODEL="text-davinci-003"
export BASHGPT_TEMPERATURE="0"
export BASHGPT_MAX_TOKENS="100"
export BASHGPT_TEMPLATE="here is the bash command in a code block: {{TEXT}}"

export PATH="$HOME/bin:$PATH"
export PATH="/usr/games:$PATH"
export NVM_DIR="$HOME/.nvm"
# Vulkan variables (if applicable)
export VK_ICD_FILENAMES="/usr/share/vulkan/icd.d/intel_icd.x86_64.json"
export VK_LAYER_PATH="/usr/share/vulkan/explicit_layer.d"

# --------------------------------------------------------------------
# 3. NVM & OTHER THIRD-PARTY TOOLS
# --------------------------------------------------------------------
# Node Version Manager
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# direnv (directory-based environment loader)
command -v direnv &>/dev/null && eval "$(direnv hook bash)"

# fzf (fuzzy finder)
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# --------------------------------------------------------------------
# 4. SSH & GPG AGENT
# --------------------------------------------------------------------
# Only start an ssh-agent if not already running
if [ -z "$SSH_AUTH_SOCK" ]; then
  eval "$(ssh-agent -s)"
  # Uncomment if you want to auto-add a specific key
  # ssh-add ~/.ssh/id_rsa
fi

# Example for GPG Agent (uncomment if you use GPG extensively)
# if ! pgrep -u "$USER" gpg-agent &>/dev/null; then
#   gpgconf --launch gpg-agent
# fi

# --------------------------------------------------------------------
# 5. HISTORY SETTINGS
# --------------------------------------------------------------------
HISTSIZE=10000
HISTFILESIZE=100000
HISTCONTROL=ignoreboth
shopt -s histappend
shopt -s checkwinsize

# --------------------------------------------------------------------
# 6. PROMPT & GIT BRANCH DISPLAY
# --------------------------------------------------------------------
# A function to parse the current Git branch
function parse_git_branch() {
  # Grab branch name if in a repo; otherwise, nothing
  local branch
  branch="$(git rev-parse --abbrev-ref HEAD 2>/dev/null)"
  if [ -n "$branch" ]; then
    echo " ($branch)"
  fi
}

# Color prompt that shows user@host:path and the current Git branch
if [[ "$TERM" =~ .*color.* ]] && command -v tput &>/dev/null; then
  if tput setaf 1 &>/dev/null; then
    PS1="\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00;33m\]\$(parse_git_branch)\[\033[00m\]\$ "
  else
    PS1="\u@\h:\w\$(parse_git_branch)\$ "
  fi
else
  PS1="\u@\h:\w\$(parse_git_branch)\$ "
fi

# --------------------------------------------------------------------
# 7. MOTD / GREETER
# --------------------------------------------------------------------
VERSION="2.0"
MESSAGE="Do More!"
LINE="%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
HOSTNAMEX="$(cat /etc/hostname)"
EXIP="$(curl -s https://ipecho.net/plain)"
INIP="$(hostname -I)"

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

# --------------------------------------------------------------------
# 8. ALIASES
# --------------------------------------------------------------------
## System
alias c='clear'
alias df='df -h'
alias du='du -h'
alias duu='du -hc | tail -n 1'
alias ddu='du -sh * | sort -hr | head -20'
alias trim='sudo fstrim -av'
alias pls='sudo'

## Directory Navigation
alias ll='ls -alFh --color=auto'
alias la='ls -Ah --color=auto'
alias l='ls -CFh --color=auto'
alias ..='cd ..'
alias nn='nano'

## Networking
alias eip='curl ifconfig.me'
alias iip='curl -s http://ipecho.net/plain'
alias oip='proxychains curl http://ipecho.net/plain'
function pingx() { ping -c 4 "$1"; }

## SSH / Mount
alias ssh='ssh -X'
alias sshh='sshpass -e ssh pi@10.0.0.$1'
alias large='sudo mount -t cifs //100.104.48.129/LARGE /mnt/large -o username=pi,password=<pw>!'  # redacted

## System Updates (Debian/Ubuntu)
alias sysup='sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y'

## Git
alias ga='git add'
alias gc='git commit -m'
alias gp='git push origin main'
alias gs='git status'
alias gl='git log --oneline --graph --decorate'

## Python & Docker
alias p='python3'
alias pp='python3'
alias kali='docker run -v /var/run/dbus:/var/run/dbus -v /var/run/polkit-1:/var/run/polkit-1 --rm -it -p 6901:6901 -e VNC_PW=password kalilinux/kali-rolling'

## Fun
alias art='python3 ascii.py | lolcat'
alias starwars='telnet towel.blinkenlights.nl'

# --------------------------------------------------------------------
# 9. HELPFUL FUNCTIONS
# --------------------------------------------------------------------
# System Benchmarking (Sysbench)
alias testcpu='sysbench --test=cpu run'
alias testmem='sysbench --test=memory run'
alias testio='sysbench --test=fileio --file-test-mode=seqwr run'

# Battery Info (Laptop)
alias battery='upower -i /org/freedesktop/UPower/devices/battery_BAT1'

# DNS Fix (Example)
alias fixdns='sudo cp /etc/resolv.confgood /etc/resolv.conf'

# Example: quickly create & load a local webserver 
alias www='sudo python3 -m http.server'

# Quick function to SSH & run speedtest (example usage)
function cst() {
  ssh "$1" speedtest
}

# --------------------------------------------------------------------
# 10. AUTO-SOURCING EXTRA SCRIPTS (OPTIONAL)
# --------------------------------------------------------------------
for EXTRA_CONF in ~/.bash_aliases ~/.bash_functions \
                  ~/.config/synth-shell/synth-shell-greeter.sh \
                  ~/.config/synth-shell/synth-shell-prompt.sh \
                  ~/.config/synth-shell/better-ls.sh \
                  ~/.config/synth-shell/alias.sh \
                  ~/.config/synth-shell/better-history.sh; do
  [ -f "$EXTRA_CONF" ] && source "$EXTRA_CONF"
done

# --------------------------------------------------------------------
# 11. COMMAND COMPLETION
# --------------------------------------------------------------------
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

################################################################################
#                   END OF .bashrc MASTER CONFIG
################################################################################
