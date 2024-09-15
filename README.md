# 💻 Personal shell configurations
  
> [!NOTE]  
These configurations are interdependent;  
follow them in the given order.  
WSL sections can be skipped for Linux configurations.  

<hr style="border: 0; height: 1px; background: #21262d;">

<details>
  <summary><strong> Prerequisites</strong></summary>

  - **Fonts** : ``Nerd Font``
  - **Packages** : ``eza`` ``figlet`` ``git`` ``gh`` ``tmux``
  - **Plugins** : ``oh-my-zsh`` ``powerlevel10k``
</details>

<hr style="border: 0; height: 1px; background: #21262d;">

<details>
  <summary><strong> Powerlevel10k Theme</strong></summary>

  ```sh
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
  ```
</details>

<hr style="border: 0; height: 1px; background: #21262d;">

<details>
  <summary><strong> ZSH Basic Config</strong></summary>

  ```sh
  ### ZSH Basic Config

  set autocd         # change directory just by typing his name
  setopt promptsubst # enable command substitution in prompt

  # configure keybindings
  bindkey -e # emacs keybindings
  bindkey ' ' magic-space # do history expansion on space

  # Uncomment the following line to use case-sensitive completion.
  CASE_SENSITIVE="true"

  #######################################################################
  ```
</details>

<hr style="border: 0; height: 1px; background: #21262d;">

<details>
  <summary><strong> oh-my-zsh config</strong></summary>

  ```sh
  ### oh-my-zsh Config

  # Path to oh-my-zsh installation.
  export ZSH="$HOME/.oh-my-zsh"

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
  ```
</details>

<hr style="border: 0; height: 1px; background: #21262d;">

<details>
  <summary><strong> Tmux Config</strong></summary>

  ```sh
  ### Tmux Config

  # Launch tmux at startup
  case $TERM in
    screen|tmux-256color);;
    *)tmux att -t 0 2>/dev/null|| tmux;;
  esac;

  #######################################################################
  ```
</details>

<hr style="border: 0; height: 1px; background: #21262d;">

<details>
  <summary><strong>ANSI Color Codes</strong></summary>

  ```sh
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
  WHITE="\e[97m"

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
  ```
</details>

<hr style="border: 0; height: 1px; background: #21262d;">

<details>
  <summary><strong> Sudo Alias</strong></summary>

  ```sh
  ### Sudo Alias

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
    else
      return 0
    fi
  }

  #######################################################################
  ```
</details>

<hr style="border: 0; height: 1px; background: #21262d;">

<details>
  <summary><strong> Basic Aliases</strong></summary>

  ```sh
  ### Aliases

  ### Basic Aliases

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
  ```
</details>

<hr style="border: 0; height: 1px; background: #21262d;">

<details>
  <summary><strong> Navigation Aliases</strong></summary>

  ```sh
  ### Navigation Aliases

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
  ```
</details>

<hr style="border: 0; height: 1px; background: #21262d;">

<details>
  <summary><strong> Explorer Alias</strong></summary>

  ```sh
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
  ```
</details>

<hr style="border: 0; height: 1px; background: #21262d;">

<details>
  <summary><strong> Custom command not found</strong></summary>

  ```sh
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
      echo " ${BOLD}${WHITE}[${RED}x${WHITE}]${WHITE} Command Not Found"
    fi
  }

  #######################################################################
  ```
</details>

<hr style="border: 0; height: 1px; background: #21262d;">

<details>
  <summary><strong> $SHELLrc Aliases</strong></summary>

  ```sh
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
    local backup_dir=$HOME/NTSOA/zshrc/wsl;
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
  ```
</details>

<hr style="border: 0; height: 1px; background: #21262d;">

<details>
  <summary><strong> Neovim Aliases</strong></summary>

  ```sh
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
  ```
</details>

<hr style="border: 0; height: 1px; background: #21262d;">

