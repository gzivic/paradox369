MZP      џџ  И       @                                      К Д	Э!ИLЭ!This program must be run under Microsoft Windows.
$            NE
-
     	                @ P --Ч                P   q         о0         ў 0         џн0          м 0         фR 0    	     6~0         Д 0    С 0    Э 0    к 0    ъ 0      TOOLSENV  LIBENTRY  WEP                 И ЫИ Ы                                        Я}Borland Standard File           ў         @   |              ў ~ ў      @       	ў               ў              ў               ў               ў               ў F Library   Form   UIManager   UIContainer   UIObject   	ў љ  ѓџџџџџџqTD                                             open+ close+ canArrive2 arrive2 setFocus+ canDepart2 removeFocus+ depart2 mouseEnter, mouseExit, mouseMove, mouseDown, mouseUp, mouseDouble, mouseRightDown, mouseRightUp, mouseRightDouble, keyPhysical- keyChar- action. menuAction/ timer4 pushButton+ changeValue0 calcField+ run+ newValue+ proc+ error3 status1 mouseClick, init+ Uses Type Var Const Proc GETWINDOWSCOLOR PARSEFILENAME SHOWFORMATDIALOG HELPMANUALDOC HELPMANUALHTM GETFILELIST GETDIRECTORYSPEC templates PROGRESSOPEN PROGRESSCLOSE PROGRESSSHOW PROGRESSHIDE PROGRESSLABELS PROGRESSVALUES PROGRESSSTEP PROGRESSINCR DIALOGOPEN DIALOGCLOSE PROGRESSCAPTION version MODALOPEN MODALCLOSE MODALHIDE PROFILEREAD PROFILEWRITE GETOPENSPEC GETSAVESPEC MANUALDOC MANUALHTM KVETCH TOPICALHELP, ў Иx џ Вxџџ                     R    кw  џџ$ #C ; TOOLS ENVIRONMENT LIBRARY written by A. I. BREVELERI

; GET MENU COLORS FROM WIN.INI
;
; ( NOTE: WindowsNT sometimes ships with black colors defined as '0  0  0'. )
;                                                                  /   \
;                                                                 /     \
;  T W O   ( 2 )   F E R S H L U G G I N E R   S P A C E S !! ---'       `--- T W O   S P A C E S !!
;
;
method GETWINDOWSCOLOR( const COLORKEY string, const DEFCOLOR longint ) longint
var WW, XX, YY, ZZ string endvar
	WW = ""
	WW = readProfileString("WIN.INI","colors",COLORKEY)
	if WW<>"" then
		if advMatch(WW,"^[ \t]*([^ \t]+)[ \t]+([^ \t]+)[ \t]+([^ \t]+)[ \t]*$",XX,YY,ZZ) then
			try return rgb(smallint(XX),smallint(YY),smallint(ZZ)) onfail endtry
		endif
	endif
	return DEFCOLOR
endmethod

 GETWINDOWSCOLOR $ы ; TOOLS ENVIRONMENT LIBRARY written by A. I. BREVELERI

; BREAK A FILE SPEC UP INTO CONSTITUENT PARTS
method PARSEFILENAME( const caSrc string, var vaDvc string, var vaAls string,
						var vaPth string, var vaNam string, var vaExt string ) 
						logical
var
	stDvc, stAls, stPth, stNam, stExt	string
	stX, stY										string
   CC												logical
endvar
	stDvc = blank()
	stAls = blank()
	stPth = blank()
	stNam = caSrc
	stExt = blank()
   CC = false
	if advMatch(stNam,"^(..:)([^:]*)$",stX,stY) then
		stNam = stY
		if advMatch(stX,"(:[^:]+:)$",stY) then
      	stDvc = getAliasPath(stY)+"\\"
			stAls = stY
         CC = true
		else
			stDvc = stX
			stAls = stX
		endif
	endif
	if advMatch(stNam,"^(..\\\\)([^\\\\]*)$",stX,stY) then
		stPth = stX
		stNam = stY
	endif
	if advMatch(stNam,"^(..)(.[^.]*)$",stX,stY) then
		stNam = stX
		stExt = stY
	endif
	vaDvc = stDvc
	vaAls = stAls
	vaPth = stPth
	vaNam = stNam
	vaExt = stExt
	return CC
endmethod

 PARSEFILENAME ^ ; TOOLS ENVIRONMENT LIBRARY written by A. I. BREVELERI

Type

	myfilebrowserInfo = record
		Title				string
		AllowableTypes	longint
		SelectedType	longint
		Options			longint
		FileFilters		string
		Alias				string
		Path				string
		PathOnly			logical
		NewFileOnly		logical
	endrecord

	mystringarray = array [] string

endType
 Type %x ; TOOLS ENVIRONMENT LIBRARY written by A. I. BREVELERI

method SHOWFORMATDIALOG( const TYPEKEY smallint, const MYVERS string )
; TYPEKEY: 1 = Number; 2 = Date; 3 = Time; 4 = TimeStamp; 5 = Logical
var
	CALLFORM					form
	OOShadow					uiobject
	XX,YY,WW,HH				longint				; position of dialog box relative to screen
	DESKX,DESKY				longint				; position of desktop relative to screen
	CALLX,CALLY				longint				; position of calling form relative to desktop
	TEMPX,TEMPY				longint
	CC							logical
endvar
   if number(substr(MYVERS,1,1))<=6 then
		; Paradox for Windows version 4.5, 4.51, 5.0
		if TYPEKEY=1 then
			if not open(VIEWFORM,":toolspure:TOOLSENW") then errorshow() return endif
			getPosition(VIEWFORM,XX,YY,WW,HH)
			XX = XX+WW/2-3823	; 3823 is width of dummy form / 2
			YY = YY+HH/2-2500	; 2500 is height of dummy form / 2
			close(VIEWFORM)
			load(VIEWFORM,":toolspure:TOOLSENW")
		else
			if not load(VIEWFORM,":toolspure:TOOLSENW",WinStyleDefault,2116,1570,1680,780) then errorshow() return endif
			getPosition(VIEWDESK,XX,YY,WW,HH)
			XX = int(max(0,XX+WindowsBorderThickness+520))
			YY = int(max(0,YY+WindowsBorderThickness+WindowsTitleBarHeight+ParadoxMenuToolbarHeight+90))
		endif
		WW = P5HORZ[TYPEKEY]
		HH = P5VERT[TYPEKEY]
		try
			attach(CALLFORM)
			attach(OOShadow,CALLFORM.boxShadow)
			CC = true
		onfail
			CC = false
		endtry
		if CC then
			getPosition(VIEWDESK,DESKX,DESKY,TEMPX,TEMPY)
			attach(CALLFORM)
			getPosition(CALLFORM,CALLX,CALLY,TEMPX,TEMPY)
			DROPX = XX-(DESKX+WindowsBorderThickness+CALLX+WindowsBorderThickness)+DropShadowOffSetHorizontal
			DROPY = YY-(DESKY+WindowsBorderThickness+WindowsTitleBarHeight+ParadoxMenuToolbarHeight+CALLY+
								WindowsBorderThickness+WindowsTitleBarHeight)+DropShadowOffSetVertical
			CC = false
			OOShadow.Size = point(50,50)
			OOShadow.Position = point(DROPX,DROPY)
			if OOShadow.Position=point(DROPX,DROPY) then
				OOShadow.Size = point(WW,HH)
				if OOShadow.Size=point(WW,HH) then
					OOShadow.Visible = true
					CC = true
				endif
			endif
		endif
		if not CC then
			if not open(VIEWDROP,":toolspure:TOOLSENU",WinStyleHidden,
								XX+DropShadowOffSetHorizontal,
								YY+DropShadowOffSetVertical,WW,HH) then 
								errorshow() return endif
			;// BGN frog juice
			sleep(1)
			bringToTop(VIEWFORM)
			sleep(1)
			show(VIEWDROP)
			sleep(1)
			bringToTop(VIEWFORM)
			sleep(1)
			;// END frog juice
		endif
	   bringToTop(VIEWFORM)
		VIEWFORM.dummy.select = true
		save(VIEWFORM)
		sendKeys("{F6}fff~"+P5KEYS[TYPEKEY]+"~",false)
		try close(VIEWDROP) onfail endtry
		try close(VIEWFORM) onfail endtry
		try CALLFORM.boxShadow.visible = false onfail endtry
   else
		; Paradox for Windows version 7, 8, 9
		if not attach(VIEWFORM,"Form Design : :toolspure:TOOLSENW.fsl") then
			if not load(VIEWFORM,":toolspure:TOOLSENW",WinStyleDefault,2116,1570,1680,780) then errorshow() return endif
	   endif
	   bringToTop(VIEWFORM)
		VIEWFORM.dummy.select = true
		save(VIEWFORM)
		sleep(50)
		sendKeys("{F6}r+{tab}{right}{right}{right}{right}{right}{tab}"+P7KEYS[TYPEKEY]+"c",false)
	endif
endmethod

 SHOWFORMATDIALOG  ; TOOLS ENVIRONMENT LIBRARY written by A. I. BREVELERI

Var

	VIEWDESK					application
	gstPROFILES				string				; spec of file that profile specs were read from
	VIEWEDIT					ole					; used to open user documentation

	tcTOOLXENV				tcursor				; progress indicator support data pointer
	VIEWFORM					form					; handle to progress indicator dialog form
	VIEWNAME					string				; title of progress indicator dialog form
	DIALOGCAPTION			string				; progress indicator graph object title
	VIEWDROP					form					; handle to progress indicator drop shadow

	OY							tcursor				; pointer to table of operator insults
	Schtick					longint				; number of insults available for heckling behavior

	P5KEYS					array [5] string	; sendkeys sequences to open format designers in version 5
	P7KEYS					array [5] string	; sendkeys sequences to open format designers in version 7
	P5HORZ					array [5] smallint
	P5VERT					array [5] smallint


	gtcHelp					tcursor				; pointer to help table :toolspure:HELPTEXT.DB iff it exists

endVar

 Var &ў  ; TOOLS ENVIRONMENT LIBRARY written by A. I. BREVELERI

method HELPMANUALDOC()
var
	CURRFORM					form
	DVC,ALS,PTH,NAM,EXT	string
endvar
	attach(CURRFORM)
	PARSEFILENAME(getFileName(CURRFORM),DVC,ALS,PTH,NAM,EXT)
   MANUALDOC(NAM)
