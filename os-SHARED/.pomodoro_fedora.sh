# NOTE: only testing on Fedora for now
# DEPENDENCIES:
# - lolcat
#   `sudo dnf install lolcat`
# - timer
#   Requires
#   https://github.com/caarlos0/timer
#   to be installed.
#     - DL latest release
#       https://github.com/caarlos0/timer/releases
#     - cd ~/Downloads //- where I DL'd to
#     - sudo dnf install ./timer-1.4.6-1.x86_64.rpm
# - spd-say should ship with your distro
#
#- reference: https://gist.github.com/bashbunni/3880e4194e3f800c4c494de286ebc1d7

declare -A pomo_options
pomo_options["build"]="45"
pomo_options["break"]="10"

pomodoro () {
  #echo "$1 -- test";
  if [ -n "$1" ] && [ -n "${pomo_options[$1]}" ]; then
    val=$1
    echo "$val" | lolcat
    timer "${pomo_options["$val"]}m"
    spd-say "'$val' session done"
  fi
}

alias pmbuild="pomodoro 'build'"
alias pmbreak="pomodoro 'break'"
#alias pmbuild="echo 'build'"
#alias pmbreak="echo 'break'"
