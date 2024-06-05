#compdef task
local state line
declare -A opt_args

_task_get_tasks () {
  local file=$1
  sed '1,/tasks:/d' "$file" | grep -iwE "^\ \ [a-z](.*)$" | sed 's/.$//' | awk '{ print $1 }'
  while read included_task
  do
    taskfile_path=$(sed "1,/$included_task:/d" "$file" | grep -m 1 -iwE "^\  \ \ taskfile: .*$" | awk '{ print $2 }')
    sed '1,/tasks:/d' "$taskfile_path" | grep -iwE "^\ \ [a-z](.*)$" | sed 's/.$//' | awk -v included_task="$included_task" '{ print included_task":"$1 }'
  done < <(sed '1,/includes:/d' "$file" | grep -iwE "^\ \ [a-z](.*)$" | sed 's/.$//' | awk '{ print $1 }')
}

_task () {
  local state line
  typeset -A opt_args

  _arguments \
    '*: :->args'
  if [ -f Taskfile.yaml ]; then
    compadd `_task_get_tasks "Taskfile.yaml"`
  elif [ -f Taskfile.yml ]; then
    compadd `_task_get_tasks "Taskfile.yml"`
  else
    echo -e "\nNo taskfile found"
  fi
}

compdef _task task
