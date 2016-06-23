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
    ch-1-4 )
        if [[ ! -d "~/workspace/test-website/config" ]]; then
            mkdir ~/workspace/test-website/config
        fi
        clear
        ;;
    ch-3-2 )
        if [[ -d "~/workspace/test-website/img" ]]; then
            rm -r ~/workspace/test-website/img
        fi
        if [[ ! -d "~/workspace/test-website/images" ]]; then
            mkdir ~/workspace/test-website/images
            touch ~/workspace/test-website/images/logo-light.png
        fi
        if [[ ! -d "~/workspace/config" ]]; then
            mkdir ~/workspace/config
        fi
        clear
        ;;
    ch-4-4 )
        if [[ ! -d "~/workspace/config" ]]; then
            mkdir ~/workspace/config
        fi
        if [[ ! -d "~/workspace/nested-directories" ]]; then
            mkdir -p ~/workspace/nested-directories/nested-level-1/nested-level-2/nested-level-3
        fi
        clear
        ;;
	* ) echo "'$arg' doesn't match any available arguments" 
		;;
esac