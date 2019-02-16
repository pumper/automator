menu()
{
echo "*************************"
echo "1. Start Service"
echo "2. Stop Service"
echo "3. Service Status"
echo "4. Restart Service"
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
			echo "Please Enter Service Name:"
			read sname
			sudo systemctl start $sname
	elif (( $input==2 ))
		then 
			echo "Please Enter Service Name:"
			read sname
			sudo systemctl stop $sname
        elif (( $input==3 ))
		then 
			echo "Please Enter Service Name:"
                        read sname
                        sudo systemctl status $sname
       elif (( $input==4 ))
		then 
			echo "Please Enter Service Name:"
                        read sname
                        sudo systemctl restart $sname
	elif(($input==5))
		then
			echo "exit !!!"
	fi
done