<details>
  <summary><strong> Git Aliases</strong></summary>

  ```sh
  ### Git Aliases

  # this alias to git add and git commit at the same time
  alias gad="gad"

  # this function for gad alias
  # SOLVED: 05-11-2024 23:43
  # handled git add and git commit
  # according to the first argument
  # if it's not a file then it is
  # a commit message, otherwise check
  # if it is a file then the rest
  # of the argument is the commit
  function gad(){
    local is_a_git_repo=$(git rev-parse --is-inside-work-tree 2>/dev/null)

    if [[ "$is_a_git_repo" == "true" ]]; then
      if [[ $# -eq 0 ]]; then
        git add --all && git commit
      elif [[ $# -ge 1 ]]; then
        if [[ -f "$1" ]]; then
          if [[ $# -eq 1 ]]; then
            echo "${BOLD}${RED}Error : no commit message !"
          else
            # consider all arguments from the second one as one string
            git add "$1" && git commit "$1" -m "${*:2}";
          fi
        else
          git add --all && git commit -m "$*"
        fi
      fi
    else
      echo "${BOLD} ■■▶ This won't work, you are not in a git repo !" && br;
    fi
  }

  # this alias to rename a git branch
  alias gnm="gnm"

  # this function for gnm alias
  function gnm(){
    local is_a_git_repo=$(git rev-parse --is-inside-work-tree 2>/dev/null)

    if [[ "$is_a_git_repo" == "true" ]]; then
      local current_branch=$(git branch | awk '/\*/ {print $2}');

      if [[ $# -eq 1 ]]; then
        git branch -M $current_branch "$1";
        cv;
      elif [[ $# -eq 0 ]]; then
        echo "${BOLD} ■■▶ Please pass the new name of '$current_branch' branch as argument " && br;
      else
        echo "${BOLD} ■■▶ Usage : gnm new_name_of_the_branch" && br;
      fi
    else
      echo "${BOLD} ■■▶ This won't work, you are not in a git repo !" && br;
    fi
  }

  # autocomplete gnm
  complete -F branch_auto_complete gnm

  # this alias to switch to the last git branch
  alias gck="gck";

  # this function for gck alias
  function gck(){
    local is_a_git_repo=$(git rev-parse --is-inside-work-tree 2>/dev/null)
    local has_remote=$(git remote -v)

    if [[ "$is_a_git_repo" == "true" ]]; then
      local current_branch=$(git branch | awk '/\*/ {print $2}');

      if [ "$has_remote" ]; then
        local default_branch=$(git symbolic-ref refs/remotes/origin/HEAD 2>/dev/null | sed 's@^refs/remotes/origin/@@')
        local repo_url=$(git config --get remote.origin.url)
        local repo_name="$(echo "$repo_url" | awk -F '/' '{print $NF}' | sed 's/.git$//')"
      else
        local default_branch=$(git config --get init.defaultBranch)
        local repo_name=$(basename "$(git rev-parse --show-toplevel)")
      fi

      if [[ -z "$default_branch" ]]; then
        default_branch=$(git config --get init.defaultBranch)
      fi

      if [[ $# -eq 0 ]]; then
        if [[ "$current_branch" != "$default_branch" ]]; then
          git checkout "$default_branch"
        else
          local user="$(whoami)"
          if ! git rev-parse --verify "$user" >/dev/null 2>&1; then
            function check_new_branch(){
              echo -ne "${BOLD}${WHITE}New branch${GREEN} "$user"${WHITE} ? (y/n) ";
              read branch
              if [ "$branch" = "y" ]; then
                git checkout -b "$user" &>/dev/null;

                # check for remote
                if [ "$has_remote" ]; then
                  function check_new_remote_branch(){
                    echo -ne "${BOLD}${WHITE}Add${GREEN} "$user"${WHITE} branch to ${LIGHT_BLUE}$repo_name ${WHITE} on GitHub ? (y/n) ";
                    read remote_branch
                    if [ "$remote_branch" = "y" ]; then
                      git push origin "$user";
                    elif [ "$remote_branch" = "n" ];then
                      return 0
                    else
                      check_new_remote_branch
                    fi
                  }
                  check_new_remote_branch
                fi
              elif [ "$branch" = "n" ];then
                return 0
              else
                check_new_branch
              fi
            }
            check_new_branch
          else
            git checkout "$user"
          fi
        fi
      elif [[ $# -eq 1 ]]; then
        # check if the branch doesn't exist yet
        if ! git rev-parse --verify "$1" >/dev/null 2>&1; then
          local new_branch="$1"
          function check_new_branch(){
            echo -ne "${BOLD}${WHITE}New branch${GREEN} "$new_branch"${WHITE} ? (y/n) ";
            read branch
            if [ "$branch" = "y" ]; then
              git checkout -b "$new_branch" &>/dev/null;

              # check for remote
              if [ "$has_remote" ]; then
                function check_new_remote_branch(){
                  echo -ne "${BOLD}${WHITE}Add${GREEN} "$new_branch"${WHITE} branch to ${LIGHT_BLUE}$repo_name ${WHITE} on GitHub ? (y/n) ";
                  read remote_branch
                  echo ${RESET}
                  if [ "$remote_branch" = "y" ]; then
                    git push origin "$new_branch";
                  elif [ "$remote_branch" = "n" ];then
                    return 0
                  else
                    check_new_remote_branch
                  fi
                }
                check_new_remote_branch
              fi
            elif [ "$branch" = "n" ];then
              return 0
            else
              check_new_branch
            fi
          }
          check_new_branch
        else
          git checkout "$1";
        fi
      else
        echo "${BOLD} ■■▶ Usage : gck branch or gck (switch default branch)" && br;
      fi
    else
      echo "${BOLD} ■■▶ This won't work, you are not in a git repo !" && br;
    fi
  }

  # this function to autocomplete
  # the branches of gck alias
  function branch_auto_complete(){
    local cur branches

    # Get the current word being completed
    cur="${COMP_WORDS[COMP_CWORD]}"

    # Get the list of branches from `git branch`
    branches=$(git branch --format '%(refname:short)')

    # Generate completions
    COMPREPLY=($(compgen -W "${branches}" -- "${cur}"))
  }

  # Register the completion function for `gck`
  complete -F branch_auto_complete gck

  # this alias to switch to the last git branch
  alias gcb="gcb";

  # this function for gcb alias
  function gcb(){
    local is_a_git_repo=$(git rev-parse --is-inside-work-tree 2>/dev/null)

    if [[ "$is_a_git_repo" == "true" ]]; then
      if [[ $# -eq 0 ]]; then
        git checkout -;
      else
        echo "${BOLD} ■■▶ Usage : gcb (no argument)" && br;
      fi
    else
      echo "${BOLD} ■■▶ This won't work, you are not in a git repo !" && br;
    fi
  }

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

  # this alias to revert back to last commit
  alias grst="grst"

  # this function for grst alias
  function grst(){
    if [[ $# -eq 0 ]]; then
      git checkout -- .;
    elif [[ $1 == "cmt" ]]; then
      git reset --soft HEAD~1
    else
      git restore "$@";
    fi
  }

  # this function to autocomplete
  # files to reset from git status
  function _grst_completion() {
    local cur opts

    # Get the current word being completed
    cur="${COMP_WORDS[COMP_CWORD]}"

    # Get the list of uncommitted changes from `git status -s`
    opts=$(git status -s | awk '{print $2}')

    # Generate completions
    COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
  }

  # Register the completion function for `grst`
  complete -F _grst_completion grst

  # this alias to push changes on current repo to remote repo
  alias gpsh="gpsh"

  # this function for gpsh alias
  function gpsh(){
    local is_a_git_repo=$(git rev-parse --is-inside-work-tree 2>/dev/null)
    local has_remote=$(git remote -v)

    if [ "$has_remote" ]; then
      local repo_url=$(git config --get remote.origin.url)
      local repo_name="$(echo "$repo_url" | awk -F '/' '{print $NF}' | sed 's/.git$//')"
    else
      local repo_name=$(basename "$(git rev-parse --show-toplevel)")
    fi


    if [[ "$is_a_git_repo" == "true" ]]; then
      local current_branch=$(git branch | awk '/\*/ {print $2}');

      # check if it has a remote to push
      if [ "$has_remote" ]; then
        git push origin $current_branch;
      else
        echo "${BOLD} The local repo ${LIGHT_BLUE}$repo_name ${WHITE}has ${RED}no remote";
      fi
    else
      echo "${BOLD} ■■▶ This won't work, you are not in a git repo !" && br;
    fi
  }

  # this alias to pull changes from remote repo
  alias gpl="gpl"

  # this function for gpsh alias
  function gpl(){
    local is_a_git_repo=$(git rev-parse --is-inside-work-tree 2>/dev/null)
    local has_remote=$(git remote -v)

    if [ "$has_remote" ]; then
      local repo_url=$(git config --get remote.origin.url)
      local repo_name="$(echo "$repo_url" | awk -F '/' '{print $NF}' | sed 's/.git$//')"
    else
      local repo_name=$(basename "$(git rev-parse --show-toplevel)")
    fi

    if [[ "$is_a_git_repo" == "true" ]]; then
      local current_branch=$(git branch | awk '/\*/ {print $2}');

      if [ "$has_remote" ]; then
        local is_remote_branch=$(git branch -r | grep "origin/$current_branch")

        # check if the current branch has remote
        if [ -n "$is_remote_branch" ]; then
          git pull origin $current_branch;
        else
          echo "${BOLD} ■■▶ The remote repo ${LIGHT_BLUE}$repo_name ${WHITE}has no branch named ${GREEN}$current_branch ${WHITE}!" && br;
        fi
      else
        echo "${BOLD} The local repo ${LIGHT_BLUE}$repo_name ${WHITE}has ${RED}no remote";
      fi
    else
      echo "${BOLD} ■■▶ This won't work, you are not in a git repo !" && br;
    fi
  }

  # this alias to view git status
  alias gst="gst"

  # this function for gst alias
  function gst(){
    local is_a_git_repo=$(git rev-parse --is-inside-work-tree 2>/dev/null)

    if [[ "$is_a_git_repo" == "true" ]]; then
      git status -s
    else
      echo "${BOLD} ■■▶ This won't work, you are not in a git repo !" && br;
    fi
  }

  # this alias to view git diff
  alias gdf="gdf"

  # this function for gdf alias
  function gdf(){
    local is_a_git_repo=$(git rev-parse --is-inside-work-tree 2>/dev/null)

    if [[ "$is_a_git_repo" == "true" ]]; then
      git diff
    else
      echo "${BOLD} ■■▶ This won't work, you are not in a git repo !" && br;
    fi
  }

  # this alias to view the git log commits number
  alias glc="glc"

  # this function for glc alias
  function glc(){
    local is_a_git_repo=$(git rev-parse --is-inside-work-tree 2>/dev/null)

    if [[ "$is_a_git_repo" == "true" ]]; then
      local has_commits=$(git log > /dev/null 2>&1 && echo "true" || echo "false")

      if [[ "$has_commits" == "true" ]]; then
        local repo_name=$(basename "$(git rev-parse --show-toplevel)")
        local current_branch=$(git branch | awk '/\*/ {print $2}');
        local commits_num=$(git log --oneline | wc -l);
        local commit_text;
        local last_commit=$(git log --format="%H" -n 1);
        local last_commit_message=$(git show --format=%B -s "$last_commit" | head -n 1);
        local last_commit_author=$(git log --format='%an' -n 1)
        local current_user=$(git config user.name)
        local commits_done_today=$(git log --oneline --since="$(date +"%Y-%m-%d 00:00:00")" --author="$current_user" | wc -l)
        local commits_contrib_today=$(git log --oneline --since="$(date +"%Y-%m-%d 00:00:00")" --author="$last_commit_author" | wc -l)

        [[ $commits_num -le 1 ]] && commit_text="commit" || commit_text="commits";
        [[ $commits_done_today -le 1 ]] && commit_done_text="commit" || commit_done_text="commits";
        [[ $commits_contrib_today -le 1 ]] && commit_contrib_text="commit" || commit_contrib_text="commits";
        [[ $commits_done_today -gt 0 ]] &&
          commit_done="${WHITE}Including ${LIGHT_BLUE}$commits_done_today $commit_done_text ${WHITE}by ${GREEN}$current_user ${WHITE}today" ||
          commit_done="${WHITE}Including ${LIGHT_BLUE}$commits_contrib_today $commit_contrib_text ${WHITE}by ${GREEN}$last_commit_author ${WHITE}today"

        if [[ "$1" == "show" ]]; then
          git log --oneline --no-decorate;
        else
          echo "${BOLD}${LIGHT_BLUE} $repo_name ${WHITE}has ${LIGHT_BLUE}$commits_num $commit_text ";
          echo " $commit_done";
          echo "${BOLD}${WHITE} Last Commit on ${GREEN}$current_branch ${WHITE}: $last_commit_message";
          br;
        fi
      else
        echo "${BOLD} ■■▶ Sorry, no commits yet inside this repo !" && br;
      fi
    else
      echo "${BOLD} ■■▶ This won't work, you are not in a git repo !" && br;
    fi
  }

  # Completion function for glc
  _glc_completion() {
    local cur prev
    cur="${COMP_WORDS[COMP_CWORD]}"
    prev="${COMP_WORDS[COMP_CWORD-1]}"

    if [[ ${COMP_CWORD} -eq 1 ]]; then
      # Only suggest 'show' if no argument is provided
      COMPREPLY=($(compgen -W "show" -- "$cur"))
    else
      # If there are additional arguments, clear completions
      COMPREPLY=()
    fi
  }

  # Register the completion function for ghv
  complete -F _glc_completion glc

  # this alias to merge branches
  alias gmb="gmb"

  # this function for gmb alias
  function gmb(){
    local is_a_git_repo=$(git rev-parse --is-inside-work-tree 2>/dev/null)

    if [[ "$is_a_git_repo" == "true" ]]; then
      local current_branch=$(git branch | awk '/\*/ {print $2}');
      if [[ $# -eq 1 ]]; then
        # check if the branch doesn't exist
        if ! git rev-parse --verify "$1" >/dev/null 2>&1; then
          echo "${BOLD} ■■▶ Fatal ! $1 is a Non Existing branch " && br;
        else
          if [[ "$current_branch" == "$1" ]]; then
            echo "${BOLD} ■■▶ Fatal ! Cannot Merge Identical Branch " && br;
          else
            git merge "$1";
          fi
        fi
      elif [[ $# -eq 0 ]]; then
        echo "${BOLD} ■■▶ Fatal ! Specify the Branch to merge to $current_branch" && br;
      fi
    else
      echo "${BOLD} ■■▶ This won't work, you are not in a git repo !" && br;
    fi
  }

  # Register the completion function for `gmb`
  complete -F branch_auto_complete gmb

  #######################################################################
  ```
