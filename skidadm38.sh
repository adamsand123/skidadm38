#!/bin/bash

# ---------- GLOBALA VARIABLER ---------------

####### FÄRGER
# ---- TEXT ----
P='\033[49;95m'
NP='\033[2;49;35m'
R='\033[1;31m'
B='\033[1;34m'
C='\033[0;36m'
G='\033[1;32m'
Y='\033[1;33m'
W='\033[0;49;39m'
# ---- bakgrund ---
WB='\033[7;49;97m'

banner() {
	clear
	echo -e $B"┌─────────────────────────────────────────────────────────┐"
	echo -e $B"│"$R"▒█▀▀▀█▒█▒▄▀▒▀█▀▒█▀▀▄▒"$G"█▀▀█▒█▀▀▄▒█▀▄▀█▒▀█▀▒█▄▒▒█▒"$Y"▒█▀▀█▒▄▀▀▄"$B"│"
	echo -e $B"│"$R"▒▀▀▀▄▄▒█▀▄▒▒▒█▒▒█▒▒█▒"$G"█▄▄█▒█▒▒█▒█▒█▒█▒▒█▒▒█▒█▒█▒"$Y"▒▒▒▀▄▒▄▀▀▄"$B"│"
	echo -e $B"│"$R"▒█▄▄▄█▒█▒▒█▒▄█▄▒█▄▄▀▒"$G"█▒▒█▒█▄▄▀▒█▒▒▒█▒▄█▄▒█▒▒▀█▒"$Y"▒█▄▄█▒▀▄▄▀"$B"│"
	echo -e $B"└─────────────────────────────────────────────────────────┘"
	echo -en "$W"
	echo -e "          "$B"--=[ SKIDADMIN38 (version 0.1.dev.nodisco)]"$W""
}

# ---------- allmäna funktioner --------------

getinput() {
	echo -ne "$B[$R"Input Command"$B]:"$W" "
	read var
}

######## ----------- AUTOCOMPLETE FUNKTIONER ------------ ############

# funktion som matchar en delsträng med andra strängar
# argument1 - delsträng som ska matchas med andra strängar
# argument2-sista - delsträngar som första arguementet ska matchas med
autocomplete() {
	commands=$(echo $@ | awk '{for(i=2;i<=NF;i++) print $i}')
	echo ${commands[@]} | tr [:blank:] '\n' | grep ^$(echo $1 | tr [A-Z] [a-z])
}

# ---------- GROUP FUNCTIONS ---------

creategroup() {
	echo "creating group"
	echo -n "group name: "
	read grpname
	echo -n "gid(optional): "
	read gid
	if [ -z $gid ]; then
		sudo groupadd $grpname
	else
		sudo groupadd $grpname -g $gid
	fi
	read -p "Press enter to continue ..."
}

listgroups() {
	clear
	echo -e ""$B"+- --["$W"Listing all groups: "$R"Red = Root"$W" - "$B"Blue = System Groups"$W" - "$G"Green = User Groups"$B"]\n"$W""
	echo -en "$R"
	getent group | awk -F: '$3==0'
	echo -en "$B"
	getent group | awk -F: '$3>0 && $3<1000'
	echo -en "$G"
	getent group | awk -F: '$3>=1000'
	echo -e "$W"
	read -p "Press enter to continue ..."
}

listgroupmembers() {
	echo -n "group: "
	read gid

	getent group $gid &>/dev/null
	if [ $? -eq 0 ]; then
		echo -e "The members of the group: '"$G"$gid"$W"'"$G""
		for user in $(cut -d: -f1 /etc/passwd); do
			id $user | cut -d ' ' -f 2,3 | grep -w "$gid" &>/dev/null
			if [ $? -eq 0 ]; then
				echo $user
			fi
		done
	else
		echo -e ""$R"ERROR: The group doesn't exist!"$W"\n"
	fi
	echo -e ""$W""
	read -p "Press enter to continue ..."
}

addusertogroup() {
	echo -n "what group would you like to add a user to: "
	read group
	cat /etc/group | grep $group &>/dev/null
	if [ $? -eq 0 ]; then

		echo -n "what user: "
		read user

		sudo usermod -aG $group $user
	else
		echo -e ""$R"ERROR: group does not exist!"$W""
	fi

	read -p "Press enter to continue ..."
}

