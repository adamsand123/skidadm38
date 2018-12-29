#!/bin/bash

# ---------- GLOBALA VARIABLER ---------------

####### FÄRGER
# ---- TEXT ----
P='\033[49;95m'
R='\033[1;31m'
B='\033[1;34m'
C='\033[0;36m'
G='\033[1;32m'
W='\033[1;37m'
Y='\033[1;33m'
W='\033[0;49;39m'
# ---- bakgrund ---
WB='\033[7;49;97m'


# ---------- SEXY BANNER ---------------------
theovster() {
	echo -e "$W"
	echo "	                                                    ..':;..    ...                                    ........                             ......''',,"
	sleep 0.05
	echo "                                                     ..''..    ...                         .........."
	sleep 0.05
	echo "                                                        .      ........           ....'''''''',,,;;,'.. ......"
	sleep 0.05
	echo "...............                                                ...   .....'',,,,;;:ccccclllclllccccccc:;;:;;::;,,''........"
	sleep 0.05
	echo ".......''',,'''''.........                                     ...  .,;,:ccllollccccccc::::::::::::;;;:ccloollc::;::::::;;;;;,,'',,'.."
	sleep 0.05
	echo ":;;,,,,,''''''''''.'...''''''...........                       .''',::::ccccclllccccccc::::;;,,;;,,,,,,,,,:lddooc::::::::::::;:::lc::;..     ..''....."
	sleep 0.05
	echo ":::::::::::::::;;;;,,,,,,'''''....''..''........................,,,;;:cloollllllllcc:::;;;;;;;;::;;;;;:;;;;;:lolool:::::::cc:::::c:,,..........,;;:cc:"
	sleep 0.05
	echo ";;;;;;;;;;;;;;;;;::::::::::::;;;;;,,,,,,'''''..''''...'''''''',;:cccccclloollccccc::;,,;;;;;::clcc:;;;;;,,,,;:cc:col::;:c:::ccc::l:;;'........';;;:::c"
	sleep 0.05
	echo ";;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;:::::::::;;;;;;,,,,,,,,,,,;cclllllllllc::::ccc::;;;:ccccc:;;,''......''',,;:::col:;:cc::ccccclc;::;,'.........',,;"
	sleep 0.05
	echo ";;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;::::::clllllccccc:::::cllcccc::::::;;,,',,,,'''''''''',,,;;:ol:;::;,,,,:c:ooclk0Oo,............"
	sleep 0.05
	echo ";;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;:;;;;;;;;;;;;;;;;;,,,,,,;:cllolc::;;::cclllllllc::;;,,,,,,,''',,,,,,,,;;;;;;;;,;;;cc::c:;;,..';:llclxkdc'............"
	sleep 0.05
	echo ";;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;:;;;;;;,,,,,,,;,,,,,,,;clloooolc::clodddolcc:::;,,;;;;,'''..'',,;::cllooooooollcc::::lol:,''''',;;,;:'..............."
	sleep 0.05
	echo ".....'''''''''',,,,,,,,,;;;;;;;;;:;,,,,,,,,,,,,;,,,,,;:loooooollloooddolc;;;;;;;;,,,''...',,;;:cldxkOO000OOOOOOkkxdolclolc;;;,';;,'..................."
	sleep 0.05
	echo ".........................''''''',,,',,,,,,,,,,,,,,,;:clloolllloddddol:;,,,,,,'.......',;;:clloddxkO0KKKK000OO00OOkkxxdolooolc:cc;,....               ."
	sleep 0.05
	echo ".................................'.............''',;;:cllllooooooooc;,;;:::;;,'''',,;:cclloodxxkkkO0KKKK000OOOOOOkkxxxxxddoooll:;,'...."
	sleep 0.05
	echo "...................................................':llooooolcllddoc::;;;;;;;,,,,;:cclloodddxxxkOOOO0KKK000OOOOOOOkkxxxxddollcc:;,'..."
	sleep 0.05
	echo "..................................................'cooodoollllloolc::;;;;;:::::cccllloddddxxxxkkO000KKKKK00OOkkkOOOkkxxdddollcc:;'......"
	sleep 0.05
	echo ".................................................'cooloolccll:;;;cllc:;,,,;::::cccloooddxkOOOOOO00KKKKKKK00OOkkkkkkkkxddddolcc:;''',,'...  ."
	sleep 0.05
	echo "................................................'clllllcccc:,....',;:;;;;::ccccclllodxkO000KKK00KKKKKK000000OOkkkkkkxxdooolcc:;,,',,'.. .  .  ."
	sleep 0.05
	echo "...............................................;lolllc:::c:,'.......'',:::ccccccclodk0KKKKXXKKKKKKKKKK000000OOOkkkkxxddoollc:;::,'....."
	sleep 0.05
	echo "..............................................:lllc::;,;:c,,;,ckkl,,,;,,'';;;:cccldOKKXXXXXXXXXXXKKKKK000Oxdddxkkkkxxdoollc:;;;;:;....."
	sleep 0.05
	echo ".................................'...........:lclc:;,..,:c;;:;ck0koccccc:;,,;:lodkO0000000KKKKKKXXXKK0Oxl;',;;;;:loxxdolcc:;,,,;;:,. .."
	sleep 0.05
	echo "...........................................';clll:,,. .:xoccclxkkkxddoooollloxk0KXXXXXXK000OOOO000OOxoc,'..........,:llc::;,,,,;;;:.  ....."
	sleep 0.05
	echo "...........................................,clllc,.'..:xkkkxxxxdxkkOOOxdxkO00KKXXXXXXXXXXXKK0Okkkkkko,''........ .....,::;;;;,,;;;:'. ....."
	sleep 0.05
	echo " ........................................':ccccc;'...:O00kdxkkkkOKKXX0OO0KKXXXXXXXXXXXKKK00OOkkkxxxd:'''....           .,;;;;;;;;;;,...'...."
	sleep 0.05
	echo "  ......................................;lllccc:,...'dKKxc:clcclkXNNXKKKXXXXXXXXXXXXXKKK0OOkxxxxxkxc'.......      ...   ..,,;;;;;;;,..''.''.    ."
	sleep 0.05
	echo " ..................................  .'colccc::,'...,kXKxc:;;cdOXNNNXXXXXXXXXXXXXXXXXKK00OOkkkkkxxc.......        ....   .',,,;;:;;,..''','... ......"
	sleep 0.05
	echo "  ....................    ...........'cll:;:::,.....;OXK0xoloOKXNNNNXXXXXXXXXXNXXXXXXKK00OOOOkkkkx:'.....         .....  ..''.',;::,.'''','..........."
	sleep 0.05
	echo "  ...............'....     .........'cll:,,;:;'.....,kXXXXX0OOKXNNNXXXXXXXXXXNNNNNNXXXKK0000OOkkxxc'.....         .'''..........';:;',;,,;'.'';cclclcl"
	sleep 0.05
	echo " ...............'''.................:ll:,';::,..''..,xXKXXKKOO0XNNNXXXXXXXXXNNNNNNNXXXXKKK00OOOOkkd;......      ..''...''.. .'.. ..',;;;:;'''':ccccclo"
	sleep 0.05
	echo " ..............'';;,''............';lol:,:llc;,'','.;kXKK00000XNNNXXXXXXXXXNNNXNNNNXXXXXKKK000OOOOkxc'..........''....';;. .'.      ..;c:;;,';:;:;,;co"
	sleep 0.05
	echo " ..'''....... .',:c;'''...........,:lol:;cool::;','';dOKKK00OO0NNNXXXXXXXXXNNXXXNNXXXXXKKKKK000000OOkdl;,''',,;,,,,;lodxd:...         .,,.....',,'',:o"
	sleep 0.05
	echo "  ..'..........,;::,,''..........';ccol;,;::cc:,,;;,:lx0K0Okdd0NXXXXXXXXXXXXXXXNNXXXXXKKKKKKKKKK000OOkkxooooolccldxOKXK0Oo'.          ..'.....,;;;::lo"
	sleep 0.05
	echo "  ..'.....'',,,,;;;,,,''.........':c::,..'',,,,;cccclx0KXX0kdOXXXXXXXXXXXXXXXXXXXXXXXXKKKXXXKKKKK000OkkxolllcclxOKXXXXKKOx:.          ..'..,'';;;::;,,"
	sleep 0.05
	echo "..... ..,,,,,',,;;;,,,,,''.. ....,::,'....''',,:lloxkKXXNNNXXNNXXXXXXXXXXXXNNNXXXXXXXXXXXXXXXXKKK00OOkxolc:lx0KXXXXXKXKK0ko'          ....''....'',;;'"
	sleep 0.05
	echo ".......,,;;,,,,;;;;,,,,''.. .....'::'.....''',cddlxOKXNNNNXNNXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXKK000Okdoc::cxKXK0OOkkOKK0kdl;.         .............'::"
	sleep 0.05
	echo "...'',;;;;,,,,,,;;,'''''.........',;'......',:lxxxOKNNNNNXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXKKK0OOkdlcccodO0ko,.'',lO0kd:,'.         ............',,,"
	sleep 0.05
	echo ".....','',''',,,,,'...............',,'.';,,,;:oxO0KNNNNNXXXXXXXKKKXXXXXXXXXXXXXXXXXXXXXXXXXXKKK0Okxdoodxxxxxxdc;;:loddo:;'..          .........','...."
	sleep 0.05
	echo ".....',......''''............... ...,;,;;,',:ok0KNNNNNNXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXKKKK00Okkxxxkkxxxxxkkkkxdl:,....''.          ........',..  .."
	sleep 0.05
	echo "..';::;,',,,,;,,,,'...'',;;,'''......';:;;:lkKXXNNNNNNNXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXKKKKK00OkkkkkOkkxxdddxkkkxl;'......''.       .......'.. ...... ."
	sleep 0.05
	echo "  ................... ..........   ....';lxOKXNNNNNNNNNXXXXXXXKKXXXXXXXXXXXXXXXXXKKKKKKKKK00OkxxkOkkxddddxxkOkxo:'.......','.   ....'......'.........."
	sleep 0.05
	echo "  ...         ...................   ...'lO0KKXNNNNNNNNNNXXXXXXKXXXXXXXXXXXXXXXXXKKKKKKKK000Okxxkkxolllooddxkkxxd:.......',,'..'''.,::;;,,;,''.......;:"
	sleep 0.05
	echo "..........';:cllodxkkOOOxoc;',,'......;d0KXXXNNNNNNNNNNNXXXXXXXXXXXXXXXXXXXXXXXKKKKKKKKK00Okxdoool:,......',,:cc:'.....',,,,,,,,,'';;;,'',,'.....'lk0K"
	sleep 0.05
	echo "......,cdOKNNNNNNXXXXXXXXKOd:,,''....,dKXXXNNNNNNNNNNNNXXXXXXXXXXXXXXXXXXXXXXXXKKKKKKK000Okxdlclodddl:,.    ...'.......';:;;;::;:c,.cl,.';;,;,,''lKNNN"
	sleep 0.05
	echo "..'':d0XWWWWWNXXXXK00OOOOOOkdc,'....'oKXXNNNNNNNNNNNNNNXXXXXXXXXXXXXXXXXXXXXXKKKKKKK0000OkxdooodxxxOkxd:.      .......',:c:::::::;..,,,.'cc,,,,,:okXNN"
	sleep 0.05
	echo "..;l0NNNNNNNXXXXNNNXK0OOkkxddo:....'l0XXNNNNNNNNNNNNNNXXXXXXXXXXXXXXXXKKKKKKKKKK0000000OOxddddddoookOkdo,.     .........'''.'',,,'..'....''....'codx0X"
	sleep 0.05
	echo "..c0NXKXXXXKXNNNXXNNXK00OOOkxdo:...'lOXXNNNNNNNNNNNNNNNXXXXXXXXXXXXXXXKKKKKKKK0000000K00kxxxddollloxOOxo:'..........'.  ......''...............':ooodk"
	sleep 0.05
	echo ";ckXXXXXNNXKXNNNXKXNNNXK0Oxxddddl,.':xKXNNNNNNNNNNNNNNXXXXXXKKKKKXXKKKKKKKKKK000O00KKK00Okkxdol::ccoddol:'.........''.      ..... ..      . ......',,,"
	sleep 0.05
	echo "XNNNNNXXXXXKKKNNXKKXNNNNX0Oxddoool'.;lxKNNNNNNNNNNNNNXXXXXXXKKKXXKKKKKKKK00K00000000KKK0Okxxdoc,',;;;',,,'...........'.       ...         ."
	sleep 0.05
	echo "NNNNNXK00OOO0KKXNXKKXNNNNXKOxddol;. .;o0NNNNNNNNNNNNXXXXXXXXXKKKKKKKKKKKK000000000000KK0Okxxdoc;;::,...................                   ."
	sleep 0.05
	echo "XXXXXXXKK00OOO00KXXK0KXNNNXK0kddl.   .:kXNNNNNNNNXXXXXXXXKKKXKKKKKKKKKKK00000000OO000000Okxxdoollc:;.................''.                  ."
	sleep 0.05
	echo "XXXXXXXXK0000OOkO0KXK00XNNNXK0kxd;    .cOXNNNNNNNXXXXKKKKKKKKXKKKK0KKKKK00000000OOOOkOOOOkkxdddol:,'...............'',.                   ."
	sleep 0.05
	echo "KKKKKKXXK000000OkxkKXX00KNNNXKKOxo,    .:kXXXXXXXXXXKKKKKKKKKKKKKK00000000000000OOOkkxxOOkkxdddol;'...............''''."
	sleep 0.05
	echo "000000KKKK0000000Oxx0XX00KXNNXXKOxo'    .,xKXXXXXXXKKK000KKKKKKKK000000000000000OOOkkdodxxxxdool:,'...............'''."
	sleep 0.05
	echo "00000000KKK0OO00000kxOKX0O0XNNXX0kxo'     .o0XXXXXXKK000000KKK000000OOO00OOOOOOOOOkkkdocldxxolc:,'................','"
	sleep 0.05
	echo "0000000KKKK000000000Odd0X0O0XNNXX0kkd,     .;x0KKKKK000000000000OOOOOOOOOOOOOOOOOOkkkxoc;;:c:;,'.................'',."
	sleep 0.05
	echo "K00OOO0KKKKKKKK000000OdokKKOOKNNXK0Okx;.     .ck000000000000000OOOOkkkkkkkkkkkkkkkxxxdoc;''.....................'',,."
	sleep 0.05
	echo "000OOOkkkO0KKKKKKK00OOOxld00OOKNNXK0OOx,      .'cxOOO000000OOOOkkkxxxxxxxxxxxdddxxddool:,'.....................'',,,."
	sleep 0.05
	echo "kO0000OOkxdkO0KKKKKK00Okdclk0OOKNXXK00Ol.       .'cdkOO000OOOkkkxxddddddoollllcclllcc:::;,,,''''.............''',,;'"
	sleep 0.05
	echo ",cdO0000Okxoldk0KKKK000OkxlcdkkOKNXXK0Oo.         ..:okOOOOOOkxxddoooooolc:::;;;;;;;;;:looolccc;''''''.'''''.....','........                     .."
	sleep 0.05
	echo "...;ok000OOkdocox0KKK000OOkolokO0XXKKK0kl,'....... ...;lxOOkkxxdolcc::::;;;;;;;;;;;,',lddxoc:::,.'',,'''''....................'',,'.          .:ccc:;,"
	sleep 0.05
	echo ".....,cd000OOkdccok00000OkkO00K0KKKKKKKKKK00OOOkkxdl:'..':oxxdolc:;,,''''',,,,,,,;,'':xxdoll:;:clodxxdlcc::::;;;;,''';c:,,'..',;:lo;          .''....."
	sleep 0.05
	echo "........;x000OkxoccoxOOOOO0XNXKKKKKKKKK0KKKKKKKKKK0Oko:,'..';clc:;'.........'''''....lxxxc:c;:ldkXWWNKxolllllllllllllodollcccc:cllol'         ..  ...."
	sleep 0.05
	echo ".....   ..l0K0Okkxoccoxk0XNNXXKKKKK00000KKXXXXXXXK00kdolc:,'.....................   'oxxxdlcccloxOK0kdllc::cc:::ccccclollllllooodddd;          ."
	sleep 0.05
	echo "......    .cOKKOOkkxolcxXNNNXK00OOOOOOOOOO0KXNNNXXK00Okxdolcc;'.       ........     ;dxxddxxxxxxkOkxdoooolcccc::c:::cccccccccllloddxc."
	sleep 0.05
	echo ".......   ..:OXK0OOkxdxKNNXKOxdxkkkkOOOO00KXNNNXXXXKOkxxdoolllcc;..          ...,;codxxxddxxxxkkkkkkkkkxxxxxddoooolloolllllllllloodxl."
	sleep 0.05
	echo ".. ......  ..:OXK0Okxx0NXK0OkkO0XXXNNNNNNNNNNNNNXXXKOdlloooooolccc:,..  .:odxkOKXXXXOdxxdooddxxkkkxxxxxxxxxxxxxxddddddoooooooooooood:."
	sleep 0.05
	echo "... .....   ..:0XK0OddOXK0KXXNNNNNNNNNXXXXXNNXXXXXXKOdc:clloooollccc:;';xKXXXNNNXXXX0xdxdoooodxxkxkkxxxxddddddddddddoollllllllllllol."
	sleep 0.05
	echo "...  ..  .  ...lKKOkxdx00KNNNNNNNNNNXXXXXXXXXXXXXXXK0kdoooooooooolccccccloxxkOKXXXK00kddddooooodxxxxxxxxxddddddddddoooollccccccccll,"
	sleep 0.05
	echo "....  ..    .. .oOxoxkdk0XNNNNNNNXXXKKK0000KXNNNNNNXK0Okxdooooooolllllllcccccclodddxxdlloddoooooodxxxxxxddddoooooooooollllcccccccc'               ..."
	sleep 0.05
	echo "  ...  .    ..  .lkxdkkxOKXXKKKK00OkkkxdodOXNNNNNNNNXKOxddoooollloooooddocccccclcc:::c:;;:looooolooddxdddooollllllllllcccccccccc;.....            .cc,"
	sleep 0.05
	echo ".      ..   ..   .:kOxxkOKXKOOkkxdodxxkO0XNNNNNNNNNNX0xolooooolllooodddddolcc::ldddolc::;,,;:coooooooooolllccccccccccccc:cccc;,'.....      ..      ,l;"
	sleep 0.05
	echo "..      ..  ...    'dOOdxKKOxoooxk0KXNNNNNNNNNNNNNNXKOxollooooooooooodddddxxxkO0KXXKK0Okkddooodxxdoooolllccc::::::::::::::;,.......  ........   ..  .'"
	sleep 0.05
	echo " ..      .   ..    ..;xOkO0kxxOKNNWWWWNNNNNNNNNNNXXK0OOkxdoooooooooodxkO0KXNNNNNNNXXK0000OO0KXXKK0Okxdolccllcccc:,,,'.......  .... .........   ...   ."
	sleep 0.05
	echo "   .         ..    .. .lOOOkkXNNNNNNNNNNNXXXXKKKKKKKKK0Oxdlllooolldk0KNNNNNNNNNNNNXXKKKK0000KKXXXXXKK0Okdooooooc.  .     ..   ..............  ..."
	sleep 0.05
	echo "    .        ..   ..   .:kKOOXNNNNNNNXXKKK0kxookKXXXXK0OdlccloodxOKNNNNNNNNNNNNNNNXXXKK00000KKXXXXXKK000OOOxlc:.   .     ..  ............... ...."
	sleep 0.05
	echo "..                ..   ..'d0KKKKXXXKK0OkkkkkxxOKNNNXXKOxollodxOKXNNNNNNNNNNNNNNNXXXXKKK0kdxO0KKXXXXKKK00OOOko;,..        .. ...................."
	sleep 0.05
	echo "...               ..   .. .cOK0000OkkOO0KXNNNNNNNXXXKKOxoldk0XNNNNNNNNNNNNNNNNNXXXK00000OxxxkO00KKKKKKK0OOOko;',,.       .  .................."
	sleep 0.05
	echo "...              ..    ..  .,x00Okk0KXNNNNNXXXXXXXXXK0kxxOKNNNNNNNNNWWWWWNNNNNNXXK00OkOOOOOOOOOOOOkkkOOOkkxo:,',,,'.    ..  ...............         .."
	sleep 0.05
	echo " ....            ..    ..    .:xkOXXXXXXXXXXKKKKKK0000KXNNNNNNNNNNWWWWWWWNNNNNNXK0OOkkkkxkkOO000OOkkkxxdoll:;;;;,,,'.      .............    .........."
	sleep 0.05
	echo "..  ..             .   ..      .lKXKKKKXXXKKK00OkOO0XNNNNNNNNNNNNNWWWWWWWWNNNNXK0OOOkkkkkkkkOO0OOOkkxddlc:;;:cc:,',,'.    ............................"
	sleep 0.05
	echo "...               ..   .        'kK0000000OkxddxOKXNNNNNNNNNNNNNNWWWWWWWWWNNNNXKK000OOOkkkkkOOOOOOkkxolcccc;',,'''',;;,,'............................."
	sleep 0.05
	echo "                   .  ..        .:k0Okkxolloox0XNNNNNNNNNNNNNNNNNWWWWWWWWWNNNNXKK00OOOkxddxkOOOOOOkkxdlcclo:......,:cccccc::::;;,,'''''..............."
	sleep 0.05
	echo "                      ..        ..';:;;,,lk0XNNNNNNNNNNNNNNNNNNNNWWWWWWWWWWNNNXK0OOOkxdl;;coxkkkkkkxxdoolll:'''..,coolllllllooddddollc:;,'............"
	sleep 0.05
	echo "..                   ..         ..   .':d0XNNNNNNNNNNNNWWWWWWWWWWWWWWWWWWWWWWNXK0Oxxxxxdolccllloooddoollc:,,;lolloddddoooooooodddxxxxkxxdolc:,''''...."
	sleep 0.05
	echo "....                 ..         .. .,oOXXNNNNNNNNNWWNNNNNWWWWWWWWWNNNWWWWWWWNNX0Oxollodxxxxxxxdlc;;;;;;,'',ccoxxxxxxxddddddddoodddxxxkkkkkkkkxdooc:'.."
	sleep 0.05
	echo ".. ..                .     .   ...;dKXNNNNNNNNNNNNNNNNWWWWWWWWWWWWNNNNWWWNNNNXK0kdooooddddxxxddol;'......':lcokkkxxxxxxxdddddddddxxxxxxkkkkkkkkkkkkxdl"
	sleep 0.05
	echo ".                         .. ..;lkKXNNNNNNNNNNNNNNWWNNWWWWWWWWWWWWNNNNNNNNNXXK0Oxdolllloodxxxdol:,'''.',,,,:cldddddddddddxdddddddddddxxxkkkkkkkOOkkkkk"
	sleep 0.05
	echo ".                       ....':d0XXXNNNNNNNNNNNNNNNNNNNNNNNNNNWWWWWNNNNNNNNXKK0Oxdc;,,;:codxxxdoc;,'''';:,,,:::;;;::::::::ccclloooddddddxxxxkkkkkkkkkkk"
	sleep 0.05
	echo ".                       ..;okKXXNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNXKKOkdc,.....:oxxxdol:,'''.';;;;;:cc:;;;;;;;;;;;;;;;;::ccllooddxxkkkkkkkkkkk"
	sleep 0.05
	echo "                     ..':dOKXXXXNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNXXK0ko:,'.....,lolc:;,''..',;;,;:::clllcc:;;,;;;;;;;;;;;;;;:::clloddxkkxkkkk"
	sleep 0.05
	echo "                   .':ok0KXXXNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNWWWNNNNXX0ko:;,'',,,,''.......';;::::::ccclolcc:;,,,,,,;;;,;;,;;;;;;;;::::clloddxx"
	sleep 0.05
	echo "                 .':dk0XXXXXXXNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNWWNNNXK0kd:''..'',;:,'...';::cc::::ccccc::::::;;;,,,,,;;;;;,;;;;;;;;;;;;;;;:::ccl"
	sleep 0.05
	echo "               ..;lkKXXXXXXXXXXNNNXXNNNNNNNNNNNNNNNNNNNNNXXXXXNNNNNNNNNNXK0Okdc,....''',,'''..;lcc::::;;;;;;;:cclc:;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;:"
	sleep 0.05
	echo "..           ..;cx0XXXXXXXXXNNNNNNNXXXXNXXNNNNNNNNNNNNXXXXXXXXXXXXXXXXXK0Okxdl;,'..'''''.''.';clc::;;;;;;;;;;;::;;;;;::::::::::;;;;;;;;;;;;;;;;;;;;;;;"
	sleep 0.05
	echo "..         .';lxOKXXXXXNXXXXNNNNNXXXXXXXXXNNNNNNNNXKXXXXXXKKKKKKKKKKKK00kxdol;,''........',;;;;;::cc::;;;;;:c:;;:::cccc::::::::::;;;;;;;;;;;;;;;;;;,;;"
	sleep 0.05
	echo "         .,:lx0KKXXXXXXXNNXXXXXXXXXXXXXXXNNNNNNXXXKOkO0KKKKKKKK0000OOOOkxdlc;'.',;;,'..;oxdl:;;;;,,,',;;;;;::::;::;;;;;;;;;;;:::::;;;;;;;;;;,,,,,,,,,,"
	sleep 0.05
	echo "      ..,cok0KXXXXXXXXXXNNNNXXXXXXXXXXXXXNXXXKKK00Odc:lodxkOOOOkkxxdooloooc:cloxkkdc:,.,dOdc::::;;;. ..',,;;;;;;;;;;;;;;;,,,;;;:::::;;;;;;;;;,,,,,,,,,"
	sleep 0.05
	echo "    .';ldOKKKKKKXXXXXXXXXNNXXXXXXXXXXXXXXKKOkkkkxdl:,'.'cdxdolc:;;,,,'',;;lx0XXKOdc;;,..;lc;,,,;,,,.   ..',,;;;;;;;;;;;;;;;,,,;;;:::::::;;;;;;,,,,,,,,"
	sleep 0.05
	echo " ...,cdO0KKKKXK0KXXXXXXXXXXXXXXXXKKKXXXXK0kdolllc;''..'lkkxxc,.....,;''','lk0XKko:,,,'..';;,''''''.      ..',;;;;;;;;;;;;;;,,,,;;;;::::::::;;;;;;,,,,,"
	sleep 0.05
	echo -e "$W"

}