</details>

<hr style="border: 0; height: 1px; background: #21262d;">

<details>
  <summary><strong> GitHub CLI Aliases</strong></summary>

  ```sh
  ### GitHub CLI Aliases

  # this function to sanitize the repository name
  function clean_repo() {
    local repo_name="$1"
    # Replace any characters that are
    # not alphanumeric or hyphen with hyphen
    local repo_pattern='s/[^a-zA-Z0-9-]+/_/g'
    local clean_name="$(echo "$repo_name" | sed -E "$repo_pattern")"
    echo "$clean_name"
  }

  # this alias to create a new github repository using github cli
  alias ghc="ghc"

  # this function for ghc alias
  # SOLVED: 05-11-2024 23:28
  # use shift to assign the argument
  # after the first one to be the
  # condition of is Private
  function ghc() {
    if [[ $# -eq 0 ]]; then
      local repo="$(basename "$PWD")"
    elif [[ $# -eq 1 ]]; then
      if [[ $1 != "private" ]]; then
        local repo="$1"
      elif [[ $1 -eq "private" ]]; then
        local repo="$(basename "$PWD")"
        local isPrivate="$1"
      fi
    elif [[ $# -gt 1 ]]; then
      local repo="$1"
      shift
      local isPrivate="$1"
    fi

    local repo_name="$(clean_repo "$repo")"
    local repo_visibility=$([[ $isPrivate == "private" ]] && echo "private" || echo "public")
    local is_a_git_repo=$(git rev-parse --is-inside-work-tree 2>/dev/null)

    if [[ "$is_a_git_repo" == "true" ]]; then
      local has_remote=$(git remote -v)

      if [ "$has_remote" ]; then
        echo "${BOLD} ■■▶ This repo has already a remote on GitHub !" && br;
      else
        local current_user=$(awk '/user:/ {print $2; exit}' ~/.config/gh/hosts.yml)

        function check_set_repo(){
          echo -ne "${BOLD}${WHITE} Create ${GREEN}$repo_visibility ${WHITE}repo ${LIGHT_BLUE}$repo_name ${WHITE}? (y/n) ";
          read set_repo
          if [ "$set_repo" = "y" ]; then
            # create the repo & set it as remote of the local one
            echo -ne "${BOLD} New repository ${LIGHT_BLUE}$repo_name ${WHITE}on GitHub ... "
            gh repo create "$repo_name" --$repo_visibility &>/dev/null;
            git remote add origin "git@github.com:$current_user/$repo_name.git";
            echo "${BOLD}${GREEN} ${WHITE}"

            function check_push(){
              echo -ne "${BOLD}${WHITE} Push local commits to ${LIGHT_BLUE}$repo_name ${WHITE}? (y/n) ";
              read check_push_commit

              if [ "$check_push_commit" = "y" ]; then
                local current_branch=$(git branch | awk '/\*/ {print $2}');
                git push origin $current_branch;
              elif [ "$check_push_commit" = "n" ];then
                return 0
              else
                check_push
              fi
            }

            local current_branch=$(git branch | awk '/\*/ {print $2}');

            if git rev-list --count "$current_branch" 2>/dev/null | grep -q '^[1-9]'; then
              check_push
            fi
          elif [ "$set_repo" = "n" ];then
            return 0;
          else
            check_set_repo
          fi
        }
        check_set_repo
      fi
    else
      function check_create_repo(){
        echo -ne "${BOLD}${WHITE} Create ${GREEN}$repo_visibility ${WHITE}repo ${LIGHT_BLUE}$repo_name ${WHITE}? (y/n) ";
        read create_repo
        if [ "$create_repo" = "y" ]; then
          # create the repo & clone it locally
          echo -ne "${BOLD} New repository ${LIGHT_BLUE}$repo_name ${WHITE}on GitHub ... "
          gh repo create "$repo_name" --$repo_visibility -c &>/dev/null;
          mv "$repo_name/.git" . && rm -rf "$repo_name";
          echo "${BOLD}${GREEN} ${WHITE}"
        elif [ "$create_repo" = "n" ];then
          function check_local(){
            echo -ne "${BOLD}${WHITE} Create ${GREEN}local  ${WHITE}repo ${LIGHT_BLUE}$repo_name ${WHITE}? (y/n) ";
            read create_local
            echo ${RESET}

            if [ "$create_local" = "y" ]; then
              git init &>/dev/null
            elif [ "$create_local" = "n" ];then
              return 0
            else
              check_local
            fi
          }
          check_local
        else
          check_create_repo
        fi
      }
      check_create_repo
    fi
  }

  # this alias to delete a github repo via Github CLI
  alias ghd="ghd"

  # this function for ghd alias
  # IMPROVED : 09-11-2024 16:13
  # Added has_remote check
  function ghd(){
    local is_a_git_repo=$(git rev-parse --is-inside-work-tree 2>/dev/null)

    if [[ "$is_a_git_repo" == "true" ]]; then
      local has_remote=$(git remote -v)

      if [ "$has_remote" ]; then
        local repo_url=$(git config --get remote.origin.url)
        local current_user=$(awk '/user:/ {print $2; exit}' ~/.config/gh/hosts.yml)
        local repo_owner=$(echo "$repo_url" | awk -F '[/:]' '{print $(NF-1)}')

        if [[ "$repo_owner" != "$current_user" ]]; then
          echo "${BOLD} ■■▶ Sorry, you are not the owner of this repo !" && br;
        else
          local repo_name="$(echo "$repo_url" | awk -F '/' '{print $NF}' | sed 's/.git$//')"
          local isPrivate=$(gh repo view $repo_name --json isPrivate --jq '.isPrivate')
          local repo_visibility=$([[ $isPrivate == "true" ]] && echo "private" || echo "public")

          function check_delete_local_repo(){
            echo -ne "${BOLD}${WHITE} Delete ${GREEN}local ${WHITE}repo ${LIGHT_BLUE}$repo_name ${WHITE}? (y/n) ";
            read delete_local_repo

            if [ "$delete_local_repo" = "y" ]; then
              local repo_source=$(git rev-parse --show-toplevel)
              # delete the repo
              echo -ne "${BOLD} Deleting ${GREEN}local ${WHITE}repo ${LIGHT_BLUE}$repo_name ${WHITE}... ";
              rm -rf $repo_source/.git;
              echo "${BOLD}${GREEN} ${WHITE}";
            elif [ "$delete_local_repo" = "n" ];then
              return 0
            else
              check_delete_local_repo
            fi
          }

          function check_delete_repo(){
            echo -ne "${BOLD}${WHITE} Delete ${GREEN}$repo_visibility ${WHITE}repo ${LIGHT_BLUE}$repo_name ${WHITE}? (y/n) ";
            read delete_repo
            if [ "$delete_repo" = "y" ]; then
              # delete the repo
              echo -ne "${BOLD} Deleting repository ${LIGHT_BLUE}$repo_name ${WHITE}on GitHub ... ";
              gh repo delete "$repo_name" --yes &>/dev/null;

              # remove the remote since we already
              # deleted it in GitHub
              git remote remove origin
              echo "${BOLD}${GREEN} ${WHITE}";
              echo -e;
              check_delete_local_repo
            elif [ "$delete_repo" = "n" ];then
              return 0
            else
              check_delete_repo
            fi
          }
          check_delete_repo
        fi
      else
        local repo_name=$(basename "$(git rev-parse --show-toplevel)")

        function check_delete_local_repo(){
          echo -ne "${BOLD}${WHITE} Delete ${GREEN}local ${WHITE}repo ${LIGHT_BLUE}$repo_name ${WHITE}? (y/n) ";
          read delete_local_repo
          if [ "$delete_local_repo" = "y" ]; then
            local repo_source=$(git rev-parse --show-toplevel)
            # delete the repo
            echo -ne "${BOLD} Deleting ${GREEN}local repo ${LIGHT_BLUE}$repo_name ${WHITE}... ";
            rm -rf $repo_source/.git;
            echo "${BOLD}${GREEN} ${WHITE}";
          elif [ "$delete_local_repo" = "n" ];then
            return 0
          else
            check_delete_local_repo
          fi
        }
        check_delete_local_repo
      fi
    else
      echo "${BOLD} ■■▶ This won't work, you are not in a git repo !" && br;
    fi
  }

  # this function to autocomplete
  # the branches of gbd alias
  function branch_delete_auto_complete(){
    local cur branches

    # Get the current word being completed
    cur="${COMP_WORDS[COMP_CWORD]}"

    # Get the list of branches from `git branch`
    branches=$(git branch --format '%(refname:short)')

    # Generate completions
    COMPREPLY=($(compgen -W "${branches}" -- "${cur}"))
  }

  # this alias to delete a branch
  alias gbd="gbd"

  # this function for gbd alias
  function gbd() {
    local is_a_git_repo=$(git rev-parse --is-inside-work-tree 2>/dev/null)
    local has_remote=$(git remote -v)

    if [[ "$is_a_git_repo" == "true" ]]; then
      local current_branch=$(git branch | awk '/\*/ {print $2}');
      local default_branch=$(git symbolic-ref refs/remotes/origin/HEAD 2>/dev/null | sed 's@^refs/remotes/origin/@@')

      if [[ -z "$default_branch" ]]; then
        default_branch=$(git config --get init.defaultBranch)
      fi

      if [[ $# -eq 1 ]]; then
        if [[ "$1" == "$default_branch" ]]; then
          echo "${BOLD} ■■▶ Fatal ! Cannot Delete the Default Branch " && br;
        elif ! git show-ref --verify --quiet "refs/heads/$1" &>/dev/null; then
          echo "${BOLD} ■■▶ Fatal ! Branch ${GREEN}$1 ${WHITE}doesn't exist ${RESET}" && br;
        else
          # this to check if we want to delete the remote branch too
          function check_delete_remote_branch() {
            if [[ "$current_branch" == "$default_branch" ]]; then
              echo "${BOLD} ■■▶ Fatal ! Cannot Delete the Default Branch " && br;
            else
              echo -ne "${BOLD}${WHITE}Delete remote branch${GREEN} "$current_branch"${WHITE} ? (y/n) ${RESET}";
              read delete_remote_branch
              echo ${RESET}
              if [ "$delete_remote_branch" = "y" ]; then
                git push origin --delete "$current_branch";
              elif [ "$delete_remote_branch" = "n" ];then
                return 0
              else
                check_delete_remote_branch
              fi
            fi
          }

          function check_delete_branch() {
            local branch_name="$1"

            echo -ne "${BOLD}${WHITE}Delete branch${GREEN} "$branch_name"${WHITE} ? (y/n) ${RESET}";
            read delete_branch

            if [ "$delete_branch" = "y" ]; then
              if [[ "$current_branch" != "$default_branch" ]]; then
                git checkout $default_branch &>/dev/null;
              fi
              if [ "$has_remote" ]; then
                local is_remote_branch=$(git branch -r | grep "origin/$1")
                if [ -n "$is_remote_branch" ]; then
                  check_delete_remote_branch
                fi
              fi
              git branch -D "$1";
            elif [ "$delete_branch" = "n" ]; then
              return 0;
            else
              check_delete_branch $branch_name
            fi
          }
          check_delete_branch $1
        fi
      elif [[ $# -eq 0 ]]; then
        if [[ "$current_branch" == "$default_branch" ]]; then
          echo "${BOLD} ■■▶ Fatal ! Cannot Delete the Default Branch " && br;
        else
          function check_delete_branch() {
            echo -ne "${BOLD}${WHITE}Delete branch${GREEN} "$current_branch"${WHITE} ? (y/n) ${RESET}";
            read delete_branch
            if [ "$delete_branch" = "y" ]; then
              # TODO : Remote branch Deletion
              function check_delete_remote_branch() {
                if [[ "$current_branch" == "$default_branch" ]]; then
                  echo "${BOLD} ■■▶ Fatal ! Cannot Delete the Default Branch " && br;
                else
                  echo -ne "${BOLD}${WHITE}Delete remote branch${GREEN} "$current_branch"${WHITE} ? (y/n) ${RESET}";
                  read delete_remote_branch
                  echo ${RESET}
                  if [ "$delete_remote_branch" = "y" ]; then
                    git push origin --delete "$current_branch";
                  elif [ "$delete_remote_branch" = "n" ];then
                    return 0
                  else
                    check_delete_remote_branch
                  fi
                fi
              }

              git checkout "$default_branch" &>/dev/null;

              if [ "$has_remote" ]; then
                local is_remote_branch=$(git branch -r | grep "origin/$current_branch")
                if [ -n "$is_remote_branch" ]; then
                  check_delete_remote_branch
                fi
              fi
              git branch -D "$current_branch";
            elif [ "$delete_branch" = "n" ];then
              return 0
            else
              check_delete_branch
            fi
          }
          check_delete_branch
        fi
      else
        echo "${BOLD} ■■▶ Usage : gbd branch_to_delete" && br;
      fi
    else
      echo "${BOLD} ■■▶ This won't work, you are not in a git repo !" && br;
    fi
  }

  # Register the completion function for `gbd`
  complete -F branch_delete_auto_complete gbd

  # this alias to change repo visibility
  alias ghv="ghv"

  # this function for ghv alias
  # IMPROVED : 06-06-2024 10:47
  function ghv(){
    local is_a_git_repo=$(git rev-parse --is-inside-work-tree 2>/dev/null)
    local has_remote=$(git remote -v)

    if [[ "$is_a_git_repo" == "true" ]]; then
      if [[ "$#" -eq 0 || "$1" == "show" || "$1" == "owner" ]]; then
        local current_user=$(awk '/user:/ {print $2; exit}' ~/.config/gh/hosts.yml)

        if [ "$has_remote" ]; then
          local repo_url=$(git config --get remote.origin.url)
          local repo_owner=$(echo "$repo_url" | awk -F '[/:]' '{print $(NF-1)}')
          local repo_name="$(echo "$repo_url" | awk -F '/' '{print $NF}' | sed 's/.git$//')"
        else
          local repo_owner=$(git config user.username)
          local repo_name=$(basename "$(git rev-parse --show-toplevel)")
        fi

        if [[ "$repo_owner" != "$current_user" && "$1" != "owner" ]]; then
          echo "${BOLD} ■■▶ Sorry, you are not the owner of this repo !" && br;
        elif [[ "$1" == "owner" ]]; then
          if [ "$has_remote" ]; then
            echo "${BOLD} The repo ${LIGHT_BLUE}$repo_name ${WHITE}is owned by ${GREEN}$repo_owner";
          else
            echo "${BOLD} The local repo ${LIGHT_BLUE}$repo_name ${WHITE}is owned by ${GREEN}$repo_owner";
          fi
        else
          if [ "$has_remote" ]; then
            local isPrivate=$(gh repo view $repo_name --json isPrivate --jq '.isPrivate')

            if [[ "$1" == "show" ]]; then
              local visibility=$([[ $isPrivate == "true" ]] && echo "private" || echo "public")
              echo "${BOLD} This repo ${LIGHT_BLUE}$repo_name ${WHITE}is ${GREEN}$visibility";
            else
              local new_visibility=$([[ $isPrivate == "true" ]] && echo "public" || echo "private")
              function toggle_visibility(){
                echo -ne "${BOLD}${WHITE} Make ${LIGHT_BLUE}$repo_name ${WHITE}repo ${GREEN}$new_visibility ${WHITE}? (y/n) ";
                read change_visibility
                if [ "$change_visibility" = "y" ]; then
                  # toggle visibility
                  echo -ne "${BOLD} Changing repo visibility to ${GREEN}$new_visibility ${WHITE}... ";
                  gh repo edit "$repo_owner/$repo_name" --visibility "$new_visibility" &>/dev/null;
                  echo "${BOLD}${GREEN} ${WHITE}";
                elif [ "$change_visibility" = "n" ];then
                  return 0
                else
                  toggle_visibility
                fi
              }
              toggle_visibility
            fi
          else
            echo "${BOLD} The local repo ${LIGHT_BLUE}$repo_name ${WHITE}is owned by ${GREEN}$repo_owner";
          fi
        fi
      else
        echo "${BOLD} ■■▶ Sorry, wrong command argument !" && br;
      fi
    else
      echo "${BOLD} ■■▶ This won't work, you are not in a git repo !" && br;
    fi
  }

  # Completion function for ghv
  # 07-31-2024 00:30
  _ghv_completion() {
    local cur prev opts
    cur="${COMP_WORDS[COMP_CWORD]}"
    prev="${COMP_WORDS[COMP_CWORD-1]}"
    opts="show owner"

    if [[ ${COMP_CWORD} -eq 1 ]]; then
        # Complete the options
        COMPREPLY=($(compgen -W "$opts" -- "$cur"))
    else
        # No further completion needed
        COMPREPLY=()
    fi
  }

  # Register the completion function for ghv
  complete -F _ghv_completion ghv

  #this alias to view all repos in the GitHub
  alias ghls="gh repo list -L 1000"

  # this function to check if a username exists on github
  # INSPIRED FROM : https://gist.github.com/RitheeshBaradwaj/22eafb0c33acf42af4db000366343d63
  # 06-04-2024 19:48
  function is_a_github_user() {
    username="$1"

    # Check if username is empty
    if [[ -z "$username" ]]; then
      return 1
    fi

    # Build the API URL
    url="https://api.github.com/users/$username"

    # Use wget to capture the response (redirecting output to a variable)
    # wget by default outputs content, so we use the -q (quiet) option to suppress it
    # -O- option specifies that the downloaded content should be written
    # to standard output (stdout) instead of a file.
    response=$(wget -qO- --no-check-certificate "$url")

    # Check if there is no output
    # meaning it is not found
    if [[ -z "$response" ]]; then
      # Not Found
      return 1
    else
      # Found
      return 0
    fi
  }

  # this alias to add collaborator to the repo
  alias ghadd="ghadd"

  # this function for ghadd alias
  # INSPIRED FROM : https://github.com/cli/cli/issues/2807
  # 06-04-2024 19:23
  # Uses the github cli rest API
  function ghadd(){
    local is_a_git_repo=$(git rev-parse --is-inside-work-tree 2>/dev/null)
    local has_remote=$(git remote -v)

    if [[ "$is_a_git_repo" == "true" ]]; then
      if [ "$has_remote" ]; then
        if [[ $# -eq 0 ]]; then
          echo "${BOLD} ■■▶ Specify the username of the new collaborator !" && br;
        elif [[ $# -gt 0 ]]; then
          local current_user=$(awk '/user:/ {print $2; exit}' ~/.config/gh/hosts.yml)
          local repo_url=$(git config --get remote.origin.url)
          local repo_owner=$(echo "$repo_url" | awk -F '[/:]' '{print $(NF-1)}')
          local repo_name="$(echo "$repo_url" | awk -F '/' '{print $NF}' | sed 's/.git$//')"

          # check if we are not the owner of the repo
          if [[ "$repo_owner" != "$current_user" ]]; then
            echo "${BOLD} ■■▶ Sorry, you are not the owner of this repo !" && br;
          else
            # Loop through each collaborator username provided as an argument
            for collaborator in "$@"; do
              echo -ne "${BOLD} Inviting ${LIGHT_BLUE}$collaborator ${WHITE}to collaborate on ${LIGHT_BLUE}$repo_name${WHITE} "

              # Check if the collaborator exists on GitHub
              if is_a_github_user "$collaborator"; then
                # Add collaborator using gh api
                gh api --method=PUT "repos/$current_user/$repo_name/collaborators/$collaborator" &>/dev/null
                echo "${BOLD}${GREEN} ${WHITE}"
              else
                echo "${BOLD}${RED}✘ ${WHITE}"
              fi
            done
          fi
        fi
      else
        echo "${BOLD} ■■▶ This repo has no remote on GitHub !" && br;
      fi
    else
      echo "${BOLD} ■■▶ This won't work, you are not in a git repo !" && br;
    fi
  }

  # this alias to delete a contributor
  alias ghdel="ghdel"

  # this function for ghdel alias
  # IMPROVED : 06-04-2024 23:52
  # Derived from ghadd
  function ghdel(){
    local is_a_git_repo=$(git rev-parse --is-inside-work-tree 2>/dev/null)
    local has_remote=$(git remote -v)

    if [[ "$is_a_git_repo" == "true" ]]; then
      if [ "$has_remote" ]; then
        if [[ $# -eq 0 ]]; then
          echo "${BOLD} ■■▶ Specify the username of the collaborator to remove !" && br;
        elif [[ $# -gt 0 ]]; then
          local current_user=$(awk '/user:/ {print $2; exit}' ~/.config/gh/hosts.yml)
          local repo_url=$(git config --get remote.origin.url)
          local repo_owner=$(echo "$repo_url" | awk -F '[/:]' '{print $(NF-1)}')
          local repo_name="$(echo "$repo_url" | awk -F '/' '{print $NF}' | sed 's/.git$//')"

          # check if we are not the owner of the repo
          if [[ "$repo_owner" != "$current_user" ]]; then
            echo "${BOLD} ■■▶ Sorry, you are not the owner of this repo !" && br;
          else
            # Retrieve the list of collaborators
            local collaborators=$(gh api "repos/$current_user/$repo_name/collaborators" --jq '.[].login')
            local invitations=$(gh api "repos/$current_user/$repo_name/invitations" --jq '.[].invitee.login')

            # Loop through each collaborator username provided as an argument
            for collaborator in "$@"; do
              # Check if the collaborator exists in the list of collaborators
              if echo "$collaborators" | grep -q "$collaborator" ||
                echo "$invitations" | grep -q "$collaborator"; then
                echo -ne "${BOLD} Removing ${LIGHT_BLUE}$collaborator ${WHITE}from ${LIGHT_BLUE}$repo_name${WHITE} "
                # Check for pending invitations
                local invitation_id=$(gh api "repos/$current_user/$repo_name/invitations" --jq ".[] | select(.invitee.login==\"$collaborator\") | .id")

                if [[ -n "$invitation_id" ]]; then
                  # Delete the pending invitation
                  gh api --method=DELETE "repos/$current_user/$repo_name/invitations/$invitation_id" &>/dev/null
                  echo -ne " ${BOLD}(invitation deleted) "
                fi

                # Remove collaborator using gh api
                gh api --method=DELETE "repos/$current_user/$repo_name/collaborators/$collaborator" &>/dev/null
                echo "${BOLD}${GREEN} ${WHITE}"
              else
                echo "${BOLD}${LIGHT_BLUE}$collaborator ${WHITE}is not a ${LIGHT_BLUE}collaborator ${RED}✘ ${WHITE}"
              fi
            done
          fi
        fi
      else
        echo "${BOLD} ■■▶ This repo has no remote on Github !" && br;
      fi
    else
      echo "${BOLD} ■■▶ This won't work, you are not in a git repo !" && br;
    fi
  }

  # Completion function for ghdel
  _ghdel_completion() {
    local cur prev opts
    cur="${COMP_WORDS[COMP_CWORD]}"
    prev="${COMP_WORDS[COMP_CWORD-1]}"

    if [[ ${COMP_CWORD} -eq 1 ]]; then
      # Ensure we are in a git repository
      local is_a_git_repo=$(git rev-parse --is-inside-work-tree 2>/dev/null)
      if [[ "$is_a_git_repo" == "true" ]]; then
        local current_user=$(awk '/user:/ {print $2; exit}' ~/.config/gh/hosts.yml)
        local repo_url=$(git config --get remote.origin.url)
        local repo_owner=$(echo "$repo_url" | awk -F '[/:]' '{print $(NF-1)}')
        local repo_name="$(basename "$repo_url" .git)"

        # Fetch collaborators and invitees
        local collaborators=$(gh api "repos/$repo_owner/$repo_name/collaborators" --jq '.[].login')
        local invitations=$(gh api "repos/$repo_owner/$repo_name/invitations" --jq '.[].invitee.login')

        # Combine collaborators and invitees into a single list
        local all_users=$(echo "$collaborators" "$invitations" | tr ' ' '\n' | sort | uniq)

        # Provide completion suggestions
        COMPREPLY=($(compgen -W "$all_users" -- "$cur"))
      else
        echo "Not inside a git repository."
      fi
    else
      COMPREPLY=()
    fi
  }

  # Register the completion function for ghdel
  # complete -F _ghdel_completion ghdel

  # this alias to list all collaborators
  alias ghcls="ghcls"

  # this function for ghcls alias
  # IMPROVED : 06-04-2024 23:52
  # Derived from ghadd
  function ghcls(){
    local is_a_git_repo=$(git rev-parse --is-inside-work-tree 2>/dev/null)
    local has_remote=$(git remote -v)

    if [[ "$is_a_git_repo" == "true" ]]; then
      if [ "$has_remote" ]; then
        local current_user=$(awk '/user:/ {print $2; exit}' ~/.config/gh/hosts.yml)
        local repo_url=$(git config --get remote.origin.url)
        local repo_owner=$(echo "$repo_url" | awk -F '[/:]' '{print $(NF-1)}')
        local repo_name="$(echo "$repo_url" | awk -F '/' '{print $NF}' | sed 's/.git$//')"

        # check if we are not the owner of the repo
        if [[ "$repo_owner" != "$current_user" ]]; then
          echo "${BOLD} ■■▶ Sorry, you are not the owner of this repo !" && br;
        else
          echo -ne "${BOLD} ${LIGHT_BLUE}Collaborators ${WHITE}for the ${LIGHT_BLUE}$repo_name ${WHITE}repository "

          # List collaborators using gh api
          local collaborators=$(gh api "repos/$current_user/$repo_name/collaborators" --jq '.[].login')
          local invitations=$(gh api "repos/$current_user/$repo_name/invitations" --jq '.[].invitee.login')

          local collaborators_count=$(echo "$collaborators" | wc -l)
          local invitations_count=$(echo "$invitations" | wc -l)
          local collaborators_num=$((collaborators_count + invitations_count))
          echo "${WHITE}${BOLD}($collaborators_count)"

          # Iterate through each collaborator
          if [[ -n "$collaborators" ]]; then
            while IFS= read -r collaborator; do
              if [[ "$collaborator" == "$current_user" ]]; then
                echo " ● $collaborator (owner)"
              else
                echo " ● $collaborator"
              fi
            done <<< "$collaborators"
          else
            echo "No collaborators found."
          fi

          # Check if there are pending invitations
          if [[ -n "$invitations" ]]; then
            # Print pending invitations
            while IFS= read -r invitee; do
              echo " ● $invitee (invitation pending)"
            done <<< "$invitations"
          fi
        fi
      else
        echo "${BOLD} ■■▶ This repo has no remote on GitHub !" && br;
      fi
    else
      echo "${BOLD} ■■▶ This won't work, you are not in a git repo !" && br;
    fi
  }

  #######################################################################
  ```