removeuserfromgroup() {
	echo -n "what group would you like to remove a user from: "
	read groupname

	cat /etc/group | grep $groupname &>/dev/null
	if [ $? -eq 0 ]; then
		echo -n "what user: "
		read username
		sudo deluser $username $groupname

	else
		echo -e ""$R"ERROR: group does not exist!"$W""
	fi
	read -p "Press enter to continue ..."
}

groupmenu() {
	while true; do
		clear
		echo -e "\n"$B"+ -- --=[ Group Menu - Type help for more information]\n"$W""
		echo -e ""$G"[+]"$W" create\n"$G"[+]"$W" list\n"$G"[+]"$W" members\n"$G"[+]"$W" add\n"$G"[+]"$W" remove\n"$G"[+]"$W" exit\n"
		getinput
		# Kalla på funktion här som ändrar värdet av $val till matchande kommando mha grep (t.ex mem -> members)
		# Om det finns fler än 1 alternativ skriv ut de alternativ som matchar
		# Om det inte finns någon matchning skriv ut error och help menu för groups
		numbermatches=$(autocomplete $var "create" "list" "members" "add" "remove" "exit" | wc -l)
		if [ $numbermatches -eq 1 ]; then
			var=$(autocomplete $var "create" "list" "members" "add" "remove" "exit")
			case "$var" in

				create)
					creategroup
					;;
				list)
					listgroups
					;;
				members)
					listgroupmembers
					;;
				add)
					addusertogroup
					;;
				remove)
					removeuserfromgroup
					;;
				exit)
					return 0
					;;
				*)
					;;
			esac
			#getinput
		elif [ $numbermatches -gt 1 ]; then
			echo "ERROR: to many matching options"
			autocomplete $var "create" "list" "members" "add" "remove" "exit"
		else
			helpgroup
		fi
	done
}

# ----------- USER FUNKTIONER ---------
createuser() {
	echo -n "Enter user name: "
	read username
	username=$(echo $username | tr [A-Z] [a-z])

	#cat /etc/passwd | cut -d: -f 1 | grep -w $username &>/dev/null
	getent passwd $username > /dev/null
	if [ $? -ne 0 ]; then
		sudo useradd -m $username
		if [ $? -eq 0 ]; then
			echo -ne "$G"
			echo -e "User: $username was created successfully"$W""
		fi
	else
		echo -ne "$R"
		echo -e "ERROR: User already exists!"$W""
	fi
	read -p "Press enter to continue"
}

passwduser() {
	echo -n "username: "
	read username
	#cat /etc/passwd | grep $username > /dev/null
	getent passwd $username > /dev/null
	if [ $? -ne 0 ]; then
		echo -ne "$R"
		echo -e "ERROR: User doesn't exist$W\n"
	else
		sudo passwd $username > /dev/null
	fi
	read -p "Press enter to continue"
}

listuser() {
	clear
	echo -e ""$B"+- --["$W"Listing all users: "$R"Red = Root"$W" - "$B"Blue = System Users"$W" - "$G"Green = Normal User Accounts"$B"]\n"$W""
	echo -en "$R"
	getent passwd | awk -F: '$3==0'
	echo -en "$B"
	getent passwd | awk -F: '$3>0 && $3<1000'
	echo -en "$G"
	getent passwd | awk -F: '$3>=1000'
	echo -e "$W"
	read -p "Press enter to continue"
}

showattributes() {
	clear
	echo -e "Showing attributes for user: "$G"$1""$W"
	echo -e "\nUsername: \t"$G"$(cat /etc/passwd | grep "^$1:" | cut -d: -f1)""$W"
	echo -e "Password: \t"$G"$(cat /etc/passwd | grep "^$1:" | cut -d ":" -f 2)""$W"
	echo -e "UID: \t\t"$G"$(cat /etc/passwd | grep "^$1:" |cut -d ":" -f 3)""$W"
	echo -e "GID: \t\t"$G"$(cat /etc/passwd | grep "^$1:" |cut -d ":" -f 4)""$W"
	echo -e "Comments: \t"$G"$(cat /etc/passwd | grep "^$1:" |cut -d ":" -f 5)""$W"
	echo -e "Home folder: \t"$G"$(cat /etc/passwd | grep "^$1:" |cut -d ":" -f 6)""$W"
	echo -e "Shell: \t\t"$G"$(cat /etc/passwd | grep "^$1:" |cut -d ":" -f 7)\n""$W"
}

