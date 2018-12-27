#!/bin/bash
# ---------- GLOBALA VARIABLER ---------------
####### FÄRGER
P='\033[49;95m'
R='\033[1;31m'
B='\033[1;34m'
C='\033[0;36m'
G='\033[1;32m'
W='\033[1;37m'
Y='\033[1;33m'
W='\033[49;39m'

# ---------- SEXY BANNER ---------------------
mrCPC() {
	echo "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%##%%%%%%%%%%##%%%%###%%###%%##//(###((##%%%%%%%%%%%%%%%%%%%o%"
	echo "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%&%#((#%%%%%###%&&&&%%%%%&&&&&%%%%%##%%%%###%%%%%%%%%%%%%%%%%%%%%"
	echo "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%&%%##%%%%%%%%%%&&&&&%&&&&&&&&%%&&%%%%%%%%###%%%%%%%%%%%%%%%%%%%%"
	echo "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%&&%%%&&&&&&&&&&&&@@@@&&&&&&&&&&&&&&%%%#%%%%%%%%%%%%%%%%%%%%"
	echo "%%%%%%%%%%%%%%%%%%%%%%%%&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&@@@@@@@@&&&&&&&&&&&&%%%%###%%%%%%%%%%%%%%%%"
	echo "%%%%%%%%%%%%%%%%%%%%%%%%&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&@@@&&@@&&&&&&&&&&&&&&&%%%%#%%%%%%%%%%%%%%%%"
	echo "%%%%%%%%%%%%%%%%%&&&&&&&&&&&&&&&@@@&&&&&&&&&&&&&&&&&&&&@@@@&&&&&&&&&&&&&&&&&&&&%%%%%%%%%%%%%%%%%%%"
	echo "%%%%%%%%%%%%%%%&&&&&&&&&&&&&&&&&@@@&&&&&&&&&&&&&&&&&&&&@@@@&&&&&&&&&&&&&&&&&&&&&&%%%%%%%%%%%%%%%%%"
	echo "%%%%%%%%%%%%&&&&&&&&&&&&&&&&&&&@@@@&&&&&&&&&&&&&&&&&&&&@@@@&&&&&&&&&&&&&&&&&&&&&&&%%###%%##%%%%%%%"
	echo "%%%%%%%%%%%&&&&&&&&&&&&&&&&&&&&&@@@@&&&&&@@&&@@@@&&&&&&@@@&&&&&&&&&&&&&&&&&&&&&&&&&%###%####%%%%%%"
	echo "%%%%%%%%%%%%&&&&&&&&&&&&&&&&&&&&@@@@&&&&@@@@@@@@@&&&&&@@&&&&&&&&&&&&&&&&&&&&&&&&&&&%%%%%%###%%%%%%"
	echo "%%%%%%%%%%%%&&&&&&&&&&&&&@@@@@@@@@@@@@@@@@@@@@@@&&&&&@&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&%%%%#%%%%%%"
	echo "%%%%%%%%%%%%&&&&&&&&&&@@@@@@@@@@@@&&&&&&&&&&&&&&&&&&&&&&@@&&&&&&&&&&&&&&&&@@@&&&&&&&&&&&%%%%%###%%"
	echo "%%%%%%%%%%%%&&&&&&&&@@@@@@@&&&%####((((((#########%%%&&&&&&&&&&&&&&@&&&&@@@@@&&&&&&&&&&&&%%%#(((#%"
	echo "%%%%%%%%&&&&&&&&&@@@@@@@@@&%%#((////////////(((((((###%%&&&&&&&&&&&&&&&&@@@@@&&&&&&&&&&&&%%%####%%"
	echo "%%%%%%%%%%%&&&&&&&@@@&&&%#(///*******************/////((#########%%%%&&&&&&&&&&&&&&&&&&&&%%%%%%%%%"
	echo "%%%%%%%%%%%&&&&&&&&&%#///*****************************///////////(((((###%%&&&&&&&&&&&&&&%%%%%%%%%"
	echo "%%%%%%%%##%&&&&&&&%%(/*******,,,,,,***********************////////////(((##%%%&&&&&&&&&&&&&&%%%%%%"
	echo "%%%%%%%%%%%%%&&&%(//****,,,,,,,,,,,,,,,,**********************///////////////((((#%&&&&&&&&&&%%%%%"
	echo "%%%%%%%%%%%%%&&%#/,,,,,,,,,,,,,,,,,,,,,,,,,,**************************///////////(#%&&&&&&&&&%%%%%"
	echo "%%%%%%%%####%##/,...,,,,,,,,,,,,,,,,,,,,,,,,,,************************************/(%%&&&&&&%%%%%%"
	echo "%%%%%%%######((*.....,,,,,,,,,,,,,,,,,,,,,,,,,*************************************/((%&&&&%%%%%#%"
	echo "%%%%%%%###((/**,. ...,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,*********************************//(%&&&&%%%%%%"
	echo "%%%%%%#(((/**,,.. ....,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,*,******************************/(%&&&&%%%%%"
	echo "%%%%%%((//**,,,.. ......,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,*****************************(#&&&&&%%%%"
	echo "%%%%%#//**,,,...    ....,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,*,**************************//#%%&&&&&%%"
	echo "%%%%%(/*,,,.....    ....,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,*********************/////#%%&&&&&%%"
	echo "%%%%%(/*,,...       ..,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,****************///////(%%&&&&&%%"
	echo "%%%%%(/*,,.         ....,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,************/////////(##%&&&&%%"
	echo "%%%%%(*,...         ....,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,************/////////(((%&&&&%%"
	echo "%%%%%#*,............,*(((#########(((//*****,,,,,,,,,,,,,,,,,,,,,,,,,**********//////////((#&&&&%%"
	echo "%%%%%#/,..,*********/(###%%%%%%%&&%%%##(///***,,,,,,,,,,,,,,,,,,,,,,*************////////((#&&&&&%"
	echo "%%%%%%/,,,/####%%###((((((((((##%%%%%%%%####(***,,,,,,,,,,**//(###########((((/**////////((#&&&&%%"
	echo "%%%%%%/,,,(#%%%%%###(///((((((((((((#%%%%###(/**,,,,,,,****(##%%&&&&&&&&&&%%%%#//////////((#&&%%#%"
	echo "%%%%%%((##%%%%%%#####(###%&%%%%%##((####%%%%%###((///(((((#%%%%&&&&&&&&&&&&&&%%%%#///////((#%%%%%%"
	echo "%%%%%%%%&&&%%&&%%&%%%%%%##%%%&&&&&%%%####%%%%%%%%%%%%&%%%%%%%%%#%%%&%#%%&&&%%%%%%%#(((///((#%%%%%%"
	echo "%%%%%%%&&&%%%&&&&&&&&&&&%%%&&&&&&&&&&%%%%%%%%%%%%%%&&%%%%%#####(#&&/##&&&%%####%%%###((##%%%%%%%"
	echo "%%%##(//***#%%%%&&&&&&&&&&&@@@@@@@&%###%&&&%%%%%%%%%%%%&&&&&%%###%%#/*((#%%%%(///(%&&&&&&%%%%%%%%%"
	echo "%%#//,,...,#%%%%%%%%%&&&&%&&&@@@@@///#&&&%%%##((#%%%&&&&&@&&%%%%%#/*//((####%####%&&&&&%%%%%%%%%"
	echo "(*,.....  ,##((((####%%%%&&&&&&&&&&%#((/#&&%#(****/##%&@&(((%&@@@@&&&&&%%&&&@&&%%&&&&&&%%%%%%%%%"
	echo "(*.....   ,##***/(####%%%%&&&%&&&&&&%##/#%%%(*,,,,/##%&&&&%/**(&@@@@@@@@@@@@@@@&&%%&&&&&&%%%%%%%%%"
	echo "/,.....   .(#//,,*//((((((%&&&&&&&&%#((/###/*,,,,,*((%&&&&&%(((%@@@@@@@@@@@@@@@@@&&&&&&&&%%%%%%%%%"
	echo "*....,..  .,(##/****/(###(#%%%%#####(##%#//,,,,,,,,**#&&@@@%((/#&@@@@@@@@@@@@@&&&&&&%%###%%%%%%%%%"
	echo "*....,.... .*(((//**//((##########((#%%#/,,,,,,,,,,**(%&&&&%(((%&@@@@@@@@@@@@&&%%%&&%%(//((%%%%%%%"
	echo ",..,,,.........,/((((####(###########((*,....,,,,,,**/#&&&&%%%%%&&&@@@&&&&&&&&%%%%&#/*/((#%%%%%%"
	echo "...,,,..........,,**/(((##########((/**,.....,,,,,,***(%&&&%##%%&&&&&&&&&&&%%%%%%%&%((**/((%%%%%%%"
	echo ".....,,.................,,,,,,,,,,,,,,,.....,,,,,,,,,*/(%%%%%%%%%%%%&&%%%%%%%##%%%%(****/##%%%%%%%"
	echo ".....,,........................,,,,,,.........,,,,,****////(##%%%%%%%%%%%%%%%%%%%#/*****(%%%%%%%%%"
	echo ".....,,........................,,,,...........,,,,,*********//((###%%%%%%%%%%##((/*****/#%%%%%%%%%"
	echo ",,,,,*,,.......................,,,..............,,,,,*****,,,,,,,,,,,******************#%%%%%%%%%%"
	echo "(((((/,,,,.....................,,,,,,,,.........,,,,,,****,,,,,,,,,,,,,,,,,,,**********(%%%%%%%%%%"
	echo "%%&%%(*,,,,,....................,,,*////*,,,,,,,******,*,,,,,,,,,,,,,,,,,,,,,*****//***(%%%%%%%%%%"
	echo "%%%%%(*,,,,,,...................,,,,*///********/////***,,,,,,,,,,,,,,,,,,,,,*****//**/#%%%%%%%%%%"
	echo "%%%%%(*,,,,,,,,................,,,*******///**///////***,,,,,,,,,,,,,,,,,,,******/(/**(%%%%%%%%%%%"
	echo "%%%%%(*,,,,,,,,,.........,,,,************///////(((((/**,,,,,,,,,,,,,,,,,,*****//((///#%%%%%%%%%%%"
	echo "%%%%%#/*,,,,,,,,,.......,,***************//(/////(((((/***,,,,,,,,,,,,,,,*****/((##(##%%%%%%%%%%%%"
	echo "%%%%%#/***,,,,,,,....,,,***************,***/*****//////////***,,,,,,,,,,***///(##%%%%%%%%%%%%%%%%%"
	echo "%%%%%#(****,,,,,,....,,,***************************///////////*,,,,,,,****///((##%%%%%%%%%%%%%%%%%"
	echo "%%%%%%#///*****,,...,,*****////(((((///////////////////////((((/*,,,,***//(((##%%%%%%%%%%%%%%%%%%%"
	echo "%%%%%%#///*****,,,,,,,*****//((#%%%%#//******///((((((////////(/*,,,*///(((###%%%%%%%%%%%%%%%%%%%%"
	echo "%%%%%%#(///*****,,,,,,*******///(((#(((/******///////(////////(/*****/((((####%%%%%%%%%%%%%%%%%%%%"
	echo "%%%%%%%(////****,,,,,***,,,,,,**,,,****/////************//(////(/***/(#######%%%%%%%%%%%%%%%%%%%%%"
	echo "%%%%%%%(((//****,,******,,,,,,,,,,,,,*************//////((/////(/***/(#######%%%%%%%%%%%%%%%%%%%%%"
	echo "%%%%%%%((((//*******//**,,,,,,,,***,,,,,**********////(///*///(/////(#####%%%%%%%%%%%%%%%%%%%%%%%%"
	echo "%%%%%%%#((((/********/***,,,,,,,******************//////***///(////((####%%%%%%%%%%%%%%%%%%%%%%%%%"
	echo "%%%%%&%#(((#(///**********,,,,,,**/(((((/////////////*/***//((((((((####%%%%%%%%%%%%%%%%%%%%%%%%%%"
	echo "%%%&&&(((##((///////*******,,,,,*/(###%%%%####((/*****//((##(((((##%%%&&%%%%%%%%%%%%%%%%%%%%%%%%"
	echo "%%%&&&((((#((((/////********,,,,,*/((#%%%%##(((/*****///((##(((###%%&&&&%%%%%%%%%%%%%%%%%%%%%%%%"
	echo "%%%&&&((//((((/(((//////////*********/(##(//*******/////((#####%%%%&&&&%%%%%%%%%%%%%%%%%%%%%%%%%"
	echo "%%%&&&/////((((((((///////////********//////*****///////((((##%%%%&&&&%%%%%%%%%%%%%%%%%%%%%%%%%%"
	echo "%%%%%&%(//*/////((((((((((((((((//**********//((((/////((((###%%&&&&&&%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
	echo "%%%%%&%(//***////(((##((((((((((/////*******/(((#(((((((((##%%%&&@@&&%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
	echo "%%%%%&%(**********//(#%%%#####(((((((((////(((##########%%%%&&&&&&&%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
	echo "%%%%%%%(//***********/##%%%%%%##########((((#####%%##%%&&&&&&&&&%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
	echo "%%%%%%%#((//*********///#%&&&%%%%%%%%%%%######%%%%%%%%&&&&&&&&%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
	echo "%%%%%%%%%%%%%##((////////(###%%&&&&&&&&&&&&%%&&&&&&@@@&&&&%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
	echo "%%%%%%%%%%%%%%%%%###((((((((((##%%%%&&&&&&&&&&&&&&&&&&&%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
	echo "%%%%%%%%%%%%%%%%%%%%%%%%%%###((////////((####%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
	echo "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%##(////((((#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
	echo "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%##((####%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
}
banner() {
	clear
	echo -e $P"┌─────────────────────────────────────────────────────────┐"
	echo -e $P"│"$R"▒█▀▀▀█▒█▒▄▀▒▀█▀▒█▀▀▄▒"$G"█▀▀█▒█▀▀▄▒█▀▄▀█▒▀█▀▒█▄▒▒█▒"$Y"▒█▀▀█▒▄▀▀▄"$P"│"
	echo -e $P"│"$R"▒▀▀▀▄▄▒█▀▄▒▒▒█▒▒█▒▒█▒"$G"█▄▄█▒█▒▒█▒█▒█▒█▒▒█▒▒█▒█▒█▒"$Y"▒▒▒▀▄▒▄▀▀▄"$P"│"
	echo -e $P"│"$R"▒█▄▄▄█▒█▒▒█▒▄█▄▒█▄▄▀▒"$G"█▒▒█▒█▄▄▀▒█▒▒▒█▒▄█▄▒█▒▒▀█▒"$Y"▒█▄▄█▒▀▄▄▀"$P"│"
	echo -e $P"└─────────────────────────────────────────────────────────┘"
}