mrcpc() {
	echo -e "$WB"
	echo "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%##%%%%%%%%%%##%%%%###%%###%%##//(###((##%%%%%%%%%%%%%%%%%%%o%"
	sleep 0.1
	echo "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%&%#((#%%%%%###%&&&&%%%%%&&&&&%%%%%##%%%%###%%%%%%%%%%%%%%%%%%%%%"
	sleep 0.1
	echo "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%&%%##%%%%%%%%%%&&&&&%&&&&&&&&%%&&%%%%%%%%###%%%%%%%%%%%%%%%%%%%%"
	sleep 0.1
	echo "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%&&%%%&&&&&&&&&&&&@@@@&&&&&&&&&&&&&&%%%#%%%%%%%%%%%%%%%%%%%%"
	sleep 0.1
	echo "%%%%%%%%%%%%%%%%%%%%%%%%&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&@@@@@@@@&&&&&&&&&&&&%%%%###%%%%%%%%%%%%%%%%"
	sleep 0.1
	echo "%%%%%%%%%%%%%%%%%%%%%%%%&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&@@@&&@@&&&&&&&&&&&&&&&%%%%#%%%%%%%%%%%%%%%%"
	sleep 0.1
	echo "%%%%%%%%%%%%%%%%%&&&&&&&&&&&&&&&@@@&&&&&&&&&&&&&&&&&&&&@@@@&&&&&&&&&&&&&&&&&&&&%%%%%%%%%%%%%%%%%%%"
	sleep 0.1
	echo "%%%%%%%%%%%%%%%&&&&&&&&&&&&&&&&&@@@&&&&&&&&&&&&&&&&&&&&@@@@&&&&&&&&&&&&&&&&&&&&&&%%%%%%%%%%%%%%%%%"
	sleep 0.1
	echo "%%%%%%%%%%%%&&&&&&&&&&&&&&&&&&&@@@@&&&&&&&&&&&&&&&&&&&&@@@@&&&&&&&&&&&&&&&&&&&&&&&%%###%%##%%%%%%%"
	sleep 0.1
	echo "%%%%%%%%%%%&&&&&&&&&&&&&&&&&&&&&@@@@&&&&&@@&&@@@@&&&&&&@@@&&&&&&&&&&&&&&&&&&&&&&&&&%###%####%%%%%%"
	sleep 0.1
	echo "%%%%%%%%%%%%&&&&&&&&&&&&&&&&&&&&@@@@&&&&@@@@@@@@@&&&&&@@&&&&&&&&&&&&&&&&&&&&&&&&&&&%%%%%%###%%%%%%"
	sleep 0.1
	echo "%%%%%%%%%%%%&&&&&&&&&&&&&@@@@@@@@@@@@@@@@@@@@@@@&&&&&@&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&%%%%#%%%%%%"
	sleep 0.1
	echo "%%%%%%%%%%%%&&&&&&&&&&@@@@@@@@@@@@&&&&&&&&&&&&&&&&&&&&&&@@&&&&&&&&&&&&&&&&@@@&&&&&&&&&&&%%%%%###%%"
	sleep 0.1
	echo "%%%%%%%%%%%%&&&&&&&&@@@@@@@&&&%####((((((#########%%%&&&&&&&&&&&&&&@&&&&@@@@@&&&&&&&&&&&&%%%#(((#%"
	sleep 0.1
	echo "%%%%%%%%&&&&&&&&&@@@@@@@@@&%%#((////////////(((((((###%%&&&&&&&&&&&&&&&&@@@@@&&&&&&&&&&&&%%%####%%"
	sleep 0.1
	echo "%%%%%%%%%%%&&&&&&&@@@&&&%#(///*******************/////((#########%%%%&&&&&&&&&&&&&&&&&&&&%%%%%%%%%"
	sleep 0.1
	echo "%%%%%%%%%%%&&&&&&&&&%#///*****************************///////////(((((###%%&&&&&&&&&&&&&&%%%%%%%%%"
	sleep 0.1
	echo "%%%%%%%%##%&&&&&&&%%(/*******,,,,,,***********************////////////(((##%%%&&&&&&&&&&&&&&%%%%%%"
	sleep 0.1
	echo "%%%%%%%%%%%%%&&&%(//****,,,,,,,,,,,,,,,,**********************///////////////((((#%&&&&&&&&&&%%%%%"
	sleep 0.1
	echo "%%%%%%%%%%%%%&&%#/,,,,,,,,,,,,,,,,,,,,,,,,,,**************************///////////(#%&&&&&&&&&%%%%%"
	sleep 0.1
	echo "%%%%%%%%####%##/,...,,,,,,,,,,,,,,,,,,,,,,,,,,************************************/(%%&&&&&&%%%%%%"
	sleep 0.1
	echo "%%%%%%%######((*.....,,,,,,,,,,,,,,,,,,,,,,,,,*************************************/((%&&&&%%%%%#%"
	sleep 0.1
	echo "%%%%%%%###((/**,. ...,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,*********************************//(%&&&&%%%%%%"
	sleep 0.1
	echo "%%%%%%#(((/**,,.. ....,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,*,******************************/(%&&&&%%%%%"
	sleep 0.1
	echo "%%%%%%((//**,,,.. ......,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,*****************************(#&&&&&%%%%"
	sleep 0.1
	echo "%%%%%#//**,,,...    ....,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,*,**************************//#%%&&&&&%%"
	sleep 0.1
	echo "%%%%%(/*,,,.....    ....,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,*********************/////#%%&&&&&%%"
	sleep 0.1
	echo "%%%%%(/*,,...       ..,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,****************///////(%%&&&&&%%"
	sleep 0.1
	echo "%%%%%(/*,,.         ....,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,************/////////(##%&&&&%%"
	sleep 0.1
	echo "%%%%%(*,...         ....,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,************/////////(((%&&&&%%"
	sleep 0.1
	echo "%%%%%#*,............,*(((#########(((//*****,,,,,,,,,,,,,,,,,,,,,,,,,**********//////////((#&&&&%%"
	sleep 0.1
	echo "%%%%%#/,..,*********/(###%%%%%%%&&%%%##(///***,,,,,,,,,,,,,,,,,,,,,,*************////////((#&&&&&%"
	sleep 0.1
	echo "%%%%%%/,,,/####%%###((((((((((##%%%%%%%%####(***,,,,,,,,,,**//(###########((((/**////////((#&&&&%%"
	sleep 0.1
	echo "%%%%%%/,,,(#%%%%%###(///((((((((((((#%%%%###(/**,,,,,,,****(##%%&&&&&&&&&&%%%%#//////////((#&&%%#%"
	sleep 0.1
	echo "%%%%%%((##%%%%%%#####(###%&%%%%%##((####%%%%%###((///(((((#%%%%&&&&&&&&&&&&&&%%%%#///////((#%%%%%%"
	sleep 0.1
	echo "%%%%%%%%&&&%%&&%%&%%%%%%##%%%&&&&&%%%####%%%%%%%%%%%%&%%%%%%%%%#%%%&%#%%&&&%%%%%%%#(((///((#%%%%%%"
	sleep 0.1
	echo "%%%%%%%&&&%%%&&&&&&&&&&&%%%&&&&&&&&&&%%%%%%%%%%%%%%&&%%%%%#####(#&&/##&&&%%####%%%###((##%%%%%%%"
	sleep 0.1
	echo "%%%##(//***#%%%%&&&&&&&&&&&@@@@@@@&%###%&&&%%%%%%%%%%%%&&&&&%%###%%#/*((#%%%%(///(%&&&&&&%%%%%%%%%"
	sleep 0.1
	echo "%%#//,,...,#%%%%%%%%%&&&&%&&&@@@@@///#&&&%%%##((#%%%&&&&&@&&%%%%%#/*//((####%####%&&&&&%%%%%%%%%"
	sleep 0.1
	echo "(*,.....  ,##((((####%%%%&&&&&&&&&&%#((/#&&%#(****/##%&@&(((%&@@@@&&&&&%%&&&@&&%%&&&&&&%%%%%%%%%"
	sleep 0.1
	echo "(*.....   ,##***/(####%%%%&&&%&&&&&&%##/#%%%(*,,,,/##%&&&&%/**(&@@@@@@@@@@@@@@@&&%%&&&&&&%%%%%%%%%"
	sleep 0.1
	echo "/,.....   .(#//,,*//((((((%&&&&&&&&%#((/###/*,,,,,*((%&&&&&%(((%@@@@@@@@@@@@@@@@@&&&&&&&&%%%%%%%%%"
	sleep 0.1
	echo "*....,..  .,(##/****/(###(#%%%%#####(##%#//,,,,,,,,**#&&@@@%((/#&@@@@@@@@@@@@@&&&&&&%%###%%%%%%%%%"
	sleep 0.1
	echo "*....,.... .*(((//**//((##########((#%%#/,,,,,,,,,,**(%&&&&%(((%&@@@@@@@@@@@@&&%%%&&%%(//((%%%%%%%"
	sleep 0.1
	echo ",..,,,.........,/((((####(###########((*,....,,,,,,**/#&&&&%%%%%&&&@@@&&&&&&&&%%%%&#/*/((#%%%%%%"
	sleep 0.1
	echo "...,,,..........,,**/(((##########((/**,.....,,,,,,***(%&&&%##%%&&&&&&&&&&&%%%%%%%&%((**/((%%%%%%%"
	sleep 0.1
	echo ".....,,.................,,,,,,,,,,,,,,,.....,,,,,,,,,*/(%%%%%%%%%%%%&&%%%%%%%##%%%%(****/##%%%%%%%"
	sleep 0.1
	echo ".....,,........................,,,,,,.........,,,,,****////(##%%%%%%%%%%%%%%%%%%%#/*****(%%%%%%%%%"
	sleep 0.1
	echo ".....,,........................,,,,...........,,,,,*********//((###%%%%%%%%%%##((/*****/#%%%%%%%%%"
	sleep 0.1
	echo ",,,,,*,,.......................,,,..............,,,,,*****,,,,,,,,,,,******************#%%%%%%%%%%"
	sleep 0.1
	echo "(((((/,,,,.....................,,,,,,,,.........,,,,,,****,,,,,,,,,,,,,,,,,,,**********(%%%%%%%%%%"
	sleep 0.1
	echo "%%&%%(*,,,,,....................,,,*////*,,,,,,,******,*,,,,,,,,,,,,,,,,,,,,,*****//***(%%%%%%%%%%"
	sleep 0.1
	echo "%%%%%(*,,,,,,...................,,,,*///********/////***,,,,,,,,,,,,,,,,,,,,,*****//**/#%%%%%%%%%%"
	sleep 0.1
	echo "%%%%%(*,,,,,,,,................,,,*******///**///////***,,,,,,,,,,,,,,,,,,,******/(/**(%%%%%%%%%%%"
	sleep 0.1
	echo "%%%%%(*,,,,,,,,,.........,,,,************///////(((((/**,,,,,,,,,,,,,,,,,,*****//((///#%%%%%%%%%%%"
	sleep 0.1
	echo "%%%%%#/*,,,,,,,,,.......,,***************//(/////(((((/***,,,,,,,,,,,,,,,*****/((##(##%%%%%%%%%%%%"
	sleep 0.1
	echo "%%%%%#/***,,,,,,,....,,,***************,***/*****//////////***,,,,,,,,,,***///(##%%%%%%%%%%%%%%%%%"
	sleep 0.1
	echo "%%%%%#(****,,,,,,....,,,***************************///////////*,,,,,,,****///((##%%%%%%%%%%%%%%%%%"
	sleep 0.1
	echo "%%%%%%#///*****,,...,,*****////(((((///////////////////////((((/*,,,,***//(((##%%%%%%%%%%%%%%%%%%%"
	sleep 0.1
	echo "%%%%%%#///*****,,,,,,,*****//((#%%%%#//******///((((((////////(/*,,,*///(((###%%%%%%%%%%%%%%%%%%%%"
	sleep 0.1
	echo "%%%%%%#(///*****,,,,,,*******///(((#(((/******///////(////////(/*****/((((####%%%%%%%%%%%%%%%%%%%%"
	sleep 0.1
	echo "%%%%%%%(////****,,,,,***,,,,,,**,,,****/////************//(////(/***/(#######%%%%%%%%%%%%%%%%%%%%%"
	sleep 0.1
	echo "%%%%%%%(((//****,,******,,,,,,,,,,,,,*************//////((/////(/***/(#######%%%%%%%%%%%%%%%%%%%%%"
	sleep 0.1
	echo "%%%%%%%((((//*******//**,,,,,,,,***,,,,,**********////(///*///(/////(#####%%%%%%%%%%%%%%%%%%%%%%%%"
	sleep 0.1
	echo "%%%%%%%#((((/********/***,,,,,,,******************//////***///(////((####%%%%%%%%%%%%%%%%%%%%%%%%%"
	sleep 0.1
	echo "%%%%%&%#(((#(///**********,,,,,,**/(((((/////////////*/***//((((((((####%%%%%%%%%%%%%%%%%%%%%%%%%%"
	sleep 0.1
	echo "%%%&&&(((##((///////*******,,,,,*/(###%%%%####((/*****//((##(((((##%%%&&%%%%%%%%%%%%%%%%%%%%%%%%"
	sleep 0.1
	echo "%%%&&&((((#((((/////********,,,,,*/((#%%%%##(((/*****///((##(((###%%&&&&%%%%%%%%%%%%%%%%%%%%%%%%"
	sleep 0.1
	echo "%%%&&&((//((((/(((//////////*********/(##(//*******/////((#####%%%%&&&&%%%%%%%%%%%%%%%%%%%%%%%%%"
	sleep 0.1
	echo "%%%&&&/////((((((((///////////********//////*****///////((((##%%%%&&&&%%%%%%%%%%%%%%%%%%%%%%%%%%"
	sleep 0.1
	echo "%%%%%&%(//*/////((((((((((((((((//**********//((((/////((((###%%&&&&&&%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
	sleep 0.1
	echo "%%%%%&%(//***////(((##((((((((((/////*******/(((#(((((((((##%%%&&@@&&%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
	sleep 0.1
	echo "%%%%%&%(**********//(#%%%#####(((((((((////(((##########%%%%&&&&&&&%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
	sleep 0.1
	echo "%%%%%%%(//***********/##%%%%%%##########((((#####%%##%%&&&&&&&&&%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
	sleep 0.1
	echo "%%%%%%%#((//*********///#%&&&%%%%%%%%%%%######%%%%%%%%&&&&&&&&%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
	sleep 0.1
	echo "%%%%%%%%%%%%%##((////////(###%%&&&&&&&&&&&&%%&&&&&&@@@&&&&%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
	sleep 0.1
	echo "%%%%%%%%%%%%%%%%%###((((((((((##%%%%&&&&&&&&&&&&&&&&&&&%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
	sleep 0.1
	echo "%%%%%%%%%%%%%%%%%%%%%%%%%%###((////////((####%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
	sleep 0.1
	echo "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%##(////((((#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
	sleep 0.1
	echo "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%##((####%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
	sleep 0.1
	echo -e "$W"
}
banner() {
	clear
	echo -e $P"┌─────────────────────────────────────────────────────────┐"
	echo -e $P"│"$R"▒█▀▀▀█▒█▒▄▀▒▀█▀▒█▀▀▄▒"$G"█▀▀█▒█▀▀▄▒█▀▄▀█▒▀█▀▒█▄▒▒█▒"$Y"▒█▀▀█▒▄▀▀▄"$P"│"
	echo -e $P"│"$R"▒▀▀▀▄▄▒█▀▄▒▒▒█▒▒█▒▒█▒"$G"█▄▄█▒█▒▒█▒█▒█▒█▒▒█▒▒█▒█▒█▒"$Y"▒▒▒▀▄▒▄▀▀▄"$P"│"
	echo -e $P"│"$R"▒█▄▄▄█▒█▒▒█▒▄█▄▒█▄▄▀▒"$G"█▒▒█▒█▄▄▀▒█▒▒▒█▒▄█▄▒█▒▒▀█▒"$Y"▒█▄▄█▒▀▄▄▀"$P"│"
	echo -e $P"└─────────────────────────────────────────────────────────┘"
	echo -en "$W"
	echo "          --=[ SKIDADMIN38 (version 0.1.dev.nodisco)]"
}

