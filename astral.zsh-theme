export VIRTUAL_ENV_DISABLE_PROMPT=1

setopt promptsubst

function __Astral__Get_Virtual_Environment()
{
    [[ ${VIRTUAL_ENV} ]] && echo " using %F{6} ${VIRTUAL_ENV##*/}%f"
}

function __Astral__Check_For_Git_Changes()
{
    [[ $(git status --porcelain 2>/dev/null) ]] && echo " %f[%F{1}✗%f]"
}

function __Astral__Get_Git_Branch()
{
    typeset -r branch=$(git branch --show-current 2>/dev/null)
    [[ ${branch} ]] && echo " on %F{5}󰘬"                                       \
                            "${branch}$(__Astral__Check_For_Git_Changes)"
}

PROMPT='%F{2}%F{3}%F{1} %F{3}%n%F{1}@%F{2}%m%f$(__Astral__Get_Virtual_Environment) in %F{1} %1~%f$(__Astral__Get_Git_Branch)
  %F{1}¦%f '