</details>

<hr style="border: 0; height: 1px; background: #21262d;">

<details>
  <summary><strong> WSL Paths</strong></summary>

  ```sh
  ### WSL Paths 

  # Binaries
  WSL_PATH=/home/h471x/.local/bin/:/usr/bin/scp
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
  BINARY_PATH=$WSL_PATH:$SQLITE_PATH:$QT_PATH:$WINDOWS_APP_PATH:$PYTHON_PATH

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
  ```
</details>

<hr style="border: 0; height: 1px; background: #21262d;">

<details>
  <summary><strong> WSL Terminal Aliases</strong></summary>

  ```sh
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
  ```
</details>

<hr style="border: 0; height: 1px; background: #21262d;">

<details>
  <summary><strong> WSL Browser</strong></summary>

  ```sh
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
  ```
</details>

<hr style="border: 0; height: 1px; background: #21262d;">

<details>
  <summary><strong> WSL PWA Alias</strong></summary>

  ```sh
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
  ```
</details>

<hr style="border: 0; height: 1px; background: #21262d;">

<details>
  <summary><strong> WSL PWAs</strong></summary>

  ```sh
  ### PWAs Aliases

  # this alias to open Digital Clock Web App
  alias clock="allow_sudo && clock"

  # this function for clock alias
  function clock(){
    local clock_id="pgoffdmnhcendlolaaobdojhhdnkfdlj"
    local clock_link="localhost"
    local clock_name="Digital Clock"

    # start apache server if not running
    if ! pgrep apache2 > /dev/null; then
      sudo service apache2 start &>/dev/null;
    fi

    # open clock PWA or Progressive Web App
    open_web_app $clock_link $clock_id $clock_name;

    # stop apache server
    sudo service apache2 stop &>/dev/null;
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
    local router_id="mgnpfopekbaehajaakfppclfjmcpceke"
    local router_IP="192.168.8.1"
    local router_name="h471x Router"

    # start apache server if not running
    if ! pgrep apache2 > /dev/null; then
      sudo service apache2 start &>/dev/null;
    fi

    # open clock PWA or Progressive Web App
    open_web_app $router_IP $router_id $router_name;

    # stop apache server
    sudo service apache2 stop &>/dev/null;
  }
  ```
</details>

<hr style="border: 0; height: 1px; background: #21262d;">

<details>
  <summary><strong> WSL Shortcuts Aliases</strong></summary>

  ```sh
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

  # this alias to view the devops folder
  alias dvps="op /mnt/d/NTSOA/DEVOPS/devops"

  # this alias to open recent file / directory
  alias rct="rct"

  # this function for rct alias
  function rct(){
    local recent_file=$(ls -t . | head -n1)
    op $recent_file
  }
  ```
</details>

<hr style="border: 0; height: 1px; background: #21262d;">

<details>
  <summary><strong> P10k Config</strong></summary>

  ```sh
  ### p10k Config

  # To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
  [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

  #######################################################################
  ```
</details>

<hr style="border: 0; height: 1px; background: #21262d;">


<details>
  <summary><strong></strong></summary>

  ```sh

  ```
</details>

<hr style="border: 0; height: 1px; background: #21262d;">
