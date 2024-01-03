set fish_greeting
set -x EDITOR helix
set -x COLORTERM truecolor
set -x DEFAULT_USER $USER
set -x MICRO_TRUECOLOR 1
set -x TERMINAL wezterm
fish_vi_key_bindings
set fish_cursor_default     block      blink
set fish_cursor_insert      line       blink
set fish_cursor_replace_one underscore blink
set fish_cursor_visual      block
#starship
starship init fish | source
# Set the cursor shapes for the different vi modes.

fish_add_path ~/.cargo/bin
# retrieve command cheat sheets from cheat.sh
# fish version by @tobiasreischmann

function cheat.sh
    curl cheat.sh/$argv
end

# register completions (on-the-fly, non-cached, because the actual command won't be cached anyway
complete -c cheat.sh -xa '(curl -s cheat.sh/:list)'
## Useful aliases
# Replace ls with exa
alias ls='exa -al --color=always --group-directories-first --icons' # preferred listing
alias la='exa -a --color=always --group-directories-first --icons' # all files and dirs
alias ll='exa -l --color=always --group-directories-first --icons' # long format
alias lt='exa -aT --color=always --group-directories-first --icons' # tree listing
alias l.="exa -a | egrep '^\.'" # show only dotfiles
alias ip="ip -color"
# Replace some more things with better alternatives
alias cat='bat --style header --style rule --style snip --style changes --style header'
# typos
alias celar=clear
alias clea=clear
alias clera=clear
alias cls=clear
alias lcear=clear
alias sl=ls
# dev
alias diff="diff --color"
alias j=just
alias kg="ssh-keygen -t rsa -b 4096 -C" # command + email
alias logrep="/bin/cat /var/log/**/*.log |rg "
alias sshp='ssh -o PubkeyAuthentication=no '
# arch
alias pi="sudo pacman -S --noconfirm --color auto"
alias pss="sudo pacman -Ss --color auto"
alias yi="yay -S --noconfirm --color auto"
alias yss="yay -Ss --color auto"
alias ycc="yay -Scc -v --color auto"
alias pu="sudo pacman -U --noconfirm --needed -v --color auto"
alias yu="yay -U --noconfirm --needed -v --color auto"
alias yug="yay -Syyua --devel --noconfirm --needed --color auto"
#rust equivalents and aliases
alias car=cargo
#alias cd=zoxide
#alias cm="cargo make"
#alias cp=fcp
#alias cp=xcp
#alias cut=tuc
#alias du=dua
#alias mv=pmv
#alias nvm=fnm
#alias ps=procs
#alias reflector=asu
#alias rm=rip
#alias sed=sd
#alias sloc=tokei
#alias sysctl=systeroid
#alias tail=staart
#alias time=rtime
#alias time=tally
#alias top=btm
#alias topgrade=topgrade-rs
#alias touch=riptouch
alias tree=tree-rs
#alias wc=cw
alias xcd='cd "$(xplr --print-pwd-as-result)"'
alias md=mkdir
# misc
# git
alias github=gh
alias gbsutomm="git branch --set-upstream-to=origin/master master"
alias gcl="git clone --recursive --depth=1"
alias glog="git log --oneline --abbrev-commit --all --graph --decorate --color"
alias gpsuom="git push --set-upstream origin master"
alias grao="git remote add origin"
alias gst="git status -s"

# garuda linux
alias grubup="sudo update-grub"
alias unlockpm="sudo rm /var/lib/pacman/db.lck"
alias tarnow='tar -acf '
alias untar='tar -xvf '
alias wget='wget -c '
alias rmpkg="sudo pacman -Rdd"
alias psmem='ps auxf | sort -nr -k 4'
alias psmem10='ps auxf | sort -nr -k 4 | head -10'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias hw='hwinfo --short' # Hardware Info
alias big="expac -H M '%m\t%n' | sort -h | nl" # Sort installed packages according to size in MB
alias gitpkg='pacman -Q | grep -i "\-git" | wc -l' # List amount of -git packages
# Cleanup orphaned packages
alias cleanup='sudo pacman -Rns (pacman -Qtdq)'
# Get the error messages from journalctl
alias jctl="journalctl -p 3 -xb"
# Recent installed packages
alias rpkgs="expac --timefmt='%Y-%m-%d %T' '%l\t%n %v' | sort | tail -200 | nl"
