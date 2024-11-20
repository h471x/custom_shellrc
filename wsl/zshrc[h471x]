### Powerlevel10k Theme

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Make zsh instant prompt quiet
typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet

#######################################################################

### ZSH Basic Config

set autocd         # change directory just by typing his name
setopt promptsubst # enable command substitution in prompt

# configure keybindings
bindkey -e # emacs keybindings
bindkey ' ' magic-space # do history expansion on space

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

#######################################################################

### oh-my-zsh Config

# Path to oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Default editor used by crontab
DEFAULT_EDITOR=$(which nvim || which vim || which nano)

export EDITOR="$DEFAULT_EDITOR"
export VISUAL="$DEFAULT_EDITOR"

# Oh-My-Zsh custom theme
ZSH_THEME="powerlevel10k/powerlevel10k"
# ZSH_THEME="archcraft"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
plugins=(
  zsh-syntax-highlighting
  zsh-autosuggestions
  web-search
  vscode
  sudo
)

# Here to disable oh-my-zsh auto update
DISABLE_AUTO_UPDATE="true"

# This is for fastfile Oh-My-Zsh Plugin
fastfile_var_prefix='$'

# Declare the variable for zsh-syntax-highlighting styles
typeset -A ZSH_HIGHLIGHT_STYLES

# From ~/.oh-my-zsh/plugins/zsh-syntax-highlighting/highlighters/main/README.md
ZSH_HIGHLIGHT_STYLES[path]='none'
ZSH_HIGHLIGHT_STYLES[autodirectory]=fg='#ffffff'
ZSH_HIGHLIGHT_STYLES[suffix-alias]=fg='none'
ZSH_HIGHLIGHT_STYLES[precommand]=fg='none'
ZSH_HIGHLIGHT_STYLES[arg0]=fg='none'
ZSH_HIGHLIGHT_STYLES[single-quoted-argument]=fg='#23ff45'
ZSH_HIGHLIGHT_STYLES[double-quoted-argument]=fg='#23ff45'
ZSH_HIGHLIGHT_STYLES[single-hyphen-option]='fg=#37b0ff,bold'
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]='fg=#37b0ff,bold'
ZSH_HIGHLIGHT_STYLES[redirection]='fg=#ffe541,bold'
ZSH_HIGHLIGHT_STYLES[globbing]='fg=#ff9000,bold'
ZSH_HIGHLIGHT_STYLES[command-substitution-unquoted]='fg=#d30ccf,bold'
ZSH_HIGHLIGHT_STYLES[command-substitution-delimiter]='fg=#d30ccf,bold'

# here the color of the auto-suggestion
# ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE=fg=#0000ff"

# source oh-my-zsh after everything have been loaded
source $ZSH/oh-my-zsh.sh

#######################################################################

### ANSI CODES VARIABLES

# Text Color
BLACK="\e[30m"
RED="\e[31m"
GREEN="\e[32m"
YELLOW="\e[33m"
BLUE="\e[34m"
MAGENTA="\e[35m"
CYAN="\e[36m"
LIGHT_GRAY="\e[37m"
DARK_GRAY="\e[90m"
LIGHT_RED="\e[91m"
LIGHT_GREEN="\e[92m"
LIGHT_YELLOW="\e[93m"
LIGHT_BLUE="\e[94m"
LIGHT_MAGENTA="\e[95m"
LIGHT_CYAN="\e[96m"
# WHITE="\e[97m"
WHITE="\e[38;2;201;209;217m"

# Background Color
BG_BLACK="\e[40m"
BG_RED="\e[41m"
BG_GREEN="\e[42m"
BG_YELLOW="\e[43m"
BG_BLUE="\e[44m"
BG_MAGENTA="\e[45m"
BG_CYAN="\e[46m"
BG_LIGHT_GRAY="\e[47m"
BG_DARK_GRAY="\e[100m"
BG_LIGHT_RED="\e[101m"
BG_LIGHT_GREEN="\e[102m"
BG_LIGHT_YELLOW="\e[103m"
BG_LIGHT_BLUE="\e[104m"
BG_LIGHT_MAGENTA="\e[105m"
BG_LIGHT_CYAN="\e[106m"
BG_WHITE="\e[107m"

# Text Style
BOLD="\e[1m"
DIM="\e[2m"
UNDERLINE="\e[4m"
BLINK="\e[5m"
INVERT="\e[7m"
HIDDEN="\e[8m"

# Reset
RESET="\e[0m"
RESETBG="\e[49m\n"

# Character
CHECKMARK="$(printf '\xE2\x9C\x94')"
QUESTION_MARK="$(printf '\xE2\x9D\x93')"

#######################################################################

### Basic Aliases

# this alias to update the package
alias upd="allow_sudo && upd"

# this function for up alias
function upd(){
  echo "u p d a t i n g .  .  ." | figlet -t -c;
  br && sudo apt update && br;
}

# this alia to update the package
alias upg="allow_sudo && upg"

# this function for up alias
function upg(){
  echo "u p g r a d i n g . . ." | figlet -t -c;
  br && sudo apt upgrade && br;
}

# this alias to install package
alias ist="allow_sudo && ist"

# this function for ist alias
function ist(){
  case "${1##*.}" in
    git)
      echo "   C l o n i n g .  .  . " | figlet;
      br && echo "Package =======> "${1%.*}" ";
      br && git clone "$1" && br;
      ;;
    *)
      echo "   I n s t a l l i n g .  .  . " | figlet;
      c && br && echo "Package =======> "$1" ";
      br && sudo apt install "$1" && br;
      ;;
  esac
}

# this alias to install package
alias rmv="rmv"

# this function for ist alias
function rmv(){
  case "${1##*.}" in
    deb)
      c && echo -e && echo -e && sudo clear && echo -e && echo -e && echo "   r e m o v i n g .  .  . " | figlet | lolcat && echo -e && echo "Package =======> "${1%.*}" " && echo -e && sudo dpkg -r "$1" && echo -e;
      ;;
    *)
      c && echo -e && echo -e && sudo clear && echo -e && echo -e && echo "   r e m o v  i n g .  .  . " | figlet | lolcat && echo -e && echo "Package =======> "$1" " && echo -e && sudo apt remove "$1" && echo -e;
      ;;
  esac
}

# this alias to rename a file / directory; and display it after
alias nm="nm"

# this function for cpf alias
function nm(){
  mv "$1" "$2" && cv;
}

# this line to count line inside a file
alias cl="linecount"

# this function for the cl alias
function linecount() {
  if [ -z "$1" ]; then
    echo "Please provide a filename"
  elif [ -z "$2" ]; then
    wc -l "$1" | awk '{print $1, "lines"}'
  else
    grep -c "$1" "$2" | awk -v var="$1" '{print $1, var, "in it"}'
  fi
};

# this line to view a command manual
alias mn="mn"