# ---------- allmäna funktioner --------------

getInput() {
	echo -ne "$B[$R"Input Command"$B]:$W "
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
	printChar '*' 75
	printVersion
	printChar '*' 75
	echo ""
}


######## ----------- AUTOCOMPLETE FUNKTIONER ------------ ############

# funktion som matchar en delsträng med andra strängar
# argument1 - delsträng som ska matchas med andra strängar
# argument2-sista - delsträngar som första arguementet ska matchas med
autoComplete() {
	commands=$(echo $@ | awk '{for(i=2;i<=NF;i++) print $i}')
	echo ${commands[@]} | tr [:blank:] '\n' | grep ^$(echo $1 | tr [A-Z] [a-z])
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
		numberMatches=$(autoComplete $var "create" "list" "members" "add" "remove" "exit" | wc -l)
		if [ $numberMatches -eq 1 ]; then
			var=$(autoComplete $var "create" "list" "members" "add" "remove" "exit")
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
		elif [ $numberMatches -gt 1 ]; then
			echo "ERROR: to many matching options"
			autoComplete $var "create" "list" "members" "add" "remove" "exit"
		else
			echo "ERROR: No matching options"
		fi
	done
	menu
}

# ----------- USER FUNKTIONER --------- 
createUserEz() {
	echo -n "Enter user name: "
	read userName
	cat /etc/passwd | grep $userName &>/dev/null
	while [ $? -eq 0 ]; do
		echo "ERROR: User $userName already exsists"
		echo -n "Enter user name: "
		read userName
		cat /etc/passwd | grep $userName &>/dev/null
	done
	userName=$(echo $userName | tr [A-Z] [a-z])
	sudo adduser $userName
}

