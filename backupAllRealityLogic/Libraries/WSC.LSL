MZP      џџ  И       @                                      К Д	Э!ИLЭ!This program must be run under Microsoft Windows.
$            NE

     	                @ P Ж     
           P   q        v0          0         ~0           0         I 0    	     fт0         H
 0    R 0    ^ 0    i 0      Wsc  LIBENTRY  WEP                  И ЫИ Ы                                        ^'Borland Standard File           ў         @   |              ў ~ ў      @       	ў               ў              ў               ў               ў               ў F Library   Form   UIManager   UIContainer   UIObject   	ў   џџџџџџАf1                                             open+ close+ canArrive2 arrive2 setFocus+ canDepart2 removeFocus+ depart2 mouseEnter, mouseExit, mouseMove, mouseDown, mouseUp, mouseDouble, mouseRightDown, mouseRightUp, mouseRightDouble, keyPhysical- keyChar- action. menuAction/ timer4 pushButton+ changeValue0 calcField+ run+ newValue+ proc+ error3 status1 mouseClick, init+ Uses Type Var Const Proc createShortcut createDesktopShortcut enumNetworkDrives enumPrinterConnections getNetUserInfo mapNetworkDrive mapNetworkDriveEx removeNetworkDrive getSpecialFoldersList addPrinterConnection addPrinterConnectionEx removePrinterConnection ў %# џ #џџ                   б  b    ("  џџ H  Type
	DList = DynArray[] String
 AList	= DynArray[] AnyType
endType
 Type #щ method createShortcut(FileName string, Params AList) Logical
{
Creates Windows shortcut. FileName - shortcut name with path.

Params:

Arguments           - command line parameters
Description         - shortcut description
Hotkey              - for example, "SHIFT+T", "CTRL+SHIFT+1"
IconLocation        - full path to the shortcut icon location
                      for example: "d:\icons\icon.ico" шыш "c:\windows\system32\shell32, 2"
TargetPath          - target file name (with path)
WindowStyle         - 1 - normal
		              					 3 - maximized
              							 7 - minimized
WorkingDirectory    - working directory
}
var
	WS,SCut		OLEAuto
endVar
try
 if filename.size()<5 then return false endif
 if upper(substr(filename,filename.size()-3,4))<>".LNK" and
    upper(substr(filename,filename.size()-3,4))<>".URL" then
  filename=filename+".lnk"
 endif
 WS.open("WScript.Shell")
 SCut = WS.createShortcut( FileName )
 if params.contains("Arguments")        then SCut.Arguments        = Params["Arguments"]        endIf
 if params.contains("Description")      then SCut.Description      = Params["Description"]      endIf
 if params.contains("Hotkey")           then SCut.Hotkey           = Params["Hotkey"]           endIf
 if params.contains("IconLocation")     then SCut.IconLocation     = Params["IconLocation"]     endIf
 if params.contains("TargetPath")       then SCut.TargetPath       = Params["TargetPath"]       endIf
 if params.contains("WindowStyle")      then SCut.WindowStyle      = Params["WindowStyle"]      endIf
 if params.contains("WorkingDirectory") then SCut.WorkingDirectory = Params["WorkingDirectory"] endIf
 SCut.Save()
 return True
onFail
 errorclear()
 return False
endTry
endMethod
 createShortcut $ж method createDesktopShortcut(FileName string, params AList) Logical
;creates shortcut on the Windows desktop
;FileName - shortcut name *without* path
;see description for createDesktopShortcut
var
	WS,Folders		OLEAuto
 DesktopPath string
endVar
try
 WS.open("WScript.Shell")
 Folders = WS.SpecialFolders
 DesktopPath = Folders.Item("Desktop")
 return createShortcut(DesktopPath+"\\"+FileName,params)
onFail
 errorClear()
 return False
endTry
endMethod
 createDesktopShortcut %0 method enumNetworkDrives() DList
var
	WS,Drives			OLEAuto
 DrivesList		Dlist
 i					SmallInt
endVar
 WS.open("Wscript.Network")
 Drives = WS.EnumNetworkDrives()
 for i from 0 to (Drives.Count() - 2) step 2
 	DrivesList[Drives.Item(i)] = Drives.Item(i+1)
 endFor
	return DrivesList
endMethod
 enumNetworkDrives &H method enumPrinterConnections() DList
var
	WS, Printers			OLEAuto
 PrinterList		DList
 i					LongInt
