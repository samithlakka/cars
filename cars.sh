#! /bin/bash
#cars
#Samith Lakka

x=1
while [ "$x" -eq "1" ]
do
	echo "Type 1 to add new car"
	echo "Type 2 display list of cars"
	echo "Type 3 to quit the program"
	read usr
	case "$usr" in
		"1") echo "What year in the car"
		read year
		echo "What is the make of the car"
		read make
		echo "What is the model of the car"
		read model
		result="$year:$make:$model"
		echo "$result" >> My_old_cars;;

		"2")sort My_old_cars;;
		"3") echo "Good bye"
		     x=0;;
	esac
done
