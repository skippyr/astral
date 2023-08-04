setopt promptsubst
export VIRTUAL_ENV_DISABLE_PROMPT=1

_astral() {
  get_virtual_environment() {
    [[ ${VIRTUAL_ENV} ]] && echo " using %F{6} ${VIRTUAL_ENV##*/}%f"
  }

  get_changes() {
    [[ $(git status --porcelain 2>/dev/null) ]] && echo " %f[%F{1}✗%f]"
  }

  get_branch() {
    typeset -r branch=$(git branch --show-current 2>/dev/null)
    [[ ${branch} ]] && echo " on %F{5}󰘬 ${branch}$(get_changes)"
  }

  echo\
    "%F{2}%F{3}%F{1} %F{3}%n%F{1}@%F{2}%m%f$(get_virtual_environment)"\
    "in %F{1} %1~%f$(get_branch)\n  %F{1}¦%f "
}

PROMPT='$(_astral)'
