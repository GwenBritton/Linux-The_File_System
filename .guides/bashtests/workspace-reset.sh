#!/bin/bash
# workspace-reset file hierarchy

WORKSPACE=/home/codio/workspace/
arg=$1

function init_workspace {
	mkdir ${WORKSPACE}assets ${WORKSPACE}assets/img
	touch ${WORKSPACE}assets/img/logo.png
	mkdir ${WORKSPACE}css
	touch ${WORKSPACE}css/styles.css
    echo -e  '/*\n * I have some CSS content!\n */' > css/styles.css
	touch ${WORKSPACE}index.html
	mkdir ${WORKSPACE}test-website ${WORKSPACE}test-website/img
	touch ${WORKSPACE}test-website/img/logo.png ${WORKSPACE}test-website/index.html ${WORKSPACE}test-website/.website-config
	echo "Project files have been reseted"
	sleep 2
	clear
}

function reset_workspace {
	rm -r ${WORKSPACE}assets
	rm -r ${WORKSPACE}css
	rm ${WORKSPACE}index.html
	rm -r ${WORKSPACE}test-website
	rm -r ${WORKSPACE}nested-directories
    rm -r ${WORKSPACE}images
    rm -r ${WORKSPACE}config
    rm ${WORKSPACE}style.css
    rm ${WORKSPACE}styles.css
    > ~/.bash_history
	echo "Reseting project files and directories"
	sleep 2
	init_workspace
}

function reset_challenges {
	find "${WORKSPACE}.guides/bashtests/" -path "*.txt" -delete
	# find "${WORKSPACE}/bashtests/" -path "*.txt" -delete
	echo "Project challenges files have been reseted."
	sleep 2
	clear
}

case $arg in
	challenges ) reset_challenges
		;;
	workspace ) reset_workspace
		;;
	* ) echo "'$arg' doesn't match any available arguments" 
		;;
esac