passwdUser() {
	echo -n "Enter user name: "
	read userName
	sudo passwd $userName
}

listUser() {
	cat /etc/passwd | awk -F ":" '{print $1}' | nl
}

attributes() {
	echo -n "Enter user name: "
	read userName
	#cat /etc/passwd | grep $userName | awk -F ':' '{for(i=1;i<=NF;i++) print $i}'
	echo "Username: $(cat /etc/passwd | grep $userName | cut -d ":" -f 1)"
	echo "Password: $(cat /etc/passwd | grep $userName | cut -d ":" -f 2)"
	echo "UID: $(cat /etc/passwd | grep $userName | cut -d ":" -f 3)"
	echo "GID: $(cat /etc/passwd | grep $userName | cut -d ":" -f 4)"
	echo "Comments: $(cat /etc/passwd | grep $userName | cut -d ":" -f 5)" ### SKRIVA UT VAD VARJE COMMENT BETYDER?
	echo "Home folder: $(cat /etc/passwd | grep $userName | cut -d ":" -f 6)"
	echo "Shell: $(cat /etc/passwd | grep $userName | cut -d ":" -f 7)"
}

function userMenu() {
	echo ""
	clear
	echo -e "\n+ -- --=[ User Menu - Type help for more information]\n"
	echo -e "[+] create\n[+] chpass\n[+] list\n[+] attributes\n[+] exit\n"
	var="notexit"
	while [ $var != "exit" ]; do
		getInput
		numberMatches=$(autoComplete $var "create" "chpass" "list" "attributes" "exit" | wc -l)
		if [ $numberMatches -eq 1 ]; then
			var=$(autoComplete $var "create" "chpass" "list" "attributes" "exit")
			case "$var" in
				create)
					#createUser
					createUserEz
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
		elif [ $numberMatches -gt 1 ]; then
			echo "ERROR: to many matching options"
			autoComplete $var "create" "chpass" "list" "attributes" "exit"
		else
			echo "ERROR: No matching options"
		fi
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
	while [ $var != "exit" ]; do
		getInput
		numberMatches=$(autoComplete $var "create" "list" "attributes" "exit" | wc -l)
		if [ $numberMatches -eq 1 ]; then
			var=$(autoComplete $var "create" "list" "attributes" "exit")
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
					helpFolder
					;;
			esac
		elif [ $numberMatches -gt 2 ]; then
			echo "ERROR: to many matching options"
			autoComplete $var "install" "uninstall" "on" "off" "exit"
		else
			echo "ERROR: No matching options"
		fi
	done
	menu
}

