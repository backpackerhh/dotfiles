source "$DOTFILES_PATH/shell/bash/.bashenv"
source "$DOTFILES_PATH/shell/aliases.sh"
source "$DOTFILES_PATH/shell/functions.sh"
source "$DOTFILES_PATH/shell/bash/functions.sh"

themes_paths=(
  "$DOTFILES_PATH/shell/bash/themes"
  "$DOTLY_PATH/shell/bash/themes"
)

for THEME_PATH in ${themes_paths[@]}; do
  THEME_PATH="${THEME_PATH}/$BASH_THEME.sh"

  [ -f "$THEME_PATH" ] && source "$THEME_PATH" && THEME_COMMAND="${PROMPT_COMMAND:-}" && break
done

for bash_file in "$DOTLY_PATH"/shell/bash/completions/_*; do
  source "$bash_file"
done

# Uncomment code below when some completion is added
# if [ -n "$(ls -A "$DOTFILES_PATH/shell/bash/completions/")" ]; then
#   for bash_file in "$DOTFILES_PATH"/shell/bash/completions/_*; do
#     source "$bash_file"
#   done
# fi

source "$DOTFILES_PATH/shell/lazy/nvm.sh"
source "$DOTFILES_PATH/shell/lazy/rvm.sh"
