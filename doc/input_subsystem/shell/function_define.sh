#########
#this is consult by Thomas
#author by Maze:malei4
#########This is the script to save basic and extend function

#########
#Basic
#########
function keyevent()
{
	input keyevent $1
}

function tap()
{
	input tap $1 $2
}

function swipe()
{
	input swipe $1 $2 $3 $4
}

function text()
{
	input text $1
}

#########
#Extend
#If have some new functions,use 4 basic functions to complete
#########
function wake_up()
{
	keyevent 224
	swipe 30 1000 30 100
}
