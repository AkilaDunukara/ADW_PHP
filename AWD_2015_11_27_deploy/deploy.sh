#!/bin/bash

clear

echo "#####################################################"
echo "#                     User Login                    #"
echo -e "\n"

read -p "User Name  : " username

read -p "Enter Password  : " password

db_username="admin"
db_password="admin"

if [ "$username" == "$db_username" -a  "$password" == "$db_password" ]; then
	
	echo 'Login Success.'
else
	echo -e "\nInvalid username or password.\n"
	exit;
fi

clear

echo -e "########### Deploy Files #############\n\n"
echo "1. Deploy Production"
echo "2. Deploy QA"
echo "3. Deploy Dev"
echo "4. Exit"

echo -e "\n\n"

read -p "Select your choice [1,2,3 or 4] : " user_choice

clear
echo -e "\n\n"

if [ $user_choice -eq 1 ] ; then

	echo "ABC Project"
	echo "Deploy Production"
	paste_dir="production"

elif [ $user_choice -eq 2 ] ; then

	echo "ABC Project"
	echo "Deploy QA"
	paste_dir="qa"
	 
elif [ $user_choice -eq 3 ] ; then

	echo "ABC Project"
	echo "Deploy Dev"
	paste_dir="dev"
		
else 
    echo -e "You chose to Exit...\n"
	exit;
			
fi

echo -e "\n\n"

read -p "Do you want to continue [Y/N]? " yes_no

echo -e "\n\n"

if [ "$yes_no" == 'Y' ] ; then

	for file in wd/*.html; do
	    cp -v $file $paste_dir
	done
else

	echo -e "Deploy Aborted!..\n"
	exit;		
fi

echo -e "\n\nDone deploying..\n\n"

read -p "Hit 99 to exit or 1 to main menu. " proceed

if [ $proceed == 1 ]; then
	bash <(sed -n '24,$p' deploy.sh)
else
	clear
	echo -e "\n\nYou have exit the setup..\n"
	exit;
fi
