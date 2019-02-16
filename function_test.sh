menu()
{
	echo "========================================"
	echo "1- Create File"
	echo "2- Create Directory"
	echo "3- Change Directory"
	echo "4- List of File"
	echo "5- Exit"
	echo "========================================"
	echo "Input:"
}
input=0
while(($input!=5))
do
	menu
	read input

	if (( $input == 1))
		then  
			echo "Please Enter Filename:"
			read fname
			touch $fname
			ls -lah
	elif (( $input==2 ))
		then 
			echo "Please Enter Directory name:"
			read dname
			echo $dname
			mkdir $dname
			ls -lah | grep $dname
        elif (( $input==3 ))
		then 
			echo "Please Enter Directory name:"
			read dname
			cd $dame
       elif (( $input==4 ))
		then 
			echo "Please Enter file name:"
			read fname
			cat $fname
	elif(($input==5))
		then
			echo "exit !!!"
	fi
done


