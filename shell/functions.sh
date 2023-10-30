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

# Pretty print $PATH
function ppp() {
	echo "$PATH" | tr : '\n'
}

# Docker
function dctexi() {
	if [[ -z "$*" ]]; then
		echo "Error: No args provided"
		return
	fi

	container_id=$(docker ps | fzf | awk '{print $1}')

	docker exec -it $container_id "$@"
}

function diruni() {
	if [[ -z "$*" ]]; then
		echo "Error: No args provided"
		return
	fi

	image_id=$(docker image ls | fzf | awk '{print $3}')

	docker run -it --rm $image_id "$@"
}