endVar
 WS.open("Wscript.Network")
 Printers = WS.EnumPrinterConnections()
 for i from 0 to (Printers.Count() - 2) step 2
  	PrinterList[Printers.Item(i+1)] = Printers.Item(i)
 endFor
	return PrinterList
endMethod
 enumPrinterConnections ' method getNetUserInfo() DList
var
	WS	OLEAuto
 UserInfo	DList
endVar
 WS.open("Wscript.Network")
 UserInfo["COMP_NAME"]   = WS.ComputerName
 UserInfo["USER_DOMAIN"] = WS.UserDomain
 UserInfo["USER_NAME"]   = WS.UserName
	return UserInfo
endMethod
 getNetUserInfo (П method mapNetworkDrive(DriveLetter string, UNC string, UpdateProfile logical) logical
;UNC - indicates the share's UNC name (\\\\xxx\\yyy).
;UpdateProfile - indicates whether the mapping information is stored in the current user's profile. If bUpdateProfile is supplied and has a value of true, the mapping is stored in the user profile.
var
	WS	OLEAuto
endVar
DriveLetter=upper(DriveLetter)
if DriveLetter.size() > 1 then return false endIf
if DriveLetter<"A" or DriveLetter>"Z" then return false endIf
DriveLetter = DriveLetter + ":"
try
 WS.open("Wscript.Network")
	WS.mapNetworkDrive(DriveLetter,UNC,UpdateProfile)
 return True
onFail
	errorclear()
 return False
endTry
endMethod
 mapNetworkDrive )ѕ method mapNetworkDriveEx(DriveLetter string, UNC string, UpdateProfile logical, userName string, password string) logical
;UNC - indicates the share's UNC name (\\\\xxx\\yyy).
;UpdateProfile - indicates whether the mapping information is stored in the current user's profile. If bUpdateProfile is supplied and has a value of true, the mapping is stored in the user profile.
var
	WS	OLEAuto
endVar
DriveLetter=upper(DriveLetter)
if DriveLetter.size() > 1 then return false endIf
if DriveLetter<"A" or DriveLetter>"Z" then return false endIf
DriveLetter = DriveLetter + ":"
try
 WS.open("Wscript.Network")
	WS.mapNetworkDrive(DriveLetter,UNC,UpdateProfile,userName,password)
 return True
onFail
	errorclear()
 return False
endTry
endMethod
 mapNetworkDriveEx *7 method removeNetworkDrive(DriveLetter string, force logical, UpdateProfile logical) logical
;force - indicates whether to force the removal of the mapped drive.
;        If force is true, this method removes the connections whether the resource is used or not
;UpdateProfile - indicates whether to remove the mapping from the user's profile.
;                If UpdateProfile is true, this mapping is removed from the user profile. 
var
	WS			OLEAuto
endVar
	try
  DriveLetter=upper(DriveLetter)
		if DriveLetter.size() > 1 then return false endIf
		if DriveLetter<"A" or DriveLetter>"Z" then return false endIf
		DriveLetter = DriveLetter + ":"
  WS.open("Wscript.Network")
		WS.removeNetworkDrive(DriveLetter,force,UpdateProfile)
  return True
	onFail
 	errorclear()
  return False
 endTry
endMethod
 removeNetworkDrive +; method getSpecialFoldersList() DList
; Returns special Windows folders list
;Note, for Win95/Win98 elements AllUsersDesktop, AllUsersStartMenu,
; AllUsersPrograms and AllUsersStartup are empty strings
var
	WS, S		OLEAuto
 D		Dlist
endVar
	WS.open("WScript.Shell")
 S = WS.SpecialFolders
	D["AllUsersDesktop"]   = S.Item("AllUsersDesktop")
	D["AllUsersStartMenu"] = S.Item("AllUsersStartMenu")
	D["AllUsersPrograms"]  = S.Item("AllUsersPrograms")
	D["AllUsersStartup"]   = S.Item("AllUsersStartup")
	D["Desktop"]           = S.Item("Desktop")
	D["PrintHood"]         = S.Item("PrintHood")
	D["Templates"]         = S.Item("Templates")
	D["Fonts"]             = S.Item("Fonts")
	D["NetHood"]           = S.Item("NetHood")
	D["StartMenu"]         = S.Item("StartMenu")
	D["SendTo"]            = S.Item("SendTo")
	D["Recent"]            = S.Item("Recent")
	D["Startup"]           = S.Item("Startup")
	D["Favorites"]         = S.Item("Favorites")
	D["MyDocuments"]       = S.Item("MyDocuments")
	D["Programs"]          = S.Item("Programs")
 return D
