# ------------------------------------------------------------------------------
# Codely theme config
# ------------------------------------------------------------------------------
export CODELY_THEME_MINIMAL=false
export CODELY_THEME_MODE="dark"
export CODELY_THEME_PROMPT_IN_NEW_LINE=false
export CODELY_THEME_PWD_MODE="short" # full, short, home_relative

# ------------------------------------------------------------------------------
# Apps
# ------------------------------------------------------------------------------
if [ "$CODELY_THEME_MODE" = "dark" ]; then
	fzf_colors="pointer:#ebdbb2,bg+:#3c3836,fg:#ebdbb2,fg+:#fbf1c7,hl:#8ec07c,info:#928374,header:#fb4934"
else
	fzf_colors="pointer:#db0f35,bg+:#d6d6d6,fg:#808080,fg+:#363636,hl:#8ec07c,info:#928374,header:#fffee3"
fi

export FZF_DEFAULT_OPTS="--color=$fzf_colors --reverse"

# ------------------------------------------------------------------------------
# Path - The sooner within the list, the more priority it has
# ------------------------------------------------------------------------------
export PATH="$DOTLY_PATH/bin":$DOTFILES_PATH/bin":$HOME/.cargo/bin:$PATH"
