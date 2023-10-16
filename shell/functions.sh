function cdd() {
	cd "$(ls -d -- */ | fzf)" || echo "Invalid directory"
}

function d() {
	if [[ -n $1 ]]; then
		dirs "$@"
	else
		dirs -v | head -n 10
	fi
}

function cd() {
	if [[ $@ =~ ^-\[1-9]$ ]]; then
		local row=$((${1#-} + 1))

		eval "builtin cd $(d | awk 'NR=='$row' {print $2}')"
	else
		builtin cd "$@"
	fi
}