# ------------- SERVER -------------
installSsh() {
	echo "Installing OPENSSH server"
}
uninstallSsh() {
	echo "Uninstalling OPENSSH server"
}
turnSshOn() {
	echo "Turning SSH access on"
}
turnSshOff() {
	echo "Turning SSH access off"
}
serverMenu() {
	echo ""
	clear
	echo -e "\n+ -- --=[ Server Menu - Type help for more information]\n"
	echo -e "[+] install\n[+] uninstall\n[+] on\n[+] off\n[+] exit\n"
	while [ $var != "exit" ]; do
		getInput
		numberMatches=$(autoComplete $var "install" "uninstall" "on" "off" "exit" | wc -l)
		if [ $numberMatches -eq 1 ]; then
			var=$(autoComplete $var "install" "uninstall" "on" "off" "exit")
			case "$var" in
				install)
					installSsh
					;;
				uninstall)
					uninstallSsh
					;;
				on)
					turnSshOn
					;;
				off)
					turnSshOff
					;;
				exit)
					break
					;;
				*)
					helpServer
					;;
			esac
		elif [ $numberMatches -gt 1 ]; then
			echo "ERROR: to many matching options"
			autoComplete $var "install" "uninstall" "on" "off" "exit"
		else
			echo "ERROR: No matching options"
		fi
	done
	menu
}

