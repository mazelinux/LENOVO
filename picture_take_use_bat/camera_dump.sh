if [ -n "$1" ]; then
	shot_time=$1
	echo "$shot_time times still capture will be taken"
else
	echo "usage:$0 <shot_time>"
	exit
fi

setprop camera.hal.dump 16
getprop |grep dump
echo "please launch the camera app and switch to facing preview"
sleep 20
echo "previous dump files in /data/misc/media/* will be deleted"
rm /data/misc/media/*
echo "previous picture files in /sdcard/DCIM/Camera/* will be deleted"
rm /sdcard/DCIM/Camera/*
sync
echo "still capture is started"
i=0
while true
do
if(test $i != $shot_time);then
	input keyevent 27
	sleep 1
	i=`expr $i + 1`
	echo "it has been taken $i times"
else
	echo "done, app goes back and home, please check the pictures in filemanager"
	input keyevent 4
	input keyevent 3
	exit
fi
done