endmethod

 HELPMANUALDOC 'ў  ; TOOLS ENVIRONMENT LIBRARY written by A. I. BREVELERI

method HELPMANUALHTM()
var
	CURRFORM					form
	DVC,ALS,PTH,NAM,EXT	string
endvar
	attach(CURRFORM)
	PARSEFILENAME(getFileName(CURRFORM),DVC,ALS,PTH,NAM,EXT)
   MANUALHTM(NAM)
endmethod

 HELPMANUALHTM   p ; TOOLS ENVIRONMENT LIBRARY written by A. I. BREVELERI

method open(var eventInfo Event)
	gstPROFILES = getAliasPath("toolsuser")+"\\PROFILES.INI"
	P5KEYS[1] = "n"		P7KEYS[1] = "n"	P5HORZ[1] = 7646	P5VERT[1] = 5000
	P5KEYS[2] = "d"		P7KEYS[2] = "d"	P5HORZ[2] = 7400	P5VERT[2] = 4280
	P5KEYS[3] = "t~"		P7KEYS[3] = "t"	P5HORZ[3] = 7080	P5VERT[3] = 4320
	P5KEYS[4] = "tt~"		P7KEYS[4] = "s"	P5HORZ[4] = 7610	P5VERT[4] = 5510
	P5KEYS[5] = "l"		P7KEYS[5] = "l"	P5HORZ[5] = 6912	P5VERT[5] = 3920
	if open(OY,":toolspure:OSCULATE.DB") then
		home(OY)
		Schtick = nRecords(OY)
	else
		Schtick = 0
	endif
endmethod

 open+  А  ; TOOLS ENVIRONMENT LIBRARY written by A. I. BREVELERI

method close(var eventInfo Event)
	try close(VIEWDROP) onfail endtry
	try close(VIEWFORM) onfail endtry
endmethod
 close (і ; TOOLS ENVIRONMENT LIBRARY written by A. I. BREVELERI

method GETFILELIST( const DIALOGTITLE string, const ALLOWEDTYPES longint, 
						const SELECTEDTYPE longint, var ASTDIRECTORY string,
						var ASTFILELIST mystringarray ) logical
var
	FBI						myfilebrowserinfo
	stDvc, stAls, stPth	string
	stX, stY					string
	II							longint
endvar
	if isAssigned(ASTDIRECTORY) then
   	stPth = ASTDIRECTORY
   endif
   ; v.7 does not seem to allow the operator to change the directory spec
   ; in filebrowser(var:string,FBI), so get directory here first
	if not GETDIRECTORYSPEC(DIALOGTITLE+" (dir)",ALLOWEDTYPES,SELECTEDTYPE,
   							stPth) then return false endif
	stDvc = blank()
	stAls = blank()
	if advMatch(stPth,"^(..):([^:]*)$",stX,stY) then
		stPth = stY
		if advMatch(stX,":([^:]*)$",stY) then
			stAls = ":"+stY+":"
		else
			stDvc = stX+":"
		endif
	endif
	FBI.Title = DIALOGTITLE+" (list)"
	FBI.AllowableTypes = ALLOWEDTYPES
	FBI.SelectedType = SELECTEDTYPE
   ; BrowseOptCreatePrompt		  8192	\
   ; BrowseOptFileMustExist	  4096	 > unknown in vers 5
   ; BrowseOptNoNetButton		131072	/
	FBI.Options = 4096	{BrowseOptFileMustExist}
	FBI.FileFilters = ""
	FBI.Alias = stAls
	FBI.Path = stDvc+stPth
	FBI.PathOnly = false
	FBI.NewFileOnly = false
	empty(ASTFILELIST)
	if filebrowser(ASTFILELIST,FBI) then
		stAls = FBI.alias
		if advMatch(stAls,":") then
			ASTDIRECTORY = stAls+FBI.Path
		else
			ASTDIRECTORY = ":"+stAls+":"+FBI.Path
		endif
   	; v.5 sometimes prepends aliases to file names
		for II from 1 to size(ASTFILELIST)
			stX = ASTFILELIST[II]
			while advmatch(stX,"^:[^:]*:(..)$",stY)
				stX = stY
			endwhile
			ASTFILELIST[II] = stX
		endfor
		return true
	else
		return false
	endif
endmethod

 GETFILELIST )џ ; TOOLS ENVIRONMENT LIBRARY written by A. I. BREVELERI

method GETDIRECTORYSPEC( const DIALOGTITLE string, const ALLOWEDTYPES longint, 
						const SELECTEDTYPE longint, var ASTDIRSPEC string ) logical
var
	FBI						myfilebrowserinfo
	stDvc, stAls, stPth	string
	stX, stY					string
endvar
	stDvc = blank()
	stAls = blank()
	stPth = blank()
	if isAssigned(ASTDIRSPEC) then
		stPth = ASTDIRSPEC
	   ; split path into head and tail on last ":" if any
		if advMatch(stPth,"^(..):([^:]*)$",stX,stY) then
			stPth = stY	; found -- save tail as path
	      ; check head for leading ":"
			if advMatch(stX,":([^:]*)$",stY) then
				stAls = ":"+stY+":"	; found -- head must be BDE alias
			else
				stDvc = stX+":"	; not found -- head must be DOS device
			endif
		endif
		; split path into path and name on last "\" if any
		if advMatch(stPth,"^(..)\\\\[^\\\\]*$",stX) then
			stPth = stX+"\\"
		endif
	endif
	FBI.Title = DIALOGTITLE
	FBI.AllowableTypes = ALLOWEDTYPES
	FBI.SelectedType = SELECTEDTYPE
   ; BrowseOptCreatePrompt		  8192	\
   ; BrowseOptFileMustExist	  4096	 > unknown in vers 5
   ; BrowseOptNoNetButton		131072	/
	FBI.Options = 0
	FBI.FileFilters = ""
	FBI.Alias = stAls
	FBI.Path = stDvc+stPth
	FBI.PathOnly = true
	FBI.NewFileOnly = false
	stX = ""
	if filebrowser(stX,FBI) then
		stAls = FBI.alias
		if advMatch(stAls,":") then
			ASTDIRSPEC = stAls+FBI.Path
		else
			ASTDIRSPEC = ":"+stAls+":"+FBI.Path
		endif
		return true
	else
		return false
	endif
endmethod

 GETDIRECTORYSPEC *я
 method templates() {
--------------------------------------------------------------------------
; TOOLS ENVIRONMENT LIBRARY written by A. I. BREVELERI

Var

	libEnv					library

endVar
--------------------------------------------------------------------------
; TOOLS ENVIRONMENT LIBRARY written by A. I. BREVELERI

method open(var eventInfo Event)
	if eventInfo.isPreFilter() then
		;// This code executes for each object on the form
		
	else
		;// This code executes only for the form
      if not libEnv.open(":toolspure:TOOLSENV") then errorshow() formReturn(false) endif
		
	endIf
endMethod
--------------------------------------------------------------------------
; TOOLS ENVIRONMENT LIBRARY written by A. I. BREVELERI

Type

	MyStringArray = array [] string

endType
--------------------------------------------------------------------------
; TOOLS ENVIRONMENT LIBRARY written by A. I. BREVELERI

Uses ObjectPAL

	KVETCH() string

   PROFILEREAD( const astKEY string, const astDEF string ) string
   PROFILEWRITE( const astKEY string, const astVAL string )
	GETWINDOWSCOLOR( const COLORKEY string, const DEFCOLOR longint )
						longint

	GETDIRECTORYSPEC( const DIALOGTITLE string, const ALLOWEDTYPES longint,
						const SELECTEDTYPE longint, var ASTDIRSPEC string ) logical
	GETFILELIST( const DIALOGTITLE string, const ALLOWEDTYPES longint,
						const SELECTEDTYPE longint, var ASTDIRECTORY string,
						var ASTFILELIST MyStringArray ) logical
	GETOPENSPEC( const DIALOGTITLE string, const ALLOWEDTYPES longint,
						const SELECTEDTYPE longint, var ASTFILESPEC string ) logical
	GETSAVESPEC( const DIALOGTITLE string, const ALLOWEDTYPES longint,
						const SELECTEDTYPE longint, var ASTFILESPEC string ) logical

	PARSEFILENAME( const caSrc string, var vaDvc string, var vaAls string,
						var vaPth string, var vaNam string, var vaExt string )
						logical	; return indicates whether a BDE alias was found
; RESULTS:   | vaDvc           | vaAls         | vaPth    | vaNam | vaExt   |
; -----------+-----------------+---------------+----------+-------+---------+
; alias seen | path(alias)+'\' | ':'+alias+':' | path+'\' | name  | '.'+ext |
; no alias   | device+':'      | device+':'    | path+'\' | name  | '.'+ext |
; -----------+-----------------+---------------+----------+-------+---------+

	MODALOPEN( const FORMSPEC string, var FFVIEW form, var WINTITLE string,
						var FFDROP form ) logical
	MODALHIDE( var FFVIEW form, var FFDROP form )
	MODALCLOSE( var FFVIEW form, var FFDROP form )
	DIALOGOPEN( const FORMSPEC string, var FORMHAND form ) logical
	DIALOGCLOSE()

	PROGRESSOPEN() logical
	PROGRESSCAPTION( const CAPTION string )
	PROGRESSLABELS( const INCRLABEL string, const DECRLABEL string )
	PROGRESSVALUES( const INCRVALUE number, const DECRVALUE number )
	PROGRESSSHOW() logical
	PROGRESSSTEP( const CHANGE number )
	PROGRESSINCR()
	PROGRESSHIDE()
	PROGRESSCLOSE()
	SHOWFORMATDIALOG( const TYPEKEY smallint, const MYVERS string )

	TOPICALHELP( const eventInfo MouseEvent ) logical
	MANUALDOC( const APPLNAME string )
	MANUALHTM( const APPLNAME string )
	HELPMANUALDOC()
	HELPMANUALHTM()

endUses
--------------------------------------------------------------------------
} endmethod
 templates + ; TOOLS ENVIRONMENT LIBRARY written by A. I. BREVELERI