# ---------- allmäna funktioner --------------

getinput() {
	echo -ne "$B[$R"Input Command"$B]:$W "
	read var
}

printchar() {
	# Skriver ut en viss mängd valfria tecken
	# arg 1 tecken
	# arg 2 antal
	for i in $(seq 0 $2); do
		echo -n "$1"
	done
}

printversion() {
	echo -e "\n\t\t=[ SKIDADMIN38 (version 0.1.dev.nodisco)]\t\t\t"
}

printbanner() {
	# Skriver ut en banner
	# Tar inte emot några argument
	printchar '*' 75
	printversion
	printchar '*' 75
	echo ""
}


######## ----------- AUTOCOMPLETE FUNKTIONER ------------ ############

# funktion som matchar en delsträng med andra strängar
# argument1 - delsträng som ska matchas med andra strängar
# argument2-sista - delsträngar som första arguementet ska matchas med
autocomplete() {
	commands=$(echo $@ | awk '{for(i=2;i<=NF;i++) print $i}')
	echo ${commands[@]} | tr [:blank:] '\n' | grep ^$(echo $1 | tr [A-Z] [a-z])
}

# ---------- GRUPP FUNKTIONER ---------

creategroup() {
	echo "creating group"
}

listgroups() {
	echo "listing groups"
}