endMethod
 getSpecialFoldersList , method addPrinterConnection(LocalPort string, UNC string, UpdateProfile logical) logical
;UNC - indicates the share's UNC name (\\\\xxx\\yyy).
;UpdateProfile - indicates whether the mapping information is stored in the current user's profile. If bUpdateProfile is supplied and has a value of true, the mapping is stored in the user profile.
var
	WS	OLEAuto
endVar
try
 WS.open("Wscript.Network")
	WS.addPrinterConnection(LocalPort,UNC,UpdateProfile)
 return True
onFail
	errorclear()
 return False
endTry
endMethod
 addPrinterConnection -H" method addPrinterConnectionEx(LocalPort string, UNC string, UpdateProfile logical, UserName string, password string) logical
;UNC - indicates the share's UNC name (\\\\xxx\\yyy).
;UpdateProfile - indicates whether the mapping information is stored in the current user's profile. If bUpdateProfile is supplied and has a value of true, the mapping is stored in the user profile.
var
	WS	OLEAuto
endVar
try
 WS.open("Wscript.Network")
	WS.addPrinterConnection(LocalPort,UNC,UpdateProfile,UserName,password)
 return True
onFail
	errorclear()
 return False
endTry
endMethod
 addPrinterConnectionEx . method removePrinterConnection(LocalPort string, force logical, UpdateProfile logical) logical
;force - indicates whether to force the removal of the mapped printer.
;        If force is true, this method removes the connections whether the resource is used or not
;UpdateProfile - indicates whether to remove the mapping from the user's profile.
;                If UpdateProfile is true, this mapping is removed from the user profile.
var
	WS			OLEAuto
endVar
	try
  WS.open("Wscript.Network")
		WS.removePrinterConnection(LocalPort,force,UpdateProfile)
  return True
	onFail
 	errorclear()
  return False
 endTry