attributes() {
	echo -n "Enter user name: "
	read username
	cat /etc/passwd | awk -F: '{print $1}' | grep $username &>/dev/null
	if [ $? -eq 0 ]; then
		while true; do
			showattributes $username

			echo -e ""$B"-=[ Attribute Modification Menu]\n"$W""
			echo -e ""$G"[+]"$W" name\n"$G"[+]"$W" password\n"$G"[+]"$W" uid\n"$G"[+]"$W" gid\n"$G"[+]"$W" comment\n"$G"[+]"$W" home\n"$G"[+]"$W" shell\n"$G"[+]"$W" exit\n"

			getinput
			numbermatches=$(autocomplete $var "name" "password" "uid" "gid" "comment" "home" "shell" "exit" | wc -l)
			if [ $numbermatches -eq 1 ]; then
				var=$(autocomplete $var "name" "password" "uid" "gid" "comment" "home" "shell" "exit")
				case $var in
					name)
						echo -n "Please enter new name: "
						read newname
						sudo usermod -l $newname $username
						if [ $? -eq 0 ]; then
							username=$newname
						fi
						read -p "Press ENTER to continue"
						;;
					password)
						sudo passwd $username
						read -p "Press ENTER to continue: "
						;;
					uid)
						echo -n "Please enter new uid: "
						read newuid
						sudo usermod -u $newuid $username
						read -p "Press ENTER to continue: "
						;;
					gid)
						echo -n "Please enter new gid: "
						read newgid
						sudo usermod -g $newgid $username
						read -p "Press ENTER to continue: "
						;;
					comment)
						echo -n "Please enter a comment: "
						read newcomment
						sudo usermod -c "$newcomment" $username
						;;
					home)
						echo -n "Please enter a new home folder (absolute path): "
						read homepath
						echo $homepath | grep ^/home/ > /dev/null
						if [ $? -eq 0 ]; then
							sudo usermod -m -d $homepath $username
						else
							echo -e ""$W"["$R"-"$W"] "$R"Error wrong path"$W""
						fi
						# Kontrollera att mappen verkligne skapades - om den inte skapades så skapa den här
						ls -d $homepath &>/dev/null
						if [ $? -ne 0 ]; then
							sudo mkdir $homepath
							usergroup=$(getent passwd $username | awk -F: '{print $4}')
							sudo chown $username:$usergroup $homepath &>/dev/null
						fi
						read -p "Press ENTER to continue: "
						;;
					shell)
						echo "Which shell would you like to use for "$G"$username?""$W"
						sudo cat /etc/shells | grep ^/ | nl
						echo -e -n "$B""["$R"Input"$B"]: "$W""
						read var
						shell=$(cat /etc/shells | grep ^/ | nl | grep $var | awk '{print $2}')
						sudo usermod -s $shell $username
						read -p "Press ENTER to continue: "
						;;
					exit)
						#break
						return 0
						;;
					*)
						;;
				esac
			elif [ $numbermatches -gt 1 ]; then
				echo -ne "$R"
				echo -e "ERROR: to many matching options$W\n"
				autocomplete $var "name" "password" "UID" "GID" "comment" "home" "shell" "exit"

			else
				echo -ne "$R"
				echo -e "ERROR: No matching options$W"
			fi
		done
	else
		echo -ne "$R"
		echo -e "ERROR: User with name '"$G"$username"$R"' doesn't exist!$W\n"
		read -p "Press any key to continue ..."
	fi
}

usermenu() {
	#var="notexit"
	#while [ $var != "exit" ]; do
	while true; do
		clear
		echo -e "\n"$B"+ -- --=[ User Menu - Type help for more information]\n"$W""
		echo -e ""$G"[+]"$W" create\n"$G"[+]"$W" password\n"$G"[+]"$W" list\n"$G"[+]"$W" attributes\n"$G"[+]"$W" exit\n"
		getinput
		numbermatches=0
		numbermatches=$(autocomplete $var "create" "password" "list" "attributes" "exit" | wc -l)
		if [ $numbermatches -eq 1 ]; then
			var=$(autocomplete $var "create" "password" "list" "attributes" "exit")
			case "$var" in

				create)
					createuser
					;;
				password)
					passwduser
					;;
				list)
					listuser
					;;
				attributes)
					attributes
					;;
				exit)
					return 0
					;;
				*)
					;;
			esac
		elif [ $numbermatches -gt 1 ]; then
			echo -ne "$R"
			echo -e "ERROR: to many matching options$W"
			autocomplete $var "create" "password" "list" "attributes" "exit"
		else
			helpuser
		fi
	done
}