listgroupmembers() {
	echo "listing the groups members"
}

addusertogroup() {
	echo "adding user to group"
}

removeuserfromgroup() {
	echo "removing user from group"
}

groupmenu() {
	clear
	echo -e "\n+ -- --=[ Group Menu - Type help for more information]\n"
	echo -e "[+] create\n[+] list\n[+] members\n[+] add\n[+] remove\n[+] exit\n"
	getinput
	while [ $var != "exit" ]; do
		# Kalla på funktion här som ändrar värdet av $val till matchande kommando mha grep (t.ex mem -> members)
		# Om det finns fler än 1 alternativ skriv ut de alternativ som matchar
		# Om det inte finns någon matchning skriv ut error och help menu för groups
		numberMatches=$(autocomplete $var "create" "list" "members" "add" "remove" "exit" | wc -l)
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
					break
					;;
				*)
					helpgroup
					;;
			esac
			getinput
		elif [ $numbermatches -gt 1 ]; then
			echo "ERROR: to many matching options"
			autocomplete $var "create" "list" "members" "add" "remove" "exit"
		else
			echo "ERROR: No matching options"
		fi
	done
	menu
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
                        echo -e "User: $username was created successfullyi$W"
                fi
        else
                echo -ne "$R"
                echo -e "ERROR creating user$W"
        fi
        read -p "Press any key to continue"
}

