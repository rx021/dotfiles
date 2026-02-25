# NOTE: only testing on Fedora for now
# DEPENDENCIES:
# - lolcat
#   `sudo dnf install lolcat`
# - timer
#   Requires
#   https://github.com/caarlos0/timer
#   to be installed.
# - spd-say should ship with your distro
#
#- reference: https://gist.github.com/bashbunni/3880e4194e3f800c4c494de286ebc1d7

declare -A pomo_options
pomo_options["build"]="45"
pomo_options["break"]="10"

pomodoro () {
  if [ -n "$1" -a -n "${pomo_options["$1"]}"]; then
    val=$1
    echo $val | lolcat
    timer ${pomo_options["$val"]}m
    spd-say "'$val' session done"
  fi
}

alias pmbuild="pomodoro 'build'"
alias pmbreak="pomodoro 'break'"
