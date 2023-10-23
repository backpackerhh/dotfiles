function zsh::performance() {
  limit=${1:-10}

  repeat $limit { time zsh -i -c exit }
}

# Most used commands
function muc() {
  fc -lim "*$@*" 1 | awk '{print $4}' | sort | uniq -c | sort -rn | head
}
