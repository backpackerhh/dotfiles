function lazy_rvm() {
  unset -f rvm
  unset -f irb
  unset -f ruby

  [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
}

function rvm() {
  lazy_rvm
  rvm "$@"
}

function irb() {
  lazy_rvm
  irb "$@"
}

function ruby() {
  lazy_rvm
  ruby "$@"
}
