#!/bin/bash

printChar() {
	# Skriver ut en viss mängd valfria tecken
	# arg 1 tecken
	# arg 2 antal

	for i in $(seq 0 $2); do
		echo -n "$1"
	done
}
printVersion() {
	echo -e "\n\t\t=[ SKID SYSADMIN (version 0.1.dev.nodisco)]\t\t\t"
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
	echo ""
}
listGroups() {
	echo ""
}
listGroupMembers() {
	echo ""
}
groupMenu() {
	# Skriver ut grupp menyn

	printBanner
	echo -e "\n+ -- --=[ Group Menu - Type help for more information]\n"
	echo -e "[+] create\n[+] list\n[+] members\n[+] add\n[+] exit"
}


# ----------- USER FUNKTIONER ---------
createUser() {
	echo ""
}
addUserToGroup() {
	echo ""
}

# ------------- HELP ---------------
helpMenu() {
	# Funktion skriver ut hjälp meny för huvudmenyn

	printBanner
	echo -e "\n+ -- --=[ Main Menu Help Page]\n\nCommand\t\t\tHelp Text\n-------\t\t\t---------\ngroup\t\t\tEnter submenu for group management\nuser\t\t\tEnter submenu for user management\nfolder\t\t\tEnter submenu for folder management\nserver\t\t\tEnter submenu for server settings\nDependencies\t\tInstall and verify optional dependencies for extra functionallity\nquit\t\t\texits to program"
}
helpGroup() {
	# Funktion skriver ut hjälp meny för grupphantering

	printBanner
	echo -e "\n+ -- --=[ Group Management Help Menu]\n\nCommand\t\t\tHelp Text\n-------\t\t\t---------\ncreate\t\t\tEnters a interactive menu to create a new group\nlist\t\t\tList all groups\nmembers {group}\t\tList all member in a group\nadd {user} {group}\tAdds a user to a group\nexit\t\t\tExits to main menu"
}
menu() {
	# Skriver ut huvudmeny

	printBanner
	echo -e "\n+ -- --=[ Main Menu - Type help for more information]\n"
	echo -e "[+] group\n[+] user\n[+] folder\n[+] server\n[+] dependencies\n[+] quit"
}

main() {
	# Main funktion - styr körning av program
	echo ""
}
helpGroup