# ------------- FOLDER -------------
createfolder() {
	echo -n "Please enter a path and name (default path is: '$(echo $HOME)'): "
	read foldername
	if [ -z $(echo $foldername | grep ^/) ]; then # OM INTE abs path angavs
		sudo mkdir ~/$foldername
	else # OM abs path angavs
		sudo mkdir $foldername
	fi
	read -p "Press enter to continue ..."
}

listcontents() {
	echo -n "Please enter a path and name (default path is: '$(echo $HOME)'): "
	read foldername
	if [ -z $(echo $foldername | grep ^/) ]; then # OM INTE abs path angavs
		echo -e "$G"
		sudo ls -l ~/$foldername
		echo -e "$W"
	else # OM abs path angavs
		echo -e "$G"
		sudo ls -l $foldername
		echo -e "$W"
	fi
	read -p "Press enter to continue ..."
}

folderattributes() {
	ls -d $path &>/dev/null
	if [ $? -eq 0 ]; then
		clear
		echo -e "Showing attributes for "$R"$path"$W"\n"
		echo -e "Attributes\tValues"
		echo -e "----------\t------"
		echo -e "Path:"$G"\t\t$path"$W""
		echo -e "Permissions:"$G"\t$(ls -ld $path | awk '{print $1}')"$W""
		echo -e "Links:"$G"\t\t$(ls -ld $path | awk '{print $2}')"$W""
		echo -e "Owner(user):"$G"\t$(ls -ld $path | awk '{print $3}')"$W""
		echo -e "Owner(group):"$G"\t$(ls -ld $path | awk '{print $4}')"$W""
		echo -e "Size:"$G"\t\t$(ls -ld $path | awk '{print $5}') Bytes"$W""
		echo -e "Modified:"$G"\t$(stat $path | grep Modify | awk '{print $2 " " $3}' | awk -F. '{print $1}')"$W""
		echo -e -n "Sticky-bit:"$G" "
		if [ $(echo $(ls -ld $path | awk '{print $1}') | grep [t]$) ]; then # Kollar om sista biten i priviligies för filen (foldern) är ett 't'
			echo -n -e "\tis set""$W"
		else
			echo -n -e "\t"$R"is not set""$W"
		fi
		echo -e -n "\nGuid-bit:"$G" "
		# Kollar om det sjunde tecknet i priviligies fältet för foldern är ett 's'
		if [ $(echo $(ls -ld $path | awk '{print $1}') | egrep ^[d]{1}[a-z,-]{5}[s]{1}[a-z,-]{3}$
			) ]; then
			echo -n -e "\tis set""$W"
		else
			echo -n -e "\t"$R"is not set""$W"
		fi
		echo ""
	else
		echo ""$R"ERROR: Folder doesn't exist!""$W"
	fi
}

chfolder() {
	echo -n "Absolute path to directory: "
	read path
	ls -d $path &>/dev/null
	if [ $? -eq 0 ]; then
		while true; do
			folderattributes
			echo -e "\n"$B"-=[ Folder Attribute Modification Menu]\n"$W""
			echo -e ""$G"[+]"$W" permissions\n"$G"[+]"$W" owner\n"$G"[+]"$W" group\n"$G"[+]"$W" sticky-bit\n"$G"[+]"$W" setguid\n"$G"[+]"$W" modified\n"$G"[+]"$W" exit\n"
			getinput
			numbermatches=$(autocomplete $var "permissions" "owner" "group" "sticky-bit" "setguid" "modified" "exit" | wc -l)
			if [ $numbermatches -eq 1 ]; then
				var=$(autocomplete $var  "permissions" "owner" "group" "sticky-bit" "setguid" "modified" "exit")
				case $var in
					permissions)
						chpermfolder $path
						;;
					owner)
						chfolderowner $path
						;;
					group)
						chfoldergroup $path
						;;
					sticky-bit)
						chfoldersticky $path
						;;
					setguid)
						chfolderguid $path
						;;
					modified)
						chfoldermod $path
						;;
					exit)
						return 0
						;;
					*)
						;;
				esac
			elif [ $numbermatches -gt 1 ]; then
				echo -ne "$R"
				echo -e "ERROR: to many matching options"$W"\n"
				autocomplete $var   "permissions" "owner(user)" "owner(group)" "sticky-bit" "setguid" "modified" "exit"

			else
				echo -ne "$R"
				echo -e "ERROR: No matching options"$W""
			fi
		done
	else
		echo -ne "$R"
		echo -e "ERROR: The folder $path doesn't exist!"$W"\n"
		read -p "Press enter to continue ..."
	fi
}

