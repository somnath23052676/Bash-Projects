#!/bin/zsh

GREEN="\033[32m"
RESET="\033[0m"

login() {
	echo -e "${GREEN}who are you${RESET}" 
	read username 

	echo -e "${GREEN}what is your password ? ${RESET} "
	read -s password 

	if [ "$username" = "somnath" ] && [ "$password"  = "Code@1" ]; then 
		echo -e "$(figlet -f small "Authorization complete $username ") "
		sleep 3
		clear
	else 
		echo -e " get out imposter " 
		exit 1
	fi
}

while ! login; do
	exit  
done 

