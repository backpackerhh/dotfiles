export DOTFILES_PATH="/home/david/.dotfiles"
export DOTLY_PATH="$DOTFILES_PATH/modules/dotly"
export ZSH_THEME="backpackerhh"
export ZIM_HOME="$DOTFILES_PATH/shell/zsh/.zim"
export NODE_OPTIONS="--max-old-space-size=4096"
export DISABLE_SPRING=true
export NVM_DIR="$HOME/.nvm"
export FZF_DEFAULT_OPTS="--reverse"

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='codium'
fi

export PATH="$DOTLY_PATH/bin:$DOTFILES_PATH/bin:/snap/bin:$PATH"

# https://github.com/zimfw/zimfw/wiki/Troubleshooting#completion-is-not-working
skip_global_compinit=1