method PROGRESSOPEN() logical
	; force data preset
	try close(tcTOOLXENV) onfail endtry
	if not copy(":toolspure:TOOLSENV.DB",":toolstemp:TOOLXENV.DB")
								then errorshow() return false endif
	if not open(tcTOOLXENV,":toolstemp:TOOLXENV.DB")
								then errorshow() return false endif
	edit(tcTOOLXENV)
	; set default caption
	DIALOGCAPTION = "Operation"
	; create support records for this handle with default values
	insertRecord(tcTOOLXENV)
	tcTOOLXENV."Slice"	= 1
	tcTOOLXENV."Label"	= "COMPLETED"
	tcTOOLXENV."Value"	= 0
	insertRecord(tcTOOLXENV)
	tcTOOLXENV."Slice"	= 2
	tcTOOLXENV."Label"	= "REMAINING"
	tcTOOLXENV."Value"	= 100
	unlockRecord(tcTOOLXENV)
	return true
endmethod
 PROGRESSOPEN ,m  ; TOOLS ENVIRONMENT LIBRARY written by A. I. BREVELERI

method PROGRESSCLOSE()
	DIALOGCLOSE()
endmethod
 PROGRESSCLOSE -k ; TOOLS ENVIRONMENT LIBRARY written by A. I. BREVELERI

method PROGRESSSHOW() logical
var FORMHAND form endvar
	; open a progress indicator against the new records
	if DIALOGOPEN( ":toolspure:TOOLSENV", FORMHAND ) then
		FORMHAND.grfProgress.TitleBox.Graph_Title.Text = DIALOGCAPTION+" in Progress"
		return true
	else
		return false
	endif
endmethod
 PROGRESSSHOW .l  ; TOOLS ENVIRONMENT LIBRARY written by A. I. BREVELERI

method PROGRESSHIDE()
	DIALOGCLOSE()
endmethod
 PROGRESSHIDE /c ; TOOLS ENVIRONMENT LIBRARY written by A. I. BREVELERI

method PROGRESSLABELS( const INCRLABEL string, const DECRLABEL string )
	if qlocate(tcTOOLXENV,1) then
		tcTOOLXENV."Label" = INCRLABEL
	endif
	unlockRecord(tcTOOLXENV)
	if qlocate(tcTOOLXENV,2) then
		tcTOOLXENV."Label" = DECRLABEL
	endif
	unlockRecord(tcTOOLXENV)
	sleep(1)
endmethod
 PROGRESSLABELS 0c ; TOOLS ENVIRONMENT LIBRARY written by A. I. BREVELERI

method PROGRESSVALUES( const INCRVALUE number, const DECRVALUE number )
	if qlocate(tcTOOLXENV,1) then
		tcTOOLXENV."Value" = INCRVALUE
	endif
	unlockRecord(tcTOOLXENV)
	if qlocate(tcTOOLXENV,2) then
		tcTOOLXENV."Value" = DECRVALUE
	endif
	unlockRecord(tcTOOLXENV)
	sleep(1)
endmethod
 PROGRESSVALUES 1f ; TOOLS ENVIRONMENT LIBRARY written by A. I. BREVELERI

method PROGRESSSTEP( const CHANGE number )
	if qlocate(tcTOOLXENV,2) then
		tcTOOLXENV."Value" = tcTOOLXENV."Value"-CHANGE
	endif
	unlockRecord(tcTOOLXENV)
	if qlocate(tcTOOLXENV,1) then
		tcTOOLXENV."Value" = tcTOOLXENV."Value"+CHANGE
	endif
	unlockRecord(tcTOOLXENV)
	sleep(1)
endmethod
 PROGRESSSTEP 2K ; TOOLS ENVIRONMENT LIBRARY written by A. I. BREVELERI

method PROGRESSINCR()
	if qlocate(tcTOOLXENV,2) then
		tcTOOLXENV."Value" = tcTOOLXENV."Value"-1.0
	endif
	unlockRecord(tcTOOLXENV)
	if qlocate(tcTOOLXENV,1) then
		tcTOOLXENV."Value" = tcTOOLXENV."Value"+1.0
	endif
	unlockRecord(tcTOOLXENV)
	sleep(1)
endmethod
 PROGRESSINCR 30 ; TOOLS ENVIRONMENT LIBRARY written by A. I. BREVELERI

method DIALOGOPEN( const FORMSPEC string, var FORMHAND form ) logical
	if not MODALOPEN( FORMSPEC, VIEWFORM, VIEWNAME, VIEWDROP ) then return false endif
	if not attach(FORMHAND,VIEWFORM.Title) then return false endif
	return true
endmethod
 DIALOGOPEN 4~  ; TOOLS ENVIRONMENT LIBRARY written by A. I. BREVELERI

method DIALOGCLOSE()
	MODALCLOSE( VIEWFORM, VIEWDROP )
endmethod
 DIALOGCLOSE 5S  method PROGRESSCAPTION( const CAPTION string )
	DIALOGCAPTION = CAPTION
endmethod PROGRESSCAPTION В  Const
	WindowsBorderThickness = 60
	WindowsTitleBarHeight = 300
	ParadoxMenuToolbarHeight = 670
	DropShadowOffSetHorizontal = 200
	DropShadowOffSetVertical = 200
endConst
 Const 6	 method version() longint {

dating scheme to acommodate Y2K:
	1996 Jan..Dec	0001dd..0012dd
	1997 Jan..Dec	0021dd..0032dd
	1998 Jan..Dec	0041dd..0052dd
	1999 Jan..Dec	0061dd..0072dd
	2000 Jan..Dec	0081dd..0092dd
	2001 Jan..Dec	0101dd..0112dd
	2002 Jan..Dec	0201dd..0212dd
	2003 Jan..Dec	0301dd..0312dd
	...	...	...	...	...

}	return 8424	{ 24-Apr-2000

comments:

This library is intended to be compatible with Paradox for Windows
version 5 and version 7, and does not rely on version 7 new features.

SETUP should automatically check the version() value of any file named as 
"TOOLS***.L*L" before replacing it in ":toolspure:".

} endmethod

 version 7О ; TOOLS ENVIRONMENT LIBRARY written by A. I. BREVELERI

method MODALOPEN( const FORMSPEC string,  var FFVIEW form, var WINTITLE string,  var FFDROP form ) logical
var
	CALLFORM					form
	OOShadow					uiobject
	XX,YY,WW,HH				longint				; position of dialog box relative to screen
	DESKX,DESKY				longint				; position of desktop relative to screen
	CALLX,CALLY				longint				; position of calling form relative to desktop
	TEMPX,TEMPY				longint
	CC							logical
endvar
	CC = true
	if isassigned(WINTITLE) then
		if attach(FFVIEW,WINTITLE) then
			show(FFVIEW)
			bringToTop(FFVIEW)
			CC = false
		endif
	endif
	if CC then
		if not openAsDialog(FFVIEW,FORMSPEC) then errorshow() return false endif
		WINTITLE = FFVIEW.Title
	endif
	getPosition(FFVIEW,XX,YY,WW,HH)
	try
		attach(CALLFORM)
		attach(OOShadow,CALLFORM.boxShadow)
		CC = true
	onfail
		CC = false
	endtry
	if CC then
		getPosition(VIEWDESK,DESKX,DESKY,TEMPX,TEMPY)
		attach(CALLFORM)
		getPosition(CALLFORM,CALLX,CALLY,TEMPX,TEMPY)
		DROPX = XX-(DESKX+WindowsBorderThickness+CALLX+WindowsBorderThickness)+DropShadowOffSetHorizontal
		DROPY = YY-(DESKY+WindowsBorderThickness+WindowsTitleBarHeight+ParadoxMenuToolbarHeight+CALLY+
								WindowsBorderThickness+WindowsTitleBarHeight)+DropShadowOffSetVertical
		CC = false
		OOShadow.Size = point(50,50)
		OOShadow.Position = point(DROPX,DROPY)
		if OOShadow.Position=point(DROPX,DROPY) then
			OOShadow.Size = point(WW,HH)
			if OOShadow.Size=point(WW,HH) then
				OOShadow.Visible = true
				CC = true
			endif
		endif
	endif
	if not CC then
		if not open(FFDROP,":toolspure:TOOLSENU",WinStyleHidden,
								XX+DropShadowOffSetHorizontal,
								YY+DropShadowOffSetVertical,WW,HH) then 
								errorshow() return false endif
		;// BGN frog juice
		sleep(1)
		bringToTop(FFVIEW)
		sleep(1)
		show(FFDROP)
		sleep(1)
		bringToTop(FFVIEW)
		sleep(1)
		;// END frog juice
	endif
	return true
endmethod
 MODALOPEN 8@ ; TOOLS ENVIRONMENT LIBRARY written by A. I. BREVELERI

method MODALCLOSE( var FFVIEW form, var FFDROP form )
var CALLFORM form endvar
	try attach(CALLFORM) CALLFORM.boxShadow.Visible = false onfail endtry
	if isassigned(FFDROP) then close(FFDROP) endif
	if isassigned(FFVIEW) then close(FFVIEW) endif
endmethod
 MODALCLOSE 9> ; TOOLS ENVIRONMENT LIBRARY written by A. I. BREVELERI

method MODALHIDE( var FFVIEW form, var FFDROP form )
var CALLFORM form endvar
	try attach(CALLFORM) CALLFORM.boxShadow.Visible = false onfail endtry
	if isassigned(FFDROP) then close(FFDROP) endif
	if isassigned(FFVIEW) then hide(FFVIEW) endif
endmethod
 MODALHIDE : method PROFILEREAD( const astKEY string, const astDEF string ) string
var
	CURRFORM					form
	DVC,ALS,PTH,NAM,EXT	string
	stVALUE					string
endvar
	attach(CURRFORM)	; get handle to form calling this library
	PARSEFILENAME(getFileName(CURRFORM),DVC,ALS,PTH,NAM,EXT)
	stVALUE = readProfileString(gstPROFILES,NAM,astKEY)
	if stVALUE="" then return astDEF else return stVALUE endif
endmethod
 PROFILEREAD ;6 method PROFILEWRITE( const astKEY string, const astVAL string )
var
	CURRFORM					form
	DVC,ALS,PTH,NAM,EXT	string
endvar
	attach(CURRFORM)	; get handle to form calling this library
	PARSEFILENAME(getFileName(CURRFORM),DVC,ALS,PTH,NAM,EXT)
	writeProfileString(gstPROFILES,NAM,astKEY,astVAL)
endmethod
 PROFILEWRITE <J ; TOOLS ENVIRONMENT LIBRARY written by A. I. BREVELERI

method GETOPENSPEC( const DIALOGTITLE string, const ALLOWEDTYPES longint, 
						const SELECTEDTYPE longint, var ASTFILESPEC string ) logical
