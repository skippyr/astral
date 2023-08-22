export VIRTUAL_ENV_DISABLE_PROMPT=1

setopt promptsubst

function _astral_get_venv() {
  [[ ${VIRTUAL_ENV} ]] && echo " using %F{6} ${VIRTUAL_ENV##*/}%f"
}

function _astral_get_dirty_changes() {
  [[ $(git status --porcelain 2>/dev/null) ]] && echo " %f[%F{1}✗%f]"
}

function _astral_get_branch() {
  local b=$(git branch --show-current 2>/dev/null)
  [[ ${b} ]] && echo " on %F{5}󰘬 ${b}$(_astral_get_dirty_changes)"
}

PROMPT='%F{2}%F{3}%F{1} %F{3}%n%F{1}@%F{2}%m%f$(_astral_get_venv) in %F{1} \
%1~%f$(_astral_get_branch)
  %F{1}¦%f '
