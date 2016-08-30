#########
#this is consult by Thomas
#author by Maze:malei4
#########Config
source function_define.sh

echo "#########"
echo '#Usage: function_used.sh $TIMES'
echo "#OPTION:TO_DO"
echo "#keyevent VALUE(keycode)			do keyevent"
echo "#tap VALUE1(x) VALUE2(y)			tap like a finger on the tp"
echo "#swipe VLAUE(x1) VALUE(y1) VALUE(x2) VALUE(y2)  swipe like a finger on the tp"
echo "#text VALUE(string)				input some string"
echo "#wake_up					wakeup the tablet"
echo "#########"
#########
#if you have some new function,add here and function_define.sh
#########

NUM=$1
TO_DO=wake_up
TO_DO1=
TO_DO2=
