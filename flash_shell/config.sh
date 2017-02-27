#!/bin/bash

#####################################################################
#        Config                                                     #
#####################################################################
	ROOT_DIR=$(pwd)
USERNAME=$(whoami)
#    AndroidEdition=android_6.0.0_r1
#    AndroidPlatform=firefly_rk3288
#    ARCH=arm
#    SEC_PRODUCT=yeti
CPU_JOB_NUM=$(grep -c processor /proc/cpuinfo)
#    PROFILE_SCONS=firefly-release-m
#    CROSS_COMPILE=arm-eabi-
	PRODUCT=r2_cht_ffd
#    DEVICE_DIR=$ROOT_DIR/device
#    DEVICE_TREE=
#    DEVICE_GIT=device.git
#    DEVICE_BRANCH=master
#    DNS_UPDATE=
	KERNEL_DIR=$ROOT_DIR/kernel/cht
#    KERNEL_GIT=kernel.git
#    KERNEL_BRANCH=master
#    KERNEL_CONFIG=firefly-rk3288-linux_defconfig
#    KERNEL_IMAGE=firefly-rk3288.img
	LUNCH_ENG=yeti_10_row_lte-userdebug
#	LUNCH_ENG=yeti_10_prc_lte-userdebug
	OUT_DIR=$ROOT_DIR/out
#    TOOL_GIT=tool.git
#    TOOL_BRANCH=master
#    GENERATE_FLASH_SCRIPT_GIT=script.git
#    DDK_VENDOR_GIT=ssh://driver
#    TARGET_PLATFORM=
#    UBOOT_DIR=
#	PLAT_VER=$(get_build_var PLATFORM_VERSION)
	LOG_NAME="build_log_`date +%y_%m_%d_%H_%M_%S`.log"
	LOG_DIR=$ROOT_DIR/$LOG_NAME
####################################################################
#   ANDROID_CODE_CHOSE                                             #
####################################################################
#    ANDROID_GOOGLE="https://android.googlesource.com/platform/manifest -b android-6.0.0_r1"
#####################################################################
#        Some General Use Function                                  #
#####################################################################
function info()
{
	echo -e "\033[1;40;36m$1\033[0m"
}


function error()
{
	echo -e "\033[1;31m$1\033[0m" 1>&2
}


function check_exit()
{
	if [ $? != 0 ];then
	error "something nasty happened"
	exit $?
	fi
}

function setup_environment()
{
	cd $ROOT_DIR
	source build/envsetup.sh
	lunch $LUNCH_ENG
	PLAT_VER=$(get_build_var PLATFORM_VERSION)
}

function check_openjdk()
{
	if [[ $PLAT_VER = "6.0.1" ]]; then
		echo "current platform version is $plat_ver, M_MR1"
		source /opt/conf/openjdk17.conf
		echo "current java environment"
		echo $JAVA_HOME
		echo $ANDROID_JAVA_HOME
	fi

	if [[ $PLAT_VER = "7.0" ]]; then
		echo "current platform version is $plat_ver, N_MR0"
		source /opt/conf/openjdk18.conf
		echo "current java environment"
		echo $JAVA_HOME
		echo $ANDROID_JAVA_HOME
	fi
}
#####################################################################
#         stage    1      Function                                  #
#####################################################################
function confirm_android_platform()
{
	info "*******************************"
	info "* Please check your configure *"
	info "*******************************"
	echo "Android Edition is $AndroidEdition and Platform is $AndroidPlatform"
	echo "CONFIG_DDK=$CONFIG_DDK"
}

#confirm_android_platform
setup_environment
check_openjdk

