ID=$(id -u)

#Check the Root Access
if [ $ID -ne 0 ]
then
echo "You are not the Root user to execute this script"
else
echo "You are the root user and good to proceed"
fi
