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

### Basic Aliases

# this alias to update the package
alias upd="upd"

# this function for up alias
function upd(){
  echo "u p d a t i n g .  .  ." | figlet -t -c;
  br && apt update && br;
}

# this alia to update the package
alias upg="upg"

# this function for up alias
function upg(){
  echo "u p g r a d i n g . . ." | figlet -t -c;
  br && apt upgrade && br;
}

# this alias to install package
alias ist="ist"

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
      br && apt install "$1" && br;
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
      # fxml)
      #   cmd.exe /c start SceneBuilder.exe "$@"
      #   ;;
      *) nvim "$1" ;;
    esac
    return 0
  elif [[ -d "$1" ]]; then
    op "$1"
  fi
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

# this alias to edit a file
alias ed="ed"

# this function for ed alias
function ed(){
  # nvim -c "startinsert" "$1" && cv;
  nvim "$1" && cv;
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
alias rdf="rdf"

# this function for rdf alias
function rdf(){
  rm -rfv "$@";
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

### WSL Network Aliases

# this alias to show IPV4 IP addresses
alias show_ip="show_ip"

# this fucntion for show_ip alias
function show_ip {
  # Declare an associative array (Zsh specific syntax)
  typeset -A iface_ip_map

  # Logical parts of the AWK command
  match_interfaces='/^[a-z]/ { iface=$1; sub(":", "", iface) }'
  match_ip='/inet / && $2 != "127.0.0.1" { print iface, $2 }'

  # Combine the parts into the full AWK command
  awk_cmd="$match_interfaces $match_ip"

  # Extract interface names and IPs into a variable
  interfaces=$(ifconfig | awk "$awk_cmd")

  # Loop through the extracted data and populate the associative array
  while read iface ip; do
    iface_ip_map["$iface"]="$ip"
  done <<< "$interfaces"

  # Output the associative array in a key-value format
  for iface in ${(k)iface_ip_map}; do
    echo $iface:${iface_ip_map[$iface]}
  done
}

# this alias to show the network configuration
alias ipsh="ipsh"

# this function for ntsh alias
function ipsh {
  # Example of predefined commands (modify as needed)
  c && br  # Your predefined commands
  echo " Available IP Addresses: "
  br  # Your predefined command

  # Capture the output of show_ip
  map_output=$(show_ip)

  # # Debugging: print the raw output of show_ip
  # echo "Raw map_output:"
  # echo "$map_output"

  # Find the length of the longest interface name (after stripping quotes and colons)
  longest_iface_length=$(echo "$map_output" | sed -E 's/"([^"]+)":.*/\1/' | awk '{ print length }' | sort -n | tail -n 1)

  # # Debugging: print the longest interface length
  # echo "The longest interface length is: $longest_iface_length"

  # Loop through each line of the map_output, stripping quotes from iface and aligning
  while IFS=: read -r iface ip; do
    iface=$(echo "$iface" | tr -d '"')  # Remove any quotes from iface
    iface=$(echo "$iface" | tr -d ' ')  # Remove any extra spaces from iface

    # # Debugging: print the current interface and IP
    # echo "Processing iface: $iface, ip: $ip"

    # Calculate how many spaces need to be added to align the '==>'
    spaces_to_add=$((longest_iface_length - ${#iface}))

    # # Debugging: print the number of spaces to add
    # echo "Spaces to add for $iface: $spaces_to_add"

    # Only add spaces if spaces_to_add is greater than 0
    if (( spaces_to_add > 0 )); then
      padded_iface="$iface$(printf ' %.0s' {1..$spaces_to_add})"
    else
      padded_iface="$iface"
    fi

    # Print the iface and ip, ensuring alignment of '==>'
    echo "$padded_iface ==> $ip"
  done <<< "$map_output"

  br
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
  local backup_dir=$HOME/Files/custom_shellrc/$platform;
  local backup_file=zshrc[$USER].sh;
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

### WSL Shortcuts

# this alias to go to home directory
alias hm="cd && cv"

#######################################################################

### p10k Config

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

#######################################################################
