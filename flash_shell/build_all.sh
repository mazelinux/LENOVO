#!/bin/bash

source ./config.sh
#######################################
##############Build_All################
#######################################
function clean_up()
{
	info "*******************"
	info "*Clean OUT_DIR..."
	info "*******************"
	cd $ROOT_DIR
	rm -rf $OUT_DIR
}	

function make_all()
{
	info "*******************"
	info "*One Command Build All..."
	info "*******************"
	cd $ROOT_DIR
	make flashfiles -j$CPU_JOB_NUM 2>&1|tee $LOG_DIR
	check_exit
}

#######################################
##############COMMAND##################
#######################################
echo  "Remove the out dir "[Y]" or "[N]" ?"
read number
if [ $number = "Y" ]; then
clean_up
fi
make_all
#pkill java
