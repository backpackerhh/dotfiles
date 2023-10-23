#!/usr/bin/env bash

export PROMPT_COMMAND="backpackerhh_theme"

backpackerhh_theme() {
  last_exit_code=$?

  PS1="$(prompt_arrow)  $(prompt_working_directory)$(prompt_git_info) \e[0m"
  RPS1="$(prompt_timestamp)\e[0m"
  n=$(($COLUMNS - ${#RPS1}))

  printf "%${n}s$RPS1\\r"
}

prompt_arrow() {
  color="\e[32m" # Green

  if [ $last_exit_code -ne 0 ]; then
    color="\e[31m" # Red
  fi

  echo "(bash) ${color}➜"
}

prompt_working_directory() {
  current_dir=$(dot core short_pwd)
  color="\e[97m" # White

  echo "${color}${current_dir}"
}

prompt_git_info() {
  git_status=$(git status 2>/dev/null)

  if [[ -n $git_status ]]; then
    current_branch=$(git symbolic-ref --short HEAD 2>/dev/null)
    commit_id=$(git rev-parse --short HEAD)

    if [[ -n $current_branch ]]; then
      branch_name_or_commit_id="\e[96m$current_branch"
    else
      branch_name_or_commit_id="\e[96m$commit_id"
    fi

    if [[ $git_status == *"working tree clean"* ]]; then
      working_tree_status="\e[32m✓"
    else
      working_tree_status="\e[33m✗"
    fi

    echo " ${branch_name_or_commit_id} ${working_tree_status}"
  else
    echo ""
  fi
}

prompt_timestamp() {
  timestamp=$(date +"%d/%m/%y %H:%M:%S")
  color="\e[90m" # Dark grey

  echo "${color}${timestamp}"
}