var
	FBI								myfilebrowserinfo
	stDvc, stAls, stPth, stNam	string
	stX, stY							string
endvar
	stDvc = blank()
	stAls = blank()
	stPth = blank()
	stNam = blank()
	if isAssigned(ASTFILESPEC) then
		stNam = ASTFILESPEC
	   ; split name into head and tail on last ":" if any
		if advMatch(stNam,"^(..):([^:]*)$",stX,stY) then
			stNam = stY	; found -- save tail as name
	      ; check head for leading ":"
			if advMatch(stX,":([^:]*)$",stY) then
				stAls = ":"+stY+":"	; found -- head must be BDE alias
			else
				stDvc = stX+":"	; not found -- head must be DOS device
			endif
		endif
		; split name into path and name on last "\" if any
		if advMatch(stNam,"^(..)\\\\([^\\\\]*)$",stX,stY) then
			stPth = stX+"\\"
			stNam = stY
		endif
	endif
	FBI.Title = DIALOGTITLE
	FBI.AllowableTypes = ALLOWEDTYPES
	FBI.SelectedType = SELECTEDTYPE
   ; BrowseOptCreatePrompt		  8192	\
   ; BrowseOptFileMustExist	  4096	 > unknown in vers 5
   ; BrowseOptNoNetButton		131072	/
	FBI.Options = 4096	{BrowseOptFileMustExist}
	FBI.FileFilters = stNam
	FBI.Alias = stAls
	FBI.Path = stDvc+stPth
	FBI.PathOnly = false
	FBI.NewFileOnly = false
	stNam = ""
	while filebrowser(stNam,FBI)
   	; v.5 sometimes prepends aliases to file name
		while advmatch(stNam,"^:[^:]*:(..)$",stY)
			stNam = stY
		endwhile
		stAls = FBI.alias
		if advMatch(stAls,":") then
			ASTFILESPEC = stAls+FBI.Path+stNam
		else
			ASTFILESPEC = ":"+stAls+":"+FBI.Path+stNam
		endif
		if isfile(ASTFILESPEC) then return true endif
		msgstop(ASTFILESPEC,"This file does not exist.\nPlease select another file.")
	endwhile
	return false
endmethod

 GETOPENSPEC =ф ; TOOLS ENVIRONMENT LIBRARY written by A. I. BREVELERI

method GETSAVESPEC( const DIALOGTITLE string, const ALLOWEDTYPES longint, 
						const SELECTEDTYPE longint, var ASTFILESPEC string ) logical
var
	FBI								myfilebrowserinfo
	stDvc, stAls, stPth, stNam	string
	stX, stY							string
endvar
	stDvc = blank()
	stAls = blank()
	stPth = blank()
	stNam = blank()
	if isAssigned(ASTFILESPEC) then
		stNam = ASTFILESPEC
	   ; split name into head and tail on last ":" if any
		if advMatch(stNam,"^(..):([^:]*)$",stX,stY) then
			stNam = stY	; found -- save tail as name
	      ; check head for leading ":"
			if advMatch(stX,":([^:]*)$",stY) then
				stAls = ":"+stY+":"	; found -- head must be BDE alias
			else
				stDvc = stX+":"	; not found -- head must be DOS device
			endif
		endif
		; split name into path and name on last "\" if any
		if advMatch(stNam,"^(..)\\\\([^\\\\]*)$",stX,stY) then
			stPth = stX+"\\"
			stNam = stY
		endif
	endif
	FBI.Title = DIALOGTITLE
	FBI.AllowableTypes = ALLOWEDTYPES
	FBI.SelectedType = SELECTEDTYPE
   ; BrowseOptCreatePrompt		  8192	\
   ; BrowseOptFileMustExist	  4096	 > unknown in vers 5
   ; BrowseOptNoNetButton		131072	/
	FBI.Options = 8192	;no effect in v.7 - 5/15/99 AIB
	FBI.FileFilters = stNam
	FBI.Alias = stAls
	FBI.Path = stDvc+stPth
	FBI.PathOnly = false
	FBI.NewFileOnly = true
	stNam = ""
	if filebrowser(stNam,FBI) then
   	; v.5 sometimes prepends aliases to file name
		while advmatch(stNam,"^:[^:]*:(..)$",stY)
			stNam = stY
		endwhile
		stAls = FBI.alias
		if advMatch(stAls,":") then
			ASTFILESPEC = stAls+FBI.Path+stNam
		else
			ASTFILESPEC = ":"+stAls+":"+FBI.Path+stNam
		endif
      ; since BrowseOptCreatePrompt does not work...
		if isfile(ASTFILESPEC) then
			if msgQuestion(ASTFILESPEC,"This file already exists.\nDo you want to overwrite it?")="Yes" then
				return true
			else
				return false
			endif
		else
			return true
		endif
	else
		return false
	endif
endmethod
 GETSAVESPEC >ч  ; TOOLS ENVIRONMENT LIBRARY written by A. I. BREVELERI

method MANUALDOC( const APPLNAME string )
	insertObject(VIEWEDIT,getAliasPath("toolspure")+"\\"+APPLNAME+".DOC",false)
	edit(VIEWEDIT,"Text Import Utility",0)
endmethod
 MANUALDOC ?ц  ; TOOLS ENVIRONMENT LIBRARY written by A. I. BREVELERI

method MANUALHTM( const APPLNAME string )
	insertObject(VIEWEDIT,getAliasPath("toolspure")+"\\"+APPLNAME+".HTM",true)
	edit(VIEWEDIT,"Text Import Utility",0)
endmethod
 MANUALHTM @m ; INSULTING BEHAVIOR MODULE
;
; Some error messages are simple enough to require only one text string.  But
; Windows message boxes display two text strings (title and body).  In this
; program, wherever a single-string message is wanted, the INSULTING BEHAVIOR
; MODULE is called to provide a random heckling remark for the otherwise
; unnecessary message box title.
;
; Well, this is the kind of thing that computer programmers think is funny.
;
; The insults are stored in the table "OSCULATE.DB".  To disable the insult
; module, either empty this table, or remove it from the directory aliased by
; ":toolspure:".  When the insult module is disabled, it will always return
; the string "OPERATOR ERROR".  You may modify the contents of this table to
; customize the remarks.  Please do not redistribute this application with
; insults that violate obscenity or pornography standards in your community.
;
; The meaning of the value in Schtick after opening this library is:
;	0				OSCULATE.DB does not exist in :toolspure: or is empty
;	1 or more	OSCULATE.DB exists and contains Schtick insults
;
method KVETCH() string
var VEY, TMP longint endvar
	if Schtick>0 then
		TMP = recNo(OY)
		VEY = TMP
		while VEY=TMP
			VEY = int(rand()*Schtick)+1
		endwhile
		moveToRecord(OY,VEY)
		return OY."Remark"
	else
		return "OPERATOR ERROR"
	endif
endmethod

 KVETCH A	 ;SHOW
{
--------------------------------------------------------------------------
; TOOLS ENVIRONMENT LIBRARY written by A. I. BREVELERI

method mouseRightDown(var eventInfo MouseEvent)
	if eventInfo.isPreFilter() then
		;// This code executes for each object on the form
      if libEnv.TOPICALHELP( eventInfo ) then disabledefault endif
		
	else
		;// This code executes only for the form
		
	endIf
endMethod
--------------------------------------------------------------------------
}
method TOPICALHELP( const eventInfo MouseEvent ) logical
var
   FF							form
   NN, OO					uiobject
   TOKENS					array [] string
   sThisFormName			string
   sTopicObjName			string
	XX, YY					string
	JJ							longint
   result					logical
endvar
	; find the help file
	if not isAssigned(gtcHelp) then
		if not gtcHelp.open(":toolspure:HELPTEXT.DB") then
      	errorshow()
      	return false
      endif
   endif
	; get the form object assigned name if any, else use form file name
	if self.Name="#FormData1" then
		FF.attach()
		splitFullFileName(upper(FF.getFileName()),XX,YY,sThisFormName,sTopicObjName)
   else
   	sThisFormName = self.Name
   endif
   ; get the topic object
	eventInfo.getTarget(OO)
   ; OO may be cloned -- find its class ancestor
   ; ...explicitly list the containership hierarchy
   sTopicObjName = OO.FullName
   sTopicObjName.breakApart(TOKENS,".")
   ; ...rebuild the full name from the hierarchy list, but replace
   ; each "Record" object with the first record in its container
   sTopicObjName = TOKENS[1]
   for JJ from 2 to size(TOKENS)
		NN.attach(sTopicObjName+"."+TOKENS[JJ])
      if NN.Class="Record" then
        	NN.attach(sTopicObjName)
         NN.attach(NN.First)
         while NN.Class<>"Record"
           	NN.attach(NN.Next)
         endwhile
      endif
		sTopicObjName = NN.FullName
   endfor
	; search containership hierarchy upward from topic object
	result = false
   while true
      if gtcHelp.qlocate(sThisFormName+"::"+sTopicObjName) then
			msginfo(gtcHelp."HelpCaption",gtcHelp."HelpMessage")
			result = true
         quitloop
		endif
      if not sTopicObjName.advMatch("^(..).[^.]*$",XX) then
         quitloop
      endif
		sTopicObjName = XX
   endwhile
	return result
