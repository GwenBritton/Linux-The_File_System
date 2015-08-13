#!/bin/bash
# touch test

bash_history=~/.bash_history
BASHDIR=/home/codio/workspace/.guides
check_file=cli-3-1
hist_file="$BASHDIR/bashtests/$check_file.txt"

echo "$check_file" >> $bash_history
grep -A2000 -e "^$check_file" $bash_history > "$BASHDIR/bashtests/${check_file}.txt"
find "$hist_file" -type f -exec sed -i "s@~@$HOME@g" {} \; 

# Must match for erasing history
RES_HIST=0
COUNT=0
QCOUNT=2

# Run test
function test_command {
	(( COUNT ++ ))
	if [[ $COUNT -le $QCOUNT ]]; then
		case $COUNT in
			1 )
				expect_directory "/home/codio/workspace/config" "move ~/workspace/test-website/config to ~/workspace"
				# expect_directory "$BASHDIR/workspace-cli3/config" "move ~/workspace-cli3/test-website/config to ~/workspace-cli3"
				;;
			2 )
				expect_file "/home/codio/workspace/config/.website-config" "move ~/workspace/test-website/.website-config to ~/workspace/config/"
				# expect_file "$BASHDIR/workspace-cli3/config/.website-config" "move ~/workspace-cli3/test-website/.website-config to ~/workspace-cli3/config/"
				;;
		esac
	else 
        echo "Well done!"
echo "Well done!"
return 0
	fi
}


test_command