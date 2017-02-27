#!/bin/bash


source ./config.sh
####################################################################
####################################################################
####################################################################
function build_bootimage()
{
	info "***********************"
	info "* Clean Bootimage..."
	info "***********************"
	cd $ROOT_DIR
	rm -rf $OUT_DIR/target/product/$RPODUCT/boot.img	
	check_exit
	cd $KERNEL_DIR
	make mrproper
	check_exit
	info "***********************"
	info "* Build Bootimage..."
	info "***********************"
	cd $ROOT_DIR
	make bootimage -j$CPU_JOB_NUM
	check_exit
}
####################################################################
####################################################################
####################################################################
build_bootimage
date
