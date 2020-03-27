#!/bin/bash -x

#Description: Regex pattern to validate PIN Code.
#Author: Raj Kush
#Date: 27 March 2020
clear

shopt -s extglob

#VARIABLES
pinCode=0

function validatePinCode() {
	local pin=$1
	local regexPattern="^[1-9]{1}[0-9]{5}"
	if [[ $pin =~ $regexPattern ]]
	then
		echo "Valid"
	else
		echo "Invalid"
	fi
}

function enterPinCode() {
	read -p "Enter PIN Code: " pinCode
	validatePinCode $pinCode
}

enterPinCode

sleep 1


