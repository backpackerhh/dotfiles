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

function cdd() {
	cd "$(ls -d -- */ | fzf)" || echo "Invalid directory"
}

function muc() {
	fc -lim "*$@*" 1 | awk '{print $4}' | sort | uniq -c | sort -rn | head
}

function zsh::performance() {
	limit=${1:-10}

	for i in $(seq 1 $limit); do time zsh -i -c exit; done
}