createuserez() {
        echo -n "Enter user name: "
        read username
        #cat /etc/passwd | grep $username &>/dev/null
        getent passwd $username > /dev/null
        while [ $? -eq 0 ]; do
                echo -ne "$R"
                echo "ERROR: User $username already exsists$W"
                echo -n "Enter user name: "
                read username
                cat /etc/passwd | grep $username &>/dev/null
        done
        username=$(echo $username | tr [A-Z] [a-z])
        sudo adduser $username
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
        echo ""
        read -p "Press any key to continue"
}

listuser() {
        cat /etc/passwd | awk -F ":" '{print $1}' | nl
        echo ""
        read -p "Press any key to continue"
}

showattributes() {
        clear
        echo "Showing attributes for user: $1"
        echo -e "\nUsername: \t$(cat /etc/passwd | grep "^$1:" | cut -d: -f1)"
        echo -e "Password: \t$(cat /etc/passwd | grep "^$1:" | cut -d ":" -f 2)"
        echo -e "UID: \t\t$(cat /etc/passwd | grep "^$1:" |cut -d ":" -f 3)"
        echo -e "GID: \t\t$(cat /etc/passwd | grep "^$1:" |cut -d ":" -f 4)"
        echo -e "Comments: \t$(cat /etc/passwd | grep "^$1:" |cut -d ":" -f 5)"
        echo -e "Home folder: \t$(cat /etc/passwd | grep "^$1:" |cut -d ":" -f 6)"
        echo -e "Shell: \t\t$(cat /etc/passwd | grep "^$1:" |cut -d ":" -f 7)\n"
}

