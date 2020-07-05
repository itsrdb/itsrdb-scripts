#This script allows launching of terminal in sudo mode without having to write the password again
#Run this script as sudo

echo "Enter your admin username :"
read usrname

echo "$usrname ALL=NOPASSWD: ALL" >> "/etc/sudoers"
echo "done!"