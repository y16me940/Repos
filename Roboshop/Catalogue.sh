ID=$(id -u root)

#Check the Root Access
if [ $ID -ne 0 ]
then
echo "$R You are not the Root user to execute this script"
else
echo "$G You are the root user and good to proceed"
fi

#colours defining
R="\e[31m"
G="\e[32m"
Y="\e[33m"

#Validatin of command execution and dynamic statements printiing
validate(){
    if [ $1 ne 0]
    then
    echo -e "$2.......... $R FAILURE/n"
    exit 2
    else
    echo -e "$2.........  $G SUCCESS/n"
    fi
}

#Disabling existing nodejs version
dnf module disable nodejs -y
validate $? "Disabling existing nodejs version"