attributes() {
        echo -n "Enter user name: "
        read username

        #cat /etc/passwd | grep ^$username >> /dev/null
        getent passwd $username > /dev/null
        if [ $? -eq 0 ]; then
                var="notexit"
                while [ $var != "exit" ]; do
                        showattributes $username

                        echo -e "\n-=[ Attribute Modify Menu]\n"
                        echo -e "[+] name\n[+] password\n[+] uid\n[+] gid\n[+] comment\n[+] home\n[+] shell\n[+] exit\n"

                        getinput
                        numbermatches=$(autocomplete $var "name" "password" "uid" "gid" "comment" "home" "shell" "exit" | wc -l)
                        if [ $numbermatches -eq 1 ]; then
                                var=$(autocomplete $var "name" "password" "uid" "gid" "comment" "home" "shell" "exit")
                                case $var in
                                        name)
                                                echo -n "Please enter new name: "
                                                read newname
                                                sudo usermod -l $newname $username
                                                username=$newname
                                                ;;
                                        password)
                                                sudo passwd $username
                                                ;;
                                        uid) ###################### FUNGERAR INTE ALLT BLIR RÖTT OCH GÅR INTE IN HÄR
                                                echo -n "Please enter new uid: "
                                                read newuid
                                                sudo usermod -u $newuid $username
                                                ;;
                                        gid)
                                                echo -n "Please enter new gid: "
                                                read newgid
                                                sudo usermod -g $newgid $username
                                                ;;
                                        comment)
                                                echo -n "Please enter a comment: "
                                                read newcomment
                                                sudo usermod -c "$newcomment" $username
                                                ;;
                                        home)
                                                echo -n "Please enter a new home folder (absolute path)"
                                                read homepath
                                                sudo usermod -d $homepath $username
                                                ;;
                                        shell)
                                                echo -n "Which shell would you like to use for $username?\n"
                                                sudo cat /etc/shells | grep ^/ | nl
                                                read ans
                                                shell=$(cat /etc/shells | grep ^/ | nl | grep $ans | awk '{print $2}')
                                                sudo usermod -s $shell $username
                                                ;;
                                        exit)
                                                break
                                                ;;
                                        *)
                                                ;;
                                esac
                        elif [ $numbermatches -gt 1 ]; then
                                echo -ne "$R"
                                echo "ERROR: to many matching options$W\n"
                                autocomplete $var "name" "password" "UID" "GID" "comment" "home" "shell" "exit"

                        else
                                echo -ne "$R"
                                echo "ERROR: No matching options$W"
                        fi
                done
        else
                echo -ne "$R"
                echo -e "ERROR: User $username doesn't exist!$W\n"
                read -p "Press any key to continue ..."
        fi
}

