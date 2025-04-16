# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Check if Oh My Zsh is installed and install it if not
if [ ! -d "$ZSH" ]; then
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

ZSH_THEME="robbyrussell"

# Load Oh My Zsh
source $ZSH/oh-my-zsh.sh

# Setup history
HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

# Set aliases
alias la="ls -la"
alias gs="git status"
alias gd="git diff"
alias gr="git log --graph --oneline --all"
alias gf="git fetch --prune"
alias vim="nvim"
alias av="source .venv/bin/activate"
alias dv="deactivate"

# Add Go to PATH
export PATH=$PATH:/usr/local/go/bin:$HOME/go/bin

# Add Node to PATH
# export PATH=$PATH:/usr/local/node/bin
export PATH=$PATH:/opt/homebrew/opt/node@22/bin

# Add JetBrains to PATH
# export PATH=$PATH:/usr/local/pycharm-2023.1.6/bin
export PATH=$PATH:/usr/local/WebStorm-242.23726.96/bin

# Add Python to PATH
export PATH=$PATH:~/.pyenv/versions/3.11.10/bin

# Add SQLite to PATH
export PATH=/opt/homebrew/opt/sqlite/bin:$PATH

# Load Pyenv
# export PYENV_ROOT="$HOME/.pyenv"
# [[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
# eval "$(pyenv init -)"
