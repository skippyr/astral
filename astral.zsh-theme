export VIRTUAL_ENV_DISABLE_PROMPT=1

setopt promptsubst

function _astral {
  function get_venv {
    [[ ${VIRTUAL_ENV} ]] && echo "using %F{6} ${VIRTUAL_ENV##*/}%f "
  }

  function stat_dirty {
    [[ $(git status -s 2>/dev/null) ]] && echo " %f[%F{1}✗%f]"
  }

  function get_branch {
    b=$(git branch --show-current 2>/dev/null)
    [[ ${b} ]] && echo " %fon %F{5}󰘬 ${b}$(stat_dirty)"
  }

  echo "%F{2}%F{3}%F{1} %F{3}%n%F{1}@%F{2}%m%f $(get_venv)in %F{1}"\
       "%1~$(get_branch)\n  %F{1}¦%f "
}

PROMPT='$(_astral)'
