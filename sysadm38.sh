#!/bin/bash

# ---------- allmäna funktioner --------------

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

passwdUser() {
	echo ""
}

listUser() {
	echo ""
}

attributes() {
	echo ""
}

userMenu() {
	echo ""
	clear
	echo -e "\n+ -- --=[ User Menu - Type help for more information]\n"
	echo -e "[+] create\n[+] chpass\n[+] list\n[+] attributes\n[+] exit\n"
	getInput
	while [ $var != "exit" ]; do
		case "$var" in
			create)
				createUser
				;;
			chpass)
				passwdUser
				;;
			list)
				listUser
				;;
			attributes)
				attributes
				;;
			exit)
				break
				;;
			*)
				helpUser
				;;
		esac
		getInput
	done
	menu
}

# ------------- FOLDER -------------
createFolder() {
	echo ""
}

listContents() {
	echo ""

}

listAttributes() {
	echo ""

}

folderMenu() {
	echo ""
	clear
	echo -e "\n+ -- --=[ Folder Menu - Type help for more information]\n"
	echo -e "[+] create\n[+] list\n[+] attributes\n[+] exit\n"
	getInput
	while [ $var != "exit" ]; do
		case "$var" in
			create)
				createFolder
				;;
			list)
				listContents	
				;;
			attributes)
				listAttributes
				;;
			exit)
				break
				;;
			*)
				helFolder
				;;
		esac
		getInput
	done
	menu
}

# ------------- SERVER -------------
serverMenu() {
	echo ""
	clear
	echo -e "\n+ -- --=[ Server Menu - Type help for more information]\n"
	echo -e "[+] install\n[+] uninstall\n[+] on\n[+] off\n[+] exit\n"
	getInput
	while [ $var != "exit" ]; do
		case "$var" in
			install)
				installSSH	
				;;
			uninstall)
				uninstallSSH
				;;
			on)
				turnSSHOn
				;;
			off)
				turnSSHOff
				;;
			exit)
				break
				;;
			*)
				helpServer
				;;
		esac
		getInput
	done
	menu
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
	echo -e "\n+ -- --=[ Group Management Help Menu]\n\nCommand\t\t\tHelp Text\n-------\t\t\t---------\ncreate\t\t\tEnters a interactive menu to create a new group\nlist\t\t\tList all groups\nmembers {group}\t\tList all member in a group\nadd {user} {group}\tadds a user to a group\nremove\t\t\tRemoves a member from a group\nexit\t\t\tExits to main menu"
}

helpUser() {
	clear
	echo -e "\n+ -- --=[ User Management Help Menu]\n\nCommand\t\t\t\tHelp Text\n-------\t\t\t\t---------\ncreate {name}\t\t\tCreate a new user\nchpass {user} {password}\tchange a users password\nlist\t\t\t\tlist all users\nattributes\t\t\tEnter sub-menu to view and modify user attributes\nexit\t\t\t\texit to main menu"
}

helpFolder() {
	clear
	echo -e "\n+ -- --=[ Folder Management Help Menu]\n\nCommand\t\t\tHelp Text\n-------\t\t\t---------\ncreate\t\t\tcreate a new folder\nlist {folder}\t\t\tlist the contents of a folder\nattributes {folder}\t\t\Enters sub-menu for folder attribute configuration\nexit\t\t\texit to main menu"
}

helpServer() {
	clear
	echo -e "\n+ -- --=[ Server Management Help Menu]\n\nCommand\t\t\tHelp Text\n-------\t\t\t---------\ninstall\t\t\tInstalls the OPEN-SSH package\nuninstall\t\tUninstalls the OPEN-SSH package\non\t\t\tturns the SSH service on\noff\t\t\tturns the SSH service off\nexit\t\t\texit to main menu"

}

# Skriver ut huvudmeny
menu() {
	clear
	echo -e "\n+ -- --=[ Main Menu - Type help for more information]\n"
	echo -e "[+] group\n[+] user\n[+] folder\n[+] server\n[+] dependencies\n[+] quit"
	getInput
	while true; do
		# FUNKTION HÄR - Tar emot input och försöker matcha mha grep till något av alternativen under
		case $var in
			group)
				groupMenu
				;;
			user)
				userMenu
				;;
			folder)
				folderMenu
				;;
			server)
				serverMenu
				;;
			dependencies)
				dependencyMenu
				;;
			quit)
				exit 0 #exit 0 för att indikera att körnigen av skriptet gick bra (användaren valde själv att avsluta)
				;;
			*)
				helpMenu
		esac
		getInput
	done
}

# Main funktion - styr körning av program
main() {
	printBanner
	menu
}

main
