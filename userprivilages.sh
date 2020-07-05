#This script allows user to get admin privilages and allows performing commands like sudo update

echo "Enter your username :"
read usrname

echo "${usrname} ALL=(ALL:ALL)ALL" >> "/etc/sudoers"
echo "done!"
echo "Run the command 'su - tom' to get root privilages"