usermenu() {
        echo ""
        clear
        echo -e "\n+ -- --=[ User Menu - Type help for more information]\n"
        echo -e "[+] create\n[+] password\n[+] list\n[+] attributes\n[+] exit\n"
        var="notexit"
        while [ $var != "exit" ]; do
                getinput
                numbermatches=$(autocomplete $var "create" "password" "list" "attributes" "exit" | wc -l)
                if [ $numbermatches -eq 1 ]; then
                        var=$(autocomplete $var "create" "password" "list" "attributes" "exit")
                        case "$var" in
                                "create")
                                        createuser
                                        #createuserez
                                        usermenu
                                        ;;
                                "password")
                                        passwduser
                                        usermenu
                                        ;;
                                "list")
                                        listuser
                                        usermenu
                                        ;;
                                "attributes")
                                        attributes
                                        usermenu
                                        ;;
                                "exit")
                                        break
                                        ;;
                                *)
                                        helpuser
                                        usermenu
                                        ;;
                        esac
                elif [ $numbermatches -gt 1 ]; then
                        echo -ne "$R"
                        echo -e "ERROR: to many matching options$W"
                        autocomplete $var "create" "password" "list" "attributes" "exit"
                else
                        echo -ne "$R"
                        echo -e "ERROR: No matching options$W"
                fi
        done
        menu
}

