# Enables prompt substitution.
#
# This makes ZSH substitute variables and functions inside of the PROMPT
# variables. For it to work, they must be defined using single quotes.
setopt promptsubst
# Disables the default changes made to the prompt when sourcing a virtual
# environment.
export VIRTUAL_ENV_DISABLE_PROMPT="1"

# Prints the name of sourced virtual environments.
function _astral::print_venv {
  typeset -r venv=${VIRTUAL_ENV##*/}
  [[ -n ${venv} ]] &&
  echo " using %B%F{cyan} ${venv}%f%b"
}

# If inside a Git repository, it prints a decorator whenever there are changes
# to be commited.
function _astral::print_git_changes {
  typeset -r changes=$(git status --porcelain 2>/dev/null)
  [[ -n ${changes} ]] &&
  echo " [%F{red}✗%f]"
}

# If inside a Git repository, it prints name of the branch.
function _astral::print_git_branch {
  typeset -r branch=$(git branch --show-current 2>/dev/null)
  [[ -n ${branch} ]] &&
  echo " on %B%F{magenta}󰘬 ${branch}%b%f$(_astral::print_git_changes)"
}

# The precmd function is a ZSH builtin function that gets executed every time
# before the prompt gets printed.
#
# This one is a workaround to make it print a new line character before the
# prompt and make it more comfortable to use.
function precmd {
  function precmd {
    echo
  }
}

PROMPT='%F{green}%F{yellow}%F{red} %B%F{yellow}%n%F{red}@%F{green}%m%b%f$(_astral::print_venv) in %B%F{red} %1~%f%b%b$(_astral::print_git_branch)
%F{red}¦%f '
