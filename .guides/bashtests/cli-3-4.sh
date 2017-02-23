#!/bin/bash
# touch test
. ~/workspace/.guides/bashtests/function.sh

bash_history=~/.bash_history
BASHDIR=/home/codio/workspace/.guides
check_file=cli-3-4
hist_file="$BASHDIR/bashtests/$check_file.txt"

echo "$check_file" >> $bash_history
grep -A2000 -e "^$check_file" $bash_history > "$BASHDIR/bashtests/${check_file}.txt"
find "$hist_file" -type f -exec sed -i "s@~@$HOME@g" {} \; 

# Must match for erasing history
RES_HIST=0
COUNT=0
QCOUNT=3

# Run test
function test_command {
	(( COUNT ++ ))
	if [[ $COUNT -le $QCOUNT ]]; then
		case $COUNT in
			1 )
				expect_commands "cd into the nested-directories/nested-level-1/ directory by using an absolute path" "cd /home/codio/workspace/nested-directories/nested-level-1" "cd ~/workspace/nested-directories/nested-level-1"
				;;
			2 )
				expect_commands "cd into the nested-level-3/ directory by using a relative path" "cd nested-level-2/nested-level-3"
				;;
			3 )
				expect_directory "/home/codio/workspace/nested-directories/nested-level-1/config" "move the entire ~/workspace/config/ directory to the nested-level-1/ directory"
				;;
		esac
	else 
echo "Well done!"
return 0
	fi
}


test_command