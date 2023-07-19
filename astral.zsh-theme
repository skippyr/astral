setopt promptsubst
export VIRTUAL_ENV_DISABLE_PROMPT=1

__Astral()
{
	Get_Virtual_Environment()
	{
		[[ ${VIRTUAL_ENV} ]] && echo " using %F{6} ${VIRTUAL_ENV##*/}%f"
	}

	Get_Changes()
	{
		[[ $(git status --porcelain 2>/dev/null) ]] && echo " [%F{red}✗%f]"
	}

	Get_Branch()
	{
		typeset -r b=$(git branch --show-current 2>/dev/null)
		[[ ${b} ]] && echo " on %F{5}󰘬 ${b}%f$(Get_Changes)"
	}

	echo "%F{2}%F{3}%F{1} %F{3}%n%F{1}@%F{2}%m%f$(Get_Virtual_Environment)"\
	     "in %F{1} %1~%f$(Get_Branch)"
}

PROMPT='$(__Astral)
  %F{1}¦%f '