# this function for mn alias
function mn(){
  if [[ $# -eq 1 ]]; then
    man $1 | less
  else
    man $1 | grep $2 | less
  fi
}

# this alias to view tthe manual entry for a command
alias mns="mns"

# this function for mn alias
function mns(){
  if [[ $(command -v "$1") ]]; then
    local manual_path=~/NTSOA/manual
    # here to check if the command exists
    man "$1" | cat > $manual_path/"$1"_manual.txt;
    all $manual_path/"$1"_manual.txt;
    vf $manual_path/"$1"_manual.txt;
    cv;
  else
    cv
  fi
}

# this alias to enter the manual directory
alias mnv="mnv"

# this function for mnv alias
function mnv(){
  if [[ $# -eq 0 ]]; then
    op /home/h471x/NTSOA/manual;
  elif [[ $# -eq 1 ]]; then
    op /home/h471x/NTSOA/manual "$1";
  fi
}

# this alias to view the pc state
alias pc="c && br 2 && neofetch --source ~/.config/neofetch/htx2.txt"

# this alias to view the history
alias hst="hst"

# this function for hst alias
function hst(){
  if [[ $# -eq 0 ]]; then
    history | less && cv
  else
    re='^[0-9]+$'
    # check if the argument is an integrer
    if [[ $1 =~ $re ]]; then
      history | tail -$1 | less && cv
    else  # else if it's a text to grep
      history | grep "$1" | less && cv
    fi
  fi
}

# this alias to specify which command in the history to search
alias hsg="hsg"

# this function for hsg alias
function hsg(){
  if [[ $# -eq 0 ]]; then
    history | less && cv;
  else
    history | grep "$1" | less && cv;
  fi
}

# this alias to count line and words inside a file
alias flc="flc"

# this function for the cl alias
function flc(){
  if [[ -f "$1" ]]; then
    if [ -z "$1" ]; then
      echo "Please provide a filename"
    elif [ -z "$2" ]; then
      c && br;
      echo -ne " ==> "
      file "$1";
      echo -ne " ==> ";
      wc -l "$1" | awk '{print $1, "lines"}';
      echo -ne " ==> ";
      wc -w "$1" | awk '{print $1, "words"}';

      # Display the file size using Bash arithmetic
      file_size=$(stat -c%s "$1")
      if (( file_size < 1024 )); then
        echo " ==> Size : $file_size bytes"
      elif (( file_size < 1048576 )); then
        size_kb=$(awk "BEGIN {printf \"%.2f\", $file_size/1024}")
        echo " ==> Size : $size_kb KB"
      elif (( file_size < 1073741824 )); then
        size_mb=$(awk "BEGIN {printf \"%.2f\", $file_size/1048576}")
        echo " ==> Size : $size_mb MB"
      else
        size_gb=$(awk "BEGIN {printf \"%.2f\", $file_size/1073741824}")
        echo " ==> Size : $size_gb GB"
      fi

      br;
    else
      grep -c "$1" "$2" | awk -v var="$1" '{print $1, var, "in it"}'
    fi
  elif [[ -d "$1" ]]; then
    dc "$1";
  fi
}

# this alias to list
alias list="list"

# this function for list alias
function list(){
  local list_app="eza --icons=always --no-quotes"
  eval $list_app
}

# this alias to save a file content to another file
alias sv="sv"

# this function for sv alias
function sv(){
  cat "$1" > "$2";
}

kill-line() {
  if [[ $BUFFER == "" ]]; then
    zle backward-kill-line
  else
    zle kill-whole-line
  fi
}

zle -N kill-line
bindkey "²²" kill-line

# this alias to clear
alias c="clear"

# this alias to clear but with extra lines
alias x="clear && echo -e && echo -e && echo -e && echo -e && echo -e && echo -e"

# this alias to break a line
alias br="br"

# this function for br alias
function br(){
  if [[ $# -eq 1 ]]; then
    for ((i=1; i<=$1;i++)); do
      echo -e;
    done
  elif [[ $# -eq 0 ]]; then
    echo -e;
  fi
}

# this alias to show the welcome message
alias cvi="cvii"

# here to write a welcome message
function cvii(){
  clear && br 2;
  echo "H    4    7    1    X" | figlet -t -c;
  br 2;
}

x;

# this alias to exit
alias q='exit'

# this alias to give full permission
alias all="all"

# this function for all alias
function all(){
  if [[ $# -eq 0 ]]; then
    if [[ -d "$1" ]]; then
      chmod 700 * && cv;
    elif [[ -f "$1" ]]; then
      chmod 777 * && cv;
    fi
  else
    if [[ -d "$1" ]]; then
      chmod 700 "$@" && cv;
    elif [[ -f "$1" ]]; then
      chmod 777 "$@" && cv;
    fi
  fi
}

#######################################################################

### Navigation Aliases

# this alias to create a SymLink
alias symlink="symlink"

# this function for symlink alias
function symlink(){
  if [ "$#" -eq 0 ]; then
    echo "wrong usage"
  elif [ "$#" -eq 1 ]; then
    ln -s $PWD "$1"
  elif [ "$#" -eq 2 ]; then
    ln -s $PWD/"$1" "$2"
  fi
}

# this alias to have the current view
# of working directory content using ls
alias cv="cv"

# this function for cv alias
# UPDATED : 01/25/2024
# to adjust the title
# when we have more than 50 visible items
function cv() {
  local target="$1"
  local folder_content="${target:-$PWD}"
  local folder_name=$(basename $folder_content)
  local visible_item=$(ls $folder_content | wc -l)
  local total_item=$(ls -A $folder_content | wc -l)
  local hidden_item=$((total_item - visible_item))

  # this function for the header of cv alias
  function show_header(){
    local folder_header
    if [[ $total_item -eq 0 ]]; then
      folder_header="Empty(0)";
      folder_icon=" "
    elif [[ $hidden_item -eq 0 ]]; then
      folder_header="total($visible_item)";
      folder_icon=" "
    else
      folder_header="visible($visible_item) hidden($hidden_item) total($total_item) ";
      folder_icon=" "
    fi
    echo "${BOLD}${WHITE} $folder_icon $folder_name -> $folder_header ${RESET}";
  }

  # this function to show the content of the cv
  function show_content(){
    # local flag="${1:-}"
    # ls $flag $folder_content;
    eza --icons=always --no-quotes --group-directories-first $folder_content
  }

  # this function to show the all of the cv content
  function show_all(){
    c && br;

    if [[ $visible_item -lt 30 ]]; then
      show_header;
      br;
      show_content;
      br;
    else
      show_content;
      br 2;
      show_header;
      br;
    fi
  }
  show_all;
}

# this alias to view the current directory content
alias cvf="cvf"

# this function for cvf alias
# UPDATED : 01/25/2024
# to adjust the title
# when we have more than 50 visible items
function cvf() {
  local target="$1"
  local folder_content="${target:-$PWD}"
  local folder_name=$(basename $folder_content)
  local visible_item=$(ls $folder_content | wc -l)
  local total_item=$(ls -A $folder_content | wc -l)
  local hidden_item=$((total_item - visible_item))

  # this function for the header of cv alias
  function show_header(){
    local folder_header
    if [[ $total_item -eq 0 ]]; then
      folder_header="Empty(0)";
      folder_icon=" "
    elif [[ $hidden_item -eq 0 ]]; then
      folder_header="total($visible_item)";
      folder_icon=" "
    else
      folder_header="visible($visible_item) hidden($hidden_item) total($total_item) ";
      folder_icon=" "
    fi
    echo "${BOLD}${WHITE} $folder_icon $folder_name -> $folder_header ${RESET}";
  }

  # this function to show the content of the cv
  function show_content(){
    eza --icons=always --no-quotes -a --group-directories-first $folder_content;
  }

  # this function to show the cv
  function show_all(){
    c && br;

    if [[ $hidden_item -lt 30 ]]; then
      show_header;
      br;
      show_content;
      br;
    else
      show_content;
      br 2;
      show_header;
      br;
    fi
  }
  show_all;
}

# this alias to view the current directory content
# with specifications
alias cvg="cvg"

# this function for cvg alias
function cvg(){
  local folder_name=$(basename $PWD)
  local item="$1"
  local matched_items=$(ls -A | grep "$item" | wc -l)

  function show_header(){
    echo "${BOLD}   $folder_name -> contains $matched_items '$1' ${RESET}";
  }

  function show_content(){
    eza --icons=always --color=always -a --group-directories-first | grep "$1";
  }

  # this function to show the cv
  function show_all(){
    c && br;

    if [[ $matched_items -lt 20 ]]; then
      show_header $1; br;
      show_content $1; br;
    else
      show_content $1; br;
      show_header $1;
    fi
  }
  show_all $item;
}

# this alias to open a directory
alias op="op"

# this function for op alias
function op() {
  # Check if $1 is a symbolic link
  if [[ -L "$1" ]]; then
    # Resolve the real path of the symbolic link
    real_path=$(readlink -f "$1")
    # Check if the resolved path is a directory
    if [[ -d "$real_path" ]]; then
      if [[ $# -eq 1 ]]; then
        cd "$real_path" && cv
      elif [[ $# -eq 2 ]]; then
        cd "$real_path" && cvg "$2"
      fi
    # Check if the resolved path is a file
    elif [[ -f "$real_path" ]]; then
      vf "$real_path"
    fi
  # If $1 is a directory (but not a symbolic link)
  elif [[ -d "$1" ]]; then
    if [[ $# -eq 1 ]]; then
      cd "$1" && cv
    elif [[ $# -eq 2 ]]; then
      cd "$1" && cvg "$2"
    fi
  # If $1 is a file (but not a symbolic link)
  elif [[ -f "$1" ]]; then
    vf "$1"
  fi
}

# this alias to create a directory
alias dr="dr"

# this function for dr alias
function dr(){
  mkdir "$@" && cv;
}

# this alias to remove a directory
alias rd="rd"

# this function for rd alias
function rd(){
  rm -r "$@" && cv;
}

# this line to have destination location for copy / cut
alias dt="dt"

# this function for dst alias
function dt(){
  dest="$PWD" && c && echo -e && echo "d e s t   s a v e d" | figlet -t -c && sleep 0.6 && cv;
}

# this alias to open a directory
# and make it as destination
alias opd="opd"

# this function for opd alias
function opd(){
  op "$1" && dt && nd;
}

# this alias to create a directory
# and then directly enter to it
alias opdr="opdr"

# this function for opdr alias
function opdr(){
  dr "$*" && op "$*";
}

# this alias to go back from a directory
alias b="b"

# this function for b alias
function b(){
  if [[ $# -eq 0 ]]; then
    cd .. && cv
  else
    for ((i=1; i<=$1;i++)); do
      cd .. && cv
    done
  fi
}

# this alias to go to the previous directory
alias nd="nd"

# this function for nd alias
function nd(){
  cd - &>/dev/null;
  cv;
}

#######################################################################

### Sudo Aliases

# this alias to give sudo
# access before command execution
alias allow_sudo="allow_sudo"

# this function for allow_sudo alias
# HACK : 05-12-2024 15:28
# check if sudo requires a password
# then show the password prompt,
# otherwise just execute the next command
function allow_sudo(){
  sudo -n true &>/dev/null
  if [ $? -eq 1 ]; then
    sudo echo && return 0 || return 1
  fi
  return 0
}

# this alias to simulate the sudo behaviour
alias hndo="hndo"

# this function for hndo alias
function hndo(){
  local attempts=3
  local attempts_num=$(echo $attempts)
  local expected_hashed_password="5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8"
  # this is "password" hashed
  # use this command : echo -n password | sha256sum | awk '{print $1}'

  c && br 2

  while [ $attempts -gt 0 ]; do
    echo -ne "Your Password, Sir : "
    read -s password

    # Hash the entered password
    hashed_input=$(echo -n "$password" | sha256sum | awk '{print $1}')

    if [ "$hashed_input" = "$expected_hashed_password" ]; then
      c && br
      eval "$@"
      return
    else
      attempts=$((attempts - 1))
      br
      echo -n "Wrong, Try Again"
      br
      if [ $attempts -gt 0 ]; then
        continue
      else
        echo "hndo: $attempts_num incorrect password attempts"
        return 1
      fi
    fi
  done
}

# this alias to switch to root
alias ad="ad"

# this function for ad alias
function ad(){
  c && echo -e && echo -e && sudo su && cv;
}

#######################################################################

### Git Aliases

# this alias to create a new branch and switch to it
alias gbr="gbr"

# this function for gbr alias
function gbr(){
  local is_a_git_repo=$(git rev-parse --is-inside-work-tree 2>/dev/null)

  if [[ "$is_a_git_repo" == "true" ]]; then
    if [[ $# -eq 1 ]]; then
      git checkout -b "$1";
    elif [[ $# -eq 0 ]]; then
      git branch -a;
    else
      echo "${BOLD} ■■▶ Usage : gbr new_branch" && br;
    fi
  else
    echo "${BOLD} ■■▶ This won't work, you are not in a git repo !" && br;
  fi
}

#######################################################################

### Services Aliases

# this alias to start services
alias svc_on="allow_sudo && svc_on"

# this function for svc_on alias
function svc_on(){
  sudo service "$1" start;
}

# this alias to stop systemctl based services
alias svc_off="allow_sudo && svc_off"

# this function for svc_off alias
function svc_off(){
  sudo service "$1" stop;
}

# this alias to view systemctl
# based services status
alias svc_stat="allow_sudo && svc_stat"

# this function for svc_stat alias
function svc_stat(){
  sudo service "$1" status;
}

# this alias to show if a service if on or off
alias svc_show_stat="allow_sudo && svc_show_stat"

# this function for svc_show_stat alias
function svc_show_stat(){
  br;

  local service_name="$1";
  local check_command="$2";

  if [[ "$check_command" == *"Active: active"* ]]; then
    echo "${BOLD}$service_name Active ${BOLD}${GREEN} ${RESET}";
  elif [[ "$check_command" =~ ^[0-9]+$ ]]; then
    echo "${BOLD}$service_name Active ${BOLD}${GREEN} ${RESET}";
  else
    echo "${BOLD}$service_name Off ${BOLD}${RED}✘ ${WHITE}";
  fi

  br;
}

# this alias to view the ssh server status
alias sth="sth"

# this function for sth alias
function sth(){
  c && br;
  if [[ $(pgrep sshd) ]]; then
    c && br;
    echo "${BOLD}Ssh Server Active ${BOLD}${GREEN} ${RESET}"
    br;

    local is_wsl=$(grep -qi microsoft /proc/version && echo true || echo false)

    if $is_wsl; then
     local wifi_iface="wifi0"
    else
     # at least it is on kali linux
     local wifi_iface="wlan0"
    fi

    local wifi_ip=$(ifconfig $wifi_iface | grep inet | awk '{print $2}');
    # echo " Connect Via  ==>  ssh $USER@$ip";
    # check_ngrok="cmd.exe /c 'tasklist | findstr /I "ngrok"'"
    echo "Ssh Connection via $wifi_iface Interface";
    echo "${BOLD}${WHITE}==> ssh $USER@$wifi_ip";
  else
    echo "${BOLD}Ssh Server Off ${BOLD}${RED}✘ ${WHITE}"
  fi
}

# this alias to enable the ssh server
alias sshon="allow_sudo && sshon"

# this function for sshon alias
function sshon(){
  local is_wsl=$(grep -qi microsoft /proc/version && echo true || echo false)

  if $is_wsl; then
    sudo /etc/init.d/ssh start &>/dev/null;
  else
    svc_on ssh;
  fi
  sth;
}

# this alias to kill the ssh server process
alias sshoff="allow_sudo && sshoff"

# this function for sshoff alias
function sshoff(){
  # sudo /etc/init.d/ssh stop;
  if [[ $(pgrep sshd) ]]; then
    sudo kill $(pgrep sshd);
  fi
  sth;
}

# this function to view the current apache2
# service, its status
function stap(){
  c && br;
  if [[ $(pgrep apache2) ]]; then
    echo "${BOLD}Apache Server Active ${BOLD}${GREEN} ${RESET}"
    br;

    local eth_iface="eth0"

    if $is_wsl; then
      local wifi_iface="wifi0"
    else
      # at least it is on kali linux
      local wifi_iface="wlan0"
    fi

    local loopback_iface="lo"
    local wlan_ip=$(ifconfig $wifi_iface | grep "inet " | awk '{print $2}');
    local loopback_ip=$(ifconfig $loopback_iface | grep "inet " | awk '{print $2}');

    echo "$wifi_iface Interface Connection (Public)  : ${BRIGHT_BLUE}http://$wlan_ip${WHITE}";
    echo "$loopback_iface    Interface Connection (Private) : ${BRIGHT_BLUE}http://$loopback_ip ${WHITE}";
    br;
  else
    echo "${BOLD}Apache Server Off ${BOLD}${RED}✘ ${WHITE}"
    br
  fi
}

# this alias to start the apache2 service
alias apon="allow_sudo && apon"

# this function for apch alias
function apon(){
  cd /var/www/html;
  c && br;
  echo "${BOLD}[${GREEN}+${WHITE}]${WHITE} Starting Apache Server ..."; br;
  sudo service apache2 start &>/dev/null;
  stap;
}

# this alias to stop the apache2 service
alias apoff="allow_sudo && apoff"

# this function for apch alias
function apoff(){
  sudo service apache2 stop;
  stap;
}

# this alias to open the
# Apache2 server directory
alias apd="apd"

# this function for apd alias
function apd(){
  op /var/www/html
}

# this alias to start the sql service
alias sqlon="allow_sudo && sqlon"

# this function for sqlon alias
function sqlon(){
  sudo service mariadb start;
  sqls;
}

# this alias to stop the sql service
alias sqloff="allow_sudo && sqloff"

# this function for sqloff alias
function sqloff(){
  sudo service mariadb stop;
  sqls;
}

# this alias to view the sql service
alias sqls="allow_sudo && sqls"

# this function for sqloff alias
function sqls(){
  c && br;
  if [[ $(pgrep mariadb) ]]; then
    echo "${BOLD}MySQL Server Active ${BOLD}${GREEN} ${RESET}"
  else
    echo "${BOLD}MySQL Server Down ${BOLD}${RED}✘ ${WHITE}"
  fi
}

# this alias to start the postgresql service
alias psqlon="allow_sudo && psqlon"

# this function for sqlon alias
function psqlon(){
  if [[ $(pgrep postgres) ]]; then
    sudo -u postgres psql;
  else
    c && br;
    echo "${BOLD}${WHITE}[${GREEN}+${WHITE}] Starting ${WHITE}PostgreSQL Server ...";
    sudo service postgresql start &>/dev/null;
    c && br;
    echo "${BOLD}PostgreSQL Server Active ${BOLD}${GREEN} ${RESET}";
    br;

    function check_postgres_shell(){
      echo -ne "${BOLD}${WHITE}Access PostgreSQL${GREEN} Shell${WHITE} ? (y/n) ";
      read postgres_shell
      if [ "$postgres_shell" = "y" ]; then
        clear;
        sudo su - postgres;
      elif [ "$postgres_shell" = "n" ];then
        return 1
      else
        check_postgres_shell
      fi
    }
    check_postgres_shell
  fi
  return 0
}

# this alias to stop the postgresql service
alias psqloff="allow_sudo && psqloff"

# this function for sqloff alias
function psqloff(){
  c && br;
  echo "${BOLD}${WHITE}${BOLD}${RED}✘ ${WHITE} Stopping ${WHITE}PostgreSQL Server ...";
  sudo service postgresql stop &>/dev/null;
  psqls;
}

# this alias to view the postgresql service
alias psqls="allow_sudo && psqls"

# this function for psqls alias
function psqls(){
  c && br;

  if [[ $(pgrep postgres) ]]; then
    echo "${BOLD}PostgreSQL Server Active ${BOLD}${GREEN} ${RESET}";
  else
    echo "${BOLD}PostgreSQL Server Off ${BOLD}${RED}✘ ${WHITE}";
  fi

  br;
}

# this alias to start the web servers
alias webon="allow_sudo && webon"

# this function for webon alias
function webon(){
  c && br;
  echo "${BOLD}${WHITE} Starting Web Servers"; br;

  # Apache Server
  echo -ne "${BOLD}${WHITE} ==> Starting ${GREEN}Apache ${WHITE}Server ..."
  sudo service apache2 start &>/dev/null;
  echo -e "${BOLD}${GREEN} ${RESET}";

  # MySQL Server
  echo -ne "${BOLD} ==> Starting ${GREEN}MySQL ${WHITE} Server ..."
  sudo service mariadb start &>/dev/null;
  echo -e "${BOLD}${GREEN} ${RESET}";

  # Postfix Server
  echo -ne "${BOLD} ==> Starting ${GREEN}Mail ${WHITE}  Server ..."
  sudo service postfix start &>/dev/null;
  echo -e "${BOLD}${GREEN} ${RESET}";

  # Status
  br;
  local eth_iface="eth0"
  local is_wsl=$(grep -qi microsoft /proc/version && echo true || echo false)

  if $is_wsl; then
    local wifi_iface="wifi0"
  else
    # at least it is on kali linux
    local wifi_iface="wlan0"
  fi

  local loopback_iface="lo"
  local wlan_ip=$(ifconfig $wifi_iface | grep "inet " | awk '{print $2}');
  local loopback_ip=$(ifconfig $loopback_iface | grep "inet " | awk '{print $2}');

  echo "${BOLD} Access the Server"; br;
  echo " ==> WAN : ${BRIGHT_BLUE}http://$wlan_ip${WHITE}";
  echo " ==> LAN : ${BRIGHT_BLUE}http://$loopback_ip ${WHITE}";
  br;
}

# this alias to stop the web servers
alias weboff="allow_sudo && weboff"

# this function for weboff alias
function weboff(){
  c && br;
  echo "${BOLD}${WHITE} Stopping Web Servers"; br;

  # Apache Server
  echo -ne "${BOLD}${WHITE} ==> Stopping ${RED}Apache ${WHITE}Server ..."
  sudo service apache2 stop &>/dev/null;
  echo -e "${BOLD}${RED}✘ ${WHITE}";

  # MySQL Server
  echo -ne "${BOLD} ==> Stopping ${RED}MySQL ${WHITE} Server ..."
  sudo service mariadb stop &>/dev/null;
  echo -e "${BOLD}${RED}✘ ${WHITE}";

  # Postfix Server
  echo -ne "${BOLD} ==> Stopping ${RED}Mail ${WHITE}  Server ..."
  sudo service postfix stop &>/dev/null;
  echo -e "${BOLD}${RED}✘ ${WHITE}";

  # Status
  br;
}

# this alias to view the web servers status
alias webs="allow_sudo && webs"

# this function for webs alias
function webs(){
  c && br;
  echo "${BOLD} Web Servers Status"; br;

  function check_web(){
    local server_name="$1";
    local app_service="$2";
    local color;
    local sign;

    if sudo service $app_service status &>/dev/null; then
      color="${GREEN}";
      sign="✓";
    else
      color="${RED}";
      sign="x";
    fi

    echo "${BOLD} ==> $server_name Server $color$switch${WHITE}... [$color$sign${WHITE}]";
  }

  # Check apache server
  check_web "Apache" apache2
  check_web "MySQL " mariadb
  check_web "Mail  " postfix

  if sudo service apache2 status &>/dev/null; then
    br;
    local eth_iface="eth0"
    local is_wsl=$(grep -qi microsoft /proc/version && echo true || echo false)

    if $is_wsl; then
      local wifi_iface="wifi0"
    else
      # at least it is on kali linux
      local wifi_iface="wlan0"
    fi

    local loopback_iface="lo"
    local wlan_ip=$(ifconfig $wifi_iface | grep "inet " | awk '{print $2}');
    local loopback_ip=$(ifconfig $loopback_iface | grep "inet " | awk '{print $2}');

    echo "${BOLD} Access the Server"; br;
    echo " ==> WAN : ${BRIGHT_BLUE}http://$wlan_ip${WHITE}";
    echo " ==> LAN : ${BRIGHT_BLUE}http://$loopback_ip ${WHITE}";
    br;
  fi
}

# this alias to start the sql cli
alias rdb="allow_sudo && rdb"

# this function for rdb alias
function rdb(){
  if ! pgrep mariadb > /dev/null; then
    sudo service mariadb start &>/dev/null
  fi
  c && br
  local user=${1:-root}
  echo "${BOLD}MySQL Server Active ${BOLD}${GREEN} ${RESET}"
  echo "${BOLD}User : $user"
  local is_root='[[ "$user" == "root" ]]';
  local flag=$(eval "$is_root" && echo "" || echo "-p");
  sudo mysql -u $user $flag;
  br
  function check_mysql_server(){
    echo -ne "${BOLD}${WHITE}[${GREEN}?${WHITE}]${WHITE} ${GREEN}Stop ${WHITE}MySQL Server ? (y/n) ";
    read server
    if [ "$server" = "y" ]; then
      # echo -ne " ${WHITE}[${GREEN}+${WHITE}]${WHITE} Stopping ${GREEN}MySQL ${WHITE}Server  ";
      echo "${BOLD}${WHITE}[${GREEN}+${WHITE}]${WHITE} Stopping MySQL Server ... "
      sudo service mariadb stop &>/dev/null
      echo "${BOLD}${WHITE}[${GREEN}+${WHITE}]${WHITE} MySQL Server Stopped  ... ${GREEN}✓"
    elif [ "$server" = "n" ];then
      echo "${BOLD}${WHITE}[${GREEN}+${WHITE}]${WHITE} Keeping ${GREEN}MySQL ${WHITE}Server ${GREEN}On";
    else
      check_mysql_server
    fi
  }
  check_mysql_server
}

# this alias to start the sql cli
alias rdbp="rdbp"

# this function for rdbp alias
function rdbp(){
  clear && br 2 && sudo clear;
  sudo systemctl start psql;
  sudo mysql -u root;
  sudo systemctl stop psql;
}

# this alias to check sendmail process
alias mails="allow_sudo && mails"

# this function for mails alias
function mails(){
  c && br;
  if sudo service postfix status &>/dev/null; then
    echo "${BOLD}Mail Server Active ${BOLD}${GREEN} ${RESET}"
  else
    echo "${BOLD}Mail Server Down ${BOLD}${RED}✘ ${WHITE}"
  fi
}

# this alias to start sendmail service
alias mailon="allow_sudo && mailon"

# this function for mailon alias
function mailon(){
  sudo service postfix start
  mails
}

# this alias to stop sendmail service
alias mailoff="allow_sudo && mailoff"

# this function for mailon alias
function mailoff(){
  sudo service postfix stop
  mails
}

# this alias to check snmp service
alias snmps="snmps"

# this function for snmps alias
function snmps(){
  local name="SNMP Server";
  local cmd="$(pgrep snmpd)";
  svc_show_stat $name $cmd;
}

# this function to start snmpd service
alias snmpon="snmpon"

# this function for snmpon alias
function snmpon(){
  svc_on snmpd;
  snmps;
}

# this alias to stop the snmp service
alias snmpoff="snmpoff"

# this function for snmpoff alias
function snmpoff(){
  svc_off snmpd;
  snmps;
}

#######################################################################

### File Aliases

# this alias to create a file
alias tf="tf"

# this function for tf alias
function tf(){
  touch "$@" && all "$@" && cv;
}

# this alias to delete file
alias dlf="dlf"

# this function for dlf alias
function dlf(){
  rm "$@" && cv;
}

# this alias to copy a file then display it
alias cpf="cpf"

# this function for cpf alias
function cpf(){
  if [[ $# -eq 2 ]]; then
    if [[ -d "$1" ]]; then #here to check if the first argument is a directory
      cp -r "$1" "$2" && op "$2" && all "$1";
    else
      cp "$1" "$2" && op "$2" && all "$1";
    fi
  elif [[ $# -eq 1 ]]; then
    if [[ -d "$1" ]]; then #here to check if the first argument is a directory
      cp -r "$1" "$dest" && op "$dest" && all "$1";
    else
      cp "$@" "$dest" && op "$dest" && all "$@";
    fi
  fi
}

# this alias to copy the content of a file
alias cnf="cnf"

# this function for cnf alias
function cnf(){
  cat "$1" > "$2" && dlf "$1" && all "$2";
}

# this alias to copy a file then display it
alias mvf="mvf"

# this function for cpf alias
function mvf(){
  if [[ $# -eq 2 ]]; then
    mv "$1" "$2" && op "$2";
  elif [[ $# -eq 1 ]]; then
    mv $@ $dest && op $dest;
    # if there is only one argument,
    # it will move the file / directory
    # to the the variable
    # dest defined in dt alias
  fi
}

# this alias to force delete
alias rdf="allow_sudo && rdf"

# this function for rdf alias
function rdf(){
  sudo rm -rfv "$@";
  cv;
}

# this alias to count the number of file/directory
# inside a directory
alias dc="dc"

#this function for dc alias
function dc(){
  if [[ $# -eq 0 ]]; then
    clear;
    br;
    case "$(ls -1 | wc -l)" in
      0)
        br;
        echo "There is nothing inside $(basename $PWD)";
        br;;
      *)
        case "$(ls -1 | wc -l)" in
          1)it="item";;
          *)it="items";;
        esac
        echo "   $(basename $PWD) folder has $(ls -1 | wc -l) $it : ";
        br;
        if [[ $(ls -1 | wc -l) -gt 50 ]]; then
          br;
        else
          ls
        fi
        br;
    esac
  elif [[ $# -eq 1 ]]; then
    clear;
    br;
    case "$(ls -1 $1 | wc -l)" in
      0)
        br;
        echo "There is nothing inside $(basename $1)";
        br;
        sleep 1;
        cv;
        br;;
      *)
        case "$(ls -1 $1 | wc -l)" in
          1)it="item";;
          *)it="items";;
        esac
        echo "   $(basename $1) folder has $(ls -1 $1 | wc -l) $it : ";
        br;
        if [[ $(ls -1 "$1" | wc -l) -gt 50 ]]; then
          br;
        else
          ls "$1";
        fi
        br;
        sleep 1;
        cv;
    esac
  fi
}

# this alias to know the file type
alias tp="tp"

# this function for tp alias
function tp(){
  type=$(ls -ld "$1" | cut -c1)
  case $type in
    -) echo "File" ;;
    d) echo "Directory" ;;
    b) echo "Block" ;;
    l) echo "Sym-Link" ;;
    c) echo "Character" ;;
    *) echo "Other" ;;
  esac
}

#######################################################################

### Explorer Alias

# this alias to open the current
# directory inside windows explorer
# or bu the default explorer on Linux
alias exop="exop"

# this function for exop alias
function exop() {
  [ $# -eq 1 ] && cd "$1"

  # check WSL
  local is_wsl=$(
    grep -qi microsoft /proc/version && echo true || echo false
  )

  if $is_wsl; then
    explorer.exe .
  else
    xdg-open .
  fi
  cv
}

#######################################################################

### Custom command not found

# Printing command not found when it is the case
command_not_found_handler() {
  local command=$1
  local command_found=0

  # Check if the command is found in the .zshrc file
  if grep -q -E "^alias $command=" "$HOME/.zshrc" ; then
    command_found=1
  fi

  if [[ $command_found -eq 0 ]]; then
    echo " ${BOLD}${WHITE}${BOLD}[${RED}x${WHITE}]${WHITE} Command Not Found"
  fi
}

#######################################################################

### $SHELLrc Aliases

# this alias to edit $SHELLrc
alias ct="nvim ~/.zshrc"

# this alias to reload the zshrc file
alias rld="rld"

# this function for rld alias
function rld(){
  c;

  # local variables
  local shellrc=.$(basename $SHELL)rc;
  local is_wsl=$(grep -qi microsoft /proc/version && echo true || echo false)
  local platform=$($is_wsl && echo "wsl" || echo "linux")
  local backup_dir=$HOME/NTSOA/zshrc/$platform;
  local backup_file=zshrc[$USER];
  local saved_message="$shellrc backed up"

  # source the config file and save it
  source ~/$shellrc;
  cat ~/$shellrc > $backup_dir/$backup_file;

  # saved message display
  c && br;
  echo "${BOLD}${WHITE}$saved_message";
  br && sleep 0.5;
  op $backup_dir;
}

#######################################################################

### Neovim Aliases

# this alias to open the current directory inside neovim
alias nvm="nvm"

# this function for nvm aliases
# if we have one argument then nvim will be launched with it,
# otherwise open the current directory if there is no argument
function nvm(){
  nvim "${1:-.}";
}

# this alias to call neovim in a cooler way
alias hnvim="nvim"

# this alias to open nvim as root
alias nvmr="allow_sudo && nvmr"

# this function for nvmr alias
function nvmr(){
  sudo nvim "${1:-.}";
}

# this alias to edit a file
alias ed="ed"

# this function for ed alias
function ed(){
  # nvim -c "startinsert" "$1" && cv;
  nvim "$1" && cv;
}

#######################################################################

### WSL Paths

# Binaries
WSL_PATH=/usr/bin/scp
PYTHON_SCRIPTS_PATH=/usr/bin/python_scripts
NPM_SCRIPTS_PATH=/usr/bin/node:/usr/bin/node_scripts
RUST_SCRIPTS_PATH=/usr/bin/rust_scripts
BINARY_SCRIPTS_PATH=$PYTHON_SCRIPTS_PATH:$NPM_SCRIPTS_PATH:$RUST_SCRIPTS_PATH
SQLITE_PATH=/mnt/c/Program\ Files/sqlite
QT_PATH=/mnt/d/NTSOA/INSTALLED/QT/Tools/QtCreator/bin
PYTHON_PATH=/mnt/d/NTSOA/INSTALLED/PYTHON
VIRTUAL_BOX_PATH="/mnt/c/'Virtual Box'"
WIRESHARK_PATH=/mnt/c/Program\ Files/Wireshark
TOTAL_CMD_PATH=/mnt/c/Program\ Files/totalcmd
THEME_TOOL_PATH=/mnt/d/NTSOA/INSTALLED/THEME_TOOL
WINDOWS_APP_PATH=$VIRTUAL_BOX_PATH:$WIRESHARK_PATH:$TOTAL_CMD_PATH:$THEME_TOOL_PATH

# Path to Binaries
# For better use : add to windows path instead
BINARY_PATH=$WSL_PATH:$SQLITE_PATH:$QT_PATH:$WINDOWS_APP_PATH:$PYTHON_PATH:$BINARY_SCRIPTS_PATH

# Browsers
CHROME_PATH=/mnt/c/Program\ Files/Google/chrome/Application/
EDGE_PATH=/mnt/c/Program\ Files\ (x86)/Microsoft/Edge/Application/
BROWSER_PATH=$CHROME_PATH:$EDGE_PATH

# Applications
NPM_PATH=/mnt/c/Users/lab_l/AppData/Roaming/npm/npm
NGROK_PATH=/mnt/d/NTSOA/INSTALLED/NGROK/
POT_PLAYER_PATH=/mnt/d/NTSOA/INSTALLED/POT\ PLAYER/PotPlayer
FL_STUDIO_PATH=/mnt/d/NTSOA/INSTALLED/FL\ STUDIO\ 12
APP_PATH=$NPM_PATH:$POT_PLAYER_PATH:$FL_STUDIO_PATH:$NGROK_PATH

# Including all the paths
PATH=$BINARY_PATH:$BROWSER_PATH:$APP_PATH:$PATH

#######################################################################

### WSL Shortcuts

# this alias for cybsec shortcut
alias cybsec="op /mnt/d/NTSOA/dev/github_repo/h471x_repo/learning/learn_python/cybsec"

# this alias for cert shortcut
alias cert="op /mnt/d/NTSOA/credentials/certifications"

# this alias to go to home directory
alias hm="cd && cv"

# this alias to view the windows explorer
alias whm="cd /mnt/c/Users/lab_l/OneDrive/Bureau && op Home.lnk && nd"

# this alias to open the evangile directory
alias gospel="op /mnt/d/NTSOA/gospel"

# this alias to enter the NTSOA directory
alias hn="op /mnt/d/NTSOA"

# this alias to open the dev folder
alias dev="op /mnt/d/NTSOA/dev/github_repo/"

# this alias to open the notes folder
alias nt="op /mnt/d/NTSOA/dev/0\ NOTES"

# this alias to open the kali linux Vm Shared folder
alias kali="op /mnt/d/NTSOA/INSTALLED/KALI_LINUX"

# this alias to open the download folder
alias dwl="dwl"

# this function for dwl alias
function dwl(){
  local download_folder_path=/mnt/c/Users/lab_l/Downloads
  op $download_folder_path
}

# this alias to open the desktop
alias dtp="dtp"

# this function for dtp alias
function dtp(){
  local desktop_folder_path=/mnt/c/Users/lab_l/OneDrive/Bureau
  op $desktop_folder_path
}

# this alias to view the books
alias books='exop /mnt/d/NTSOA/"0 ENI"/"ENI 2023"/"ENI L1 LESSONS"/BOOKS'

# this alias to enter internship_report
alias intern='op /mnt/d/NTSOA/"0 ENI"/"ENI 2024"/"STAGE 2024"/internship_report'

# this alias to play directly the typing game
alias typing="typing"

# this function for typing alias
function typing(){
  cd /mnt/d/NTSOA/dev/github_repo/typing
  cmd.exe /c start python server.py
  cmd.exe /c start chrome "http://localhost:8000"
  cd - &>/dev/null
}

# this alias to access my musics
alias msc="op /mnt/d/NTSOA/music/hiravao"

# this alias to access pictures
alias pct="op /mnt/c/Users/lab_l/OneDrive/Pictures"

# this alias to view the setup
alias setup="op /mnt/d/NTSOA/SETUP"

# this alias to open dosbox config files
alias dosbox="dosbox"

# this function for dosbox alias
function dosbox(){
  op /mnt/c/Users/lab_l/AppData/Local/DOSBox
}

# this alias to open the state drive
alias sd="op /mnt/d"

# this alias to access directly the eni folder
alias eni="eni"

# this function for eni alias
function eni(){
  local eni_path=/mnt/d/NTSOA/0\ ENI/ENI\ 2024/S4
  op $eni_path
}

# this alias to access the ENI time schedule
alias edt="edt"

# this function for edt alias
function edt(){
  local edt_path=/mnt/d/NTSOA/0\ ENI/ENI\ 2024/0\ EDT/L2\ 2024
  cd $edt_path

  local recent_file=$(ls -t . | head -n1)
  explorer.exe $recent_file

  cd - &>/dev/null
}

# this alias to access the raw ENI time schedule
alias edtr="edtr"

# this function for edtr alias
function edtr(){
  local edt_path=/mnt/d/NTSOA/0\ ENI/ENI\ 2024/0\ EDT/RAW
  cd $edt_path

  local recent_file=$(ls -t . | head -n1)
  explorer.exe $recent_file

  # cv
  cd - &>/dev/null
}

# this alias to set the recent file variable
function rctf(){
  echo $(ls -tR | head)
}

# this alias to open learning directory
alias learn="op /mnt/d/NTSOA/dev/github_repo/h471x_repo/learning"

# this alias to view the devops folder
alias dvps="op /mnt/d/NTSOA/DEVOPS/devops"

# this alias to open recent file / directory
alias rct="rct"

# this function for rct alias
function rct(){
  local recent_file=$(ls -t . | head -n1)
  op $recent_file
}

#######################################################################

### WSL Terminal Aliases

# this alias to switch to windows terminal
alias wds="wds"

# this function for wds alias
function wds(){
  c && br 2;
  # Check the current directory
  # because cmd will work only
  # on windows'directory rather
  # than WSL's one so we move
  if [[ "$PWD" == "/mnt/"* ]]; then
    cmd.exe;
  else
    cd /mnt/c
    cmd.exe;
    cd - &>/dev/null
  fi
  cv;
}

# this alias to switch to powershell terminal
alias pws="pws"

# this function for pws alias
function pws(){
  c && br 2;
  powershell.exe;
  cv;
}

# this alias to enter cmd as admin
alias cmd="cmd"

# this function for cmd alias
function cmd(){
  powershell.exe -command "Start-Process cmd -Verb RunAs";
  x;
}

#######################################################################

### WSL Network Aliases

# this alias to show the network configuration
alias ipsh="ipsh"

# this function for ntsh alias
function ipsh(){
  c && br;
  echo "  Available IP Adresses : ";
  br;
  local eth_ip=$(ip addr show eth0 | grep -oP 'inet \K[\d.]+');
  local wifi_ip=$(ip addr show wifi0 | grep -oP 'inet \K[\d.]+');
  echo " eth0  ==> $eth_ip" && br;
  echo " wifi0  ==> $wifi_ip" && br;
}

function clean_argument() {
  local arg="$1"
  # Replace spaces with backslashes
  local clean_arg="${arg// /\\}"

  # Replace special characters with escaped versions
  local special_chars='[][{}()*+?.\\^$|]'
  # Escape backslashes for sed
  local escaped_special_chars="$(echo "$special_chars" | sed 's/\\/\\\\/g')"
  local arg_pattern="s/[$escaped_special_chars]/\\\\&/g"

  clean_arg="$(echo "$clean_arg" | sed -E "$arg_pattern")"
  echo "$clean_arg"
}

# I don't know why but this alias
# make the PC slow down
# this alias to view saved wifi password
# SOLVED: 05-11-2024 22:44
# Just execute it inside the
# hard drive of windows instead of WSL
# directories, so just cd to whatever
# hard drive of windows to make it run
alias wpass="wpass"

# this function for wpass alias
function wpass(){
  cd /mnt/c
  if [[ $# -eq 0 ]]; then
    # consider all arguments as one string
    local wifi=$(
      cmd.exe /c netsh wlan show profiles |
        grep -i "All User Profile" |
        awk '{print $5}' | shuf -n 1
    )
    local password=$(
      cmd.exe /c netsh wlan show profiles "$wifi" key=clear |
        grep "Key Content" |
        awk '{print $4}'
    )
    echo "Wifi SSID : $wifi";
    echo "Password  : $password";
  else
    # consider all arguments as one string
    local wifi="$*"
    local password=$(
      cmd.exe /c netsh wlan show profiles "$wifi" key=clear |
        grep "Key Content" |
        awk '{print $4}'
    )
    echo "Wifi SSID : $wifi";
    echo "Password  : $password";
  fi
  cd - &>/dev/null;
}

# Completion function for wpass
_wpass_completion() {
  cd /mnt/c
  local cur

  # Get the current word being completed
  cur="${COMP_WORDS[COMP_CWORD]}"

  # Fetch WiFi profiles
  local profiles=$(cmd.exe /c netsh wlan show profiles |
    grep -i "All User Profile" |
    awk '{$1=$2=$3=""; print substr($0, 6)}' |
    head -n 1000
  )

  # Generate completions
  COMPREPLY=($(compgen -W "${profiles}" -- "${cur}"))
  cd - &>/dev/null
}

# Register the completion function for wpass
complete -F _wpass_completion wpass

# this alias to "list known wifi"
alias wls="wls"

# this function for wls alias
function wls(){
  cd /mnt/c

  function print_message(){
    wifi="$1"
    password="$2"
    # Print Wi-Fi SSID and password
    echo "Wifi SSID : $wifi"
    echo "Password  : $password"
    echo
  }

  function wifi_and_pass(){
    num_profiles="$1"
    grep_string="$2"
    # Loop through each Wi-Fi profile
    while IFS= read -r wifi; do
      # Retrieve password for the current Wi-Fi profile
      local password=$(
        cmd.exe /c netsh wlan show profiles "$wifi" key=clear |
          grep "Key Content" | awk '{print $4}'
      )
      print_message $wifi $password
    done < <(
      cmd.exe /c netsh wlan show profiles |
        grep -i "$grep_string" |
        grep 'All User Profile' |
        awk '{$1=$2=$3=""; print substr($0, 6)}' |
        head -n "$num_profiles"
    )
  }

  function wifi_name(){
    wifi_count=0
    # Loop through each Wi-Fi profile
    while IFS= read -r wifi; do
      echo "- $wifi"
      ((wifi_count++))
    done < <(
      cmd.exe /c netsh wlan show profiles |
        grep 'All User Profile' |
        awk '{$1=$2=$3=""; print substr($0, 6)}'
    )
  }

  if [[ $# -eq 0 ]]; then
    num_profiles=1
    grep_string=$(
      cmd.exe /c netsh wlan show profiles |
        grep -i "All User Profile" |
        awk '{print $5}' | shuf -n 1
    )
    wifi_and_pass $num_profiles $grep_string
  elif [[ $# -eq 1 ]]; then
    if [[ "$1" =~ ^[0-9]+$ ]]; then
      num_profiles=$1
      grep_string=""
      wifi_and_pass $num_profiles $grep_string
    elif [[ "$1" != "-a" ]]; then
      num_profiles=99999999
      grep_string="$1"
      wifi_and_pass $num_profiles $grep_string
    elif [[ "$1" -eq "-a" ]]; then
      wifi_name
      echo
      echo "Known Wi-Fi Connections ($wifi_count) "
    fi
  fi

  cd - &>/dev/null;
}

# this alias to reach a network
alias reach="allow_sudo && reach";

# this function to check if pfsense is reachable
# coded 01/29/2024
function reach(){
  c && br;

  local target_IP="$1"
  local check_message="Checking $target_IP reachability..."
  local check_IP="sudo ping -c 1 -W 5 "
  local reachable="br && echo ' $check_message' && eval $check_IP $target_IP &> /dev/null;"
  # the -c 1 means we send one packet to test it
  # the -W 5 means if the ping have 5 seconds to check
  # as always we run it in background in order to
  # not see all the boring logs messages

  if eval $reachable ;then
    #if PfSense is reachable then
    #we execute the next command after
    #this function calling
    # eval "$@"
    echo " $target_IP is reachable"
  else;
    echo " $target_IP is not reachable"
  fi
}

#######################################################################

### WSL Browser

# SOLVED :
# this to make Github CLI know which default browser it would use
# this WSL issue was solved in gh GitHub Repo Pull Request
export BROWSER="chrome.exe"

# this alias to open file with browser
alias bwsop="bwsop"

# SOLVED : no need for this annoying code
# since we only use Windows Explorer to
# open files according to their default apps
# and there is no lag like we did here
# IMPROVED : 06-18-2024 21:44
# Handled the shell access after launch
#
# this function bwsop alias
function bwsop(){
  local file_name="$1"
  local file_extension="${file_name##*.}"
  local current_directory="$PWD"

  # Replace all Spaces and Back-slashes with %20
  local formatted_path=$(wslpath -m . | sed -e 's/ /%20/g' -e 's/\\//g')
  local formatted_file=$(echo "$file_name" | sed -e 's/ /%20/g' -e 's/\\//g')

  # Check if it a Pdf file
  local isPdf="[[ "$file_extension" == "pdf" ]]"

  # Open Pdf file with edge and the other files with chrome
  local browser=$( eval $isPdf && echo msedge.exe || echo chrome.exe)

  # if the current directory is a WSL
  # directory then switch to windows
  # directory before executing the script
  if [[ "$current_directory" != "/mnt/"* ]]; then
    cd /mnt/c
  fi

  # Open the file with the browser
  cmd.exe /c start $browser file:///$formatted_path/$formatted_file

  # if we changed directory then get back
  if [[ "$PWD" != "$current_directory" ]]; then
    cd - &>/dev/null
  fi

  return 0
}

#######################################################################

### WSL PWA Alias

# HTX:
# this alias to open web app
alias open_web_app="allow_sudo && open_web_app";

# CREATED :  02-11-2024 20:13
# this function to open chrome based app
# it uses the Id of the App we created within
# the Chrome browser, it will take 3 arguments :
# first the domain of the App
# then the chrome App Id
# finally the name of the App (optional)
# NOTE : 08-26-2024 11:28
# This is just PWA that can
# be installed in whatever browser
# IMPROVED : 05-30-2024 18:36
# Shell access after execution
function open_web_app(){
  local browser="chrome.exe"
  local app_domain="$1"
  local app_id="$2"
  local app_name="${3:-$(convert_url $app_domain)}"
  local current_directory="$PWD"
  local check="sudo ping -c 1 -W 5 "
  local check_message="Checking $app_name ..."
  local reachable="c && br && echo ' $check_message' && eval $check $app_domain &> /dev/null;"

  # if the current directory is a WSL
  # directory then switch to windows
  # directory before executing the script
  if [[ "$current_directory" != "/mnt/"* ]]; then
    cd /mnt/c
  fi

  # if there is an app ID open
  # that windowed chrome app
  # otherwise launch chrome with
  # with the domain passed as argument
  if [ -n "$app_id" ]; then
    open_app='cmd.exe /c start $browser --profile-directory=Default --app-id=$app_id;'
  else
    open_app='cmd.exe /c start $browser $app_domain'
  fi

  # this function to display the web app status
  function web_app_stat(){
    c && br
    echo " WebApp  : $app_name"
    echo " Link    : $app_domain"
    echo " Browser : $browser"
    echo " Status  : $1"
  }

  # check the stat
  if eval $reachable; then
    web_app_stat "Connected"
  else
    web_app_stat "Not Connected"
  fi

  # here to call the open_app function
  eval $open_app

  # if we changed directory then get back
  if [[ "$PWD" != "$current_directory" ]]; then
    cd - &>/dev/null
  fi

  return 0
}

#######################################################################

### PWAs Aliases

# this function to convert url to name
function convert_url(){
  url="$1"
  domain="${url%.*}"

  # Capitalize the first letter of the domain
  capitalized_domain="$(tr '[:lower:]' '[:upper:]' <<< ${domain:0:1})${domain:1}"
  echo "$capitalized_domain"
}

# this alias to open the GitHub app
alias gthb="gthb"

# this function for gthb alias
function gthb(){
  local is_a_git_repo=$(git rev-parse --is-inside-work-tree 2>/dev/null)

  local github_id="mjoklplbddabcmpepnokjaffbmgbkkgg"
  local github_link="github.com"
  local github_name="GitHub"

  if [[ "$is_a_git_repo" == "true" ]]; then
    local has_remote=$(git remote -v)
    if [ "$has_remote" ]; then
      local repo_url=$(git config --get remote.origin.url)
      local repo_owner=$(echo "$repo_url" | awk -F '[/:]' '{print $(NF-1)}')
      local repo_name="$(echo "$repo_url" | awk -F '/' '{print $NF}' | sed 's/.git$//')"
    else
      local repo_owner=$(git config user.username)
      local repo_name=$(basename "$(git rev-parse --show-toplevel)")
    fi

    local current_branch=$(git branch | awk '/\*/ {print $2}');

    function check_view(){
      echo -ne "${BOLD}${GREEN}Open ${WHITE}the repo ${LIGHT_BLUE}$repo_name ${WHITE}on GitHub ? (y/n) ";
      read check_view
      echo ${RESET}

      if [ "$check_view" = "y" ]; then
        cd /mnt/c

        cmd.exe /c start chrome.exe \
          --profile-directory=Default --app-id=$github_id \
          --app=https://github.com/$repo_owner/$repo_name/tree/$current_branch \

        cd - &>/dev/null
        # gh repo view $repo_owner/$repo_name \
        #   --web --branch $current_branch \
        #   &>/dev/null
      elif [ "$check_view" = "n" ];then
        open_web_app $github_link $github_id $github_name
      else
        check_view
      fi
    }

    # check if the repo has a remote
    # on github otherwise open the pwa
    if [ "$has_remote" ]; then
      local is_remote_branch=$(git branch -r | grep "origin/$current_branch")

      # check if the current branch has remote
      if [ -n "$is_remote_branch" ]; then
        check_view
      else
        echo "${BOLD} ■■▶ The remote repo ${LIGHT_BLUE}$repo_name ${WHITE}has no branch named ${GREEN}$current_branch ${WHITE}!" && br;
      fi
    else
      open_web_app $github_link $github_id $github_name
    fi
  else
    if [[ $# -eq 0 ]]; then
      open_web_app $github_link $github_id $github_name
    fi
  fi
}

# this alias to open chatGpt app
alias gpt="gpt"

# this function for gpt alias
function gpt(){
  local gpt_id="febkkahnhhdppidjakkemnckfhnkidba"
  local gpt_link="chatgpt.com"
  local gpt_name="ChatGpt"
  open_web_app $gpt_link $gpt_id $gpt_name
}

# this alias to open Google Gemini app
alias gmn="gmn"

# this function for gmn alias
function gmn(){
  local gmn_id="acehpdabncjaanhpihehcmhidhmbdcoo"
  local gmn_link="gemini.google.com"
  local gmn_name="Gemini"
  open_web_app $gmn_link $gmn_id $gmn_name
}

# this alias to open ClaudeAI app
alias cld="cld"

# this function for cld alias
fuction cld(){
  local claude_id="fmpnliohjhemenmnlpbfagaolkdacoja"
  local claude_link="claude.ai"
  local claude_name="ClaudeAI"
  open_web_app  $claude_link $claude_id $claude_name
}

# this alias to open reddit forum
alias rdt="rdt"

# this function for rdt alias
function rdt(){
  local reddit_id="lgnggepjiihbfdbedefdhcffnmhcahbm"
  local reddit_link="reddit.com"
  open_web_app $reddit_link $reddit_id
}

# this alias to open Digital Clock Web App
alias clock="allow_sudo && clock"

# this function for clock alias
function clock(){
  local clock_id="pgoffdmnhcendlolaaobdojhhdnkfdlj"
  local clock_link="localhost"
  local clock_name="Digital Clock"

  # # start apache server if not running
  # if ! pgrep apache2 > /dev/null; then
  #   sudo service apache2 start &>/dev/null;
  # fi

  # open clock PWA or Progressive Web App
  open_web_app $clock_link $clock_id $clock_name;

  # stop apache server
  # sudo service apache2 stop &>/dev/null;
}

# this alias to open the GitLab app
alias gtlb="gtlb"

# this function for gthb alias
function gtlb(){
  local gitlab_id="jndlecohfigjmhidboiabnpjfmjgmacp"
  local gitlab_link="gitlab.com"
  local gitlab_name="GitLab"
  open_web_app $gitlab_link $gitlab_id $gitlab_name
}

# this alias to open pypi
alias pypi="pypi"

# this function for pypi alias
function pypi(){
  local pypi_id="dhfmdekmhnminddhppcomhncjifnohcg"
  local pypi_link="pypi.org"
  local pypi_name="PyPi"
  open_web_app $pypi_link $pypi_id $pypi_name
}

# this alias to open testpypi
alias testpypi="testpypi"

# this function for pypi alias
function testpypi(){
  local test_pypi_id="opibpddgphoocjppppodcfdfdccdeoif"
  local test_pypi_link="test.pypi.org"
  local test_pypi_name="Test PyPi"
  open_web_app $test_pypi_link $test_pypi_id $test_pypi_name
}
# this alias to open crates Web App
# crates.io is the official rust package repo
alias crates="crates"

# this function for crates alias
function crates(){
  local crates_id="jeibpciabahgpgbljbmbkjgkkmjcfhdp"
  local crates_link="crates.io"
  local crates_name="Crates"
  open_web_app $crates_link $crates_id $crates_name
}

# this alias to open cloud convert
alias conv="conv"

# this function for img alias
function conv(){
  local cloud_convert_id="hdmdoclnahphbppladolaimacehflnnb"
  local cloud_convert_link="cloudconvert.com"
  local cloud_convert_name="Cloud Convert"
  open_web_app $cloud_convert_link $cloud_convert_id $cloud_convert_name
}

# this alias to open mastodon.social
alias mstdn="mstdn"

# this function for mstdn alias
function mstdn(){
  local mastodon_id="ikigfogfljecogfmdkeiipdcamdbibjl"
  local mastodon_link="mastodon.social"
  open_web_app $mastodon_link $mastodon_id
}

# this alias to open Facebook app
alias fb="fb"

# this function for fb alias
function fb(){
  local fb_id="gelmehpcmiomoockkmdlfadoankpigol"
  local fb_link="facebook.com"
  open_web_app $fb_link $fb_id
}

# this alias to open Instagram app
alias itg="itg"

# this function for fb alias
function itg(){
  local insta_id="akpamiohjfcnimfljfndmaldlcfphjmp"
  local insta_link="instagram.com"
  open_web_app $insta_link $insta_id
}

# this alias to open the discord app
alias dsc="dsc"

# this function for dsc alias
function dsc(){
  local discord_id="magkoliahgffibhgfkmoealggombgknl"
  local discord_link="discord.com"
  open_web_app $discord_link $discord_id
}

# this alias to open Twitter X Web App
alias twx="twx"

# this function for twx alias
function twx(){
  local twitter_id="lodlkdfmihgonocnmddehnfgiljnadcf"
  local twitter_link="x.com"
  local twitter_name="TwitterX"
  open_web_app $twitter_link $twitter_id $twitter_name
}

# this alias to open YouTube Web App
alias ytb="ytb"

# this function for ytb alias
function ytb(){
  local youtube_id="agimnkijcaahngcdmfeangaknmldooml"
  local youtube_link="youtube.com"
  local youtube_name="YouTube"
  open_web_app $youtube_link $youtube_id $youtube_name
}

# this alias to open hackerank
alias hcrk="hcrk"

# this function for hcrk alias
function hcrk(){
  local hackerrank_id="jlokchaaimeiedjgobonphmigfpingaj"
  local hackerrank_link="hackerrank.com"
  local hackerrank_name="HackerRank"
  open_web_app $hackerrank_link $hackerrank_id $hackerrank_name
}

# this alias to open LinkedIn WebApp
alias lnk="lnk"

# this function for lnk alias
function lnk(){
  local linkedin_id="ohghonlafcimfigiajnmhdklcbjlbfda"
  local linkedin_link="linkedin.com"
  local linkedin_name="LinkedIn"
  open_web_app $linkedin_link $linkedin_id $linkedin_name
}

# this alias to open netlify web app
alias ntlf="ntlf"

# this function for ntlf alias
function ntlf(){
  local netlify_id="dlbhokdiippnblopfealccihgfhaofkb"
  local netlify_link="netlify.com"
  local netlify_name="NetLify"
  open_web_app $netlify_link $netlify_id $netlify_name
}

# this alias to open dev.to web app
alias devto="devto"

# this function for devto alias
function devto(){
  local devto_id="ecapchmcnohmakooheeinoaidebbiacm"
  local devto_link="dev.to"
  local devto_name="DevTo"
  open_web_app $devto_link $devto_id $devto_name
}

# this alias to open Compiler Explorer Web App
alias cmplr="cmplr"

# this function for cmplr alias
function cmplr(){
  local cmplr_id="chjjlngghpbmipjipdfdjhcndbiklfje"
  local cmplr_link="godbolt.org"
  local cmplr_name="Compiler Explorer"
  open_web_app $cmplr_link $cmplr_id $cmplr_name
}

# this alias to open daedalOS Web App
alias daeos="daeos"

# this function for daeos alias
function daeos(){
  local daeos_id="ojamcdcpaheomdkldanjflobhhpeoegg"
  local daeos_link="dustinbrett.com"
  local daeos_name="daedalOS"
  open_web_app $daeos_link $daeos_id $daeos_name
}

# this alias to open MacOs BigSur Web App
alias bigsur="bigsur"

# this function for bigsur alias
function bigsur(){
  local bigsur_id="hejggljhmjcedakiebjfafljllofblid"
  local bigsur_link="macos-big-sur-clone.vercel.app"
  local bigsur_name="MacOs BigSur"
  open_web_app $bigsur_link $bigsur_id $bigsur_name
}

# this alias to open Windows 11 Web App
alias win="win"

# this function for win alias
function win(){
  local win_id="kmdomeghommpdkfhamainmeepipgbgpi"
  local win_link="win11.blueedge.me"
  local win_name="Windows 11"
  open_web_app $win_link $win_id $win_name
}

# this alias to open Google Hacking Database Web App
alias exdb="exdb"

# this function for exdb alias
function exdb(){
  local exdb_id="oibdijhbidmbckpcenopepmcaafbiiih"
  local exdb_link="www.exploit-db.com"
  local exdb_name="Google Hacking Database"
  open_web_app $exdb_link $exdb_id $exdb_name
}

# this alias to open Kaggle Web App
alias kgl="kgl"

# this function for kgl alias
function kgl(){
  local kgl_id="ajdemkepbiggbelkgicfebbjokenncei"
  local kgl_link="kaggle.com"
  local kgl_name="Kaggle"
  open_web_app $kgl_link $kgl_id $kgl_name
}

# this alias to open Ip Info Web App
alias ipinfo="ipinfo"

# this function for ipinfo alias
function ipinfo(){
  local ipinfo_id="adopfgmhmfaggadmlkiklebhncpjnnac"
  local ipinfo_link="ipinfo.io"
  local ipinfo_name="IpInfo"
  open_web_app $ipinfo_link $ipinfo_id $ipinfo_name
}

# this alias to open Course Careers Web App
alias crs="crs"

# this function for crs alias
function crs(){
  local crs_id="ndljfckhgknkknnkmemfkalcibbpfhla"
  local crs_link="coursecareers.com"
  local crs_name="Course Careers"
  open_web_app $crs_link $crs_id $crs_name
}

# this alias to open Stackoverflow Web App
alias stck="stck"

# this function for stck alias
function stck(){
  local stck_id="gafidhmaaknkinigcnolmldilpdlfdpa"
  local stck_link="stackoveerflow.com"
  local stck_name="Stack Over Flow"
  open_web_app $stck_link $stck_id $stck_name
}

# this alias to open Canva App
alias canva="canva"

# this function for canva alias
function canva(){
  cd /mnt/c/Users/lab_l/AppData/Local/Programs/Canva
  cmd.exe /c start Canva.exe
  cd - &>/dev/null
}

# this alias to open MuseScore Web App
alias mscr="mscr"

# this function for mscr alias
function mscr(){
  local mscr_id="ocbioacpdhnddoolpphbcnbndighhfkn"
  local mscr_link="musescore.com"
  local mscr_name="MuseScore"
  open_web_app $mscr_link $mscr_id $mscr_name
}

# this alias to open Docker Hub Web App
alias dckhb="dckhb"

# this function for dckhb alias
function dckhb(){
  local dckhb_id="mclclddaglkchjeeijdmnlfcfedonbll"
  local dckhb_link="hub.docker.com"
  local dckhb_name="Docker Hub"
  open_web_app $dckhb_link $dckhb_id $dckhb_name
}

# this alias to open Nano Midi Web App
alias midi="midi"

# this function for midi alias
function midi(){
  local midi_id="cajodfhkmmnbofphdiodilpglpkjaepb"
  local midi_link="nanomidi.net"
  local midi_name="Nano Midi"
  open_web_app $midi_link $midi_id $midi_name
}

# this alias to open Google Chat Web App
alias chat="chat"

# this function for chat alias
function chat(){
  local chat_id="mdpkiolbdkhdjpekfbkbmhigcaggjagi"
  local chat_link="mail.google.com"
  local chat_name="Google Chat"
  open_web_app $chat_link $chat_id $chat_name
}

# this alias to open Virus Total Web App
alias virustotal="virustotal"

# this function for virustotal alias
function virustotal(){
  local virustotal_id="dnopbpmlkabcondfpckfnhgabfcncjmg"
  local virustotal_link="virustotal.com"
  local virustotal_name="Virus Total"
  open_web_app $virustotal_link $virustotal_id $virustotal_name
}

# this alias to open CodinGame Web App
alias codingame="codingame"

# this function for codingame alias
function codingame(){
  local codingame_id="mdmdhiclipbbmgikhgefloaghajjcheg"
  local codingame_link="codingame.com"
  local codingame_name="CodinGame"
  open_web_app $codingame_link $codingame_id $codingame_name
}

# this alias to open Cisco Skills For All Web App
alias cisco="cisco"

# this function for cisco alias
function cisco(){
  local cisco_id="imjciepmglgacccklncenjgecohaihcj"
  local cisco_link="skillsforall.com"
  local cisco_name="Cisco Skills For All"
  open_web_app $cisco_link $cisco_id $cisco_name
}

# this alias to open Hack Tricks Web App
alias tricks="tricks"

# this function for tricks alias
function tricks(){
  local tricks_id="mggngfogmkhbpicjamlefjpciidpodmm"
  local tricks_link="book.hacktricks.xyz"
  local tricks_name="Hack Tricks"
  open_web_app $tricks_link $tricks_id $tricks_name
}

# this alias to open Try Hack Me Web App
alias hackme="hackme"

# this function for hackme alias
function hackme(){
  local hackme_id="daeaiadaklimdlhhcpgbdkgdkmghbkmf"
  local hackme_link="tryhackme.com"
  local hackme_name="Try Hack Me"
  open_web_app $hackme_link $hackme_id $hackme_name
}

# this alias to open google translate Web App
alias translate="translate"

# this function for translate alias
function translate(){
  local translate_id="edanbjnaiofggfmimiidpfmhggkbokck"
  local translate_link="translate.google.com"
  local translate_name="Google Translate"
  open_web_app $translate_link $translate_id $translate_name
}


# this alias to open Marvell Web App
alias marvell="marvell"

# this function for marvell alias
function marvell(){
  local marvell_id="fdleagllbcbhmlabenhdmdddefhohnbb"
  local marvell_link="marvell.com"
  local marvell_name="Marvell"
  open_web_app $marvell_link $marvell_id $marvell_name
}

# this alias to open DhIWise Web App
# N.B. this is an app that have templates
# for web and mobile app ready for production
# 08-16-2024 19:11
alias dhiwise="dhiwise"

# this function for dhiwise alias
function dhiwise(){
  local dhiwise_id="dcinmcknnkhikonobhpniddjnehmnkac"
  local dhiwise_link="app.dhiwise.com"
  local dhiwise_name="DhiWise"
  open_web_app $dhiwise_link $dhiwise_id $dhiwise_name
}

# this alias to open Quora Forum Web App
alias quora="quora"

# this function for quora alias
function quora(){
  local quora_id="cechoboadpfjgoaooidphlandgelehhi"
  local quora_link="quora.com"
  local quora_name="Quora"
  open_web_app $quora_link $quora_id $quora_name
}

# this alias to open npmjs Web App
alias npmjs="npmjs"

# this function for npmjs alias
function npmjs(){
  local npmjs_id="foijodnoknckfliaajfnihbonnniljbe"
  local npmjs_link="npmjs.com"
  local npmjs_name="Npm JS"
  open_web_app $npmjs_link $npmjs_id $npmjs_name
}

# this alias to open LolBas Web App
alias lolbas="lolbas"

# this function for lolbas alias
function lolbas(){
  local lolbas_id="jlhledfapfgaeockhmjniedihamlliga"
  local lolbas_link="lolbas-project.github.io"
  local lolbas_name="LolBas"
  open_web_app $lolbas_link $lolbas_id $lolbas_name
}

# this alias to open Loud Me Web App
alias loudme="loudme"

# this function for loudme alias
function loudme(){
  local loudme_id="iancljhjkfkhobcfkijolghiieciilka"
  local loudme_link="loudme.ai"
  local loudme_name="LoudMe"
  open_web_app $loudme_link $loudme_id $loudme_name
}

# this alias to open Snap Save
# Facebook Video Downloader Web App
alias snap="snap"

# this function for snap alias
function snap(){
  local snap_id="caepnkackbfnijpgljjkjfjhoiodmdek"
  local snap_link="snapsave.app"
  local snap_name="Snap Save"
  open_web_app $snap_link $snap_id $snap_name
}

# this alias to open Suno Web App
alias suno="suno"

# this function for suno alias
function suno(){
  local suno_id="poemkolicenobkfdpoibhjjbgmjnlnpj"
  local suno_link="suno.com"
  local suno_name="Suno"
  open_web_app $suno_link $suno_id $suno_name
}

# this alias to open itch games Web App
alias itch="itch"

# this function for itch alias
function itch(){
  local itch_id="bhgdfnaojobmidmdmdipcadlijbopndi"
  local itch_link="itch.io"
  local itch_name="Itch Games"
  open_web_app $itch_link $itch_id $itch_name
}

# this alias to open BitLy Web App
alias bitly="bitly"

# this function for bitly alias
function bitly(){
  local bitly_id="iojpgkodflboefdoklfpbegdhbhmcjhe"
  local bitly_link="app.bitly.com"
  local bitly_name="BitLy"
  open_web_app $bitly_link $bitly_id $bitly_name
}

# this alias to open Binance Web App
# NOTE : Binance is used for
# Cryptocurrency Exchange for Bitcoin,
# Ethereum & Altcoins
alias binance="binance"

# this function for binance alias
function binance(){
  local binance_id="cnncjkiomekpjaednmgfcfiommnjogjo"
  local binance_link="binance.com"
  local binance_name="Binance"
  open_web_app $binance_link $binance_id $binance_name
}

# this alias to open Wikipedia Web App
alias wiki="wiki"

# this function for wiki alias
function wiki(){
  local wiki_id="mabbogacohpoeacebobbecclmpanobce"
  local wiki_link="wikipedia.org"
  local wiki_name="Wikipedia"
  open_web_app $wiki_link $wiki_id $wiki_name
}

# this alias to open Flux AI Web App
alias fluxai="fluxai"

# this function for fluxai alias
function fluxai(){
  local fluxai_id="mlmnaccmlmoihcobbmciddblmpjjaacp"
  local fluxai_link="www.fluxpro.ai"
  local fluxai_name="Flux AI"
  open_web_app $fluxai_link $fluxai_id $fluxai_name
}

# this alias to open W3SCHOOLS Offline Web App
alias wscl="allow_sudo && wscl"

# this function for wscl alias
function wscl(){
  local wscl_id="lcmlmpinhhipbaifakfjccanpehnglei"
  local wscl_link="localhost"
  local wscl_name="W3Schools"

  if [[ ! $(pgrep apache2) ]]; then
    echo -ne "${BOLD}[${GREEN}+${WHITE}]${WHITE} Starting Apache Server ...";
    sudo service apache2 start &>/dev/null;
  fi

  open_web_app $wscl_link $wscl_id $wscl_name
}

# this alias to open Cyber Chef Web App
alias cbr="allow_sudo && cbr"

# this function for cbr alias
function cbr(){
  local github_reachable="sudo ping -c 1 -W 5 github.com"
  if eval $github_reachable; then
    local cbr_id="laoalcpgflnjimblmgmjfhdfheldnmeo"
    local cbr_link="gchq.github.io"
    local cbr_name="Cyber Chef"
    open_web_app $cbr_link $cbr_id $cbr_name
  else
    cd /mnt/d/NTSOA/dev/github_repo/forks/cyber_chef
    bwsop CyberChef_v10.18.8.html
    cd -&>/dev/null
  fi
}

# this alias to open fast.com
alias fast="open_web_app fast.com"

# this alias to recharge the router
alias rtr="rtr"

# this function for rtr alias
function rtr(){
  local airtel_id="phkfjlcmjmnindcbhfmnmlikainlhodg"
  local airtel_link="www.airtel.mg"
  local airtel_name="Airtel Router"
  open_web_app $airtel_link $airtel_id $airtel_name
}

# this alias to view the HTX_AP dashboard
alias htx="htx"

# this function for htx alias
function htx(){
  local router_id="hadedjhngljijoeemkcdnpkfdiadbgfe"
  local router_IP="192.168.8.1"
  local router_name="h471x Router"

  # start apache server if not running
  # if ! pgrep apache2 > /dev/null; then
  #   sudo service apache2 start &>/dev/null;
  # fi

  # open clock PWA or Progressive Web App
  open_web_app $router_IP $router_id $router_name;

  # stop apache server
  # sudo service apache2 stop &>/dev/null;
}

# this alias to open DotFyle Web App
alias dotfyle="dotfyle"

# this function for dotfyle alias
function dotfyle(){
  local dotfyle_id="lcogponjknebgjnikmmnmfpkgmpmolel"
  local dotfyle_link="dotfyle.com"
  local dotfyle_name="DotFyle"
  open_web_app $dotfyle_link $dotfyle_id $dotfyle_name
}

#######################################################################

### WSL Programs Aliases

# CREATED : 10-24-2024 18:57
# Checks if the current directory
# is a Windows directory.
# Exits if not,
# otherwise executes the script.
# This function is a big deal
# for me since I will refactor
# tons of codes with it
function check_win(){
  if [[ "$PWD" != "/mnt/"* && ! -L "$PWD" ]]; then
    echo "${BOLD}${RED}Please execute this command inside Windows (/mnt/*) directory!"
    # exit the script
    return 1
  fi
  return 0
}

# CREATED : 10-24-2024 19:19
# this alias to forcefully
# run a windows command inside
# WSL by temporarely move to C drive
alias force_run="force_run"

# this function for force_run alias
function force_run(){
  if [[ "$PWD" != "/mnt/"* && ! -L "$PWD" ]]; then
    cd /mnt/c
    eval "$@"
    cd - &>/dev/null
  else
    eval "$@"
  fi
}

# this alias to run C/C++ program
alias run_c_cpp="check_win && run_c_cpp"

# this function to execute C/C++ program
function run_c_cpp(){
  file="$1";
  out="${file%.*}"

  # Condition 1: Check if the file extension is c
  extension='[[ "${file##*.}" == "c" ]]';

  # Condition 2: Check if the file contains math library
  math='grep -E "^#include <math.h>" "$file" >/dev/null';

  # Ternary expressions to determine compiler and flags
  compiler=$(eval "$extension" && echo "gcc" || echo "g++");
  flags=$(eval "$math" && echo "-lm" || echo "");

  # check if an old executable exists
  if [[ -f "$out" ]]; then
    dlf "$out";
  fi

  # Compile the C file
  "$compiler" "$file" -o "$out" $flags;

  # Execute the resulting executable
  all "$out";
  clear && br;
  ./"$out";
}

# this alias to run Java program
alias run_java="check_win && run_java"

# this function for run_java alias
function run_java(){
  file="$1";
  out="${file%.*}"
  compiler="javac"
  interpreter="java"

  "$compiler" "$file"
  "$interpreter" "$out"
}

# this alias to run rust code
alias run_rust="check_win && run_rust"

# this function for run_rust alias
function run_rust(){
  file="$1";
  out="${file%.*}"
  compiler="rustc"

  "$compiler" "$file"
  ./"$out".exe
}

# this alias to run an executable file or a script
alias rn="rn"

# this function for rn alias
function rn(){
  # this will look the extension of the file
  # use of ${1%.*} to retrieve the file name
  # explanation :
  # ${file%pattern} ==> this will remove the matched
  # pattern from the file from the end of the file
  #
  # use of ${1##*.} to retrieve extension
  # explanation :
  # ${file##*.} ==> this will remove the longest
  # matched string from the beginning of the file
  # 2024-02-12 00:27
  case "${1##*.}" in
    py)
      # all "$1" && c && echo -e && py "$1" && echo -e;;
      python "$@" && return 0;;
    c || cpp)
      # UPDATED : 10-24-2024 18:45
      run_c_cpp "$1"
      br;;
    java)
      run_java "$1"
      ;;
    rs)
      run_rust "$1"
      ;;
    js)
      c && br 2 && node "$1" && br
      ;;
    com)
      open_web_app "$1";
      ;;
    bat)
      cmd.exe /c "$1";
      ;;
    html || pdf)
      bwsop "$1"
      ;;
    *)
      all "$1" && c && ./"$1";;
esac
}

# this alias to view inside a file
alias vf="vf"

# this function for vf alias
function vf() {
  if [[ -f "$1" ]]; then
    case "${1##*.}" in
      db|sqlite*|xlsx|docx|pptx|ppt|wmv|pcapng|pdf|jpg|png|JPG|PNG|lnk|docx|xslsx|pptx|mp*|zip|rar|gns3) 
        explorer.exe "$1"
        ;;
      # open all files that have default app with windows explorer
      html)
        if [[ "$PWD" == "/mnt/"* ]]; then
          explorer.exe "$1"
        else
          bwsop "$1"
        fi
        ;;
      fxml)
        cmd.exe /c start SceneBuilder.exe "$@"
        ;;
      *) nvim "$1" ;;
    esac
    return 0
  elif [[ -d "$1" ]]; then
    op "$1"
  fi
}

# this alias to open ThemeTool
alias thm="thm"

# this function for thm alias
function thm(){
  powershell.exe -command "Start-Process C:\Users\lab_l\Downloads\SecureUxTheme-amd64\ThemeTool.exe -Verb RunAs"
}

# this alias to call the sqlite3.Exe file
alias sqlite="sqlite"

# this function for ssqlite alias
function sqlite(){
  if [[ $# -eq 0 ]]; then
    echo "■■▶ Please specify a file.db  ";
  else
    if [[ $# -eq 1 && "${1##*.}" -eq "db" ]]; then
      c && br;
      sqlite3.exe $@;
      cv;
    else
      sqlite3.exe $@;
    fi
  fi
}

# # this alias to call the windows nodeJS Program
# alias node="node"
#
# # this function for node alias
# function node(){
#   node.exe $@;
# }

# this alias to launch eclipse IDE
alias eclipse="eclipse"

# this function for eclipse alias
function eclipse(){
  if [[ "$PWD" == "/mnt/"* ]]; then
    cmd.exe /c start eclipse.exe ${@:-.}
  else
    cd /mnt/c
    cmd.exe /c start eclipse.exe ${@:-.}
    cd - &>/dev/null
  fi
}

# this alias to launch Apache NetBeans IDE
alias beans="beans"

# this function for beans alias
function beans(){
  force_run cmd.exe /c start netbeans64.exe ${@:-.}
}

# this alias to launch intelijieda
alias idea="idea"

# this function for idea alias
function idea(){
  force_run cmd.exe /c start idea64.exe ${@:-.}
}

# this alias to open PyCharm
alias charm="charm"

# this function for charm alias
function charm(){
  force_run cmd.exe /c start pycharm64.exe ${@:-.}
}

# this alias to launch ppsspp
alias psp="psp"

# this function for psp alias
function psp(){
  force_run cmd.exe /c start PPSSPPWindows.exe $@
}

# this alias to open tor browser
alias tor="tor"

# this function for tor alias
function tor(){
  force_run cmd.exe /c start tor.exe $@
}

# this alias for windows ngrok
alias ngrok="ngrok"

# this function for ngrok alias
# CREATED: 05-29-2024 10:25
# UPDATED: 10-25-2024 19:49
function ngrok(){
  # check for dashes then do not
  # redirect to another terminal
  for arg in "$@"; do
    if [[ "$arg" == -* || "$arg" == --* ]]; then
      force_run cmd.exe /c ngrok "$@"
      break
    else
      # default ngrok command that redirects
      # to a new terminal so the current one
      # is available for other commands
      force_run cmd.exe /c start ngrok "$@"
      break
    fi
  done
}

# Completion function for ngrok
_ngrok_completion() {
  local cur
  cur="${COMP_WORDS[COMP_CWORD]}"

  # Define the list of possible completions
  local commands="api completion config credits diagnose help http service start tcp tls tunnel update version"

  # Provide completion options based on the current word being completed
  COMPREPLY=($(compgen -W "${commands}" -- "$cur"))
}

# Register the completion function for ngrok
complete -F _ngrok_completion ngrok

# this alias to launch process explorer
alias prex="prex"

# this function for prex alias
function prex(){
  force_run cmd.exe /c start procexp64
}

# prompt to install a script
# as an alias into zshrc
function prompt_install(){
  local alias_definition="alias $1=\"$1\""
  local file_name="/home/$USER/.zshrc"

  # if it already existed exit the script
  if grep -q "$alias_definition" "$file_name"; then
    echo "Alias $alias_definition already exists in $file_name"
    return
  fi

  # get the choice
  echo -n "${BOLD}${GREEN} Install ${WHITE}alias as ${LIGHT_BLUE}$1 ${WHITE}? (y/n) "
  read choice

  if [[ "$choice" == "y" ]]; then
    script="$1"
    echo ${RESET}
  elif [[ "$choice" == "n" ]]; then
    echo -n "${BOLD}${GREEN} Install ${WHITE}alias as :${LIGHT_BLUE} "
    read node_script_name
    script="$node_script_name"
    echo ${RESET}
    if grep -q "$script" "$file_name"; then
      echo "Alias $script already exists in $file_name"
      return
    fi
  else
    prompt_install "$1"
  fi
}

# this alias to create a new folder
# for new program installation in windows
alias install_win="install_win"

# this function for install_win alias
function install_win(){
  mkdir /mnt/d/NTSOA/INSTALLED/"$1"
}

# this function to install aliases
function install_alias(){
  # check if the alias already existed
  local file_name="/home/$USER/.$(basename $SHELL)rc"

  prompt_install "$1"
  local script="$script"
  local alias_name="alias $script"
  # echo $script

  if grep -q "$alias_name" "$file_name"; then
    echo "Alias $script already exists in $file_name"
    return
  fi

  # filename will be our zshrc
  local location="# from the terminal to zshrc"

  # Get dynamically the line of where we should inject the new alias
  # Get the second occurrence since we mention it in the location variable
  local line_number=$(grep -n "$location" "$file_name" | sed -n '2p' | cut -d: -f1)

  # Get 2 lines below the matching line
  local line_number=$((line_number + 2))

  # only install it only if it is defined
  if [[ -n "$script" ]]; then
    local script_cmd="${script}_cmd"
    {
      head -n $((line_number - 1)) "$file_name"
      echo "# this to call windows $script"
      echo "alias $script=\"check_win && $script\""
      echo ''
      echo "# this function for $script alias"
      echo "function $script() {"
      echo "  cmd.exe /c $script \"\$@\""
      echo '}'
      echo ''
      tail -n +$line_number "$file_name"
    } >temp && mv temp "$file_name"

    source "$file_name"
  fi
}

# this function to install path aliases
function install_path(){
  # check if the alias already existed
  local file_name="/home/$USER/.$(basename $SHELL)rc"

  prompt_install "$(basename $PWD)"
  local script="$script"
  local alias_name="alias $script"
  local path_to_install="$PWD"

  if grep -q "$alias_name" "$file_name"; then
    echo "Alias $script already exists in $file_name"
    return
  fi

  # location of the path alias
  # will be 2 lines below this
  local location="### WSL Shortcuts"

  # Get dynamically the line of where we should inject the new alias
  # Get the second occurrence since we mention it in the location variable
  local line_number=$(grep -n "$location" "$file_name" | head -n1 | cut -d: -f1)

  # Get 2 lines below the matching line
  local line_number=$((line_number + 2))

  # only install it only if it is defined
  if [[ -n "$script" ]]; then
    {
      head -n $((line_number - 1)) "$file_name"
      echo "# this alias for $script shortcut"
      echo "alias $script='op \"$path_to_install\"'"
      echo ''
      tail -n +$line_number "$file_name"
    } >temp && mv temp "$file_name"

    source "$file_name"
  fi
}

# Alias to call the windows npm
alias npm="npm"

# Function for npm alias
function npm() {
  local npm_cmd='cmd.exe /c npm "$@"'

  # loop through 3 arguments
  # to get the script name
  # and store them into an array
  local arg_count=3
  local args=()

  # Loop through all arguments
  for ((i = 1; i <= arg_count; i++)); do
    args+="${(@)@:$i:1}"
  done

  if [[ "${args[1]}" == "install" && "${args[2]}" == "-g" ]]; then
    # Retain only letters (a-z, A-Z) and dashes (-)
    # get the name of the package to directly
    # associate it to a new alias after installation
    local package_name=$(echo "${args[3]}" | sed 's/[^a-zA-Z-]//g')
  elif [[ ("$arg" != "--verbose" && "$arg" != "-g") && ("$arg" == -* || "$arg" == --*) ]]; then
    npm_cmd='cmd.exe /c npm "$@"'
  fi

  # only run inside windows directory
  if [[ "$PWD" == "/mnt/"* ]]; then

    # install alias only if we install
    # an npm script globally
    if [[ -n "$package_name" ]]; then
      install_alias $package_name
    else
      eval "$npm_cmd"
    fi
  else
    echo "${BOLD}${RED}Please execute this command inside Windows directory!"
  fi
}

# Alias to call the windows npx
alias npx="npx"

# Function for npx alias
function npx() {
  local npx_cmd='cmd.exe /c start npx "$@"'
  for arg in "$@"; do
    if [[ "$arg" != "--verbose" && ("$arg" == -* || "$arg" == --*) ]]; then
      local npx_cmd='cmd.exe /c npx "$@"'
      break
    fi
  done

  if [[ "$PWD" == "/mnt/"* ]]; then
    eval $npx_cmd
  else
    echo "${BOLD}${RED}Please execute this command inside Windows directory!"
  fi
}

# Alias to call the windows typescript
alias tsc="check_win && tsc"

# Function for tsc alias
function tsc() {
  cmd.exe /c tsc "$@"
}

# this to call windows vsce
alias vsce="check_win && vsce"

# this function for vsce alias
function vsce() {
  cmd.exe /c vsce "$@"
}

# this to call windows workbox
alias workbox="check_win && workbox"

# this function for workbox alias
function workbox() {
  cmd.exe /c workbox "$@"
}

# this to call windows deno
alias deno="check_win && deno"

# this function for deno alias
function deno() {
  cmd.exe /c deno "$@"
}

# Here to inject aliases
# from the terminal to zshrc

# this to call windows neohtop
alias neohtop="check_win && neohtop"

# this function for neohtop alias
function neohtop() {
  cmd.exe /c start neohtop
}

# this to call windows docker
alias docker="check_win && docker"

# this function for docker alias
function docker() {
  cmd.exe /c docker "$@"
}

# this to call windows yo
alias yo="check_win && yo"

# this function for yo alias
function yo() {
  cmd.exe /c yo "$@"
}

# this to call windows generator-code
alias generator-code="check_win && generator-code"

# this function for generator-code alias
function generator-code() {
  cmd.exe /c generator-code "$@"
}

# this to call windows msfvenom
alias msfvenom="check_win && msfvenom"

# this function for msfvenom alias
function msfvenom() {
  cmd.exe /c msfvenom "$@"
}

# this to call windows msfconsole
alias msfconsole="check_win && msfconsole"

# this function for msfconsole alias
function msfconsole() {
  cmd.exe /c msfconsole "$@"
}

# this to call windows ping
alias ping="check_win && ping"

# this function for ping alias
function ping() {
  cmd.exe /c ping "$@"
}

# this to call windows code
alias code="check_win && code"

# this function for code alias
function code() {
  cmd.exe /c code "$@"
}

# this to call windows acrobat
alias acrobat="check_win && acrobat"

# this function for acrobat alias
function acrobat() {
  cmd.exe /c acrobat "$@"
}

# this to call windows jar
alias jar="check_win && jar"

# this function for jar alias
function jar() {
  cmd.exe /c jar "$@"
}

# this to call windows javac
alias javac="check_win && javac"

# this function for javac alias
function javac() {
  cmd.exe /c javac "$@"
}

# this to call windows java
alias java="check_win && java"

# this function for java alias
function java() {
  cmd.exe /c java "$@"
}

# this to call windows rustlings
alias rustlings="check_win && rustlings"

# this function for rustlings alias
function rustlings() {
  cmd.exe /c rustlings "$@"
}

# this to call windows putty
alias putty="check_win && putty"

# this function for putty alias
function putty() {
  cmd.exe /c putty "$@"
}

# this to call windows cmake
alias cmake="check_win && cmake"

# this function for cmake alias
function cmake() {
  cmd.exe /c cmake "$@"
}

# this to call windows iperf3
alias iperf3="check_win && iperf3"

# this function for iperf3 alias
function iperf3() {
  cmd.exe /c iperf3 "$@"
}

# this to call windows ipconfig
alias ipconfig="check_win && ipconfig"

# this function for ipconfig alias
function ipconfig() {
  cmd.exe /c ipconfig "$@"
}

# this to call windows gem
alias gem="check_win && gem"

# this function for gem alias
function gem() {
  cmd.exe /c gem "$@"
}

# this to call windows irb
alias irb="check_win && irb"

# this function for irb alias
function irb() {
  cmd.exe /c irb "$@"
}

# this to call windows ruby
alias ruby="check_win && ruby"

# this function for ruby alias
function ruby() {
  cmd.exe /c ruby "$@"
}

# this to call windows curl
alias curl="check_win && curl"

# this function for curl alias
function curl() {
  cmd.exe /c curl "$@"
}

# Alias to call the windows vue
alias vue="vue"

# Function for vue alias
function vue() {
  local vue_cmd='cmd.exe /c start vue "$@"'
  for arg in "$@"; do
    if [[ "$arg" != "--verbose" && ("$arg" == -* || "$arg" == --*) ]]; then
      local vue_cmd='cmd.exe /c vue "$@"'
      break
    fi
  done

  if [[ "$PWD" == "/mnt/"* ]]; then
    eval $vue_cmd
  else
    echo "${BOLD}${RED}Please execute this command inside Windows directory!"
  fi
}

# this alias to open FL Studio
alias fl="fl"

# this function for fl alias
function fl(){
  cd /mnt/d/NTSOA/INSTALLED/FL\ STUDIO\ 12
  cmd.exe /c start FL64.exe
  cd - &>/dev/null;
}

# this alias to open apple music
alias music="music"

# this function for music alias
function music(){
  force_run cmd.exe /c start AppleMusic.exe
}

# this alias to launch xampp
alias xampp="xampp"

# this function for xampp alias
function xampp(){
  force_run cmd.exe /c start xampp-control.exe
}

# this alias to open notepad
alias ntp="ntp"

# this function for ntp alias
function ntp(){
  if [[ $# -eq 0 ]]; then
    cmd.exe /c start notepad.exe 2>/dev/null
  elif [[ $# -eq 1 ]]; then
    local formatted_path=$(wslpath -w .)
    cmd.exe /c start notepad.exe "$formatted_path\\$1" 2>/dev/null
  else
    echo "${BOLD} ■■▶ Usage : ntp file_to_open" && br;
  fi
}

# this alias to open VirtualBox
alias vm="vm"

# this function for vm alias
function vm(){
  force_run cmd.exe /c start VirtualBox.exe
}

# this alias to launch ventoy
alias ventoy="ventoy"

# this function for ventoy alias
function ventoy(){
  cd "/mnt/d/NTSOA/INSTALLED/VENTOY/ventoy-1.0.99"
  explorer.exe Ventoy2Disk.exe
  cd -&>/dev/null
}

# this alias to open wireshark
alias wsh="wsh"

# this alias for wsh alias
function wsh(){
  force_run cmd.exe /c start wireshark.exe
}

# this alias to open total commander
alias tcmd="TOTALCMD64.exe && cv"

# this alias to link python console exe file
# to /usr/bin/python_scripts/
alias pylink="pylink"

# this function for pylink alias
function pylink(){
  cd ~/python_script/
  ./link_scripts.sh "$1"
  cd - &>/dev/null
}

# this alias to unlink python console exe file
# from /usr/bin/python_scripts/
alias pyunlink="pyunlink"

# this function for pylink alias
function pyunlink(){
  cd ~/python_script/
  ./unlink_scripts.sh "$1"
  cd - &>/dev/null
}

# this alias to publish a python package
# to PyPi using windows twine
alias pypush="pypush"

# this function for pypush alias
function pypush() {
  local token_path=/mnt/d/NTSOA/credentials/recovery_codes/pypi_h471x_token.txt
  local TWINE_USERNAME=__token__
  local TWINE_PASSWORD=$(cat $token_path)
  twine upload --username $TWINE_USERNAME --password $TWINE_PASSWORD dist/*
}

# this function to run python as admin
function admin_python() {
  # Create an array to hold arguments for PowerShell
  local arg_list=()

  # Loop through all the provided arguments and escape them correctly
  for arg in "$@"; do
    arg_list+=("\"$arg\"") # Add quotes to each argument
  done

  # Join the array into a single string with commas for PowerShell
  local args_string=$(IFS=, ; echo "${arg_list[*]}")

  powershell.exe -command "Start-Process $(wslpath -w $PYTHON_PATH)\python.exe -ArgumentList $args_string -Verb RunAs -Wait"
}

# this alias to launch windows python
alias python="python"

# this function for python alias
# IMPROVED : 10-05-2024 22:28
# Check if the VIRTUAL_ENV is set
# then use python.exe in there
function python() {
  # Check if the script is being run with sudo
  if [[ $EUID -eq 0 ]]; then
    echo "Running with sudo"
    # Create an array to hold arguments for PowerShell
    local arg_list=()

    # Loop through all the provided arguments and escape them correctly
    for arg in "$@"; do
      arg_list+=("\"$arg\"") # Add quotes to each argument
    done

    # Join the array into a single string with commas for PowerShell
    local args_string=$(IFS=, ; echo "${arg_list[*]}")

    powershell.exe -command "Start-Process $(wslpath -w $PYTHON_PATH)\python.exe -ArgumentList $args_string -Verb RunAs"
  fi

  if [[ -n "$VIRTUAL_ENV" ]]; then
    # since I made it hidden handle the leading dot
    local env_dir=$(dirname "$VIRTUAL_ENV")/.$(basename "$VIRTUAL_ENV")
    local python_cmd=$(wslpath -w "$env_dir/Scripts/python.exe")
    cmd.exe /c "$python_cmd" "$@"
  else
    cmd.exe /c python.exe "$@"
  fi
}

# this function to create a linux python environment
function create_env(){
  local env_name="$1"
  python -m venv $env_name
}

# this function to activate a linux python
# environment, a functionality found on
# the activate script
function activate_env(){
  # reset the PATH first
  # reset_path

  # get the env name
  local env_name="$1"
  local display_env="${env_name#.}"

  # get the virtual environment
  # this will be displayed on
  # our prompt but the real
  # environment path is given below
  export VIRTUAL_ENV=$PWD/$display_env

  # # handle hidden env
  # local env_dir=$(dirname "$VIRTUAL_ENV")/$env_name

  # # incude the virtual env to path
  # PATH=$env_dir/bin:$PATH
  # export PATH
}

# This function finds all Python virtual
# environments in the current directory and returns them as an array.
function find_envs() {
  local envs=()

  # Enable 'nullglob' to prevent errors when using glob patterns (e.g., "$PWD"/*/)
  # In Zsh, if a glob pattern doesn't match any files or directories, an error like
  # "no matches found" is thrown. By setting 'nullglob', unmatched glob patterns
  # will expand to an empty string instead of causing an error. This allows safe iteration
  # through directories even when no matches are found.
  # We'll turn it off later (with 'unsetopt nullglob') to restore the default behavior,
  # ensuring that this change is only temporary within the script.
  setopt nullglob

  for dir in "$PWD"/*/ "$PWD"/.*/; do
    [[ -f "$dir/Scripts/python.exe" ]] && envs+=("$dir")
  done
  echo "${envs[@]}"
}

# this function to remove
# python virtual env from path
function reset_path(){
  if [[ -n "$VIRTUAL_ENV" ]]; then
    # get the path to VIRTUAL_ENV
    local env_dir=$(dirname $VIRTUAL_ENV)
    local env_name=.$(basename $VIRTUAL_ENV)

    # Remove the env from the path
    export PATH=$(echo $PATH | sed "s|^$env_dir/$env_name/bin:||")
  fi
}

# this function to unset the VIRTUAL_ENV
# global variable and restore the PATH to
# the original one, yet this is the code
# behind python environment deactivate
function disable_env(){
  # reset the path
  # reset_path

  # unset the virtual environment
  unset VIRTUAL_ENV
}

# This function deletes the specified Python virtual
# environment and unsets the VIRTUAL_ENV variable.
function delete_env() {
  local env_name="$1"

  dir_name=$(basename "$env_name")
  display_dir="${dir_name#.}"

  echo -ne "${BOLD} Deleting ${LIGHT_BLUE}$display_dir ${WHITE}python environment... ${RESET}"
  rm -rf $dir_name
  echo "${BOLD}${GREEN} ${RESET}"
}

# this alias to create a python environment
# from windows python and activate it
# SOLVED : 10-05-2024 22:23
# Finally I figured it out, I managed to
# display the Windows python virtual environment
# in the Powerlevel10k prompt, no big deal just
# export the VIRTUAL_ENV variable with the path
# of the Windows python virtual environment.
# No need to activate it; Python and pip will automatically
# use the executables in that environment if VIRTUAL_ENV is set.
alias pyenv="pyenv"

# this function for pyenv alias
function pyenv(){
  if [[ "$PWD" == "/mnt/"* || -L "$PWD" ]]; then
    if [[ $# -eq 0 ]]; then
      if [[ -n "$VIRTUAL_ENV" ]]; then
        unset VIRTUAL_ENV
      else
        # an array to store the envs
        local envs=($(find_envs))

        if [[ ${#envs[@]} -eq 0 ]]; then
          local env_name=".virenv"
          local display_env="${env_name#.}"

          # creating a new env
          echo -ne "${BOLD} Creating ${LIGHT_BLUE}$display_env ${WHITE}python environment... ${RESET}"
          create_env "$env_name"
          echo "${BOLD}${GREEN} ${RESET}"

          # activating the new env
          echo -ne "${BOLD} Activating ${LIGHT_BLUE}$display_env ${WHITE}environment... ${RESET}"
          activate_env "$env_name"
          echo "${BOLD}${GREEN} ${RESET}"

          return 0
        fi

        if [[ ${#envs[@]} -eq 1 ]]; then
          # activate if it has atched on env
          local env_name=$(basename ${envs[1]})
          activate_env "$env_name"
        elif [[ ${#envs[@]} -gt 1 ]]; then
          # prompt user to choose the env to activate
          echo "\n${BOLD}${GREEN} Multiple ${WHITE}virtual ${LIGHT_BLUE}environments ${WHITE}found (${#envs[@]}) ${RESET}\n"

          # loop through envs
          for i in {1..${#envs[@]}}; do
            index=$((i))
            dir_name=$(basename "${envs[$index]}")
            display_dir="${dir_name#.}"
            echo "${BOLD}${WHITE} $index) $display_dir ${RESET}"
          done

          # get the choice
          echo -n "\n${BOLD}${WHITE} Your selection : "
          read choice

          # Validate the choice
          if [[ "$choice" =~ ^[0-9]+$ ]] && (( choice > 0 && choice <= ${#envs[@]} )); then
            local index=$((choice))
            local selected_env="${envs[$index]}"
            local env_name=$(basename $selected_env)

            # activate the selected env
            activate_env "$env_name"
            return 0
          else
            echo "Invalid selection."
            return 0
          fi
        fi
      fi
    else
      if [[ "$1" == "delete" ]]; then
        if [[ -n "$VIRTUAL_ENV" ]]; then
          # disable the current env
          # if it has been set
          disable_env
        fi

        # an array to store the envs
        local envs=($(find_envs))

        if [[ ${#envs[@]} -eq 0 ]]; then
          return
        fi

        if [[ ${#envs[@]} -ge 1 ]]; then
          for i in {1..${#envs[@]}}; do
            index=$((i))
            delete_env "${envs[$index]}"
          done
        fi
      else
        local env_name=".$1"
        local display_env="${env_name#.}"

        if [[ -n "$VIRTUAL_ENV" ]]; then
          # disable the current env
          # if it has been set
          disable_env
        fi

        # if it is already an env inside $PWD
        if [[ -d "$PWD/$env_name/Scripts" ]]; then
          export VIRTUAL_ENV=$PWD/$display_env
        else
          # creating a new env
          echo -ne "${BOLD} Creating ${LIGHT_BLUE}$display_env ${WHITE}python environment... ${RESET}"
          create_env "$env_name"
          echo "${BOLD}${GREEN} ${RESET}"

          # activating the new env
          echo -ne "${BOLD} Activating ${LIGHT_BLUE}$display_env ${WHITE}environment... ${RESET}"
          activate_env "$env_name"
          echo "${BOLD}${GREEN} ${RESET}"
        fi
        return 0
      fi
    fi
  else
    echo "${BOLD}${RED}Please execute this command inside Windows (/mnt/*) directory!"
  fi
}

# Alias to call the windows pip
# IMPROVED : 10-05-2024 22:29
# If VIRTUAL_ENV is set we launch the
# pip.exe in there so that every package
# will be installed inside the environment
# instead of the global environment
alias pip="pip"

# Function for pip alias
function pip() {
  # Check if we are inside WSL directory or a symbolic link
  if [[ "$PWD" == "/mnt/"* || -L "$PWD" ]]; then
    if [[ -n "$VIRTUAL_ENV" ]]; then
      # since I made it hidden handle the leading dot
      local env_dir=$(dirname "$VIRTUAL_ENV")/.$(basename "$VIRTUAL_ENV")
      local pip_cmd=$(wslpath -w "$env_dir/Scripts/pip.exe")
      cmd.exe /c $pip_cmd "$@"
    else
      cmd.exe /c pip "$@"
    fi
  else
    cd /mnt/c
    if [[ -n "$VIRTUAL_ENV" ]]; then
      # since I made it hidden handle the leading dot
      local env_dir=$(dirname "$VIRTUAL_ENV")/.$(basename "$VIRTUAL_ENV")
      local pip_cmd=$(wslpath -w "$env_dir/Scripts/pip.exe")
      cmd.exe /c $pip_cmd "$@"
    else
      cmd.exe /c pip "$@"
    fi
    cd - &>/dev/null
  fi
}

# this alias to check if a python package
# is already installed or not
alias pycheck="pycheck"

# this function for pycheck alias
function pycheck(){
  local package="$1"

  if pip show $package 2>&1 | grep -q "WARNING"; then
    echo -n "${BOLD}${WHITE} Installing ${GREEN}$package ${WHITE}...${RESET}\n"
    pip install $package
  else
    pip show $package
  fi
}

# this alias to launch windows go
alias go="check_win && go"

# this function for go alias
function go(){
  cmd.exe /c go $@
}

# this alias to run rustc
alias rustc="check_win && rustc"

# this function for rustc alias
function rustc(){
  cmd.exe /c rustc $@
}

# this alias to run cargo
alias cargo="check_win && cargo"

# this function for cargo alias
function cargo(){
  cmd.exe /c cargo $@
}

# this alias to use windows nslookup
alias nslookup="nslookup"

# this function for nslookup alias
function nslookup(){
  force_run cmd.exe /c nslookup "$@"
}

# this alias to use windows arp
alias arp="arp"

# this function for arp alias
function arp(){
  force_run cmd.exe /c arp "$@"
}

# this alias to run jupyter notebook
alias jptr="check_win && jptr"

# this function for jptr alias
function jptr(){
  cmd.exe /c start jupyter notebook
}

# this alias to open obs Studio
alias obs="obs"

# this function for obs alias
function obs(){
  cd /mnt/d/NTSOA/INSTALLED/OBS\ STUDIO/obs-studio/bin/64bit
  cmd.exe /c start obs64.exe
  cd - &>/dev/null
}

# this alias to launch gta san andreas
alias gta="gta"

# this function for gta alias
function gta(){
  cd /mnt/d/NTSOA/INSTALLED/GTA\ SAN\ ANDREAS
  cmd.exe /c start /affinity 2 gta_sa.exe
  cd - &>/dev/null
}

# this alias to open visual paradigm
alias paradigm="paradigm"

# this function for paradigm alias
function paradigm(){
  cd /mnt/d/NTSOA/INSTALLED/VISUAL\ PARADIGM/Visual\ Paradigm\ CE\ 17.2/bin
  explorer.exe visual.lnk
  cd - &>/dev/null
}

# this alias open Bluestacks
alias android="android"

# this function for android alias
function android(){
  cd /mnt/c/Program\ Files/BlueStacks_nxt
  cmd.exe /c start HD-Player.exe
  cd - &>/dev/null
}

# this alias to open Driver Booster 11
alias boost="boost"

# this function for boost alias
function boost(){
  cd "/mnt/d/NTSOA/INSTALLED/DRIVER BOOSTER/11.6.0"
  cmd.exe /c start DriverBooster.exe
  cd - &>/dev/null
}

# this alias to open gns3
alias gns="gns"

# this function for gns alias
function gns(){
  cd /mnt/d/NTSOA/INSTALLED/GNS3
  cmd.exe /c start gns3.exe
  cd - &>/dev/null
}

# this alias to launch the debug
alias debug="debug"

# this function for debug alias
function debug(){
  cd /mnt/d/NTSOA/INSTALLED/DOSBOX/DOSBox-0.74-3
  cmd.exe /c start DOSBox.exe DEBUGX.COM
  cd - &>/dev/null
}

# this alias to open x64dbg
alias dbg64="dbg64"

# this function for debug alias
function dbg64(){
  cd /mnt/d/NTSOA/INSTALLED/SHORTCUTS/
  explorer.exe x64dbg.lnk
  cd - &>/dev/null
}

# this alias to open x32dbg
alias dbg32="dbg32"

# this function for debug alias
function dbg32(){
  cd /mnt/d/NTSOA/INSTALLED/SHORTCUTS/
  explorer.exe x32dbg.lnk
  cd - &>/dev/null
}

#######################################################################

### p10k Config

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

#######################################################################
