export DOTFILES_PATH="/home/david/.dotfiles"
export DOTLY_PATH="$DOTFILES_PATH/modules/dotly"
export ZSH_THEME="backpackerhh"
export ZIM_HOME="$DOTFILES_PATH/shell/zsh/.zim"
export NODE_OPTIONS="--max-old-space-size=4096"
export DISABLE_SPRING=true
export NVM_DIR="$HOME/.nvm"

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='codium'
fi

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
