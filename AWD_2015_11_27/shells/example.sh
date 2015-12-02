#!/bin/bash

clear

echo "#####################################################"
echo "#                     Registration                  #"
echo -e "\n"

read -p "Enter First Name  : " fname

read -p "Enter Last Name  : " lname

read -p "Enter Address  : " address

read -p "Enter Date of Birth  : " dob

echo -e "\n"

echo "____________________USER INFORMATION_________________"

echo -e "\n"

echo "Full Name - $fname + $lname"

echo "Address - $address"

echo "Date Of Birth - $dob"

echo "__________________USER INFORMATION___________________" >>user.txt

echo -e "\nFull Name - $fname $lname" >>user.txt

echo -e "Address - $address" >>user.txt

echo -e "Date of Birth - $dob" >>user.txt
cat user.txt
