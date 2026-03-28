#mydir='/usr/local/go/bin'
#if [ -d $mydir ]; then
    #echo "it exists";
#fi
#if [ ! -d $mydir ]; then
    #echo "it does not exists";
#fi

curr_shell=$SHELL
if [[ "$SHELL" == *"bash" ]]; then
  echo "HAVE BASH"
elif [[ "$SHELL" == *"zsh" ]]; then
  echo "HAVE ZSH"
else
  echo "no SHELL"
fi
#this works fine
#bash ./test.sh
#this is the best way to do it

whitelist="OBSIDIAN
dotfiles
OS25
.os26
.osYR
"
can_continue=false
for curr_dir in "${whitelist[@]}"
do
  echo "$curr_dir/"
  if echo "$PWD" | grep -q "$curr_dir";
  then
    echo "> on whitelist"
    can_continue=true
  fi
done
if [ "$can_continue" = false ]
then
  echo "> NOT on whitelist"
  exit 1
fi
