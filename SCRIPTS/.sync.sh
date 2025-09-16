#-- LOGIC TO BLACKLIST DIRECTORIES TO SYNC

INPUT="$1"
echo "//test inputs [$INPUT]"

echo "_______________"
echo "CHECKING WHITELIST:"
# TODO: doesn't work for UBUNTU
declare -a whitelist=(
  "OBSIDIAN"
  "dotfiles"
  #"rentatee"
  #"OSS"
)
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

#-- LOGIC TO BLACKLIST DIRECTORIES TO SYNC

#echo "CHECKING BLACKLIST:"
#declare -a blacklist=(
  #"OBSIDIAN"
  #"dotfiles"
  #"rentatee"
  #"OSS"
#)
#for curr_dir in "${blacklist[@]}"
#do
  #echo "$curr_dir/"
  #if echo "$PWD" | grep -q "$curr_dir";
  #then
    #echo "> on blacklist"
    #exit 1
  #fi
#done

#-- LOGIC TO SYNC

folder=${PWD##*/}
#echo ${folder} 
#echo "test"
echo "_______________"
echo "// git status"
git status
echo "_______________"
echo "// git add ."
git add .
echo "_______________"
echo "// git status"
git status


separator=":"
last_commit=$(git log -1 --pretty=%B)

if echo "$last_commit" | grep -q "$separator"; then
  first_word=$(echo "$last_commit" | sed "s/$separator.*//")
fi

message="${folder} sync"

if [ "$first_word" != "" ]
then
  message="${first_word}${separator} ${message}"
fi

#TODO: get the message of what was worked on 
echo "_______________"
echo "// git commit -m '${message}'"
git commit -m "${message}"


echo "_______________"
echo "// git fetch"
git fetch

remote_name="origin"
branch_name=$(git branch --show-current)
remote_branch="$remote_name/$branch_name"

echo "_______________"
echo "// git rebase $remote_branch"
git rebase $remote_branch

echo "_______________"
echo "// git log --graph --name-only --oneline -n 2"
git log --graph --name-only --oneline -n 2

echo "_______________"
echo "// git push $remote_name $branch_name"
git push $remote_name $branch_name
echo "_______________"
echo "// git log --graph --name-only --oneline -n 2"
git log --graph --name-only --oneline -n 2