# ------------- PRETTY -------------

makePretty() {
	echo "Installera lolcat, cowsay, etc"
}

# ------------- HELP ---------------
# Funktion skriver ut hjälp meny för huvudmenyn
helpMenu() {
	clear
	echo -e "\n+ -- --=[ Main Menu Help Page]\n\nCommand\t\t\tHelp Text\n-------\t\t\t---------\ngroup\t\t\tEnter submenu for group management\nuser\t\t\tEnter submenu for user management\nfolder\t\t\tEnter submenu for folder management\nserver\t\t\tEnter submenu for server settings\nPretty\t\tInstall and verify optional dependencies for extra functionallity\nquit\t\t\texits to program\n"
	read -p "Press any key to continue "
	menu
}

# Funktion skriver ut hjälp meny för grupphantering
helpGroup() {
	clear
	echo -e "\n+ -- --=[ Group Management Help Menu]\n\nCommand\t\t\tHelp Text\n-------\t\t\t---------\ncreate\t\t\tEnters a interactive menu to create a new group\nlist\t\t\tList all groups\nmembers {group}\t\tList all member in a group\nadd {user} {group}\tadds a user to a group\nremove\t\t\tRemoves a member from a group\nexit\t\t\tExits to main menu\n"
	read -p "Press any key to continue "
	groupMenu
}

