menu()
{
echo "*************************"
echo "1. List Processes"
echo "2. Kill Process"
echo "3. nice Process"
echo "4. renice Process"
echo "5. Exit"
echo "Input:"
}
input=0
while(($input!=5))
do
	menu
	read input

	if (( $input == 1))
		then  
                     ps aux
	elif (( $input==2 ))
		then 
			echo "Please EnterPID:"
			read pid
			kill -9 $pid
        elif (( $input==3 ))
		then 
			echo "Please Enter program name:"
			read pname
			nice $pname &>/dev/null
       elif (( $input==4 ))
		then 
			echo "Please Enter pid:"
			read pid
			echo "Please Enter new priority:"
			read npr 
			renice -n $npr $pid
	elif(($input==5))
		then
			echo "exit !!!"
	fi
done
