menu()
{
echo "*************************"
echo "1. Add User"
echo "2. Add Group"
echo "3. List Groups"
echo "4. List Users"
echo "5. Add user to group"
echo "6. Exit"
echo "Input:"
}
input=0
while(($input!=6))
do
	menu
	read input

	if (( $input == 1))
		then  
			echo "Please Enter User Name:"
			read usname
			sudo adduser $usname
	elif (( $input==2 ))
		then 
			echo "Please Enter Group Name:"
			read grname
			sudo addgroup  $grname
        elif (( $input==3 ))
		then 
			awk -F ":" '{print $1}' /etc/group
       elif (( $input==4 ))
		then 
			awk -F ":" '{print $1}' /etc/passwd
	elif (($input==5))
		then
			echo "Please Enter User Name:"
			read usname
                        echo "Please Enter Group Name:"
			read grname
			sudo usermod -a -G $grname $usname
	elif (($input==6))
                then
                        echo "exit !!!"

	fi
done