helpUser() {
	clear
	echo -e "\n+ -- --=[ User Management Help Menu]\n\nCommand\t\t\t\tHelp Text\n-------\t\t\t\t---------\ncreate {name}\t\t\tCreate a new user\nchpass {user} {password}\tchange a users password\nlist\t\t\t\tlist all users\nattributes\t\t\tEnter sub-menu to view and modify user attributes\nexit\t\t\t\texit to main menu\n"
	read -p "Press any key to continue "
	userMenu
}

helpFolder() {
	clear
	echo -e "\n+ -- --=[ Folder Management Help Menu]\n\nCommand\t\t\tHelp Text\n-------\t\t\t---------\ncreate\t\t\tcreate a new folder\nlist {folder}\t\tlist the contents of a folder\nattributes {folder}\t\Enters sub-menu for folder attribute configuration\nexit\t\t\texit to main menu\n"
	read -p "Press any key to continue "
	folderMenu
}

helpServer() {
	clear
	echo -e "\n+ -- --=[ Server Management Help Menu]\n\nCommand\t\t\tHelp Text\n-------\t\t\t---------\ninstall\t\t\tInstalls the OPEN-SSH package\nuninstall\t\tUninstalls the OPEN-SSH package\non\t\t\tturns the SSH service on\noff\t\t\tturns the SSH service off\nexit\t\t\texit to main menu\n"
	read -p "Press any key to continue"
	serverMenu
}

# Skriver ut huvudmeny
menu() {
	echo -e "\n+ -- --=[ Main Menu - Type help for more information]\n"
	echo -e "[+] group\n[+] user\n[+] folder\n[+] server\n[+] pretty\n[+] quit\n"
	while true; do
		getInput
		numberMatches=$(autoComplete $var group user folder server pretty quit | wc -l)
		if [ $numberMatches -eq 1 ]; then
			var=$(autoComplete $var group user folder server pretty quit)
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
				pretty)
					makePretty	
					;;
				quit)
					exit 0 #exit 0 för att indikera att körnigen av skriptet gick bra (användaren valde själv att avsluta)
					;;
				*)
					helpMenu
			esac
		elif [ $numberMatches -gt 1 ]; then
			echo "ERROR: To many matching options"
			autoComplete $var
		else
			echo "ERROR: No matching options"
		fi
	done
}

# Main funktion - styr körning av program
main() {
	#mrCPC
	banner
	printBanner
	menu
}

main
