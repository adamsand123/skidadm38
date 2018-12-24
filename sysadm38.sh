#!/bin/bash

getInput() {
        echo -ne "\e[4msysmod38\e[0m > "        # gör blinkande
        read var
}

printChar() {
	# Skriver ut en viss mängd valfria tecken
	# arg 1 tecken
	# arg 2 antal

	for i in $(seq 0 $2); do
		echo -n "$1"
	done
}
printVersion() {
	echo -e "\n\t\t=[ SKIDADMIN38 (version 0.1.dev.nodisco)]\t\t\t"
}
printBanner() {
	# Skriver ut en banner
	# Tar inte emot några argument

	clear
	printChar '*' 75
	printVersion
	printChar '*' 75

	echo ""
}


# ---------- GRUPP FUNKTIONER ---------
createGroup() {
	echo "creating group"
}
listGroups() {
	echo "listing groups"
}
listGroupMembers() {
	echo "listing the groups members"
}
addUserToGroup() {
	echo "adding user to group"
}
removeUserFromGroup() {
	echo "removing user from group"
}
groupMenu() {
	clear
	echo -e "\n+ -- --=[ Group Menu - Type help for more information]\n"
	echo -e "[+] create\n[+] list\n[+] members\n[+] add\n[+] remove\n[+] exit\n"

	getInput
	while [ $var != "exit" ]; do
		# Kalla på funktion här som ändrar värdet av $val till matchande kommando mha grep (t.ex mem -> members)
		# Om det finns fler än 1 alternativ skriv ut de alternativ som matchar
		# Om det inte finns någon matchning skriv ut error och help menu för groups
		case "$var" in
			create)
				createGroup
				;;
			list)
				listGroups
				;;
			members)
				listGroupMembers
				;;
			add)
				addUserToGroup
				;;
			remove)
				removeUserFromGroup
				;;
			exit)
				break
				;;
			*)
				helpGroup
				;;
		esac

		getInput
	done
	menu
}


# ----------- USER FUNKTIONER ---------
createUser() {
	echo ""
}

# ------------- HELP ---------------

# Funktion skriver ut hjälp meny för huvudmenyn
helpMenu() {
	clear
	echo -e "\n+ -- --=[ Main Menu Help Page]\n\nCommand\t\t\tHelp Text\n-------\t\t\t---------\ngroup\t\t\tEnter submenu for group management\nuser\t\t\tEnter submenu for user management\nfolder\t\t\tEnter submenu for folder management\nserver\t\t\tEnter submenu for server settings\nDependencies\t\tInstall and verify optional dependencies for extra functionallity\nquit\t\t\texits to program\n"
}

# Funktion skriver ut hjälp meny för grupphantering
helpGroup() {
	clear
	printBanner
	echo -e "\n+ -- --=[ Group Management Help Menu]\n\nCommand\t\t\tHelp Text\n-------\t\t\t---------\ncreate\t\t\tEnters a interactive menu to create a new group\nlist\t\t\tList all groups\nmembers {group}\t\tList all member in a group\nadd {user} {group}\tadds a user to a group\nremove\t\t\tRemoves a member from a group\nexit\t\t\tExits to main menu"
}

# Skriver ut huvudmeny
menu() {
	clear
	echo -e "\n+ -- --=[ Main Menu - Type help for more information]\n"
	echo -e "[+] group\n[+] user\n[+] folder\n[+] server\n[+] dependencies\n[+] quit"
	getInput
	echo "Read: $var"
	while [ $var != "quit" ]; do
		if [ $var = "group" ]; then
			groupMenu
		elif [ $var = "user" ]; then
			echo "User"
			#userMenu
		elif [ $var = "folder" ]; then
			echo "Folder"
			#folderMenu
		elif [ $var = "server" ]; then
			echo "Server"
			#serverMenu
		elif [ $var = "dependencies" ]; then
			echo "Dependencies"
			#dependencyMenu
		else
			echo "Invalid command"
			helpMenu
		fi
		getInput
	done
}

# Main funktion - styr körning av program
main() {
	printBanner
	menu
}
main
