#!/bin/bash
# touch test

bash_history=~/.bash_history
BASHDIR=/home/codio/workspace/.guides
check_file=cli-3-2
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
				expect_directory "/home/codio/workspace/test-website/images" "rename ~/workspace/test-website/img to images/"
				# expect_directory "$BASHDIR/workspace-cli3/test-website/images" "rename ~/workspace-cli3/test-website/test-website/img to images/"
				;;
			2 )
				expect_file "/home/codio/workspace/test-website/images/logo-light.png" "rename ~/workspace/test-website/images/logo.png to logo-light.png"
				# expect_file "$BASHDIR/workspace-cli3/test-website/images/logo-light.png" "rename ~/workspace-cli3/test-website/images/logo.png to logo-light.png"
				;;
		esac
	else 
        echo "Well done!"
echo "Well done!"
return 0
	fi
}


test_command