chfoldersticky() {
	echo -e ""$G"[1]"$W" enable"
	echo -e ""$G"[2]"$W" disable"
	getinput
	if [ $var -eq 1 ]; then
		sudo chmod o+t $1
	elif [ $var -eq 2 ]; then
		sudo chmod o-t $1
	else
		echo "ERROR: Invalid option"
	fi
}

chfolderguid() {
	echo -e ""$G"[1]"$W" enable"
	echo -e ""$G"[2]"$W" disable"
	getinput
	if [ $var -eq 1 ]; then
		sudo chmod g+s $1
	elif [ $var -eq 2 ]; then
		sudo chmod g-s $1
	else
		echo "ERROR: Invalid option"
	fi
}

chfoldermod() {
	echo "Changing time for $1"
	echo -en "Enter last modified time ("$B"format:"$G"yyyy-mm-dd hh:mm:ss"$B"):"$W" "
	read newtime
	sudo touch -d "$newtime" $1
}

chfolderowner() {
	echo -n "new owner: "
	read newowner
	sudo chown $newowner $1
	ls -ld $path | awk '{print $3}'
}
chfoldergroup() {
	echo -n "new group: "
	read newgroup
	sudo chown :$newgroup $1
	ls -ld $path | awk '{print $4}'
}

chpermfolder() {
	while true; do
		clear
		echo -e "\n"$B"-=[ Folder Attribute Modification Menu]"$W""
		echo -e ""$B"-=[ Permissions: "$R"$(ls -ld $path | awk '{print $1}')"$B"]\n"$w""
		echo -e ""$G"[+]"$W" owner\n"$G"[+]"$W" group\n"$G"[+]"$W" other\n"$G"[+]"$W" exit\n"
		getinput
		numbermatches=$(autocomplete $var "owner" "group" "other" "exit" | wc -l)
		if [ $numbermatches -eq 1 ]; then
			var=$(autocomplete $var "owner" "group" "other" "exit")
			case $var in
				owner)
					folderowner $1
					;;
				group)
					foldergroup $1
					;;
				other)
					folderother $1
					;;
				exit)
					return 0
					;;
				*)
					;;
			esac
		elif [ $numbermatches -gt 1 ]; then
			echo -ne "$R"
			echo -e "ERROR: to many matching options"$W"\n"
			autocomplete $var "owner" "group" "other" "exit"

		else
			echo -ne "$R"
			echo -e "ERROR: No matching options"$W""
			read -p "Press enter to continue .."
		fi
	done
}

folderowner() {
	while true; do
		clear
		echo -e "\n"$B"-=[ Folder Owner Permission Modification Menu]"$W""
		echo -e ""$B"-=[ Permissions: "$R"$(ls -ld $path | awk '{print $1}')"$B"]\n"$w""
		echo -e ""$G"[+]"$W" read\n"$G"[+]"$W" write\n"$G"[+]"$W" execute\n"$G"[+]"$W" all\n"$G"[+]"$W" exit\n"
		getinput
		numbermatches=$(autocomplete $var "read" "write" "execute" "all" "exit" | wc -w)
		if [ $numbermatches -eq 1 ]; then
			var=$(autocomplete $var  "read" "write" "execute" "all" "exit")
			case $var in
				read)
					echo -e ""$G"[1]"$W" enable"
					echo -e ""$G"[2]"$W" disable"
					getinput
					if [ $var -eq 1 ]; then
						sudo chmod u+r $1
					elif [ $var -eq 2 ]; then
						sudo chmod u-r $1
					else
						echo "ERROR: Invalid option"
					fi
					;;
				write)
					echo -e ""$G"[1]"$W" enable"
					echo -e ""$G"[2]"$W" disable"
					getinput
					if [ $var -eq 1 ]; then
						sudo chmod u+w $1
					elif [ $var -eq 2 ]; then
						sudo chmod u-w $1
					else
						echo "ERROR: Invalid option"
					fi
					;;
				execute)
					echo -e ""$G"[1]"$W" enable"
					echo -e ""$G"[2]"$W" disable"
					getinput
					if [ $var -eq 1 ]; then
						sudo chmod u+x $1
					elif [ $var -eq 2 ]; then
						sudo chmod u-x $1
					else
						echo "ERROR: Invalid option"
					fi
					;;
				all)
					echo -e ""$G"[1]"$W" enable"
					echo -e ""$G"[2]"$W" disable"
					getinput
					if [ $var -eq 1 ]; then
						sudo chmod u+rwx $1
					elif [ $var -eq 2 ]; then
						sudo chmod u-rwx $1
					else
						echo "ERROR: Invalid option"
					fi
					;;
				exit)
					return 0
					;;
				*)
					;;
			esac
		elif [ $numbermatches -gt 1 ]; then
			echo -ne "$R"
			echo -e "ERROR: to many matching options"$W"\n"
			autocomplete $var  "read" "write" "execute" "exit"

		else
			echo -ne "$R"
			echo -e "ERROR: No matching options"$W""
			read -p "Press enter to continue .."
		fi
	done
}