endMethod
 removePrinterConnection    @        б  b    ]                                                Ц  Ц                       Я .    4 . d:\Paradox.90\Paradox\PDOXHome\DEFAULT.FT B  #Library1 POST >  џџџџ         ў 
     ў    ў                                    в  V   Б   Њ  Э  џџџџ                  К            Щ                   d                       џџџџ    Є                                                              S    Щ   С           	CONTAINER     ђ   С      џџџџБ               џџџџ            d  \  b  ACTIVE     >       џџџџБ               џџџџ            К  В      LASTMOUSECLICKED       \     џџџџБ               џџџџ              џ      SUBJECT     с  В     џџџџБ               џџџџ            b  Z      LASTMOUSERIGHTCLICKED     <  џ     џџџџБ               џџџџ                        SELF       Z     џџџџБ               џџџџ                	#LIBRARY1     Э  Є     џџџџБ  ?             џџџџ[   S                  В              c  P  Щ                                                                                            ч  	  {	      у                                  
                              #                              b  DLIST  є     8       V        ALIST       8       а                   џџџџЭ                                                                      CREATESHORTCUT      ы  #     а   METHOD_SELFV   FILENAME    PARAMS             џџџџ/                                        :  Б          q      W  METHOD_SELF    а      FILENAME    V      PARAMS                            џџџџЭ                                                                      CREATEDESKTOPSHORTCUT      ы  $     а   METHOD_SELFV   FILENAME    PARAMS             џџџџ                      л          Ч      Ѓ              к      Р  METHOD_SELF    а      FILENAME    V      PARAMS                        џџџџЭ                                                                      ENUMNETWORKDRIVES       є  %     а   METHOD_SELF             џџџџњ  =                          %        ш              Y          METHOD_SELF    а  ч  ђ               џџџџЭ                                                                      ENUMPRINTERCONNECTIONS       є  &     а   METHOD_SELF             џџџџ                              l       	              З          METHOD_SELF    а  P                 џџџџЭ                                                                      GETNETUSERINFO       є  '     а   METHOD_SELF             џџџџ%	                  о              Ъ      
                          METHOD_SELF    а  c  	               џџџџЭ                                                                      MAPNETWORKDRIVE      ы  (     а   METHOD_SELFV   DRIVELETTERV   UNCы   UPDATEPROFILE             џџџџ5
            І                  ј      W              t          METHOD_SELF    а      DRIVELETTER    V      UNC    V      UPDATEPROFILE    ы  {	  -
               џџџџЭ                                                                      MAPNETWORKDRIVEEX      ы  )     а   METHOD_SELFV   DRIVELETTERV   UNCы   UPDATEPROFILEV   USERNAMEV   PASSWORD             џџџџЭ  M          b                                  0          METHOD_SELF    а      DRIVELETTER    V      UNC    V      UPDATEPROFILE    ы      USERNAME    V      PASSWORD    V  
  Х               џџџџЭ                                                                      REMOVENETWORKDRIVE      ы  *     а   METHOD_SELFV   DRIVELETTERы   FORCEы   UPDATEPROFILE             џџџџН              5                       ф                        METHOD_SELF    а      DRIVELETTER    V      FORCE    ы      UPDATEPROFILE    ы  #  Е               џџџџЭ                                                                      GETSPECIALFOLDERSLIST       є  +     а   METHOD_SELF             џџџџ\                                  4      N              [          METHOD_SELF    а    T               џџџџЭ                                                                      ADDPRINTERCONNECTION      ы  ,     а   METHOD_SELFV   	LOCALPORTV   UNCы   UPDATEPROFILE             џџџџs  а          х  Е              n                                METHOD_SELF    а      	LOCALPORT    V      UNC    V      UPDATEPROFILE    ы  В  k               џџџџЭ                                                                      ADDPRINTERCONNECTIONEX      ы  -     а   METHOD_SELFV   	LOCALPORTV   UNCы   UPDATEPROFILEV   USERNAMEV   PASSWORD             џџџџ            Ђ  r                С  U      л                  METHOD_SELF    а      	LOCALPORT    V      UNC    V      UPDATEPROFILE    ы      USERNAME    V      PASSWORD    V  Щ                 џџџџЭ                                                                      REMOVEPRINTERCONNECTION      ы  .     а   METHOD_SELFV   	LOCALPORTы   FORCEы   UPDATEPROFILE             џџџџ§              v  D  _                '                          METHOD_SELF    а      	LOCALPORT    V      FORCE    ы      UPDATEPROFILE    ы  b  ѕ      WS  pџџџЂ      SCUT  џџџЂ      WS  pџџџЂ  є  FOLDERS  џџџЂ      DESKTOPPATH  TџџџV      WS  pџџџЂ      DRIVES  џџџЂ      
DRIVESLIST  8џџџ є      I  0џџџ      WS  pџџџЂ      PRINTERS  џџџЂ      PRINTERLIST  8џџџ є      I  ,џџџ"      WS  џџџЂ      USERINFO  \џџџ є      WS  џџџЂ      WS  џџџЂ      WS  џџџЂ      WS  pџџџЂ      S  џџџЂ  H  D  8џџџ є      WS  џџџЂ      WS  џџџЂ      WS  џџџЂ       я    е  >  p    	  ж                r  џ                                                                                                                     r     џ      І      
   +   ђ  в                                                                                                                                                                                     Н  й  r          #                                                           !   "   #   $   %   '   (   *   $      ф                    	   
                     %                                	   
         &  	  	                            	   
         '      a                             	   
      (      U                          	   
                        )  е  е  a                          	   
                        *  6  6  U                    	   
                              +      {                    	   
                                                         ,      9                          	   
            -  ?  ?  E                          	   
            .      9                    	   
                                  щ        шђџџџ     #   ф   ќ       Z   #   ф   lџъ   #   ф   ,џџџ   
 ,џџџ    % џџџp          (t р   #   ф   ЈўџџФўџџ   
,џџџ   
 ,џџџ    %рўџџ     Фўџџ Јўџџ Є   % џџџ №§џџўџџ   
hўџџ   
 hўџџ    %(ўџџ     ўџџ №§џџ Р   %ф§џџ %и§џџ,    #   ф      
   
 м   %М§џџ(*  #   ф    џџџpџџџ ј      џџџ #   ф   џџџ,џџџpџџџ   
-    *t  #   ф    џџџ   
     џџџ   џџџ     
   №)8 #   ф    џџџ   
 0    џџџ   џџџ	     
 0  №)8 #   ф    џџџ   
 L    џџџ   џџџ     
 L  №)8 #    ф    џџџ   
 h    џџџ   џџџ     
 h  №)8 #!   ф    џџџ   
     џџџ   џџџ     
   №)8 #"   ф    џџџ   
      џџџ   џџџ     
    №)8 ##   ф    џџџ   
 М    џџџ   џџџ     
 М  №)8 #$   ф   џџџ-       #%   ф    и     (t D   <    #'   ф     $A #(   ф          (t 	      lџ #*   ф           №§џџ    ўџџ    (ўџџ    hўџџ     џџџ    Јўџџ    Фўџџ    џџџ    рўџџ    М§џџ    ,џџџ    и§џџ    ф§џџ    pџџџ              шсњџџ     $   M   (      	 U   $	   M   Pџх    $
   M   Dџџџpџџџ ј     Dџџџ $   M   џџџpџџџ  %џџџD*t  $   M   Tџџџџџџџџџ ф  -    *t  $   M   Dџџџ,Tџџџ    %шўџџ(   
%Ьўџџ(&Аўџџ    
&ўџџМ $#   (t D   <    $   M     $A $   M          (t 	      Pџ $   M       	 _   ўџџU   Аўџџ    Ьўџџ    шўџџ    pџџџ    џџџ    џџџ    Dџџџ    Tџџџ                  ш§јџџ     %      ф       e   %      $џџџpџџџ     $џџџ %      џџџфўџџpџџџ-     *t  %	      0џџџ 8  *Ќ фўџџџџџ-      @  %Єўџџdўџџ(t  @  \ўџџ(Ќ 0џџџdўџџ\ўџџ" Aj    %
      8џџџўџџџџџ0џџџ-    ьд§џџџџџ0џџџ H  %ўџџp-    *t 0џџџ\ўџџ(ш ~џџџ %      8џџџ   (М      %           z   д§џџ    ўџџ    0џџџ    ўџџ    \ўџџ    dўџџ    Єўџџ    8џџџ1   pџџџ    фўџџ    $џџџ    џџџ                  шюіџџ     &   Њ   ь       e   &   Њ    џџџpџџџ      џџџ &   Њ   џџџрўџџpџџџ-     *t  &	   Њ   ,џџџ 8  *Ј рўџџџџџ-      @  % ўџџ`ўџџ(t  @  Xўџџ(Ќ ,џџџ`ўџџXўџџ" Aj    &
   Њ   8џџџўџџџџџ,џџџ H  %Lўџџd-    ьЬ§џџџџџ,џџџ-    *t ,џџџXўџџ(ш ~џџџ &   Њ   8џџџ   (М      &   Њ        z   Ь§џџ    ўџџ    Lўџџ    Xўџџ    `ўџџ     ўџџ    рўџџ     џџџ    ,џџџ    8џџџ   pџџџ    џџџ                  шпєџџ     '   К	   Ј        џ    '   К	   Pџџџџџџ     Pџџџ '   К	   \џџџ P  №џџџ  %џџџD*t  '   К	   \џџџ l  №џџџ   %џџџD*t  '	   К	   \џџџ   №џџџ"  %џџџD*t  '
   К	   \џџџ   (М      '   К	        2   Pџџџ    \џџџ   џџџ    џџџ                  ш~ѓџџ     (      Ј        ц   (         
xџџџ   
 xџџџ*  (      8џџџ   
 8џџџ H  %,џџџ(          (t T   (	         
 Є  %,џџџx   
 Р  % џџџ0%џџџ$          (t џ    (
         
   
 м  %xџџџ(*  (      џ~    (      ,џџџџџџ     ,џџџ (      џџџ   
   
   
-    &  (       и     (t D   <    (        $A (             (t 	      џ (           ?   8џџџ    џџџ     џџџ    xџџџ    џџџ    ,џџџ              ш)ёџџ     )   Н   Ј        ђ   )   Н      
xџџџ   
 xџџџ*  )   Н   8џџџ   
 8џџџ H  %,џџџ(           (t `   )	   Н      
 Є  %,џџџx   
 Р  % џџџ0%џџџ$           (t    )
   Н      
   
 м  %xџџџ(*  )   Н   џ    )   Н   ,џџџџџџ     ,џџџ )   Н   џџџ   
   
   
   
   
-    &  )   Н    и      (t D   <    )   Н     $A )   Н           (t 	      џ )   Н        ?   џџџ     џџџ    ,џџџ    8џџџ    xџџџ    џџџ              шШюџџ     *      Ј        ц   *	      џv   *
         
tџџџ   
 tџџџ*  *      4џџџ   
 4џџџ H  %(џџџ(          (t >   *         
 Є  %(џџџx   
 Р  %џџџ0%џџџ$          (t щ    *         
   
 м  %tџџџ(*  *      (џџџџџџ     (џџџ *      џџџ   
   
   
-    '  *       и     (t D   <    *        $A *             (t 	      џ *           ?   џџџ    џџџ    (џџџ    4џџџ    tџџџ    џџџ              шsьџџ     +   ј   Ь           +	   ј   ,џџџpџџџ ј     ,џџџ +
   ј   џџџpџџџ  %ьўџџD*t  +   ј   8џџџ ј  №ьўџџџџџ ј  -    *t  +   ј   8џџџ   №ьўџџџџџ   -    *t  +   ј   8џџџ 0  №ьўџџџџџ 0  -    *t  +   ј   8џџџ L  №ьўџџџџџ L  -    *t  +   ј   8џџџ ф  №ьўџџџџџ ф  -    *t  +   ј   8џџџ h  №ьўџџџџџ h  -    *t  +   ј   8џџџ   №ьўџџџџџ   -    *t  +   ј   8џџџ    №ьўџџџџџ    -    *t  +   ј   8џџџ М  №ьўџџџџџ М  -    *t  +   ј   8џџџ и  №ьўџџџџџ и  -    *t  +   ј   8џџџ є  №ьўџџџџџ є  -    *t  +   ј   8џџџ   №ьўџџџџџ   -    *t  +   ј   8џџџ ,  №ьўџџџџџ ,  -    *t  +   ј   8џџџ H  №ьўџџџџџ H  -    *t  +   ј   8џџџ d  №ьўџџџџџ d  -    *t  +   ј   8џџџ   №ьўџџџџџ   -    *t  +   ј   8џџџ   (М      +   ј        ;   ьўџџ    ,џџџ    8џџџ   pџџџ    џџџ                  шјчџџ     ,   B   4        ю    ,   B   џ~    ,   B   џџџџџџ     џџџ ,	   B   џџџ   
   
   
-    7  ,
   B    и     (t D   <    ,   B     $A ,   B          (t 	      џ ,   B           џџџ    џџџ              шПцџџ     -   џ   4        њ    -   џ   џ    -   џ   џџџџџџ     џџџ -	   џ   џџџ   
   
   
   
   
-    7  -
   џ    и      (t D   <    -   џ     $A -   џ           (t 	      џ -   џ           џџџ    џџџ              шzхџџ     .   б   4        ю    .	   б   џ~    .
   б   џџџџџџ     џџџ .   б   џџџ   
   
   
-    8  .   б    и     (t D   <    .   б     $A .   б          (t 	      џ .   б           џџџ    џџџ              шAфџџ         +     ш%фџџ         + #    ~  d  y  H  t  ,  o    j  є  e  и  `  М  [     V    Q  h  L  L  G  0  B    =  ј  8  м  3  Р  .  Є  )    $  l    P    H    @    8            ћ   ф  і   и  ё   М  ь      ч     т   h  н   L  и   0  г     Ю   ј   Щ   м   Ф   Р   П   Є   К      Е      Ў      Ї      Ђ   6   5   4   3   2   1   0   /   .   -   ,   +   *   )   (   %   $   #   !                                     
                                 0.LNK.URL.lnkWScript.ShellCREATESHORTCUT	Arguments	ARGUMENTSDescriptionDESCRIPTIONHotkeyHOTKEYIconLocationICONLOCATION
TargetPath
TARGETPATH        WindowStyleWINDOWSTYLEWorkingDirectoryWORKINGDIRECTORYSAVESPECIALFOLDERSDesktopITEM\Wscript.NetworkENUMNETWORKDRIVESCOUNTENUMPRINTERCONNECTIONS	COMP_NAMECOMPUTERNAMEUSER_DOMAIN 
USERDOMAIN	USER_NAMEUSERNAMEAZ:MAPNETWORKDRIVEREMOVENETWORKDRIVEAllUsersDesktopAllUsersStartMenuAllUsersProgramsAllUsersStartup	PrintHood	TemplatesFontsNetHood    	StartMenuSendToRecentStartup	FavoritesMyDocumentsProgramsADDPRINTERCONNECTIONREMOVEPRINTERCONNECTION    