# ------------- FOLDER -------------
createfolder() {
	echo ""
}

listcontents() {
	echo ""
}

listattributes() {
	echo ""
}

foldermenu() {
	echo ""
	clear
	echo -e "\n+ -- --=[ Folder Menu - Type help for more information]\n"
	echo -e "[+] create\n[+] list\n[+] attributes\n[+] exit\n"
	while [ $var != "exit" ]; do
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
					listattributes
					;;
				exit)
					break
					;;
				*)
					helpfolder
					;;
			esac
		elif [ $numbermatches -gt 2 ]; then
			echo "ERROR: to many matching options"
			autocomplete $var "install" "uninstall" "on" "off" "exit"
		else
			echo "ERROR: No matching options"
		fi
	done
	menu
}

# ------------- SERVER -------------
installssh() {
	echo "Installing OPENSSH server"
}
uninstallssh() {
	echo "Uninstalling OPENSSH server"
}
turnsshon() {
	echo "Turning SSH access on"
}
turnsshoff() {
	echo "Turning SSH access off"
}
servermenu() {
	echo ""
	clear
	echo -e "\n+ -- --=[ Server Menu - Type help for more information]\n"
	echo -e "[+] install\n[+] uninstall\n[+] on\n[+] off\n[+] exit\n"
	while [ $var != "exit" ]; do
		getinput
		numbermatches=$(autocomplete $var "install" "uninstall" "on" "off" "exit" | wc -l)
		if [ $numbermatches -eq 1 ]; then
			var=$(autocomplete $var "install" "uninstall" "on" "off" "exit")
			case "$var" in
				install)
					installssh
					;;
				uninstall)
					uninstallssh
					;;
				on)
					turnsshon
					;;
				off)
					turnsshoff
					;;
				exit)
					break
					;;
				*)
					helpserver
					;;
			esac
		elif [ $numbermatches -gt 1 ]; then
			echo "ERROR: to many matching options"
			autocomplete $var "install" "uninstall" "on" "off" "exit"
		else
			echo "ERROR: No matching options"
		fi
	done
	menu
}

# ------------- PRETTY -------------

makepretty() {
	echo "Installera lolcat, cowsay, etc"
}

# ------------- HELP ---------------
# Funktion skriver ut hjälp meny för huvudmenyn
helpmenu() {
	clear
	echo -e "\n+ -- --=[ Main Menu Help Page]\n\nCommand\t\t\tHelp Text\n-------\t\t\t---------\ngroup\t\t\tEnter submenu for group management\nuser\t\t\tEnter submenu for user management\nfolder\t\t\tEnter submenu for folder management\nserver\t\t\tEnter submenu for server settings\nPretty\t\tInstall and verify optional dependencies for extra functionallity\nquit\t\t\texits to program\n"
	read -p "Press any key to continue "
	menu
}

# Funktion skriver ut hjälp meny för grupphantering
helpgroup() {
	clear
	echo -e "\n+ -- --=[ Group Management Help Menu]\n\nCommand\t\t\tHelp Text\n-------\t\t\t---------\ncreate\t\t\tEnters a interactive menu to create a new group\nlist\t\t\tList all groups\nmembers {group}\t\tList all member in a group\nadd {user} {group}\tadds a user to a group\nremove\t\t\tRemoves a member from a group\nexit\t\t\tExits to main menu\n"
	read -p "Press any key to continue "
	groupmenu
}

helpuser() {
	clear
	echo -e "\n+ -- --=[ User Management Help Menu]\n\nCommand\t\t\t\tHelp Text\n-------\t\t\t\t---------\ncreate {name}\t\t\tCreate a new user\nchpass {user} {password}\tchange a users password\nlist\t\t\t\tlist all users\nattributes\t\t\tEnter sub-menu to view and modify user attributes\nexit\t\t\t\texit to main menu\n"
	read -p "Press any key to continue "
	usermenu
}

helpfolder() {
	clear
	echo -e "\n+ -- --=[ Folder Management Help Menu]\n\nCommand\t\t\tHelp Text\n-------\t\t\t---------\ncreate\t\t\tcreate a new folder\nlist {folder}\t\tlist the contents of a folder\nattributes {folder}\t\Enters sub-menu for folder attribute configuration\nexit\t\t\texit to main menu\n"
	read -p "Press any key to continue "
	foldermenu
}

helpserver() {
	clear
	echo -e "\n+ -- --=[ Server Management Help Menu]\n\nCommand\t\t\tHelp Text\n-------\t\t\t---------\ninstall\t\t\tInstalls the OPEN-SSH package\nuninstall\t\tUninstalls the OPEN-SSH package\non\t\t\tturns the SSH service on\noff\t\t\tturns the SSH service off\nexit\t\t\texit to main menu\n"
	read -p "Press any key to continue"
	servermenu
}

# Skriver ut huvudmeny
menu() {
	clear
	banner
	echo -e "+ -- --=[ Main Menu - Type help for more information]\n"
	echo -e "[+] group\n[+] user\n[+] folder\n[+] server\n[+] pretty\n[+] quit\n"
	while true; do
		getinput
		numbermatches=$(autocomplete $var group user folder server pretty quit | wc -l)
		if [ $numbermatches -eq 1 ]; then
			var=$(autocomplete $var group user folder server pretty quit)
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
				pretty)
					makepretty	
					;;
				quit)
					exit 0 #exit 0 för att indikera att körnigen av skriptet gick bra (användaren valde själv att avsluta)
					;;
				*)
					helpmenu
			esac
		elif [ $numbermatches -gt 1 ]; then
			echo "ERROR: To many matching options"
			autocomplete $var
		else
			echo "ERROR: No matching options"
		fi
	done
}

# Main funktion - styr körning av program
main() {
	menu
}

main