foldergroup() {
	while true; do
		clear
		echo -e "\n"$B"-=[ Folder Group Permission Modification Menu]"$W"\n"
		echo -e ""$B"-=[ Permissions: "$R"$(ls -ld $path | awk '{print $1}')"$B"]\n"$w""
		echo -e ""$G"[+]"$W" read\n"$G"[+]"$W" write\n"$G"[+]"$W" execute\n"$G"[+]"$W" all\n"$G"[+]"$W" exit\n"
		getinput
		numbermatches=$(autocomplete $var "read" "write" "execute" "all" "exit" | wc -l)
		if [ $numbermatches -eq 1 ]; then
			var=$(autocomplete $var  "read" "write" "execute" "all" "exit")
			case $var in
				read)
					echo -e ""$G"[1]"$W" enable"
					echo -e ""$G"[2]"$W" disable"
					getinput
					if [ $var -eq 1 ]; then
						sudo chmod g+r $1
					elif [ $var -eq 2 ]; then
						sudo chmod g-r $1
					else
						echo "ERROR: Invalid option"
					fi
					;;
				write)
					echo -e ""$G"[1]"$W" enable"
					echo -e ""$G"[2]"$W" disable"
					getinput
					if [ $var -eq 1 ]; then
						sudo chmod g+w $1
					elif [ $var -eq 2 ]; then
						sudo chmod g-w $1
					else
						echo "ERROR: Invalid option"
					fi
					;;
				execute)
					echo -e ""$G"[1]"$W" enable"
					echo -e ""$G"[2]"$W" disable"
					getinput
					if [ $var -eq 1 ]; then
						sudo chmod g+x $1
					elif [ $var -eq 2 ]; then
						sudo chmod g-x $1
					else
						echo "ERROR: Invalid option"
					fi
					;;
				all)
					echo -e ""$G"[1]"$W" enable"
					echo -e ""$G"[2]"$W" disable"
					getinput
					if [ $var -eq 1 ]; then
						sudo chmod g+rwx $1
					elif [ $var -eq 2 ]; then
						sudo chmod g-rwx $1
					else
						echo "ERROR: Invalid option"
					fi
					;;
				exit)
					return 0
					;;
				*)
					;;
			esac
		elif [ $numbermatches -gt 1 ]; then
			echo -e ""$R"ERROR: to many matching options"$W"\n"
			autocomplete $var  "read" "write" "execute" "exit"

		else
			echo -e ""$R"ERROR: No matching options"$W""
			read -p "Press enter to continue .."
		fi
	done
}

folderother() {
	while true; do
		clear
		echo -e "\n"$B"-=[ Folder Other Permission Modification Menu]\n"$W""
		echo -e ""$B"-=[ Permissions: "$R"$(ls -ld $path | awk '{print $1}')"$B"]\n"$w""
		echo -e ""$G"[+]"$W" read\n"$G"[+]"$W" write\n"$G"[+]"$W" execute\n"$G"[+]"$W" all\n"$G"[+]"$W" exit\n"
		getinput
		numbermatches=$(autocomplete $var "read" "write" "execute" "all" "exit" | wc -l)
		if [ $numbermatches -eq 1 ]; then
			var=$(autocomplete $var  "read" "write" "execute" "all" "exit")
			case $var in
				read)
					echo -e ""$G"[1]"$W" enable"
					echo -e ""$G"[2]"$W" disable"
					getinput
					if [ $var -eq 1 ]; then
						sudo chmod o+r $1
					elif [ $var -eq 2 ]; then
						sudo chmod o-r $1
					else
						echo "ERROR: Invalid option"
					fi
					;;
				write)
					echo -e ""$G"[1]"$W" enable"
					echo -e ""$G"[2]"$W" disable"
					getinput
					if [ $var -eq 1 ]; then
						sudo chmod o+w $1
					elif [ $var -eq 2 ]; then
						sudo chmod o-w $1
					else
						echo "ERROR: Invalid option"
					fi
					;;
				execute)
					echo -e ""$G"[1]"$W" enable"
					echo -e ""$G"[2]"$W" disable"
					getinput
					if [ $var -eq 1 ]; then
						sudo chmod o+x $1
					elif [ $var -eq 2 ]; then
						sudo chmod o-x $1
					else
						echo "ERROR: Invalid option"
					fi
					;;
				all)
					echo -e ""$G"[1]"$W" enable"
					echo -e ""$G"[2]"$W" disable"
					getinput
					if [ $var -eq 1 ]; then
						sudo chmod o+rwx $1
					elif [ $var -eq 2 ]; then
						sudo chmod o-rwx $1
					else
						echo "ERROR: Invalid option"
					fi
					;;
				exit)
					return 0
					;;
				*)
					;;
			esac
		elif [ $numbermatches -gt 1 ]; then
			echo -ne "$R"
			echo -e "ERROR: to many matching options"$W"\n"
			autocomplete $var  "read" "write" "execute" "exit"

		else
			echo -ne "$R"
			echo -e "ERROR: No matching options"$W""
			read -p "Press enter to continue .."
		fi
	done
}

