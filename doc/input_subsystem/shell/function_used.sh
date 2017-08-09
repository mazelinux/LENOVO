#########
#this is consult by Thomas
#author by Maze:malei4
#########This is the script to run
if [ -n "$1" ]; then
	source config.sh $1
else
	echo "usage:$0 <shot_time>"
	exit
fi

#########
#Really_do
#########
i=0
while (( i<${NUM} ))
do
	$TO_DO
	$TO_DO1
	$TO_DO2
	let "i++"
	echo "it has been taken $i times"
done


