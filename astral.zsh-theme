# Enables ZSH prompt substitution.
#
# This make it substitute variables and functions in the prompt variables, but
# they need to be defined using single quotes for it to work.
setopt promptsubst
# Prevents the default changes made to the prompt when sourcing a virtual
# environment.
export VIRTUAL_ENV_DISABLE_PROMPT="1"

# To avoid conflicts with possible user defined functions, all functions defined
# in this theme use the "astral::" prefix.
#
# They might also use an underline character (_) at their start to make them
# harder to find when using a regular tab completition.

# If using a virtual environment, prints its base name.
function _astral::print_venv {
  typeset -r venv=${VIRTUAL_ENV##*/}
  [[ -n ${venv} ]] &&
  echo " using %B%F{cyan} ${venv}%f%b"
}

# If inside a Git repository, prints a decorator if there are changes to be
# commited.
function _astral::print_git_changes {
  typeset -r changes=$(git status --porcelain 2>/dev/null)
  [[ -n ${changes} ]] &&
  echo " [%F{red}✗%f]"
}

# If inside a Git repository, prints the name of the branch and if there are
# changes to be commited.
function _astral::print_git_info {
  typeset -r branch=$(git branch --show-current 2>/dev/null)
  [[ -n ${branch} ]] &&
  echo " on %B%F{magenta}󰘬 ${branch}%b%f$(_astral::print_git_changes)"
}

# The "precmd" function is a ZSH builtin function that gets executed every time
# before the prompt gets printed.
#
# This setup is a work-around to make it print a new line after each command to
# make the theme be more comfortable to use.
function precmd {
  function precmd {
    echo
  }
}

PROMPT='%F{green}%F{yellow}%F{red} %B%F{yellow}%n%F{red}@%F{green}%m%b%f$(_astral::print_venv) in %B%F{red} %1~%f%b%b$(_astral::print_git_info)
%F{red}¦%f '
