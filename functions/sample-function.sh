#! /bin/bash
function hello(){
	for USER in $@
	do
		echo "Hello $USER \n"
	done

}

hello Bijay Sanjay Ishaan