foldermenu() {
	while [ $var != "exit" ]; do
		clear
		echo -e "\n"$B"+ -- --=[ Folder Menu - Type help for more information]\n"$W""
		echo -e ""$G"[+]"$W" create\n"$G"[+]"$W" list\n"$G"[+]"$W" attributes\n"$G"[+]"$W" exit\n"
		getinput
		numbermatches=$(autocomplete $var "create" "list" "attributes" "exit" | wc -l)
		if [ $numbermatches -eq 1 ]; then
			var=$(autocomplete $var "create" "list" "attributes" "exit")
			case "$var" in
				create)
					createfolder
					;;
				list)
					listcontents
					;;
				attributes)
					chfolder
					;;
				exit)
					return 0
					;;
				*)
					;;
			esac
		elif [ $numbermatches -gt 2 ]; then
			echo ""$R"ERROR: to many matching options"$W""
			autocomplete $var "install" "uninstall" "on" "off" "exit"
		else
			echo ""$R"ERROR: No matching options"$W""
			helpfolder
		fi
	done
}

# ------------- SERVER -------------
installssh() {
	echo "Installing OPENSSH server"
	sudo apt install -y openssh-server
	sudo systemctl disable ssh.service
	read -p "Press enter to continue..."
}
uninstallssh() {
	echo "Uninstalling OPENSSH server"
	sudo systemctl stop ssh
	sudo apt remove --purge openssh-server -y
	read -p "Press enter to continue..."
}
turnsshon() {
	echo "Turning SSH access on"
	sudo systemctl start ssh.service
	read -p "Press enter to continue..."
}
turnsshoff() {
	echo "Turning SSH access off"
	sudo systemctl stop ssh.service
	read -p "Press enter to continue..."
}
servermenu() {
	while [ $var != "exit" ]; do
		clear
		echo -e "\n"$B"+ -- --=[ Server Menu - Type help for more information]"$W""
		sudo apt list --installed 2>/dev/null | grep openssh-server
		if [ $? -eq 0 ]; then
			echo -e "Status: $(sudo systemctl status ssh)\n"
		else
			echo -e ""$B+- --=["Note: "$R"openssh-server is currently not installed"$B"]"$W"\n"
		fi
		echo -e ""$G"[+]"$W" install\n"$G"[+]"$W" uninstall\n"$G"[+]"$W" on\n"$G"[+]"$W" off\n"$G"[+]"$W" exit\n"
		getinput
		numbermatches=$(autocomplete $var "install" "uninstall" "on" "off" "exit" | wc -l)
		if [ $numbermatches -eq 1 ]; then
			var=$(autocomplete $var "install" "uninstall" "on" "off" "exit")
			case "$var" in
				install)
					installssh
					;;
				uninstall)
					sudo apt list --installed 2>/dev/null | grep openssh-server
					if [ $? -eq 0 ]; then
						uninstallssh
					else
						echo -e ""$R"Can't uninstall openssh-server because it is not installed"$W""
						read -p "Press enter to continue.."
					fi
					;;
				on)
					sudo apt list --installed 2>/dev/null | grep openssh-server
					if [ $? -eq 0 ]; then
						turnsshon
					else
						echo -e ""$R"Can't turn  openssh-server on because it is not installed"$W""
						read -p "Press enter to continue.."
					fi
					;;
				off)
					sudo apt list --installed 2>/dev/null | grep openssh-server
					if [ $? -eq 0 ]; then
						turnsshoff
					else
						echo -e ""$R"Can't turn openssh-server off because it is not installed"$W""
						read -p "Press enter to continue.."
					fi
					;;
				exit)
					return 0
					;;
				*)
					;;
			esac
		elif [ $numbermatches -gt 1 ]; then
			echo ""$R"ERROR: to many matching options"$W""
			autocomplete $var "install" "uninstall" "on" "off" "exit"
		else
			echo ""$R"ERROR: No matching options"$W""
			helpserver
		fi
	done
}

