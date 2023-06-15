setopt promptsubst

export VIRTUAL_ENV_DISABLE_PROMPT="1"

function _venv() {
	typeset -r venv=${VIRTUAL_ENV##*/}
	[[ -n ${venv} ]] && echo " using %B%F{cyan}${venv}%f%b"
}

function _branch() {
	typeset -r branch=$(git branch --show-current 2>/dev/null)
	[[ -n ${branch} ]] && echo " on %B%F{magenta}${branch}%b%f"
}

precmd() { echo }

PROMPT='%B%F{yellow}%n%F{red}@%F{green}%m%b%f$(_venv) in %B%F{red}%~%f%b%b$(_branch)
%(?..%F{red}%? )%F{green}%F{yellow}%F{red}%f '