endMethod

 TOPICALHELP,    |          b    ]                                                @  @      $                Я .    4 " D:\PDOXWIN\WORKING\PXTOOLS.FT >  џџџџ         ў 
     ў    ў                                   О=  V   Б   І=  Э  џџџџ                  К            Щ                   d                       џџџџ    Є                                                              73  4  Щ   С           	CONTAINER     ђ   С      џџџџБ               џџџџ            d  \  b  ACTIVE     >       џџџџБ               џџџџ            К  В      LASTMOUSECLICKED       \     џџџџБ               џџџџ              џ      SUBJECT     с  В     џџџџБ               џџџџ            b  Z      LASTMOUSERIGHTCLICKED     <  џ     џџџџБ               џџџџ                        SELF       Z     џџџџБ               џџџџ                	#LIBRARY1     Э  Є     џџџџБ  ?             џџџџ[   <      у      )          x      У/              џ              ї#  љ0        5  @        N   х  Ў  ў        b)                  O              n  и  ?
  ,  ю-        i                P          Ё  	(  *      т      /2     WINDOWSBORDERTHICKNESS   < ѓ   WINDOWSTITLEBARHEIGHT   ,Е   PARADOXMENUTOOLBARHEIGHT   Ш   DROPSHADOWOFFSETHORIZONTAL   Ш      DROPSHADOWOFFSETVERTICAL   Ш     MYFILEBROWSERINFO  Л         д                         џџџџЭ  a                            *  Ь      A                т  TITLE      V      ALLOWABLETYPES      "      SELECTEDTYPE      "  Е  OPTIONS      "      FILEFILTERS      V      ALIAS      V  ќ  PATH      V      PATHONLY      ы      NEWFILEONLY   	   ы  c   	   TITLE ALLOWABLETYPES SELECTEDTYPE OPTIONS FILEFILTERS ALIAS PATH PATHONLY NEWFILEONLY А!  MYSTRINGARRAY       8       V      73  VIEWDESK      V      GSTPROFILES      V    VIEWEDIT           
TCTOOLXENV   @  L  Н"  VIEWFORM     Щ      VIEWNAME     V      DIALOGCAPTION   $  V      VIEWDROP   @  Щ    OY   Р  L    SCHTICK     "      P5KEYS      Э     8      V          P7KEYS   L   њ     8      V          P5HORZ      '     8                P5VERT   М   T     8            ,  GTCHELP   є  L               џџџџЭ                                                                      GETWINDOWSCOLOR      "  #     а   METHOD_SELFV   COLORKEY"   DEFCOLOR             џџџџ  C4  ­	  W4                  Ч	          	      4      /4          METHOD_SELF    а      COLORKEY    V      DEFCOLOR    "                       џџџџЭ                                                                    PARSEFILENAME      ы  $     а   METHOD_SELFV   CASRCV   VADVCV   VAALSV   VAPTHV   VANAMV   VAEXT             џџџџщ	      А4          D      4              '      k4          4      METHOD_SELF     а  о4  CASRC    V      VADVC    V  З  VAALS    V      VAPTH    V      VANAM    V      VAEXT    V  и  с	               џџџџЭ                                                                  п  SHOWFORMATDIALOG           %     а   METHOD_SELF   TYPEKEYV   MYVERS             џџџџж    ќ5   5      *6          Ю5      5  т  џ  x5  65  5          METHOD_SELF    а      TYPEKEY      d5  MYVERS    V  ?
  Ю               џџџџЭ                                                                  Ќ  HELPMANUALDOC           &     а   METHOD_SELF             џџџџ8      А6                      6      l6  "      Х6              6  METHOD_SELF    а  ,  0               џџџџЭ                                                                      HELPMANUALHTM           '     а   METHOD_SELF             џџџџG      37                      	7      я6  1      H7              7  METHOD_SELF    а    ?               џџџџЭ                                                                      OPEN                  а   METHOD_SELFю   	EVENTINFO             џџџџV                              f          I                          METHOD_SELF    а      	EVENTINFO    ю    N               џџџџЭ                                                                      CLOSE                 а   METHOD_SELFю   	EVENTINFO             џџџџ                                        }                          METHOD_SELF    а      	EVENTINFO    ю  Ќ                 џџџџЭ                                                                      GETFILELIST      ы  (     а   METHOD_SELFV   DIALOGTITLE"   ALLOWEDTYPES"   SELECTEDTYPEV   ASTDIRECTORY    ASTFILELIST             џџџџН  d      F  )  Ь7  r7                       7          7      METHOD_SELF    а      DIALOGTITLE    V    ALLOWEDTYPES    "  і7  SELECTEDTYPE    "      ASTDIRECTORY    V  Е7  ASTFILELIST       п  Е               џџџџЭ                                                                      GETDIRECTORYSPEC      ы  )     а   METHOD_SELFV   DIALOGTITLE"   ALLOWEDTYPES"   SELECTEDTYPEV   
ASTDIRSPEC             џџџџХ  [      =     d8  
8  M8          y        8          68      METHOD_SELF    а      DIALOGTITLE    V      ALLOWEDTYPES    "      SELECTEDTYPE    "      
ASTDIRSPEC    V    Н               џџџџЭ                                                                      	TEMPLATES           *     а   METHOD_SELF             џџџџ                                                                    METHOD_SELF    а                   џџџџЭ                                                                  7  PROGRESSOPEN      ы  +     а   METHOD_SELF             џџџџЈ                                                                    METHOD_SELF    а  ѓ                  џџџџЭ                                                                  Џ&  PROGRESSCLOSE           ,     а   METHOD_SELF             џџџџЖ                                                                     METHOD_SELF    а  ў  Ў               џџџџЭ                                                                      PROGRESSSHOW      ы  -     а   METHOD_SELF             џџџџХ                                  8      Ў                          METHOD_SELF    а    Н               џџџџЭ                                                                      PROGRESSHIDE           .     а   METHOD_SELF             џџџџг                                          М                          METHOD_SELF    а    Ы               џџџџЭ                                                                      PROGRESSLABELS           /     а   METHOD_SELFV   	INCRLABELV   	DECRLABEL             џџџџс                                        №                      (  METHOD_SELF    а      	INCRLABEL    V      	DECRLABEL    V  )  й               џџџџЭ                                                                      PROGRESSVALUES           0     а   METHOD_SELF<   	INCRVALUE<   	DECRVALUE             џџџџK                                          Z      w                METHOD_SELF    а      	INCRVALUE    <      	DECRVALUE    <  7  C               џџџџЭ                                                                      PROGRESSSTEP           1     а   METHOD_SELF<   CHANGE             џџџџЕ  Ъ                                      ­                          METHOD_SELF    а      CHANGE    <  Ё  ­               џџџџЭ                                                                      PROGRESSINCR           2     а   METHOD_SELF             џџџџъ                                          г                          METHOD_SELF    а    т               џџџџЭ                                                                      
DIALOGOPEN      ы  3     а   METHOD_SELFV   FORMSPECЩ   FORMHAND             џџџџј                                  8!      !                          METHOD_SELF    а      FORMSPEC    V  !  FORMHAND    Щ  @  №               џџџџЭ                                                                      DIALOGCLOSE           4     а   METHOD_SELF             џџџџZ!                                          B"                          METHOD_SELF    а  N   R!               џџџџЭ                                                                      PROGRESSCAPTION           5     а   METHOD_SELFV   CAPTION             џџџџg"                                      #  c#                          METHOD_SELF    а      CAPTION    V  А!  _"               џџџџЭ                                                                  Н*  VERSION      "  6     а   METHOD_SELF             џџџџЁ#                                          $                          METHOD_SELF    а  Н"  #               џџџџЭ                                                                      	MODALOPEN      ы  7     а   METHOD_SELFV   FORMSPECЩ   FFVIEWV   WINTITLEЩ   FFDROP             џџџџЊ$  №8  &  ,9      Ж9          Z9  э%  Ј8  а%  9&  9  Т8  9          METHOD_SELF    а      FORMSPEC    V  9  FFVIEW    Щ      WINTITLE    V      FFDROP    Щ  ї#  Ђ$               џџџџЭ                                                                      
MODALCLOSE           8     а   METHOD_SELFЩ   FFVIEWЩ   FFDROP             џџџџY&      {'                              ј9  ^'  '                      METHOD_SELF    а      FFVIEW    Щ      FFDROP    Щ   %  Q&               џџџџЭ                                                                      	MODALHIDE           9     а   METHOD_SELFЩ   FFVIEWЩ   FFDROP             џџџџГ'      д(                              :  З(  ь(                      METHOD_SELF    а      FFVIEW    Щ      FFDROP    Щ  Џ&  Ћ'               џџџџЭ                                                                      PROFILEREAD      V  :     а   METHOD_SELFV   ASTKEYV   ASTDEF             џџџџ)      G*                      F:  Џ:  ,:  *  /*  :              [:  METHOD_SELF    а      ASTKEY    V  p:  ASTDEF    V  	(  )               џџџџЭ                                                                      PROFILEWRITE           ;     а   METHOD_SELFV   ASTKEYV   ASTVAL             џџџџg*      ;              Ѓ+      т:      Ш:  n+  +  !;              ї:  METHOD_SELF    а      ASTKEY    V      ASTVAL    V  b)  _*               џџџџЭ                                                                      GETOPENSPEC      ы  <     а   METHOD_SELFV   DIALOGTITLE"   ALLOWEDTYPES"   SELECTEDTYPEV   ASTFILESPEC             џџџџУ+  U-  Ѕ;  7-  -  М;  K;  s-              §,      `;          w;      METHOD_SELF    а      DIALOGTITLE    V      ALLOWEDTYPES    "      SELECTEDTYPE    "  ;  ASTFILESPEC    V  Н*  Л+               џџџџЭ                                                                      GETSAVESPEC      ы  =     а   METHOD_SELFV   DIALOGTITLE"   ALLOWEDTYPES"   SELECTEDTYPEV   ASTFILESPEC             џџџџ-  */  @<  /  я.  W<  ц;  H/              в.      ћ;          <      METHOD_SELF    а      DIALOGTITLE    V      ALLOWEDTYPES    "      SELECTEDTYPE    "  )<  ASTFILESPEC    V  ,  -               џџџџЭ                                                                   %  	MANUALDOC           >     а   METHOD_SELFV   APPLNAME             џџџџm/                              0          d0                          METHOD_SELF    а      APPLNAME    V  ю-  e/               џџџџЭ                                                                      	MANUALHTM           ?     а   METHOD_SELFV   APPLNAME             џџџџЃ0                              З1          1                          METHOD_SELF    а      APPLNAME    V  У/  0               џџџџЭ                                                                      KVETCH      V  @     а   METHOD_SELF             џџџџй1                                  <      М2              <          METHOD_SELF    а  љ0  б1               џџџџЭ                                                                      TOPICALHELP      ы  A     а   METHOD_SELF   	EVENTINFO             џџџџс2  f=      z=                  ј3      =  л3      г<  3=  ч<  =  Ћ<  METHOD_SELF    а      	EVENTINFO      /2  й2      WW  HџџџV      XX  dџџџV      YY  џџџV      ZZ  џџџV  [  STDVC  ,џџџV  Ч4  STALS  HџџџV    STPTH  dџџџV     STNAM  џџџV  r  STEXT  џџџV  ѓ4  STX  єўџџV  5  STY  џџџV      CC  шўџџы      CALLFORM  8џџџЩ      OOSHADOW  дўџџБ      XX  Єўџџ"  >6  YY  Аўџџ"      WW  Мўџџ"  P5  HH  Шўџџ"  З5  DESKX  ўџџ"      DESKY  ўџџ"  х5  CALLX  tўџџ"      CALLY  ўџџ"  6  TEMPX  \ўџџ"      TEMPY  hўџџ"      CC  Pўџџы  U6  DROPX  Шќџџа      DROPY  |ќџџа      CURRFORM  8џџџЩ      DVC  ЌўџџV  к6  ALS  ШўџџV      PTH  фўџџV      NAM   џџџV      EXT  џџџV      CURRFORM  8џџџЩ      DVC  ЌўџџV  ]7  ALS  ШўџџV      PTH  фўџџV      NAM   џџџV      EXT  џџџV      FBI  џџџ Л      STDVC  DџџџV      STALS  `џџџV      STPTH  |џџџV  с7  STX  џџџV      STY  (џџџV      II   џџџ"      FBI  џџџ Л      STDVC  DџџџV      STALS  `џџџV      STPTH  |џџџV  y8  STX  џџџV      STY  (џџџV      FORMHAND  8џџџЩ  &  CALLFORM  8џџџЩ      OOSHADOW  дўџџБ      XX  Єўџџ"  Ъ9  YY  Аўџџ"      WW  Мўџџ"  м8  HH  Шўџџ"  C9  DESKX  ўџџ"      DESKY  ўџџ"  q9  CALLX  tўџџ"      CALLY  ўџџ"  9  TEMPX  \ўџџ"      TEMPY  hўџџ"      CC  Pўџџы  с9  DROPX  D§џџа      DROPY  Шќџџа      CALLFORM  8џџџЩ      CALLFORM  8џџџЩ      CURRFORM  8џџџЩ      DVC  ЌўџџV  :  ALS  ШўџџV      PTH  фўџџV      NAM   џџџV      EXT  џџџV      STVALUE  ўџџV      CURRFORM  8џџџЩ      DVC  ЌўџџV  6;  ALS  ШўџџV      PTH  фўџџV      NAM   џџџV      EXT  џџџV      FBI  џџџ Л      STDVC  (џџџV      STALS  DџџџV      STPTH  `џџџV      STNAM  |џџџV  б;  STX  №ўџџV      STY  џџџV      FBI  џџџ Л      STDVC  (џџџV      STALS  DџџџV      STPTH  `џџџV      STNAM  |џџџV  l<  STX  №ўџџV      STY  џџџV      VEY   џџџ"      TMP  Ќџџџ"  П<  FF  8џџџЩ      NN  pўџџБ      OO  дўџџБ  R=  TOKENS  8ўџџ џ<     8       V          STHISFORMNAME  ўџџV      STOPICOBJNAME   ўџџV      XX  Ш§џџV      YY  ф§џџV      JJ  М§џџ"      RESULT  А§џџы       Ч  Ж    Ђ                    r  џ                                                                                                                     r     џ    йG  Ў      
   y   B  О=                                                                                                                                                                                     шA  B  r !             Ї  Ї  к                         Б                   #                          $  Ђ  Ђ  Щ                  %  k  k  	                  &  љ  љ  з                   '  а  а  з                   (  2  2  і                  )  (  (  $                  *  L  L  6                   +      -                  ,  Џ  Џ  <                   -  ы  ы  Ь                   .  З  З  <                   /  ѓ  ѓ  ђ                   0  х   х   ђ                   1  з!  з!  8                  2  #  #  6                  3  E$  E$  ы                   4  0%  0%  F                   5  v%  v%  E                   6  Л%  Л%  I                   7  &  &  ж                  8  к+  к+                    9  о,  о,  љ                   :  з-  з-  @                  ;  /  /  ђ                   <  	0  	0  х                  =  ю4  ю4  1                  >  :  :  и                   ?  ї:  ї:  и                   @  Я;  Я;  x                  A  G=  G=  Ё                        йG  щ        шђџџџ    Ь        	  Hџџџ <  * Hџџџ,џџџ X   t     
 A,џџџ* Hџџџ <  % џџџ    џџџHџџџ   dџџџџџџџџџ   ! n   џ^   ьўџџџџџdџџџ џџџ џџџџџџ  џџџјўџџџџџ јўџџ Зьўџџ   (Ј "         џ   
   (Ј          l   ьўџџ    јўџџ     џџџ    џџџ    џџџ    Hџџџ     џџџ    ,џџџ    dџџџ    џџџ    џџџ              ш\ўџџ     T       3  ,џџџЈўџџ  Јўџџ*t HџџџЈўџџ  Јўџџ*t dџџџЈўџџ  Јўџџ*t џџџ   
* џџџЈўџџ  Јўџџ*t шўџџ Ќ  *t ўџџџџџ И  єўџџџџџ   !    џџџџџџ* ўџџєўџџ д  џџџ   ! K   ,џџџўџџџџџ &ўџџ №  %dўџџ(* Hџџџџџџ* шўџџ   *t    ,џџџєўџџ* Hџџџєўџџ* ўџџџџџ   єўџџџџџ   !    dџџџєўџџ* џџџџџџ* ўџџџџџ 4  єўџџџџџ   !    џџџєўџџ* џџџџџџ*    
,џџџ*    
Hџџџ*    
dџџџ*    
џџџ*    
џџџ* шўџџ$   (t          u   єўџџ    џџџ    ,џџџ    dўџџ    Hџџџ    ўџџ    dџџџ    ўџџ    џџџ    џџџ    Јўџџ    шўџџ              шћџџ    Ј      $    $ўџџ4ўџџ   
 P   P   4ўџџ $ўџџ X  %ўџџ г     
 P  %ўџџhї    ўџџ    `    ўџџ&є§џџ№   ш§џџ  &Aш§џџ     ЄўџџАўџџМўџџШўџџ  ЄўџџЄўџџМўџџ |  %м§џџд%а§џџ4   %Ф§џџм*Ј АўџџАўџџШўџџ |  %м§џџд%а§џџ4   %Ф§џџм*Ј ўџџ    ўџџўџџ    `   ўџџ"  ўџџ    `          Ј   А   И   ўџџ&ўџџ№    ўџџ  &A ўџџq      ЄўџџАўџџМўџџШўџџ >Єўџџ|§џџ§џџ Р  Єўџџ Ш  %м§џџd а  %а§џџd c§џџ  |§џџ*Ј Аўџџ|§џџ§џџ Р  Аўџџ Ш  %м§џџd и  %а§џџd р  %Ф§џџd ш  %p§џџd c§џџ  |§џџ*Ј Мўџџ      
(*Ј Шўџџ М     
(*Ј l§O   ўџџ8џџџ Uўџџўџџдўџџ8џџџ №  %§џџP hўџџPўџџ   *t    Pўџџ Ќ  *t    l§Pўџџ*      ўџџўџџ\ўџџhўџџ >ўџџ8џџџ Uўџџ8џџџtўџџўџџ\ўџџhўџџ  ШќџџЄўџџўџџ Ш  %м§џџdtўџџ%а§џџ4 Ш  %Ф§џџd%p§џџЌ   %Мќџџd*t |ќџџАўџџўџџ Ш  %м§џџd и  %а§џџd р  %Ф§џџdўџџ%p§џџ4 Ш  %Мќџџd и  %pќџџd%dќџџЌ   %Xќџџd*t Pўџџ Ќ  *t дўџџ    Hќџџ       Hќџџ)8дўџџ   HќџџШќџџ|ќџџ Hќџџ)8дўџџ   %§џџDHќџџШќџџ|ќџџ Hќџџ%ўџџH   дўџџ    8ќџџМўџџШўџџ 8ќџџ)8дўџџ    %§џџDHќџџМўџџШўџџ Hќџџ%ўџџH!   дўџџ2      )8Pўџџ   *t Pўџџ&ўџџ№Д   ўџџ @      8  Єўџџ   %м§џџdАўџџ   %а§џџdМўџџШўџџ ўџџ& ўџџ№   є§џџ  &Aє§џџR   P   HA    > P   HA @   : P   HA    > P   HA    >    D  %§џџPй      )8ўџџ    ўџџўџџ `        
(%4ўџџ( |  %ќџџ( Ќ   ДAўџџќ   ўџџ @   ўџџ      ќќ   ўџџ    ўџџ      ќќ%   8џџџ №  %§џџP2    Ќ  )8      ќ  ўџџ       Tўџџ&ўџџ№T    ўџџ    `          Ј   А   И    ўџџ&є§џџ№   ш§џџ  &Aш§џџ       >    D  %§џџPй      )8ўџџ    ўџџ    HAўџџ Д   L     
(%4ўџџ( а  %ќџџ( Ќ   ДAўџџ    $ M  Ф§џџ    Аўџџ    а§џџ    ќџџ    м§џџ    Мўџџ    ш§џџ    є§џџ     ўџџ    8ќџџ    Hќџџ    Шўџџ    Xќџџ    dќџџ    pќџџ    |ќџџ    Мќџџ    §џџ    Шќџџ    ўџџ    ўџџ    p§џџ    8џџџ    $ўџџ    4ўџџ    |§џџ    §џџ    дўџџ    Pўџџ    \ўџџ    hўџџ    tўџџ    ўџџ    ўџџ    ўџџ    Єўџџ              шђџџ    4       e    ўџџ8џџџ U ўџџ ўџџ,ўџџ8џџџ *ўџџЌўџџШўџџфўџџ џџџџџџ$$, џџџ$>     Q   ўџџ     ўџџ    Ќўџџ    Шўџџ    фўџџ     џџџ    џџџ    8џџџ              ш.ёџџ    4       e    ўџџ8џџџ U ўџџ ўџџ,ўџџ8џџџ *ўџџЌўџџШўџџфўџџ џџџџџџ$$, џџџ$?     Q   ўџџ     ўџџ    Ќўџџ    Шўџџ    фўџџ     џџџ    џџџ    8џџџ              шW№џџ    h        o  Ќџџџ     џџџ ь   &џџџ   %tџџџ(*     P  ( $  *  L   P  ( $  *     P  ( @  *Ќ  М   P  ( H  *Ќ     |  ( P  *  L   |  ( P  *     |  ( l  *Ќ  М   |  ( t  *Ќ     |  (   *  L   |  (    *     |  ( М  *Ќ  М   |  ( Ф  *Ќ     Ь  ( д  *  L   Ь  ( №  *     Ь  (   *Ќ  М   Ь  (   *Ќ       ( $  *  L     ( $  *       ( @  *Ќ  М     ( H  *Ќ hџџџ Р   P   hџџџ7   \џџџ Р   \џџџ   Pџџџ Р   Pџџџ*Ј        Р  *Ј      ?   Pџџџ    \џџџ    hџџџ    tџџџ    Ќџџџ    џџџ                
  + ш}эџџ             j   Ќџџџ Јџ   џџџ @   џџџ      Јџџ   џџџ    џџџ      џ        џџџ    Ќџџџ                
  + шЬьџџ    Є       ы  єўџџ   
 єўџџ   |џџџ   
* єўџџ,   
 l  %иўџџ(   
   
|џџџ$)&Ьўџџ№    Ќ      (t g  Dџџџўџџ  ўџџ*t `џџџўџџ  ўџџ*t єўџџ|џџџ   џџџ(џџџ   ! z   |џџџ(џџџ* єўџџџџџ Є  (џџџ   ! -   `џџџ Р  (џџџ%иўџџ( Р  %pўџџ(*    Dџџџџџџ Р  %иўџџ(* џџџ P  И   
 м  %иўџџ(* џџџ |  И   
*Ј џџџ |  И   
*Ј џџџ Ь  И ј  *Ј џџџ   И <  * џџџ X  И`џџџ* џџџ  	  ИDџџџ|џџџ%иўџџ(* џџџ 	  И Ќ  *t џџџ 	  И Ќ  *t    
 єўџџ   
џџџ 0Aєўџџk  `џџџџџџ X  И* єўџџ`џџџ Р     ! *      
`џџџџџџ  	  И%иўџџ(* ?      
 Р  `џџџ%иўџџ( Р  %pўџџ(џџџ  	  И%Tўџџ(*  џџџ P  *Ј ўџџ   
 ўџџўџџ(t  џџџўџџ" Ou   џџџ   
 џџџ,* єўџџџџџ 	  (џџџ   !    џџџ(џџџ* Щџџџ   
 џџџ,џџџ*  џџџ'Ш xџџџ       (t        Ќ      (t          ъ   иўџџ    ўџџ    Tўџџ    џџџg   єўџџ     џџџ    џџџ    (џџџ    pўџџ    Dџџџ    `џџџ    |џџџ    ўџџ    Ьўџџ             	   TITLE ALLOWABLETYPES SELECTEDTYPE OPTIONS FILEFILTERS ALIAS PATH PATHONLY NEWFILEONLY  шжчџџ    L       4  DџџџЬўџџ  Ьўџџ*t `џџџЬўџџ  Ьўџџ*t |џџџЬўџџ  Ьўџџ*t Рўџџ   
 Рўџџё   |џџџ   
* Рўџџ|џџџ   џџџ(џџџ   ! z   |џџџ(џџџ* Рўџџџџџ Є  (џџџ   ! -   `џџџ Р  (џџџ%Єўџџ( Р  %ўџџ(*    Dџџџџџџ Р  %Єўџџ(* Рўџџ|џџџ 4	  џџџ   !    |џџџџџџ №  %Єўџџ(* џџџ P  И   
* џџџ |  И   
*Ј џџџ |  И   
*Ј џџџ Ь  И Р  *Ј џџџ   И <  * џџџ X  И`џџџ* џџџ  	  ИDџџџ|џџџ%Єўџџ(* џџџ 	  И   *t џџџ 	  И Ќ  *t џџџ <  * Рўџџџџџџџџ /AРўџџЗ   `џџџџџџ X  И* Рўџџ`џџџ Р     ! *      
`џџџџџџ  	  И%Єўџџ(* ?      
 Р  `џџџ%Єўџџ( Р  %ўџџ(џџџ  	  И%lўџџ(*       (t        Ќ     (t          Я   lўџџ    џџџ^   ўџџ    Єўџџ    Рўџџ    Ьўџџ    џџџ    (џџџ    Dџџџ    `џџџ    |џџџ             	   TITLE ALLOWABLETYPES SELECTEDTYPE OPTIONS FILEFILTERS ALIAS PATH PATHONLY NEWFILEONLY  шВуџџ                       	             ш|уџџ            п  Дџ   Јџџџ @   Јџџџ      ДџЈџџџ P	   l	   F$Јџџџ&џџџ№#   џџџ  &Aџџџ Ќ     (t `  Јџџџ @   l	   Јџџџ&џџџ№#   џџџ  &Aџџџ Ќ     (t   Јџџџ @   Јџџџ $   	  * Јџџџ @   Јџџџ @   Є	  %,џџџT P  *t  @   Р	  %,џџџT м	  *t  @   ј	  %,џџџT Р  *t Јџџџ @   Јџџџ @   Є	  %,џџџT |  *t  @   Р	  %,џџџT 
  *t  @   ј	  %,џџџT 0
  *t Јџџџ @   ^Јџџџ      (t          -   ,џџџ    џџџ    џџџ    Јџџџ              шOсџџ                 ,$4      	             шсџџ           ~   ,џџџ, 8
  8џџџ$3E   8џџџ T
  %ШўџџPA й $   p
  %Ќўџџ()8      (t        Ќ     (t          -   Ќўџџ    Шўџџ    ,џџџ    8џџџ              шGрџџ                 ,$4      	             шрџџ    p        Ж   Ќџџџ @   P     !     @   Р	  %HџџџT   
*t Ќџџџ @   ^ЌџџџЌџџџ @   |     !     @   Р	  %HџџџT   
*t Ќџџџ @   ^Ќџџџ P   HA        Ќџџџ    Hџџџ              шпџџ    p        Ж   Ќџџџ @   P     !     @   ј	  %HџџџT   
*t Ќџџџ @   ^ЌџџџЌџџџ @   |     !     @   ј	  %HџџџT   
*t Ќџџџ @   ^Ќџџџ P   HA        Ќџџџ    Hџџџ              ш'оџџ           ъ   Ќџџџ @   |     ! 6    @   ј	  %HџџџT @   ј	  %фўџџT   
%Єўџџ*t Ќџџџ @   ^ЌџџџЌџџџ @   P     ! 6    @   ј	  %HџџџT @   ј	  %фўџџT   
%Єўџџ *t Ќџџџ @   ^Ќџџџ P   HA     -   Єўџџ    Hџџџ    Ќџџџ    фўџџ              шямџџ           ш   Ќџџџ @   |     ! 5    @   ј	  %HџџџT @   ј	  %фўџџT 
  %Єўџџ*t Ќџџџ @   ^ЌџџџЌџџџ @   P     ! 5    @   ј	  %HџџџT @   ј	  %фўџџT 
  %Єўџџ *t Ќџџџ @   ^Ќџџџ P   HA     -   Єўџџ    фўџџ    Hџџџ    Ќџџџ              шЙлџџ    X        І   Ќџџџ,   
       @  $7& џџџ№    Ќ     (t Z   Ќџџџ   
   Х   %`џџџD TЌџџџ& џџџ№    Ќ     (t          (t          $   `џџџ     џџџ    Ќџџџ              шЮкџџ                 ,    @  $8      	             шкџџ                  $     
*       	             шCкџџ                  
     (Ј           	             шњйџџ    @         Pўџџ   *t Dўџџ   
 DўџџD   8ўџџ   
   
 T8ўџџ$      
 :   
 >Pўџџ Ќ  *t Pўџџh   Dўџџ   
   
 Dўџџ&8ўџџ№#   ,ўџџ  &A,ўџџ Ќ     (t Ш     
   
Х   %ь§џџD*t    
ЄўџџАўџџМўџџШўџџ  ш§O   Dўџџ8џџџ UDўџџDўџџдўџџ8џџџ №  %§џџP hDўџџPўџџ   *t    Pўџџ Ќ  *t    ш§Pўџџ*      ўџџўџџ\ўџџhўџџ >Dўџџ8џџџ UDўџџ8џџџtўџџўџџ\ўџџhўџџ  D§џџЄўџџўџџ Ш  %8§џџdtўџџ%,§џџ4 Ш  % §џџd%§џџЌ   %§џџd*t ШќџџАўџџўџџ Ш  %8§џџd и  %,§џџd р  % §џџdўџџ%§џџ4 Ш  %§џџd и  %Мќџџd%АќџџЌ   %Єќџџd*t Pўџџ Ќ  *t дўџџ    ќџџ       ќџџ)8дўџџ   ќџџD§џџШќџџ ќџџ)8дўџџ   %ь§џџDќџџD§џџШќџџ ќџџ%DўџџH   дўџџ    ќџџМўџџШўџџ ќџџ)8дўџџ    %ь§џџDќџџМўџџШўџџ ќџџ%DўџџH!   дўџџ2      )8Pўџџ   *t Pўџџ&Dўџџ№Ц   8ўџџ   
    8  Єўџџ   %8§џџdАўџџ   %,§џџdМўџџШўџџ 8ўџџ&,ўџџ№#   xќџџ  &Axќџџ Ќ     (t \    P   HA   
 > P   HA   
 : P   HA   
 > P   HA      (t             xќџџ    ќџџ    ќџџ    Єќџџ    Аќџџ    Мќџџ    Шќџџ    §џџ    §џџ     §џџ    ,§џџ    8§џџ    D§џџ    дўџџ    ь§џџ    ,ўџџ    8ўџџ    Dўџџ    Pўџџ    \ўџџ    hўџџ    tўџџ    ўџџ    ўџџ    ўџџ    Єўџџ    Аўџџ    Мўџџ    Шўџџ    8џџџ    §џџ              ш$дџџ            Ж   4џ:   (џџџ8џџџ U(џџџ8џџџ №  %ФўџџP2    Ќ  )8      4џ(џџџ   
 l(џџџ   Иўџџ   
 Иўџџ(џџџ   
 l(џџџ   Иўџџ   
 Иўџџ     -   Иўџџ    8џџџ    (џџџ    Фўџџ              ш гџџ            Ћ   4џ:   (џџџ8џџџ U(џџџ8џџџ №  %ФўџџP2    Ќ  )8      4џ(џџџ   
 l(џџџ   Иўџџ   
 Иўџџ(џџџ   
 l(џџџ      
 <     -   Иўџџ    8џџџ    (џџџ    Фўџџ              ш'вџџ    P      	 Х   ўџџ8џџџ Uўџџўџџ,hўџџ8џџџ *hўџџЌўџџШўџџфўџџ џџџџџџ$$ўџџhўџџ     џџџ   
 Ahўџџ* ўџџ <  %ўџџP      
   (       ўџџ   (         	 Z   hўџџ    ўџџ    ўџџ    Ќўџџ    Шўџџ    фўџџ     џџџ    џџџ    8џџџ              шчаџџ    4           ўџџ8џџџ U ўџџ ўџџ,ўџџ8џџџ *ўџџЌўџџШўџџфўџџ џџџџџџ$$ ўџџ     џџџ   
   
 A ўџџ     Q   ўџџ     ўџџ    Ќўџџ    Шўџџ    фўџџ     џџџ    џџџ    8џџџ              шѕЯџџ           к  (џџџАўџџ  Аўџџ*t DџџџАўџџ  Аўџџ*t `џџџАўџџ  Аўџџ*t |џџџАўџџ  Аўџџ*t Єўџџ   
 Єўџџ  |џџџ   
* Єўџџ|џџџ   №ўџџџџџ   ! z   |џџџџџџ* Єўџџ№ўџџ Є  џџџ   ! -   Dџџџ Р  џџџ%ўџџ( Р  %lўџџ(*    (џџџ№ўџџ Р  %ўџџ(* Єўџџ|џџџ Є
  №ўџџџџџ   ! )   `џџџ№ўџџ №  %ўџџ(* |џџџџџџ* џџџ P  И   
* џџџ |  И   
*Ј џџџ |  И   
*Ј џџџ Ь  И ј  *Ј џџџ   И|џџџ* џџџ X  ИDџџџ* џџџ  	  И(џџџ`џџџ%ўџџ(* џџџ 	  И Ќ  *t џџџ 	  И Ќ  *t |џџџ <  * Єўџџ|џџџџџџ /AЄўџџ2  `ўџџ|џџџ 	  џџџ   !    |џџџџџџ* ЩџџџDџџџџџџ X  И* ЄўџџDџџџ Р     ! 7      
Dџџџџџџ  	  И%ўџџ(|џџџ%lўџџ(* L      
 Р  Dџџџ%ўџџ( Р  %lўџџ(џџџ  	  И%Dўџџ(|џџџ%(ўџџ(* Єўџџ   
 %=Єўџџ         (t (      
 Р
   JAАўџџ Ќ     (t          ъ   |џџџ    (ўџџ    Dўџџ    `ўџџ    џџџ^   lўџџ    ўџџ    Єўџџ    Аўџџ    №ўџџ    џџџ    (џџџ    Dџџџ    `џџџ             	   TITLE ALLOWABLETYPES SELECTEDTYPE OPTIONS FILEFILTERS ALIAS PATH PATHONLY NEWFILEONLY  шЫџџ           &  (џџџАўџџ  Аўџџ*t DџџџАўџџ  Аўџџ*t `џџџАўџџ  Аўџџ*t |џџџАўџџ  Аўџџ*t Єўџџ   
 Єўџџ  |џџџ   
* Єўџџ|џџџ   №ўџџџџџ   ! z   |џџџџџџ* Єўџџ№ўџџ Є  џџџ   ! -   Dџџџ Р  џџџ%ўџџ( Р  %lўџџ(*    (џџџ№ўџџ Р  %ўџџ(* Єўџџ|џџџ Є
  №ўџџџџџ   ! )   `џџџ№ўџџ №  %ўџџ(* |џџџџџџ* џџџ P  И   
* џџџ |  И   
*Ј џџџ |  И   
*Ј џџџ Ь  И м
  *Ј џџџ   И|џџџ* џџџ X  ИDџџџ* џџџ  	  И(џџџ`џџџ%ўџџ(* џџџ 	  И Ќ  *t џџџ 	  И   *t |џџџ <  * Єўџџ|џџџџџџ /AЄўџџ~  `ўџџ|џџџ 	  џџџ   !    |џџџџџџ* ЩџџџDџџџџџџ X  И* ЄўџџDџџџ Р     ! 7      
Dџџџџџџ  	  И%ўџџ(|џџџ%lўџџ(* L      
 Р  Dџџџ%ўџџ( Р  %lўџџ(џџџ  	  И%Dўџџ(|џџџ%(ўџџ(* Єўџџ   
 %=Єўџџ\   ўџџ   
 ф
   KAўџџ    %`ўџџP         (t H       Ќ     (t 0            (t        Ќ     (t          ъ   `џџџ    |џџџ    (ўџџ    Dўџџ    `ўџџ    џџџU   lўџџ    ўџџ    Єўџџ    Аўџџ    №ўџџ    џџџ    (џџџ    Dџџџ             	   TITLE ALLOWABLETYPES SELECTEDTYPE OPTIONS FILEFILTERS ALIAS PATH PATHONLY NEWFILEONLY  шпХџџ    |           <џџџ   џџџ    &џџџ №  %џџџ(   
%dџџџ( 8  %Hџџџ( Ќ   <џџџ<џџџ    T   Р   <џџџ     6   џџџ    <џџџ    Hџџџ    џџџ    dџџџ              шХџџ    |           <џџџ   џџџ    &џџџ №  %џџџ(   
%dџџџ( p  %Hџџџ(    <џџџ<џџџ    T   Р   <џџџ     6   <џџџ    Hџџџ    џџџ    dџџџ    џџџ              ш/Фџџ    Ф       	 §       Р  %џџџHЧ   Ќџџџџџџ Р   vџџџ*Ј  џџџЌџџџ*Ј  џџџЌџџџ%џџџ\F    џџџ`џџџxџџџ  bxџџџ   %hџџџ4  `џџџ P  %Xџџџp*Ј Ѓџџџџџџ Р   џџџ џџџ Р     %єўџџT   (        Ј     (         	 Z   єўџџ     џџџ    Ќџџџ    Xџџџ    `џџџ    hџџџ    xџџџ    џџџ    џџџ              шЗТџџ    h         Є§џџ є   }Є§џџ&§џџ№I   §џџ є   Ф   §џџ&§џџ№#   t§џџ  &At§џџ Ќ     (t (  §џџ#   %аќџџD р  %Є§џџHV   §џџ8џџџ U§џџќџџДќџџ8џџџ *Дќџџ ќџџШ§џџф§џџўџџ ўџџ =   ўџџ§џџ#   %аќџџD*t    
дўџџ , ўџџдўџџе   %аќџџD*t  ўџџ8ўџџ ќ    ўџџ8ўџџ P  (* М§џџ |  *Ј аќџџ8ўџџ аќџџXќџџ(t М§џџXќџџ" O  Є§џџpўџџ ўџџ ќ  %Дќџџ(8ўџџМ§џџ,%ќџџ( iЄ§џџpўџџ;   %аќџџD   %Є§џџH   §џџpўџџ ўџџ i§џџЄ§џџpўџџpўџџ@   %аќџџD iЄ§џџpўџџ;   %аќџџD   %Є§џџ,   §џџpўџџpўџџ=   %ќџџD i§џџАџџџ ўџџpўџџе   %аќџџD*t М§џџ'Ш вўџџА§џџ Ќ  *t    Й   Є§џџ є  ўџџ 4  %Дќџџ( ўџџ%ќџџ(   ! <    є   P  %ДћџџT є   l  %PћџџT IAА§џџ   *t D   Є§џџ ўџџ   Ш§џџ   ! &§џџ№       ўџџШ§џџ* =џџџА§џџ   (t          т   Pћџџ    Ш§џџ    Дћџџ    ф§џџ     ўџџ    ўџџ    ќџџ    8ўџџ   Xќџџ    дўџџ    ќџџ    Дќџџ    §џџl   аќџџ    8џџџ    t§џџ    §џџ    §џџ    pўџџ    §џџ    Є§џџ    А§џџ    М§џџ                 SELF  шОџџ         y     шњНџџ         y Й    <  l  7  P  2  4  -    (  ќ  #  р    Ф    Ј        p  
  T    8       ћ     і  ф
  ё  м
  ь  Р
  х  Є
  р  
  л  
  д  p
  е  T
  а  8
  Ы  0
  Ц  
  П  ј	  К  м	  Е  Р	  А  Є	  Ћ  	  І  l	  Ё  P	    4	    	    	    	     	    ј  x  м  q  Р  l  Є  g    b  l  ]  P  X  H  S  @  L  $  E    @    9    2  №  +  д  &  Ь  !  Ф    М             |    t  ћ  l  є  P  э  H  ш  @  с  $  к    е  ь  а  а  Ы  Д  Ц    С  |  М  `  З  D  В  8  ­    Ј    Ѓ      №    ш    р    и    а  {  Ш  t  Р  m  И  f  А  _  Ј  X     Q    J    E    >  |  7  `  0  X  +  P  $  4            №    д  	  И    Ќ  џ    њ  t  ѕ  X  №  <  ы  є      М  н    й  L  е    б        Р      @      $                  @                      >    @   ?   >   =   <   ;   :   9   8   7   6   5   4   3   2   1     0   /   ш        џ?.   -   ,   d +   *   )   (   '   &   %   $   #   "   	    !                   P     К       рЈ       Иш   о                            @     2 Ш    Z ,<   "D    Ф	я 
     	                                                  0 WIN.INIcolors.^[ 	]*([^ 	]+)[ 	]+([^ 	]+)[ 	]+([^ 	]+)[ 	]*$^(..:)([^:]*)$
(:[^:]+:)$\^(..\\)([^\\]*)$^(..)(.[^.]*)$:toolspure:TOOLSENW	BOXSHADOW:toolspure:TOOLSENUDUMMY{F6}fff~~                %Form Design : :toolspure:TOOLSENW.fsl3{F6}r+{tab}{right}{right}{right}{right}{right}{tab}c	toolsuser\PROFILES.INIndt~ttt~sl:toolspure:OSCULATE.DB (dir)^(..):([^:]*)$	:([^:]*)$    : (list)^:[^:]*:(..)$^(..)\\[^\\]*$:toolspure:TOOLSENV.DB:toolstemp:TOOLXENV.DB	OperationSliceLabel	COMPLETEDValue	REMAINING:toolspure:TOOLSENVGRFPROGRESS in Progress^(..)\\([^\\]*)$             5This file does not exist.
Please select another file.6This file already exists.
Do you want to overwrite it?Yes	toolspure.DOCText Import Utility.HTMRemarkOPERATOR ERROR:toolspure:HELPTEXT.DB
#FormData1.Record::HelpCaptionHelpMessage           ^(..).[^.]*$   