# ------------- HELP ---------------
# Funktion skriver ut hjälp meny för huvudmenyn
helpmenu() {
	clear
	echo -e "\n"$B"+ -- --=[ Main Menu Help Page]"$W"\n\nCommand\t\t\tHelp Text\n-------\t\t\t---------\ngroup\t\t\tEnter submenu for group management\nuser\t\t\tEnter submenu for user management\nfolder\t\t\tEnter submenu for folder management\nserver\t\t\tEnter submenu for server settings\nquit\t\t\texits to program\n"
	read -p "Press any key to continue "
	return 0
}

# Funktion skriver ut hjälp meny för grupphantering
helpgroup() {
	clear
	echo -e "\n"$B"+ -- --=[ Group Management Help Menu]"$W"\n\nCommand\t\t\tHelp Text\n-------\t\t\t---------\ncreate\t\t\tEnters a interactive menu to create a new group\nlist\t\t\tList all groups\nmembers {group}\t\tList all member in a group\nadd {user} {group}\tadds a user to a group\nremove\t\t\tRemoves a member from a group\nexit\t\t\tExits to main menu\n"
	read -p "Press any key to continue "
	return 0
}

helpuser() {
	clear
	echo -e "\n"$B"+ -- --=[ User Management Help Menu]"$W"\n\nCommand\t\t\t\tHelp Text\n-------\t\t\t\t---------\ncreate {name}\t\t\tCreate a new user\nchpass {user} {password}\tchange a users password\nlist\t\t\t\tlist all users\nattributes\t\t\tEnter sub-menu to view and modify user attributes\nexit\t\t\t\texit to main menu\n"
	read -p "Press any key to continue "
	return 0
}

helpfolder() {
	clear
	echo -e "\n"$B"+ -- --=[ Folder Management Help Menu]"$W"\n\nCommand\t\t\tHelp Text\n-------\t\t\t---------\ncreate\t\t\tcreate a new folder\nlist {folder}\t\tlist the contents of a folder\nattributes {folder}\t\Enters sub-menu for folder attribute configuration\nexit\t\t\texit to main menu\n"
	read -p "Press any key to continue "
	return 0
}

helpserver() {
	clear
	echo -e "\n"$B"+ -- --=[ Server Management Help Menu]"$W"\n\nCommand\t\t\tHelp Text\n-------\t\t\t---------\ninstall\t\t\tInstalls the OPEN-SSH package\nuninstall\t\tUninstalls the OPEN-SSH package\non\t\t\tturns the SSH service on\noff\t\t\tturns the SSH service off\nexit\t\t\texit to main menu\n"
	read -p "Press any key to continue"
	return 0
}

# Skriver ut huvudmeny
menu() {
	while true; do
		clear
		banner
		echo -e ""$B"+ -- --=[ Main Menu - Type help for more information]"$W"\n"
		echo -e ""$G"[+]"$W" group\n"$G"[+]"$W" user\n"$G"[+]"$W" folder\n"$G"[+]"$W" server\n"$G"[+]"$W" quit\n"
		getinput
		numbermatches=$(autocomplete $var group user folder server quit | wc -l)
		if [ $numbermatches -eq 1 ]; then
			var=$(autocomplete $var group user folder server quit)
			# FUNKTION HÄR - Tar emot input och försöker matcha mha grep till något av alternativen under
			case $var in
				group)
					groupmenu
					;;
				user)
					usermenu
					;;
				folder)
					foldermenu
					;;
				server)
					servermenu
					;;
				quit)
					#exit 0 #exit 0 för att indikera att körnigen av skriptet gick bra (användaren valde själv att avsluta)
					exit 0
					;;
				*)
					#helpmenu
				esac
			elif [ $numbermatches -gt 1 ]; then
				echo ""$R"ERROR: To many matching options"$W""
				autocomplete $var
			else
				echo ""$R"ERROR: No matching options"$W""
				helpmenu
			fi
		done
	}
	menu
