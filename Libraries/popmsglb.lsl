MZP      џџ  И       @                                      К Д	Э!ИLЭ!This program must be run under Microsoft Windows.
$            NE

     	                @ P ф              *  P +  q       - 0    .0    /70         fN 0         Д 0         ЕЮ0           0         n 0    	     њ0         , 0    ", 0    *, 0    ., 0    7, 0    :, 0    A, 0    I, 0    T, 0	    h, 0
    }, 0    , 0    І, 0    П, 0    з, 0    ф, 0    ђ, 0     - 0    - 0      popmsglb  LIBENTRY  WEP             И ЫИ Ы                                        џBorland Standard File           ў         @   |              ў ~ ў      @       	ў               ў              ў               ў               ў               ў F Library   Form   UIManager   UIContainer   UIObject   	ў   џџџџџџАfT                                             open+ close+ canArrive2 arrive2 setFocus+ canDepart2 removeFocus+ depart2 mouseEnter, mouseExit, mouseMove, mouseDown, mouseUp, mouseDouble, mouseRightDown, mouseRightUp, mouseRightDouble, keyPhysical- keyChar- action. menuAction/ timer4 pushButton+ changeValue0 calcField+ run+ newValue+ proc+ error3 status1 mouseClick, init+ Uses Type Var Const Proc cmCallPopup cmPopupSmallFormOnTop cmGlobalAlloc cmGlobalFree cmPopupSmallOpenForm cmPopupSmallArriveForm cmKeycoddialogbasis cmPopupSmallCloseFocusButPushButton cmPopupSmallTimer cmPopupSmallTextMouseIn cmFormMainPreviewTextMouseUp cmIsValidUrl cmLoadCursor cmPlayWavFile cmLoadBitmapToClipboard cmKeycoddialogspecial cmFormMainReadIni cmFormMainSaveIni cmReadMultilineString cmPickColorOutBitmap cmPickColorOfScreen cmLoadIcon cmFormMainOpen cmFormMainPreviewMouseIn cmFormMainPreviewTextMouseIn cmPopupSmallTextMouseUp cmFormMainResize cmFormMainMaximize cmFormMainMaximizeGet cmShowHelpFile cmCodeCreate cmTextStyle cmRightClickField cmLoadString cmSaveBitmapOutOfDllToFile cmGetWorkArea cmPopupSmallPlaySound cmPopupSmallPopupStart cmPopupSmallPopupEnd cmPopupSmallClose cmPopupSmallWhileOpen cmPopupSmallPopdownStart cmPopupSmallPopdownEnd cmPopupSmallTransparentStart cmPopupSmallAtOnceStart cmPopupSmallFormMouseDown cmPopupSmallTransparentEnd ў%[ џ[џџ                   U  b   Z  џџ2 #42 method cmCallPopup(stfieldModal string,
                    stfieldPopupStyle string,
                    stfieldDisplayStyle string,
                    stfieldShowCloseButton string,
                    stfieldSoundName string,
                    stfieldTimerWaiting string,
                    stfieldSpeed string,
                    stfieldMousePointer string,
                    stfieldInterNetActionLinkText string,
                    stfieldInterNetEffects string,
                    stfieldBackgroundStyle string,
                    stfieldAutoClose string,
                    stfieldOwnerMode string,
                    stfieldOwnerPosition string,
                    stfieldPopupTop string,
                    stfieldPopupLeft string,
                    stfieldTextAlignment string,
                    stfieldFontColor string,
                    stfieldText string)

{method used in: popsmfrw}

;propertiesarray["Modal"]:                       ;cmPopupSmallOpenForm
;	0 = True
;	1 = False

;propertiesarray["PopupStyle"]                  ;just one style yet so not really implemented yet
;	0 = office2003

;propertiesarray["DisplayStyle"]  					;cmPopupSmallArriveForm
;	0 = popup
;	1 = popdown
;	2 = transparent only for windows >= w2K = version 5.0
;	3 = atonce = full, no effects

;propertiesarray["ShowCloseButton"]             ;cmPopupSmallOpenForm
;	0 = True
;	1 = False

;propertiesarray["PlaySound"]   						;cmPopupSmallArriveForm
;0 = None
;1 = Alert Sound
;2 = Wake Up
;3 = Msn Alert
;4 = Msn Alert2
;5 = Msn Email
;6 = Msn Type

;propertiesarray["TimerWaiting"] 					;cmPopupSmallArriveForm
;Only applies on AutoClose:
;0 = True With UserIntervention
;1 = True Without UserIntervention


;propertiesarray["Speed"] 								;cmPopupSmallArriveForm
;= form open speed: only applies on DisplayStyle:
;	0 = popup
;	1 = popdown

;propertiesarray["MousePointer"] 					;cmPopupSmallFormMouseEnter
;when entering the form with the mouse
;0 = Arrow
;1 = Hand


;propertiesarray["InterNetActionLinkText"]       ;cmPopupSmallTextMouseUp
;fill in an appropriate weblink
;only applies when InterNetEffects = 0 (True)

;propertiesarray["InterNetEffects"]               ;cmPopupSmallTextMouseIn; cmPopupSmallTextMouseUp
;	0 = True
;	1 = False

;propertiesarray["BackgroundStyle"]               ;cmPopupSmallOpenForm
;0 = Windows 2000
;1 = XP Blue
;2 = XP Olive
;3 = XP Silver
;4 = Longhorn1
;5 = Longhorn2
;6 = Longhorn3
;7 = Longhorn4
;8 = Longhorn5
;9 = Longhorn6

;propertiesarray["AutoClose"]
;0 = True With UserIntervention
;1 = True Without UserIntervention
;2 = False With UserIntervention
;3 = False Without UserInterVention: a button 'Popup Close'
;will appear in the 'Custom Small Popups' form so you can close it
;Use of nr 3 is in case of sending multiple messages to the small popup: one
;at the time and at the end sending a 'force' close to the small popup form


;propertiesarray["OwnerMode"]
;0 = Screen
;1 = OnTop of the Screen


;propertiesarray["OwnerPosition"]
;0 = RightBottom
;1 = LeftBottom
;2 = RightTop
;3 = LeftTop
;4 = CenterScreen
;5 = CustomPosition


;propertiesarray["PopupTop"]
;on applies when OwnerPosition = 5 = CustomPosition

;propertiesarray["PopupLeft"]
;on applies when OwnerPosition = 5 = CustomPosition


;propertiesarray["TextAlignment"]                        ;cmPopupSmallOpenForm
;0 = Left
;1 = Center
;2 = Right
;3 = Justify


;propertiesarray["FontColor"]                            ;cmPopupSmallOpenForm


;propertiesarray["Text"]                                 ;cmPopupSmallOpenForm




var

frmMain form
anDlgVal anytype

endvar
try
	propertiesarray["Modal"] = stfieldModal
   propertiesarray["PopupStyle"] = stfieldPopupStyle
   propertiesarray["DisplayStyle"] = stfieldDisplayStyle
   propertiesarray["ShowCloseButton"] = stfieldShowCloseButton
   propertiesarray["PlaySound"] = stfieldSoundName
   propertiesarray["TimerWaiting"] = stfieldTimerWaiting
   propertiesarray["Speed"] = stfieldSpeed
   propertiesarray["MousePointer"] = stfieldMousePointer
   propertiesarray["InterNetActionLinkText"] = stfieldInterNetActionLinkText
   propertiesarray["InterNetEffects"] = stfieldInterNetEffects
   propertiesarray["BackgroundStyle"] = stfieldBackgroundStyle
   propertiesarray["AutoClose"] = stfieldAutoClose
   propertiesarray["OwnerMode"] = stfieldOwnerMode
   propertiesarray["OwnerPosition"] = stfieldOwnerPosition
   propertiesarray["PopupTop"] = stfieldPopupTop
   propertiesarray["PopupLeft"] = stfieldPopupLeft
   propertiesarray["TextAlignment"] = stfieldTextAlignment
   propertiesarray["FontColor"] = stfieldFontColor
   propertiesarray["Text"] = stfieldText


{--->>>>If the popmsg form is in another alias: change it here}
switch
	case propertiesarray["DisplayStyle"] = "0": frmMain.open(":work:popmsg")
	case propertiesarray["DisplayStyle"] = "1": frmMain.open(":work:popmsg")
	case propertiesarray["DisplayStyle"] = "2": frmMain.open(":work:popmsg", WinStyleHidden)
	case propertiesarray["DisplayStyle"] = "3": frmMain.open(":work:popmsg", WinStyleHidden)
endswitch
{--->>>>}

   if stfieldModal = "0" then
      anDlgVal  = frmMain.wait()
      switch
      	case anDlgVal = "close":
      endswitch
	else

   endif


onfail
	errorclear()
endtry

endMethod
 cmCallPopup $% method cmPopupSmallFormOnTop(ontop logical,
							formhandle longint,
							xPos longint,
                  	yPos longint,
                  	width longint,
                  	height longint,
                  	flags longint)longint
var
resCm longint

inputTopmost longint
endvar
try
;TOPMOST = -1
;NOTOPMOST = -2

;Flags: Combine them by summation
;NOSIZE =  1
;NOMOVE =  2
;NOACTIVATE = 16
;SHOWWINDOW = 64

 resCm = 0

    inputTopmost = iif(ontop, -1, -2)
    resCm = SetWindowPos(formhandle, inputTopmost, xPos, yPos, width, height, flags)

 return resCm

onfail
 errorclear()
 resCm = 0
 return resCm
endtry

endMethod
 cmPopupSmallFormOnTop U Const
;get the workspace
SPI_GETWORKAREA = longint(48)


;soundconstants
SND_SYNC = longint(0)
SND_ASYNC = longint(1)
SND_NODEFAULT = longint(2)
SND_LOOP = longint(8)
SND_NOSTOP = longint(16)
SND_RESOURCE = longint(262148) ;name is resource name


;LR_LOADFROMFILE = 16 ;not used yet

;bitmap or cursor or icon load constants out of dll
IMAGE_BITMAP = longint(0)
IMAGE_ICON = longint(1)
IMAGE_CURSOR = longint(2)
IMAGE_ENHMETAFILE = longint(3)

CF_TEXT = longint(1)
CF_BITMAP = longint(2)
CF_METAFILEPICT = longint(3)
CF_SYLK = longint(4)
CF_DIF = longint(5)
CF_TIFF = longint(6)
CF_OEMTEXT = longint(7)
CF_DIB = longint(8)
CF_PALETTE = longint(9)
CF_PENDATA = longint(10)
CF_RIFF = longint(11)
CF_WAVE = longint(12)
CF_UNICODETEXT = longint(13)
CF_ENHMETAFILE = longint(14)
;#if(WINVER >= 0x0400)
CF_HDROP = longint(15)
CF_LOCALE = longint(16)
CF_MAX = longint(17)
;#endif /* WINVER >= 0x0400 */
CF_OWNERDISPLAY = longint(128)
CF_DSPTEXT = longint(129)
CF_DSPBITMAP = longint(130)
CF_DSPMETAFILEPICT = longint(131)
CF_DSPENHMETAFILE = longint(142)


endConst
 Const %  {global memory handling}
method cmGlobalAlloc(liSize LongInt) LongInt ;25-02-2005
	return GlobalAlloc(fromHex("0x40"),liSize)

endMethod
 cmGlobalAlloc  	 Uses "winmm.dll" ;25-02-2005
;play wave file
  PlaySoundA(lpszName cPtr,
					hModule cLong,
   	         dwFlags cLong)cLong
enduses

Uses "user32.dll"
;workspacearea
	SystemParametersInfoA(uAction cLong,
   							uParam cLong,
                        lpvParam  cLong,
                        fuWinIni cLong) clong

;form on top AND moving form
	SetWindowPos(hwnd clong, hWndInsertAfter clong, X clong, Y  clong, cx  clong, cy  clong, wFlags clong)clong

;resource manipulation: bitmap and cursor
	LoadImageA(hInst cLong,
					lpsz cPtr,
            	dwImageType cLong,
            	dwDesiredWidth cLong,
            	dwDesiredHeight cLong,
            	dwFlags cLong)cLong

;clipboard manipulation
	CloseClipboard()cLong
	OpenClipboard(hwnd cLong)cLong
	SetClipboardData(wFormat cLong,
						hMem cLong)cLong
	IsClipboardFormatAvailable(wFormat cLong)cLong

;cursor
 	SetCursor(hCursor cLong)cLong

;colorpicker
	GetDC(hwnd cLong)cLong
	ReleaseDC(hwnd cLong, hdc cLong)cLong

;load string out of dll
	LoadStringA(hInstance cLong,
				wID cLong,
            lpBuffer cPtr,
            nBufferMax cLong)cLong

;moving form
   ReleaseCapture()cLong

endUses

uses "kernel32.dll"
;resource dll memory handles
	LoadLibraryA(lpLibFileName cPtr)cLong
	FreeLibrary(hLibModule cLong)cLong


;memory handles
	GlobalAlloc(wFlags cLong,dwBytes cLong)cLong
	GlobalFree(hMem cLong)cLong
	RtlMoveMemory(wDestination cPtr,wSource cLong,wLength cLong)cLong ;copymemory


enduses
uses "gdi32.dll"
;colorpicker
GetPixel(hDc cLong, X cLong, Y cLong)cLong
enduses

uses "smrcread.dll"
  cmPickColor(Red cPtr, Green cPtr, Blue cPtr)cLong
  cmBitmapResToClipboard(stResourceFile cPtr, stID cPtr)cLong
  cmSaveBitmapResToFile(stAlias cPtr, stResourceFile cPtr, stID cPtr)cLong
enduses

uses "shell32.dll"
ExtractIconA(hinst cLong, lpfile cptr, nindex cLong)cLong
enduses

uses objectpal
;popmstlb

cmLoadFormTransparent(stTitleForm string,
											liWindowHandle longint,
                                 liOpacity longint,
                                 liSteps longint)

cmCloseFormTransparent(stTitleForm string,
											liWindowHandle longint,
                                 liOpacity longint,
                                 liSteps longint)
enduses
 Uses &  {global memory handling}
method cmGlobalFree(var liMemory LongInt) LongInt  ;25-02-2005
	return GlobalFree(liMemory)

endMethod
 cmGlobalFree 'F method cmPopupSmallOpenForm(stTitleForm string)
var
frmMain 			form

grResGraphic 	graphic
stID 				string
liRet 			longint
stPrivDir 		string
stAliaspath 	string
endvar
try
if frmMain.attach(stTitleForm) then

;modal window state
   switch
    case propertiesarray["Modal"] = "0": frmMain.popupform.Modal = True
    case propertiesarray["Modal"] = "1": frmMain.popupform.Modal = False
   endswitch

;closebutton
   switch
    case propertiesarray["ShowCloseButton"] = "0": frmMain.formboxclosetekst.Visible = True
    case propertiesarray["ShowCloseButton"] = "1": frmMain.formboxclosetekst.Visible = False
   endswitch

;propertiesarray["BackgroundStyle"]
;0 = Windows 2000
;1 = XP Blue
;2 = XP Olive
;3 = XP Silver
;4 = Longhorn1
;5 = Longhorn2
;6 = Longhorn3
;7 = Longhorn4
;8 = Longhorn5
;9 = Longhorn6

	switch
 		case propertiesarray["BackgroundStyle"] = "0":	stID = "5200"
 		case propertiesarray["BackgroundStyle"] = "1":	stID = "5201"
 		case propertiesarray["BackgroundStyle"] = "2":	stID = "5202"
 		case propertiesarray["BackgroundStyle"] = "3":	stID = "5203"
 		case propertiesarray["BackgroundStyle"] = "4":	stID = "5204"
 		case propertiesarray["BackgroundStyle"] = "5":	stID = "5205"
 		case propertiesarray["BackgroundStyle"] = "6":	stID = "5206"
 		case propertiesarray["BackgroundStyle"] = "7":	stID = "5207"
 		case propertiesarray["BackgroundStyle"] = "8":	stID = "5208"
 		case propertiesarray["BackgroundStyle"] = "9":	stID = "5209"
   endswitch

{Below works fine if OS < 5.1, in XP graphic type issues}
;  grResGraphic = cmLoadBitmapToClipboard(stAliasPathSetting + "\\smpopsm.dll",
;  																			stID)
;  if grResGraphic.isblank() then
;  else
;   textbitmap = grResGraphic
;  endif

{Works fine on all OS}

{--->>>>If the unpacked graphics and smpopsm.dll should reside in another alias: change it here}

	stPrivDir = getAliasPath("PRIV")

{--->>>>}

{--->>>>If the popmsg form is in another alias: change it here}

     stAliaspath = getaliaspath("work")

{--->>>>}

		if isFile(stPrivDir + "\\" + stID + ".bmp") then
		else

			liRet = cmSaveBitmapOutOfDllToFile(stPrivDir,
															stAliaspath + "\\smpopsm.dll",
															stID)
			;if liRet <> longint(-1) then
			  ;	return
			;endif
		endif

		if grResGraphic.readFromFile(stPrivDir + "\\" + stID + ".bmp") = True then
   		frmMain.textbitmap = grResGraphic
		endif

;propertiesarray["Text"]
   frmMain.contexttext = propertiesarray["Text"]

;propertiesarray["TextAlignment"]
	switch
 		case propertiesarray["TextAlignment"] = "0": frmMain.contexttext.Alignment = TextAlignLeft
 		case propertiesarray["TextAlignment"] = "1": frmMain.contexttext.Alignment = TextAlignCenter
 		case propertiesarray["TextAlignment"] = "2": frmMain.contexttext.Alignment = TextAlignRight
 		case propertiesarray["TextAlignment"] = "3": frmMain.contexttext.Alignment = TextAlignJustify
	endswitch


;propertiesarray["FontColor"]
   frmMain.contexttext.font.color = longint(propertiesarray["FontColor"])

endif

onfail
	errorclear()
endtry

endMethod
 cmPopupSmallOpenForm (э method cmPopupSmallArriveForm(stTitleForm string)
var
frmMain form
stAliaspath string

;sound
liResWave longint
stInputWave string



;getworkspace
liXa,
liYa,
liWa,
liHa longint


;bitmap size
liXpg, liYpg, liWpg, liHpg longint



endvar

try
if frmMain.attach(stTitleForm) then

;get workspace first
   if cmGetWorkArea(liXa, liYa, liWa, liHa) = True then

   else
   	fail()
      return
   endif

   frmMain.textbitmap.getposition(liXpg, liYpg, liWpg, liHpg)

;propertiesarray["OwnerPosition"]
	switch
   	case propertiesarray["OwnerPosition"] = "0": ;0 = RightBottom

			switch
   			case propertiesarray["DisplayStyle"] = "0": ;	0 = popup

            		cmPopupSmallPopupStart(stTitleForm, liWa - liWpg - 15, liHa - 90, liWpg, 90, liHpg)


      		case propertiesarray["DisplayStyle"] = "1":  ;	1 = popdown

            		cmPopupSmallPopdownStart(stTitleForm, liWa - liWpg - 15, liHa - liHpg, liWpg, 90, liHpg)

      		case propertiesarray["DisplayStyle"] = "2":  ;	2 = transparent only for windows >= w2K = version 5.0

						cmPopupSmallTransparentStart(stTitleForm, liWa - liWpg - 15, liHa - liHpg, liWpg, liHpg)

        		case propertiesarray["DisplayStyle"] = "3":  ;	3 = atonce = full, no effects

						cmPopupSmallAtOnceStart(stTitleForm, liWa - liWpg - 15, liHa - liHpg, liWpg, liHpg)

   		endswitch


      case propertiesarray["OwnerPosition"] = "1":  ;1 = LeftBottom

			switch
   			case propertiesarray["DisplayStyle"] = "0": ;	0 = popup

            		cmPopupSmallPopupStart(stTitleForm, 15, liHa - 90, liWpg, 90, liHpg) ;15 let us stay from the border


      		case propertiesarray["DisplayStyle"] = "1":  ;	1 = popdown

            		cmPopupSmallPopdownStart(stTitleForm, 15, liHa - liHpg, liWpg, 90, liHpg)

      		case propertiesarray["DisplayStyle"] = "2":  ;	2 = transparent only for windows >= w2K = version 5.0

						cmPopupSmallTransparentStart(stTitleForm, 15, liHa - liHpg, liWpg, liHpg)

       		case propertiesarray["DisplayStyle"] = "3":  ;	3 = atonce = full, no effects

						cmPopupSmallAtOnceStart(stTitleForm, 15, liHa - liHpg, liWpg, liHpg)
  		endswitch


      case propertiesarray["OwnerPosition"] = "2": ;2 = RightTop

			switch
   			case propertiesarray["DisplayStyle"] = "0": ;	0 = popup

            		cmPopupSmallPopupStart(stTitleForm, liWa - liWpg - 15, liHpg - 90 + 15, liWpg, 90, liHpg);15 let us stay from the border


      		case propertiesarray["DisplayStyle"] = "1":  ;	1 = popdown

            		cmPopupSmallPopdownStart(stTitleForm, liWa - liWpg - 15, 15, liWpg, 90, liHpg)

      		case propertiesarray["DisplayStyle"] = "2":  ;	2 = transparent only for windows >= w2K = version 5.0

						cmPopupSmallTransparentStart(stTitleForm, liWa - liWpg - 15, 15, liWpg, liHpg)

      		case propertiesarray["DisplayStyle"] = "3":  ;	3 = atonce = full, no effects

						cmPopupSmallAtOnceStart(stTitleForm, liWa - liWpg - 15, 15, liWpg, liHpg)

   		endswitch


      case propertiesarray["OwnerPosition"] = "3": ;3 = LeftTop

			switch
   			case propertiesarray["DisplayStyle"] = "0": ;	0 = popup

            		cmPopupSmallPopupStart(stTitleForm, 15, liHpg - 90 + 15, liWpg, 90, liHpg) ;15 let us stay from the border


      		case propertiesarray["DisplayStyle"] = "1":  ;	1 = popdown

            		cmPopupSmallPopdownStart(stTitleForm, 15, 15, liWpg, 90, liHpg)

      		case propertiesarray["DisplayStyle"] = "2":  ;	2 = transparent only for windows >= w2K = version 5.0

						cmPopupSmallTransparentStart(stTitleForm, 15, 15, liWpg, liHpg)

      		case propertiesarray["DisplayStyle"] = "3":  ;	3 = atonce = full, no effects

						cmPopupSmallAtOnceStart(stTitleForm, 15, 15, liWpg, liHpg)


   		endswitch


      case propertiesarray["OwnerPosition"] = "4": ;4 = CenterScreen = workspace screen = without taskbar and other 'bars'

			switch
   			case propertiesarray["DisplayStyle"] = "0": ;	0 = popup

            		cmPopupSmallPopupStart(stTitleForm, longint((liWa - liWpg)/2 ), longint((liHa - liHpg)/2 ) - 90, liWpg, 90, liHpg)


      		case propertiesarray["DisplayStyle"] = "1":  ;	1 = popdown

            		cmPopupSmallPopdownStart(stTitleForm, longint((liWa - liWpg)/2 ), longint((liHa - liHpg)/2 ), liWpg, 90, liHpg)

      		case propertiesarray["DisplayStyle"] = "2":  ;	2 = transparent only for windows >= w2K = version 5.0

						cmPopupSmallTransparentStart(stTitleForm, longint((liWa - liWpg)/2 ), longint((liHa - liHpg)/2 ), liWpg, liHpg)

      		case propertiesarray["DisplayStyle"] = "3":  ;	3 = atonce = full, no effects

						cmPopupSmallAtOnceStart(stTitleForm, longint((liWa - liWpg)/2 ), longint((liHa - liHpg)/2 ), liWpg, liHpg)


   		endswitch


      case propertiesarray["OwnerPosition"] = "5": ;5 = CustomPosition

			switch
   			case propertiesarray["DisplayStyle"] = "0": ;	0 = popup

            		cmPopupSmallPopupStart(stTitleForm, longint(propertiesarray["PopupLeft"]), longint(propertiesarray["PopupTop"]) - 90, liWpg, 90, liHpg)


      		case propertiesarray["DisplayStyle"] = "1":  ;	1 = popdown

            		cmPopupSmallPopdownStart(stTitleForm, longint(propertiesarray["PopupLeft"]), longint(propertiesarray["PopupTop"]), liWpg, 90, liHpg)

      		case propertiesarray["DisplayStyle"] = "2":  ;	2 = transparent only for windows >= w2K = version 5.0

						cmPopupSmallTransparentStart(stTitleForm, longint(propertiesarray["PopupLeft"]), longint(propertiesarray["PopupTop"]), liWpg, liHpg)

      		case propertiesarray["DisplayStyle"] = "3":  ;	3 = atonce = full, no effects

						cmPopupSmallAtOnceStart(stTitleForm, longint(propertiesarray["PopupLeft"]), longint(propertiesarray["PopupTop"]), liWpg, liHpg)



   		endswitch


   endswitch
;check and set timer if applicable
;propertiesarray["AutoClose"]
;0 = True With UserIntervention
;1 = True Without UserIntervention
   if propertiesarray["AutoClose"] = "0" or
   	propertiesarray["AutoClose"] = "1" then
   	liILoop = 10
   	liToLoop = 0
   	liToWait = longint(propertiesarray["TimerWaiting"])
	   frmMain.closefocusbut.setTimer(1)
   endif



endif
onfail
  	errorclear()
;if for any reason the form can not be 'arrived':
	msginfo("PopupAlerts", "Form could not be opened")
endtry

endMethod
 cmPopupSmallArriveForm )! method cmKeycoddialogbasis(stKeystroke	string,
									loAltdruk	logical,
                     		loShiftdruk logical,
                     		loControldruk logical,
                     		stHelpfile	string,
                     		liHelptopic longint)Logical;25-02-2005

var
	loAnswer	logical
endvar
{method used in: popsmfrw}
;keys functions
try
		switch
			case stKeystroke = "VK_TAB" and loControldruk = True : loAnswer = False
			case stKeystroke = "VK_TAB" and loAltdruk = True : loAnswer = True 
			case stKeystroke = "VK_TAB" and loShiftdruk = True : loAnswer = True 
			case stKeystroke = "VK_TAB": loAnswer = True 
			case stKeystroke = "VK_NEXT" and loControldruk = True : loAnswer = False
			case stKeystroke = "VK_NEXT" and loAltdruk = True :  loAnswer = False
			case stKeystroke = "VK_NEXT" and loShiftdruk = True : loAnswer = False 
			case stKeystroke = "VK_NEXT": loAnswer = False 
			case stKeystroke = "VK_PRIOR" and loControldruk = True : loAnswer = False 
			case stKeystroke = "VK_PRIOR" and loAltdruk = True : loAnswer = False 
			case stKeystroke = "VK_PRIOR" and loShiftdruk = True : loAnswer = False 
			case stKeystroke = "VK_PRIOR": loAnswer = False 
			case stKeystroke = "Z" and loControldruk = True : loAnswer = False
			case stKeystroke = "R" and loControldruk = True : loAnswer = False
			case stKeystroke = "T" and loControldruk = True : loAnswer = False 
			case stKeystroke = "Y" and loControldruk = True : loAnswer = False 
			case stKeystroke = "U" and loControldruk = True : loAnswer = False 
			case stKeystroke = "I" and loControldruk = True : loAnswer = False 
			case stKeystroke = "O" and loControldruk = True : loAnswer = False 
			case stKeystroke = "P" and loControldruk = True : loAnswer = False 
			case stKeystroke = "Q" and loControldruk = True : loAnswer = False 
			case stKeystroke = "S" and loControldruk = True : loAnswer = False 
			case stKeystroke = "D" and loControldruk = True : loAnswer = False 
			case stKeystroke = "F" and loControldruk = True : loAnswer = False 
			case stKeystroke = "G" and loControldruk = True : loAnswer = False 
			case stKeystroke = "H" and loControldruk = True : loAnswer = False 
			case stKeystroke = "J" and loControldruk = True : loAnswer = False 
			case stKeystroke = "K" and loControldruk = True : loAnswer = False 
			case stKeystroke = "L" and loControldruk = True : loAnswer = False 
			case stKeystroke = "M" and loControldruk = True : loAnswer = False 
			case stKeystroke = "W" and loControldruk = True : loAnswer = False 
			case stKeystroke = "X" and loControldruk = True : loAnswer = False 
			case stKeystroke = "C" and loControldruk = True : loAnswer = True 
			case stKeystroke = "V" and loControldruk = True : loAnswer = True 
			case stKeystroke = "B" and loControldruk = True : loAnswer = False 
			case stKeystroke = "N" and loControldruk = True : loAnswer = False 
			case stKeystroke = "VK_F1" and loControldruk = True : loAnswer = False 
			case stKeystroke = "VK_F1" and loAltdruk = True : loAnswer = False 
			case stKeystroke = "VK_F1" and loShiftdruk = True : loAnswer = False 
			case stKeystroke = "VK_F1": 
				  if stHelpfile = "none" then
				  else
					cmShowHelpFile(stHelpfile, liHelptopic)
				  endif
				  loAnswer = False
			case stKeystroke = "VK_BACK" and loControldruk = True : loAnswer = True
			case stKeystroke = "VK_BACK" and loAltdruk = True : loAnswer = False
			case stKeystroke = "VK_BACK" and loShiftdruk = True : loAnswer = False 
			case stKeystroke = "VK_BACK":  loAnswer = True
			case stKeystroke = "VK_F6" and loControldruk = True : loAnswer = False
			case stKeystroke = "VK_F6" and loAltdruk = True : loAnswer = False 
			case stKeystroke = "VK_F6" and loShiftdruk = True : loAnswer = False 
			case stKeystroke = "VK_F6" :  loAnswer = False
			case stKeystroke = "VK_F2" : loAnswer = False 
			case stKeystroke = "VK_F7": loAnswer = False
			case stKeystroke = "VK_F8": loAnswer = False
			case stKeystroke = "VK_F9": loAnswer = False
			case stKeystroke = "VK_F11": loAnswer = False 
			case stKeystroke = "VK_F12": loAnswer = False 

			case stKeystroke = "VK_DELETE" and loControldruk = True : loAnswer = False
			case stKeystroke = "VK_DELETE" and loAltdruk = True : loAnswer = False 
			case stKeystroke = "VK_DELETE" and loShiftdruk = True : loAnswer = False 
			case stKeystroke = "VK_DELETE": loAnswer = True

			case stKeystroke = "VK_INSERT": loAnswer = False 
			case stKeystroke = "VK_PAUSE": loAnswer = False 
			case stKeystroke = "VK_ADD": loAnswer = False 
			case stKeystroke = "VK_APPS": loAnswer = False 
			case stKeystroke = "VK_CANCEL": loAnswer = False 
			case stKeystroke = "VK_CLEAR": loAnswer = False 
			case stKeystroke = "VK_EXECUTE": loAnswer = False 
			case stKeystroke = "VK_ESCAPE" and loControldruk = True : loAnswer = True
			case stKeystroke = "VK_ESCAPE" and loAltdruk = True : loAnswer = False 
			case stKeystroke = "VK_ESCAPE" and loShiftdruk = True : loAnswer = False 
		;	case stKeystroke = "VK_ESCAPE": 
			case stKeystroke = "VK_END" and loAltdruk = True: loAnswer = False
			case stKeystroke = "VK_END" and loControldruk = True: loAnswer = False
			case stKeystroke = "VK_END" and loShiftdruk = True: loAnswer = False 
			case stKeystroke = "VK_END": loAnswer = True
			case stKeystroke = "VK_HELP": loAnswer = False 
			case stKeystroke = "VK_HOME" and loAltdruk = True:  loAnswer = False
			case stKeystroke = "VK_HOME" and loControldruk = True: loAnswer = False
			case stKeystroke = "VK_HOME" and loShiftdruk = True: loAnswer = False
			case stKeystroke = "VK_HOME": loAnswer = True
			case stKeystroke = "VK_F4" and loShiftdruk = True : loAnswer = False 
			case stKeystroke = "VK_F4" and loControldruk = True : loAnswer = False 
			case stKeystroke = "VK_F4": loAnswer = True
			case stKeystroke = "VK_F3" and loAltdruk = True : loAnswer = False
			case stKeystroke = "VK_F3" and loShiftdruk = True : loAnswer = False
			case stKeystroke = "VK_F3" and loControldruk = True : loAnswer = False
			case stKeystroke = "VK_F3": loAnswer = True
			otherwise: loAnswer = True
      endswitch

      return loAnswer
onfail
					loAnswer = True
					return loAnswer
endtry


endMethod
 cmKeycoddialogbasis *& method cmPopupSmallCloseFocusButPushButton(stTitleForm string)
var
frmClose form

endvar
try
if frmClose.attach(stTitleForm) then
switch
 case propertiesarray["AutoClose"] = "0":
 ;0 = True With UserIntervention
   frmClose.closefocusbut.killtimer()

;close the form
   cmPopupSmallClose(stTitleForm)

 case propertiesarray["AutoClose"] = "1":
    ;1 = True Without UserIntervention
    ; = To prevent user pressing 'Esc' or 'Alt + F4'
    ;autoclose will follow in the timer


 case propertiesarray["AutoClose"] = "2":
 ;2 = False With UserIntervention
 ;close the form
   cmPopupSmallClose(stTitleForm)

 case propertiesarray["AutoClose"] = "3":
    ;3 = False Without UserInterVention
    ; = To prevent user pressing 'Esc' or 'Alt + F4'
    ; = close it by command whenever you want
    ; cmPopupSmallClose("popupform")


 endswitch
endif

onfail
endtry
endMethod
 cmPopupSmallCloseFocusButPushButton +8 method cmPopupSmallTimer(stTitleForm string) ;25-02-2005
var
frmTimer form
endvar

try
if frmTimer.attach(stTitleForm) then
 if liToLoop = liToWait then
 	switch
     case propertiesarray["AutoClose"] = "0":
		;0 = True With UserIntervention
      frmTimer.closefocusbut.pushbutton()
     case propertiesarray["AutoClose"] = "1":
       ;1 = True Without UserIntervention
       cmPopupSmallClose(stTitleForm)
   endswitch
 else
   liILoop = liToLoop + 10
   liToLoop = liILoop
	sleep(10)
 endif
endif
onfail
 errorclear()
endtry

endMethod
 cmPopupSmallTimer а  Var
;properties
propertiesarray DynArray[] string

;global timer vars of popupform
liILoop longint
liToLoop longint
liToWait longint

;position store
positionarray DynArray[] longint



endVar
 Var ,с method cmPopupSmallTextMouseIn(stTitleForm string, loInOrOut logical);25-02-2005
var
formx form
stAliaspath string
endvar

try
if formx.attach(stTitleForm) then
{--->>>>If the smpopsm.dll is in another alias: change it here}

     stAliaspath = getaliaspath("work")

{--->>>>}
  if loInOrOut = True then
  		if propertiesarray["MousePointer"] = "1" then ;hand
         stFullFile = stAliaspath + "\\smpopsm.dll"
			cmLoadCursor(stFullFile, "8000")
  		endif

     if propertiesarray["InterNetEffects"] = "0" then
        formx.contexttext.Font.Color = Blue
        formx.contexttext.Font.Style = FontAttribUnderline
     endif
  else
     if propertiesarray["MousePointer"] = "1" then
   		setMouseShape(MouseArrow,TRUE)
     endif
     if propertiesarray["InterNetEffects"] = "0" then
        formx.contexttext.Font.Color = Black
        formx.contexttext.Font.Style = FontAttribNormal
     endif

  endif

endif
onfail
 errorclear()
endtry

endMethod
 cmPopupSmallTextMouseIn -л# method cmFormMainPreviewTextMouseUp(stTitleForm string,
												stfieldInterNetEffectsChoice string,
                                    stfieldInterNetActionLinkTextChoice string);25-02-2005
var
frmMain form
endvar

try
{method used in: popsmfrw}
;mouse click on text of popup
if frmMain.attach(stTitleForm) then
     if stfieldInterNetEffectsChoice = "0" then  ;True
       if stfieldInterNetActionLinkTextChoice = "" then
       else
        ;if cmIsValidUrl(stfieldInterNetActionLinkTextChoice) = True then ;works great but slows things down I am afraid
			StartWebBrowser(stfieldInterNetActionLinkTextChoice)
        ;endif
       endif
     endif

endif
onfail
 errorclear()
endtry


endMethod
 cmFormMainPreviewTextMouseUp . method cmIsValidUrl(stInputURL string)logical;25-02-2005
var
loResValidUrl logical

oleMain oleauto

stSHTML string

stChkURL string
endvar
;validates an url but is not to fast... depends on >= msxml...dll minimum version 2
try
;>= msxml2.dll
;initial value
loResValidUrl  = False

;small syntaxcheck
stChkURL = stInputURL
if stChkURL.substr(1, 7) <> "http://" then
	stChkURL = "http://" + stChkURL
endif

;Connect
oleMain.open("Microsoft.XMLHTTP")
oleMain.invoke("open", "GET", stChkURL, False)
oleMain.send()
stSHTML = oleMain.statusText
oleMain.close()

if stSHTML = "OK" then
 loResValidUrl = True
else
 loResValidUrl = False
endif

return loResValidUrl

onfail
 errorclear()
 loResValidUrl = False
 return loResValidUrl
endtry


endMethod
 cmIsValidUrl /ю method cmLoadCursor(stFullResourceFile string,
											stResID string) ;25-02-2005
var

liCursor longint
liResCursor longint

liResourceHandle longint
liResourceHandleFree longint

endvar
{method used in: popsmfrw}
;load cursor out of dll
try
;general
	liResourceHandle = 0


;Load the dll in memory and ge               џt its handle

    liResourceHandle = LoadLibraryA(stFullResourceFile)

;load the cursor and get the handle

    liCursor = LoadImageA(liResourceHandle, "#" + stResID, IMAGE_CURSOR, 0, 0, 0)
    if liCursor = 0 Then
		if liResourceHandle > 0 then
    		liResourceHandleFree = FreeLibrary(liResourceHandle)
      endif
    endif

;set the cursor
    liResCursor = SetCursor(liCursor)

;free our loaded DLL
   	if liResourceHandle > 0 then
    		liResourceHandleFree = FreeLibrary(liResourceHandle)
   	endif





onfail
	errorclear()
	if liResourceHandle > 0 then
    liResourceHandleFree = FreeLibrary(liResourceHandle)
   endif
endtry

endMethod
 cmLoadCursor 0 method cmPlayWavFile(stFullResourceFile string,
											stResID string)longint ;25-02-2005
var
liResWave longint

;soundvar
liwFlags longint
liResSound longint

liResourceHandle longint
liResourceHandleFree longint

endvar
{method used in: popsmfrw}
;play sound out of dll
try
;general
	liResourceHandle = 0
;Load the dll in memory and get its handle

    liResourceHandle = LoadLibraryA(stFullResourceFile)
    if liResourceHandle = 0 Then
		liResWave = 0
   	return liResWave
    endif

;play sound
    liwFlags = SND_RESOURCE + SND_SYNC

    liResSound = PlaySoundA("#" + stResID, liResourceHandle, liwFlags)
    if liResSound = 0 then
		if liResourceHandle > 0 then
    		liResourceHandleFree = FreeLibrary(liResourceHandle)
   	endif
		liResWave = 0
   	return liResWave
    endif
    
    if liResourceHandle > 0 then
    		liResourceHandleFree = FreeLibrary(liResourceHandle)
    endif
    liResWave = 1
    return liResWave

onfail
	errorclear()
	if liResourceHandle > 0 then
    liResourceHandleFree = FreeLibrary(liResourceHandle)
   endif
	liResWave = 0
   return liResWave
endtry

endMethod
 cmPlayWavFile 1§ method cmLoadBitmapToClipboard(stFullResourceFile string,
												stResID string,
                        				liWinhandle longint)graphic ;25-02-2005
;loads a bitmap out of resource (dll) onto clipboard
;this works fine with WinOS version < 5.1
var

bClipboard    Binary
arClipboard   Array[] String

liResClipboardOpen,
liResClipboardClose,
liResClipboardSet longint

liBitmap longint

liResourceHandle longint
liResourceHandleFree longint

liIsClipboardFormatAvailable longint

grResGraph graphic

endvar
{method used in: popsmfrw}
;load bitmap out of dll
try
;general
	liResourceHandle = 0

;the clipboard clear

		bClipboard.enumClipboardFormats(arClipboard)

		if arClipboard.size() = 0 then
		else
      	bClipboard.clipBoardErase()
		endif

;Load the dll in memory and get its handle

    liResourceHandle = LoadLibraryA(stFullResourceFile)
    if liResourceHandle = 0 Then
       grResGraph = blank()
       return grResGraph
    endif

;load the BMP Image and get BMP Handle

    liBitmap = LoadImageA(liResourceHandle, "#" + stResID, IMAGE_BITMAP, 0, 0, 0)
    if liBitmap = 0 Then
		if liResourceHandle > 0 then
    		liResourceHandleFree = FreeLibrary(liResourceHandle)
      endif
       grResGraph = blank()
       return grResGraph
    endif

;free our loaded DLL
   	if liResourceHandle > 0 then
    		liResourceHandleFree = FreeLibrary(liResourceHandle)
   	endif

;open the clipboard
    liResClipboardOpen = OpenClipboard(liWinhandle)

;Put our bitmap onto the clipboard
    liResClipboardSet = SetClipboardData(CF_BITMAP, liBitmap)
 
;Check if there's a bitmap on the clipboard
    liIsClipboardFormatAvailable = IsClipboardFormatAvailable(CF_BITMAP)

    if liIsClipboardFormatAvailable = 0 then
		if liResourceHandle > 0 then
    		liResourceHandleFree = FreeLibrary(liResourceHandle)
   	endif
   	grResGraph = blank()
   	return grResGraph

    endif

;Close the clipboard
    liResClipboardClose = CloseClipboard()


;graphic in place

	 grResGraph.readfromclipboard()
    return grResGraph

onfail
	errorclear()
	if liResourceHandle > 0 then
    liResourceHandleFree = FreeLibrary(liResourceHandle)
   endif
   grResGraph = blank()
   return grResGraph
endtry

endMethod
 cmLoadBitmapToClipboard 2К# method cmKeycoddialogspecial(stKeystroke	string,
										loAltdruk	logical,
                     			loShiftdruk logical,
                     			loControldruk logical,
                     			stHelpfile	string,
                     			liHelptopic longint)Logical

var
	loAnswer	logical
endvar
{method used in: popsmfrw}
;keys functions
try
		switch
		 	case stKeystroke = "VK_F1" and loControldruk = True : loAnswer = False
			case stKeystroke = "VK_F1" and loAltdruk = True : loAnswer = False
			case stKeystroke = "VK_F1" and loShiftdruk = True : loAnswer = False
			case stKeystroke = "VK_F1":
				  if stHelpfile = "none" then
				  else
					cmShowHelpFile(stHelpfile, liHelptopic)
				  endif
				  loAnswer = False
			case stKeystroke = "VK_ESCAPE" and loControldruk = True : loAnswer = True
			case stKeystroke = "VK_ESCAPE" and loAltdruk = True : loAnswer = False
			case stKeystroke = "VK_ESCAPE" and loShiftdruk = True : loAnswer = False
			case stKeystroke = "VK_END" and loAltdruk = True: loAnswer = False
			case stKeystroke = "VK_END" and loControldruk = True: loAnswer = False
			case stKeystroke = "VK_END" and loShiftdruk = True: loAnswer = False
			case stKeystroke = "VK_END": loAnswer = True
			case stKeystroke = "VK_HOME" and loAltdruk = True:  loAnswer = False
			case stKeystroke = "VK_HOME" and loControldruk = True: loAnswer = False
			case stKeystroke = "VK_HOME" and loShiftdruk = True: loAnswer = False
			case stKeystroke = "VK_HOME": loAnswer = True
			case stKeystroke = "VK_F4" and loShiftdruk = True : loAnswer = False
			case stKeystroke = "VK_F4" and loControldruk = True : loAnswer = False
			case stKeystroke = "VK_F4": loAnswer = True
			case stKeystroke = "VK_F3" and loAltdruk = True : loAnswer = False
			case stKeystroke = "VK_F3" and loShiftdruk = True : loAnswer = False
			case stKeystroke = "VK_F3" and loControldruk = True : loAnswer = False
			case stKeystroke = "VK_F3": loAnswer = True
         case stKeystroke = "VK_UP": loAnswer = True
			case stKeystroke = "VK_DOWN": loAnswer = True

			otherwise: loAnswer = False
      endswitch
		return loAnswer
onfail
					loAnswer = True
					return loAnswer
endtry




endMethod
 cmKeycoddialogspecial 3ъ method cmFormMainReadIni(stFormtitle string,
								stAliaspath string,
                        stFilename string);popsmini.ini
var
	frmMain form
	stAliasres string
endVar
try
{method used in: popsmfrw}
;read start settings
if frmMain.attach(stFormtitle) then
  ;popsmini.ini

 ; aliasres = getaliaspath(aliaspath)  + "\\" + filename
  stAliasres = stAliaspath  + "\\" + stFilename ;"popsmini.ini"


  if isFile(stAliasres) then
 	cmPopupSmallWhileOpen("popupform",
                         "Welcome to the Small PopupAlerts." + "\n" +
                         "Reading " + stFilename + ": fieldModal",
                         100)
	frmMain.fieldModal = readProfileString(stAliasres, "POPUPSMALL","fieldModalvalue")

 	cmPopupSmallWhileOpen("popupform",
                         "Welcome to the Small PopupAlerts." + "\n" +
                         "Reading " + stFilename + ": fieldPopupStyle",
                         100)
	frmMain.fieldPopupStyle = readProfileString(stAliasres, "POPUPSMALL","fieldPopupStylevalue")

 	cmPopupSmallWhileOpen("popupform",
                         "Welcome to the Small PopupAlerts." + "\n" +
                         "Reading " + stFilename + ": fieldDisplayStyle",
                         100)
	frmMain.fieldDisplayStyle = readProfileString(stAliasres, "POPUPSMALL","fieldDisplayStylevalue")


 	cmPopupSmallWhileOpen("popupform",
                         "Welcome to the Small PopupAlerts." + "\n" +
                         "Reading " + stFilename + ": fieldShowCloseButton",
                         100)
	frmMain.fieldShowCloseButton = readProfileString(stAliasres, "POPUPSMALL","fieldShowCloseButtonvalue")


 	cmPopupSmallWhileOpen("popupform",
                         "Welcome to the Small PopupAlerts." + "\n" +
                         "Reading " + stFilename + ": fieldSoundName",
                         100)
	frmMain.fieldSoundName = readProfileString(stAliasres, "POPUPSMALL","fieldSoundNamevalue")


 	cmPopupSmallWhileOpen("popupform",
                         "Welcome to the Small PopupAlerts." + "\n" +
                         "Reading " + stFilename + ": fieldTimerWaiting",
                         100)
	frmMain.fieldTimerWaiting = longint(readProfileString(stAliasres, "POPUPSMALL","fieldTimerWaitingvalue"))


 	cmPopupSmallWhileOpen("popupform",
                         "Welcome to the Small PopupAlerts." + "\n" +
                         "Reading " + stFilename + ": fieldSpeed",
                         100)
	frmMain.fieldSpeed = longint(readProfileString(stAliasres, "POPUPSMALL","fieldSpeedvalue"))


 	cmPopupSmallWhileOpen("popupform",
                         "Welcome to the Small PopupAlerts." + "\n" +
                         "Reading " + stFilename + ": fieldMousePointer",
                         100)
	frmMain.fieldMousePointer = readProfileString(stAliasres, "POPUPSMALL","fieldMousePointervalue")


 	cmPopupSmallWhileOpen("popupform",
                         "Welcome to the Small PopupAlerts." + "\n" +
                         "Reading " + stFilename + ": fieldInterNetEffects",
                         100)
	frmMain.fieldInterNetEffects = readProfileString(stAliasres, "POPUPSMALL","fieldInterNetEffectsvalue")


 	cmPopupSmallWhileOpen("popupform",
                         "Welcome to the Small PopupAlerts." + "\n" +
                         "Reading " + stFilename + ": fieldBackgroundStyle",
                         100)
	frmMain.fieldBackgroundStyle = readProfileString(stAliasres, "POPUPSMALL","fieldBackgroundStylevalue")



 	cmPopupSmallWhileOpen("popupform",
                         "Welcome to the Small PopupAlerts." + "\n" +
                         "Reading " + stFilename + ": fieldAutoClose",
                         100)
	frmMain.fieldAutoClose = readProfileString(stAliasres, "POPUPSMALL","fieldAutoClosevalue")



 	cmPopupSmallWhileOpen("popupform",
                         "Welcome to the Small PopupAlerts." + "\n" +
                         "Reading " + stFilename + ": fieldTextAlignment",
                         100)
	frmMain.fieldTextAlignment = readProfileString(stAliasres, "POPUPSMALL","fieldTextAlignmentvalue")


 	cmPopupSmallWhileOpen("popupform",
                         "Welcome to the Small PopupAlerts." + "\n" +
                         "Reading " + stFilename + ": fieldFontColor",
                         100)
	frmMain.fieldFontColor = readProfileString(stAliasres, "POPUPSMALL","fieldFontColorvalue")
   frmMain.colorFontColor.color = longint(readProfileString(stAliasres, "POPUPSMALL","fieldFontColorvalue"))


 	cmPopupSmallWhileOpen("popupform",
                         "Welcome to the Small PopupAlerts." + "\n" +
                         "Reading " + stFilename + ": fieldOwnerMode",
                         100)
	frmMain.fieldOwnerMode = readProfileString(stAliasres, "POPUPSMALL","fieldOwnerModevalue")


 	cmPopupSmallWhileOpen("popupform",
                         "Welcome to the Small PopupAlerts." + "\n" +
                         "Reading " + stFilename + ": fieldOwnerPosition",
                         100)
	frmMain.fieldOwnerPosition = readProfileString(stAliasres, "POPUPSMALL","fieldOwnerPositionvalue")


 	cmPopupSmallWhileOpen("popupform",
                         "Welcome to the Small PopupAlerts." + "\n" +
                         "Reading " + stFilename + ": fieldPopupTop",
                         100)
	frmMain.fieldPopupTop = longint(readProfileString(stAliasres, "POPUPSMALL","fieldPopupTopvalue"))


 	cmPopupSmallWhileOpen("popupform",
                         "Welcome to the Small PopupAlerts." + "\n" +
                         "Reading " + stFilename + ": fieldPopupLeft",
                         100)
	frmMain.fieldPopupLeft = longint(readProfileString(stAliasres, "POPUPSMALL","fieldPopupLeftvalue"))


   ;fieldText can be higher then 255 signs but advisable no more then 4 lines

 	cmPopupSmallWhileOpen("popupform",
                         "Welcome to the Small PopupAlerts." + "\n" +
                         "Reading " + stFilename + ": fieldText",
                         100)
	frmMain.fieldText = cmReadMultilineString(stAliasres,
													"fieldTextvalue",
                     						"endfieldTextvalue")
   ;InterNetActionLinkText can be higher then 255 signs!

 	cmPopupSmallWhileOpen("popupform",
                         "Welcome to the Small PopupAlerts." + "\n" +
                         "Reading " + stFilename + ": fieldInterNetActionLinkText",
                         100)
	frmMain.fieldInterNetActionLinkText = cmReadMultilineString(stAliasres,
													"fieldInterNetActionLinkTextvalue",
                     						"endfieldInterNetActionLinkTextvalue")

  endif
endif
onfail
errorclear()
endtry

endMethod
 cmFormMainReadIni 4 method cmFormMainSaveIni(titleform string,
									aliasname string,
                        	filename string)
var

 ts  TextStream
 formx form
 aliasfull string

endvar
{method used in: popsmfrw}
;save settings - choices
try
if formx.attach(titleform) then


 setMouseShape(MouseWait,TRUE)
; aliasfull = getaliaspath(aliasname) + "\\" + filename
 aliasfull = aliasname + "\\" + filename
 if ts.create(aliasfull) then

 	ts.writeline("[POPUPSMALL]")

 	cmPopupSmallWhileOpen("popupform",
                         "Thank You For Trying the Small PopupAlerts." + "\n" +
                         "Writing " + filename + ": fieldModalvalue",
                         100)
   ts.writeLine("fieldModalvalue=" + string(formx.fieldModal))

 	cmPopupSmallWhileOpen("popupform",
                         "Thank You For Trying the Small PopupAlerts." + "\n" +
                         "Writing " + filename + ": fieldPopupStylevalue",
                         100)
   ts.writeLine("fieldPopupStylevalue=" + string(formx.fieldPopupStyle))


 	cmPopupSmallWhileOpen("popupform",
                         "Thank You For Trying the Small PopupAlerts." + "\n" +
                         "Writing " + filename + ": fieldDisplayStylevalue",
                         100)
   ts.writeLine("fieldDisplayStylevalue=" + string(formx.fieldDisplayStyle))


 	cmPopupSmallWhileOpen("popupform",
                         "Thank You For Trying the Small PopupAlerts." + "\n" +
                         "Writing " + filename + ": fieldShowCloseButtonvalue",
                         100)
   ts.writeLine("fieldShowCloseButtonvalue=" + string(formx.fieldShowCloseButton))


 	cmPopupSmallWhileOpen("popupform",
                         "Thank You For Trying the Small PopupAlerts." + "\n" +
                         "Writing " + filename + ": fieldSoundNamevalue",
                         100)
   ts.writeLine("fieldSoundNamevalue=" + string(formx.fieldSoundName))


 	cmPopupSmallWhileOpen("popupform",
                         "Thank You For Trying the Small PopupAlerts." + "\n" +
                         "Writing " + filename + ": fieldTimerWaitingvalue",
                         100)
   ts.writeLine("fieldTimerWaitingvalue=" + string(formx.fieldTimerWaiting))


 	cmPopupSmallWhileOpen("popupform",
                         "Thank You For Trying the Small PopupAlerts." + "\n" +
                         "Writing " + filename + ": fieldSpeedvalue",
                         100)
   ts.writeLine("fieldSpeedvalue=" + string(formx.fieldSpeed))


 	cmPopupSmallWhileOpen("popupform",
                         "Thank You For Trying the Small PopupAlerts." + "\n" +
                         "Writing " + filename + ": fieldMousePointervalue",
                         100)
   ts.writeLine("fieldMousePointervalue=" + string(formx.fieldMousePointer))


 	cmPopupSmallWhileOpen("popupform",
                         "Thank You For Trying the Small PopupAlerts." + "\n" +
                         "Writing " + filename + ": fieldInterNetEffectsvalue",
                         100)
   ts.writeLine("fieldInterNetEffectsvalue=" + string(formx.fieldInterNetEffects))


 	cmPopupSmallWhileOpen("popupform",
                         "Thank You For Trying the Small PopupAlerts." + "\n" +
                         "Writing " + filename + ": fieldBackgroundStylevalue",
                         100)
   ts.writeLine("fieldBackgroundStylevalue=" + string(formx.fieldBackgroundStyle))


 	cmPopupSmallWhileOpen("popupform",
                         "Thank You For Trying the Small PopupAlerts." + "\n" +
                         "Writing " + filename + ": fieldAutoClosevalue",
                         100)
   ts.writeLine("fieldAutoClosevalue=" + string(formx.fieldAutoClose))


 	cmPopupSmallWhileOpen("popupform",
                         "Thank You For Trying the Small PopupAlerts." + "\n" +
                         "Writing " + filename + ": fieldTextAlignmentvalue",
                         100)
   ts.writeLine("fieldTextAlignmentvalue=" + string(formx.fieldTextAlignment))


 	cmPopupSmallWhileOpen("popupform",
                         "Thank You For Trying the Small PopupAlerts." + "\n" +
                         "Writing " + filename + ": fieldFontColorvalue",
                         100)
   ts.writeLine("fieldFontColorvalue=" + string(formx.fieldFontColor))


 	cmPopupSmallWhileOpen("popupform",
                         "Thank You For Trying the Small PopupAlerts." + "\n" +
                         "Writing " + filename + ": fieldOwnerModevalue",
                         100)
   ts.writeLine("fieldOwnerModevalue=" + string(formx.fieldOwnerMode))


 	cmPopupSmallWhileOpen("popupform",
                         "Thank You For Trying the Small PopupAlerts." + "\n" +
                         "Writing " + filename + ": fieldOwnerPositionvalue",
                         100)
   ts.writeLine("fieldOwnerPositionvalue=" + string(formx.fieldOwnerPosition))


 	cmPopupSmallWhileOpen("popupform",
                         "Thank You For Trying the Small PopupAlerts." + "\n" +
                         "Writing " + filename + ": fieldPopupTopvalue",
                         100)
   ts.writeLine("fieldPopupTopvalue=" + string(formx.fieldPopupTop))


 	cmPopupSmallWhileOpen("popupform",
                         "Thank You For Trying the Small PopupAlerts." + "\n" +
                         "Writing " + filename + ": fieldPopupLeftvalue",
                         100)
   ts.writeLine("fieldPopupLeftvalue=" + string(formx.fieldPopupLeft))


 	cmPopupSmallWhileOpen("popupform",
                         "Thank You For Trying the Small PopupAlerts." + "\n" +
                         "Writing " + filename + ": fieldTextvalue",
                         100)
   ts.writeLine("fieldTextvalue=" + string(formx.fieldText))
   ts.writeLine("endfieldTextvalue")



 	cmPopupSmallWhileOpen("popupform",
                         "Thank You For Trying the Small PopupAlerts." + "\n" +
                         "Writing " + filename + ": fieldInterNetActionLinkTextvalue",
                         100)
   ts.writeLine("fieldInterNetActionLinkTextvalue=" + string(formx.fieldInterNetActionLinkText))
   ts.writeLine("endfieldInterNetActionLinkTextvalue")


   ts.close()

 endif
 setMouseShape(MouseArrow,TRUE)

endif
onfail
 setMouseShape(MouseArrow,TRUE)
 errorclear()
endtry


endMethod
 cmFormMainSaveIni 5р method cmReadMultilineString(stFullfilename string,
										stSearchstart string,
                     			stSearchend string)string

var
stringRes,
stringRestempone,
stringRestemptwo string

ts 	TextStream
firstCharOne, lastCharOne LongInt
firstCharTwo, lastCharTwo LongInt
tsLoop longint
totalLoop longint

endvar

try
{method used in: popsmfrw}
;method to read a multiline string out
;of a file without the last chr(13) + chr(10) = CR/LF

if ts.open(stFullfilename, "r") = true then
   stringRes = blank()

	firstCharOne = 0
   lastCharOne = 0
   firstCharTwo = 0
   lastCharTwo = 0

   ts.advMatch(firstCharOne, lastCharOne, stSearchstart + "=")
   ts.advMatch(firstCharTwo, lastCharTwo, stSearchend)

   tsLoop = 1
   totalLoop = firstCharTwo - lastCharOne - 2
   ts.setPosition(lastCharOne)

   stringRestempone = blank()
   while totalLoop > 0
   	ts.readChars(stringRestemptwo, int(min(totalLoop,32767)))
      stringRestempone = stringRestempone + stringRestemptwo
      totalLoop = totalLoop - 32767
   endwhile

   stringRes = stringRestempone

   ts.close()
   return stringRes
else
	fail()
endif
onfail
	errorclear()
	stringRes = blank()
	return stringRes
endtry


endMethod
 cmReadMultilineString 6r method cmPickColorOutBitmap(stTitleForm string,
										liXa longint,
                        		liYa longint)longint
var
frmMain form

liResColor longint

;get color out of bitmap
liResDC longint
liResPixel longint
liResReleaseDC longint


endvar
{method used in: popsmfrw}
;color pick out of bitmap with gdi32.dll
try
if frmMain.attach(stTitleForm) then
 liResColor = longint(-1)



;get the color
  liResDC = GetDC(frmMain.windowClientHandle())
  liResPixel = GetPixel(liResDC, liXa, liYa)
  liResReleaseDC = ReleaseDC(frmMain.windowClientHandle(), liResDC)

  if liResPixel = 14278369 or liResPixel = 15987699 then ;exclude frame and background color
	  liResColor = longint(-1)
  else
	  liResColor = liResPixel
  endif
  return liResColor

endif


onfail
 errorclear()
 liResColor = longint(-1)
 return liResColor
endtry
endMethod
 cmPickColorOutBitmap 7 method cmPickColorOfScreen(stTitleForm string)longint
var
liResColor longint

;dll manipulation capcolor.dll
liResRed longint
liResGreen longint
liResBlue longint
liResPickColor longint

frmMain form
endvar
{method used in: popsmfrw}
;color picker dll
try
if frmMain.attach(stTitleForm) then
 liResColor = longint(-1)

 liResPickColor = cmPickColor(liResRed, liResGreen, liResBlue)
 if liResPickColor = longint(-1) then
   liResColor = RGB(liResRed, liResGreen, liResBlue)
 else
 	liResColor = longint(-1)
 endif

 return liResColor

endif
onfail
 errorclear()
 liResColor = longint(-1)
 return liResColor
endtry
endMethod
 cmPickColorOfScreen 8 method cmLoadIcon(liWinhandle longint,
						stFullResourceFile string,
						liIconIndex longint)

var
 liCurrentIcon longint
endvar
;load icon out of dll ; searching for alternative method needed
try
	liCurrentIcon = 0
	liCurrentIcon = ExtractIconA(0, stFullResourceFile, liIconIndex)
   winSendMessage(liWinhandle, fromhex("0x0080"), 0, liCurrentIcon)


onfail
errorclear()
endtry

endMethod
 cmLoadIcon 9n method cmFormMainOpen(stTitleForm string,
								stAliasChoice string,
								loBackcolor longint,
                        stIniToRead string,
                        liWinhandle longint)
var
frmMain form

grResGraphic graphic

stPrivDir 		string

endvar
{method used in: popsmfrw}
;opens up the main 'play with' form
try
if frmMain.attach(stTitleForm) then

delayScreenUpdates(Yes)

{--->>>>If the unpacked graphics and smpopsm.dll should reside in another alias: change it here}

	stPrivDir = getAliasPath("PRIV")

{--->>>>}

;set the icon
  ;	frmMain.setIcon("")
;backcolor
 	cmPopupSmallWhileOpen("popupform",
                         "Welcome to the Small PopupAlerts." + "\n" +
                         "Loading Backcolor...",
                         300)
	frmMain.color = loBackcolor
   frmMain.detailbox.color = RGB(239, 238, 235)
	frmMain.detailbox.detailboxline.color = cl3dShadow

;formresize
 	cmPopupSmallWhileOpen("popupform",
                         "Welcome to the Small PopupAlerts." + "\n" +
                         "Loading cmFormMainResize...",
                         300)

  	cmFormMainResize(stTitleForm,False,False)

;toolbar

 	cmPopupSmallWhileOpen("popupform",
                         "Welcome to the Small PopupAlerts." + "\n" +
                         "Loading Toolbar...",
                         300)

   frmMain.bitmaptoolbar.Design.SizeToFit = False
  ;works fine for OS < 5.1
  ;	grResGraphic = cmReadBitmap(stAliasChoice + "\\smpopsm.dll",
  ;													"6000",
  ;                               		liWinhandle)




	if isFile(stPrivDir + "\\6000.bmp") then
	else

		liRet = cmSaveBitmapOutOfDllToFile(stPrivDir,
															stAliasChoice + "\\smpopsm.dll",
															"6000")
	endif

	if grResGraphic.readFromFile(stPrivDir + "\\6000.bmp") = True then
   	frmMain.bitmaptoolbar = grResGraphic
	endif

	;frmMain.formbox1.Design.ContainObjects = False
	frmMain.formbox1.visible = False
	frmMain.formbox1.frame.color = transparent
	frmMain.formbox1.color = transparent

	;frmMain.formbox2.Design.ContainObjects = False
	frmMain.formbox2.visible = False
	frmMain.formbox2.frame.color = transparent
	frmMain.formbox2.color = transparent

;load color picker out of resource
 ;	grResGraphic = cmReadBitmap(stAliasChoice + "\\smpopsm.dll",
 ;																"7000",
 ;                                					liWinhandle)
 	cmPopupSmallWhileOpen("popupform",
                         "Welcome to the Small PopupAlerts." + "\n" +
                         "Loading ColorPicker...",
                         300)

	if isFile(stPrivDir + "\\7000.bmp") then
	else

		liRet = cmSaveBitmapOutOfDllToFile(stPrivDir,
															stAliasChoice + "\\smpopsm.dll",
															"7000")
	endif

	if grResGraphic.readFromFile(stPrivDir + "\\7000.bmp") = True then
   	frmMain.bitmapcolorchoose = grResGraphic
	endif

;read ini file  in aliaspath popsmini.ini

   cmFormMainReadIni(stTitleForm,
   						stAliasChoice,
               		stIniToRead);popsmini.ini


delayScreenUpdates(No)

endif
onfail
errorclear()
endtry

endMethod
 cmFormMainOpen :Џ! method cmFormMainPreviewMouseIn(stTitleForm string,
								loInOrOut logical,
                        stAliasChoice string,
                        stMousePointerChoice string);25-02-2005
var
frmMain form
stAliasPath string

endvar
{method used in: popsmfrw}
;;load cursor on previewbitmap

try
if frmMain.attach(stTitleForm) then
  if loInOrOut = True then
     if stMousePointerChoice = "1" then ;hand
			stAliasPath = stAliasChoice + "\\smpopsm.dll"
			cmLoadCursor(stAliasPath, "8000")
     endif
  else
     if stMousePointerChoice = "1" then
   		setMouseShape(MouseArrow,TRUE)
     endif

  endif

endif
onfail
 errorclear()
endtry



endMethod
 cmFormMainPreviewMouseIn ;!% method cmFormMainPreviewTextMouseIn(stTitleForm string,
												loInOrOut logical,
                        				stfieldInterNetEffectsChoice string,
                        				lirestorecolor longint);25-02-2005
var
frmMain form
endvar

try
{method used in: popsmfrw}
;check internet on or off
if frmMain.attach(stTitleForm) then
  if loInOrOut = True then
     if stfieldInterNetEffectsChoice = "0" then  ;True
        frmMain.contexttext.Font.Color = Blue
        frmMain.contexttext.Font.Style = FontAttribUnderline
     endif
  else
     if stfieldInterNetEffectsChoice = "0" then
        frmMain.contexttext.Font.Color = lirestorecolor
        frmMain.contexttext.Font.Style = FontAttribNormal
     endif

  endif

endif
onfail
 errorclear()
endtry


endMethod
 cmFormMainPreviewTextMouseIn <њ method  cmPopupSmallTextMouseUp(stTitleForm string);25-02-2005
var
formx form

endvar

try
if formx.attach(stTitleForm) then
     if propertiesarray["InterNetEffects"] = "0" then
        if propertiesarray["InterNetActionLinkText"] = "" then
        else
        ;if cmIsValidUrl(propertiesarray["InterNetActionLinkText"]) = True then
			StartWebBrowser(propertiesarray["InterNetActionLinkText"])
        ;endif
        endif
     endif

endif
onfail
 errorclear()
endtry

endMethod
 cmPopupSmallTextMouseUp =Й method cmFormMainResize(stTitleForm string,
								loScreenUpdatesDelay logical,
                        loRestorePositions logical)
var
frmMain form

;form
liXa, liYa, liWa, liHa longint

;page
liXp, liYp, liWp, liHp longint

;toolbar
liXt, liYt, liWt, liHt longint

;properties
liXpr, liYpr, liWpr, liHpr longint


;detailbox
liXd, liYd, liWd, liHd longint

;detailboxline
liXdl, liYdl, liWdl, liHdl longint

;codefield
liXc, liYc, liWc, liHc longint
endvar

{method used in: popsmfrw}

;resize the main form
try
if frmMain.attach(stTitleForm) then
 if loScreenUpdatesDelay = True then
	delayScreenUpdates(Yes)
 endif
 	if loRestorePositions = True then

      frmMain.bitmaptoolbar.getposition(liXt, liYt, liWt, liHt)
      frmMain.bitmaptoolbar.setposition(liXt, liYt, positionarray["formwidth"] - liXt, liHt)

      frmMain.boxproperties.getposition(liXpr, liYpr, liWpr, liHpr)
      frmMain.boxproperties.setposition(liXpr, liYpr, liWpr, positionarray["detailboxheight"])


      frmMain.detailbox.detailboxline.getposition(liXdl, liYdl, liWdl, liHdl)
      frmMain.detailbox.detailboxline.setposition(liXdl, liYdl, positionarray["detailboxlinewidth"], liHdl)


      frmMain.writecodefield.getposition(liXc, liYc, liWc, liHc)
      frmMain.writecodefield.setposition(liXc, liYc, positionarray["writecodefieldwidth"], positionarray["writecodefieldheight"])

      frmMain.detailbox.getposition(liXd, liYd, liWd, liHd)
      frmMain.detailbox.setposition(liXd, liYd, positionarray["detailboxwidth"], positionarray["detailboxheight"])

      frmMain.mainpage.getposition(liXp, liYp, liWp, liHp)
      frmMain.mainpage.setposition(liXp, liYp, positionarray["formwidth"], positionarray["formheight"])

    ;  frmMain.setposition(liXa, liYa, liWa, liHa)

   else

   	frmMain.getposition(liXa, liYa, liWa, liHa)
		frmMain.mainpage.getposition(liXp, liYp, liWp, liHp)
      frmMain.mainpage.setposition(liXp, liYp, liWa, liHa)


      frmMain.bitmaptoolbar.getposition(liXt, liYt, liWt, liHt)
      frmMain.bitmaptoolbar.setposition(liXt, liYt, liWa - liXt, liHt)

      frmMain.boxproperties.getposition(liXpr, liYpr, liWpr, liHpr)
      frmMain.boxproperties.setposition(liXpr, liYpr, liWpr, liHa - liYpr - 600) ;600 XP margin

      frmMain.detailbox.getposition(liXd, liYd, liWd, liHd)
      frmMain.detailbox.setposition(liXd, liYd, liWa - liXd - liXd - liXpr + liWpr, liHa - liYd - 600)
      frmMain.detailbox.getposition(liXd, liYd, liWd, liHd)

      frmMain.detailbox.detailboxline.getposition(liXdl, liYdl, liWdl, liHdl)
      frmMain.detailbox.detailboxline.setposition(liXdl, liYdl, liWd - liXdl - liXdl, liHdl)


      frmMain.writecodefield.getposition(liXc, liYc, liWc, liHc)
      frmMain.writecodefield.setposition(liXc, liYc, liWd - liXc - liXc, liHd - liYc - 600)

   endif
 if loScreenUpdatesDelay = True then
	delayScreenUpdates(No)
 endif
endif
onfail
	errorclear()
endtry
endMethod
 cmFormMainResize >џ method cmFormMainMaximize(stTitleForm string)logical
var
	frmMain form

	liXa,liYa,liWa,liHa	longint
	liXan,liYan,liWan,liHan	longint

   liRectLong longint

   liLeft longint
   liTop longint
   liRight longint
   liBottom longint

   ptUpperLeftPoint point
	ptBottomRightPoint point

   ptConvertedUpperLeftPoint point
   ptConvertedBottomRightPoint point

   loResMaximize logical
endvar
;alternative method to
;maximize the form without
;all covering toolbars (start), etc... = desktopspace

try
if frmMain.attach(stTitleForm) then

; Allocate memory
;
	liRectLong = cmGlobalAlloc(16)


   SystemParametersInfoA(SPI_GETWORKAREA, 0, liRectLong, 0)

	RtlMoveMemory(liLeft,liRectLong,4)
	RtlMoveMemory(liTop,liRectLong + 4,4)
	RtlMoveMemory(liRight,liRectLong + 8,4)
	RtlMoveMemory(liBottom,liRectLong + 12,4)

; Release memory
;
	cmGlobalFree(liRectLong)


   ptUpperLeftPoint = Point(liLeft, liTop)

   ptBottomRightPoint = Point(liRight, liBottom)

   ptConvertedUpperLeftPoint = pixelsToTwips(ptUpperLeftPoint)

   ptC               `convertedBottomRightPoint = pixelsToTwips(ptBottomRightPoint)

   ;get the new rectangle
   liXa = ptConvertedUpperLeftPoint.x()
   liYa = ptConvertedUpperLeftPoint.y()
   liWa = ptConvertedBottomRightPoint.x()
   liHa = ptConvertedBottomRightPoint.y()

;store the restoreposition
   frmMain.getposition(liXan,liYan,liWan,liHan)
   positionarray["formleft"] = liXan
   positionarray["formtop"] = liYan
   positionarray["formwidth"] = liWan
   positionarray["formheight"] = liHan

;set the new position
   frmMain.setposition(liXa,liYa,liWa,liHa)

   loResMaximize = True
   return loResMaximize
endif
onfail
	errorclear()
   loResMaximize = False
   return loResMaximize

endtry
endMethod
 cmFormMainMaximize ?њ method cmFormMainMaximizeGet(stTitleForm string)logical
var
;form
	frmMain form
	liXan,liYan,liWan,liHan	longint

;detailbox
	liXd, liYd, liWd, liHd longint

;detailboxline
	liXdl, liYdl, liWdl, liHdl longint

;codefield
	liXc, liYc, liWc, liHc longint


   loResMaximize logical
endvar
{method used in: popsmfrw}
;get the positions of the different objects before maximizing of the form
try
if frmMain.attach(stTitleForm) then

;store the restoreposition
   frmMain.getposition(liXan,liYan,liWan,liHan)
   positionarray["formleft"] = liXan
   positionarray["formtop"] = liYan
   positionarray["formwidth"] = liWan
   positionarray["formheight"] = liHan

   frmMain.detailbox.getposition(liXd, liYd, liWd, liHd)
   positionarray["detailboxwidth"] = liWd
   positionarray["detailboxheight"] = liHd

   frmMain.detailbox.detailboxline.getposition(liXdl, liYdl, liWdl, liHdl)
   positionarray["detailboxlinewidth"] = liWdl

   frmMain.writecodefield.getposition(liXc, liYc, liWc, liHc)
   positionarray["writecodefieldwidth"] = liWc
   positionarray["writecodefieldheight"] = liHc

   loResMaximize = True
   return loResMaximize
endif
onfail
	errorclear()
   loResMaximize = False
   return loResMaximize

endtry

endMethod
 cmFormMainMaximizeGet @  method cmShowHelpFile(stHelpfile string, liHelptopic longint)
var

endvar
{method used in: popsmfrw}
;helpfile loaded
try
	if isFile(stHelpfile) then
   	helpShowContext(stHelpfile, liHelptopic)
   endif
onfail
	errorclear()
endtry
endMethod
 cmShowHelpFile Aм5 method cmCodeCreate(uiTarget uiObject,
						  stfieldModal string,
                    stfieldPopupStyle string,
                    stfieldDisplayStyle string,
                    stfieldShowCloseButton string,
                    stfieldSoundName string,
                    stfieldTimerWaiting string,
                    stfieldSpeed string,
                    stfieldMousePointer string,
                    stfieldInterNetActionLinkText string,
                    stfieldInterNetEffects string,
                    stfieldBackgroundStyle string,
                    stfieldAutoClose string,
                    stfieldOwnerMode string,
                    stfieldOwnerPosition string,
                    stfieldPopupTop string,
                    stfieldPopupLeft string,
                    stfieldTextAlignment string,
                    stfieldFontColor string,
                    stfieldText string)
{method used in: popsmfrw}
;Create Code

var
stReturn string
stCRLF string
arBreakApart Array[] String
liLoop longint

endvar
try
setMouseShape(MouseWait,TRUE)

delayScreenUpdates(Yes)
;check stfieldText

   cmTextStyle(uiTarget,False,"YourLibVar.cmCallPopup(" + "\"" + stfieldModal + "\"" + "," + space(7),FontAttribNormal,RGB(0,0,0))
   cmTextStyle(uiTarget,False,";Modal",FontAttribItalic,DarkBlue)

   cmTextStyle(uiTarget,True,space(25) + "\"" + stfieldPopupStyle + "\"" + "," + space(7),FontAttribNormal,RGB(0,0,0))
   cmTextStyle(uiTarget,False,";PopupStyle",FontAttribItalic,DarkBlue)

   cmTextStyle(uiTarget,True,space(25) + "\"" + stfieldDisplayStyle + "\"" + "," + space(7),FontAttribNormal,RGB(0,0,0))
   cmTextStyle(uiTarget,False,";DisplayStyle",FontAttribItalic,DarkBlue)

   cmTextStyle(uiTarget,True,space(25) + "\"" + stfieldShowCloseButton + "\"" + "," + space(7),FontAttribNormal,RGB(0,0,0))
   cmTextStyle(uiTarget,False,";ShowCloseButton",FontAttribItalic,DarkBlue)

   cmTextStyle(uiTarget,True,space(25) + "\"" + stfieldSoundName + "\"" + "," + space(7),FontAttribNormal,RGB(0,0,0))
   cmTextStyle(uiTarget,False,";SoundName",FontAttribItalic,DarkBlue)

   cmTextStyle(uiTarget,True,space(25) + "\"" + stfieldTimerWaiting + "\"" + "," + space(7),FontAttribNormal,RGB(0,0,0))
   cmTextStyle(uiTarget,False,";TimerWaiting",FontAttribItalic,DarkBlue)

   cmTextStyle(uiTarget,True,space(25) + "\"" + stfieldSpeed + "\"" + "," + space(7),FontAttribNormal,RGB(0,0,0))
   cmTextStyle(uiTarget,False,";Speed",FontAttribItalic,DarkBlue)

   cmTextStyle(uiTarget,True,space(25) + "\"" + stfieldMousePointer + "\"" + "," + space(7),FontAttribNormal,RGB(0,0,0))
   cmTextStyle(uiTarget,False,";MousePointer",FontAttribItalic,DarkBlue)

   cmTextStyle(uiTarget,True,space(25) + "\"" + stfieldInterNetActionLinkText + "\"" + "," + space(7),FontAttribNormal,RGB(0,0,0))
   cmTextStyle(uiTarget,False,";InterNetActionLinkText",FontAttribItalic,DarkBlue)

   cmTextStyle(uiTarget,True,space(25) + "\"" + stfieldInterNetEffects + "\"" + "," + space(7),FontAttribNormal,RGB(0,0,0))
   cmTextStyle(uiTarget,False,";InterNetEffects",FontAttribItalic,DarkBlue)

   cmTextStyle(uiTarget,True,space(25) + "\"" + stfieldBackgroundStyle + "\"" + "," + space(7),FontAttribNormal,RGB(0,0,0))
   cmTextStyle(uiTarget,False,";BackgroundStyle",FontAttribItalic,DarkBlue)

   cmTextStyle(uiTarget,True,space(25) + "\"" + stfieldAutoClose + "\"" + "," + space(7),FontAttribNormal,RGB(0,0,0))
   cmTextStyle(uiTarget,False,";AutoClose",FontAttribItalic,DarkBlue)

   cmTextStyle(uiTarget,True,space(25) + "\"" + stfieldOwnerMode + "\"" + "," + space(7),FontAttribNormal,RGB(0,0,0))
   cmTextStyle(uiTarget,False,";OwnerMode",FontAttribItalic,DarkBlue)

   cmTextStyle(uiTarget,True,space(25) + "\"" + stfieldOwnerPosition + "\"" + "," + space(7),FontAttribNormal,RGB(0,0,0))
   cmTextStyle(uiTarget,False,";OwnerPosition",FontAttribItalic,DarkBlue)

   cmTextStyle(uiTarget,True,space(25) + "\"" + stfieldPopupTop + "\"" + "," + space(7),FontAttribNormal,RGB(0,0,0))
   cmTextStyle(uiTarget,False,";PopupTop",FontAttribItalic,DarkBlue)

   cmTextStyle(uiTarget,True,space(25) + "\"" + stfieldPopupLeft + "\"" + "," + space(7),FontAttribNormal,RGB(0,0,0))
   cmTextStyle(uiTarget,False,";PopupLeft",FontAttribItalic,DarkBlue)

   cmTextStyle(uiTarget,True,space(25) + "\"" + stfieldTextAlignment + "\"" + "," + space(7),FontAttribNormal,RGB(0,0,0))
   cmTextStyle(uiTarget,False,";TextAlignment",FontAttribItalic,DarkBlue)

   cmTextStyle(uiTarget,True,space(25) + "\"" + stfieldFontColor + "\"" + "," + space(7),FontAttribNormal,RGB(0,0,0))
   cmTextStyle(uiTarget,False,";FontColor",FontAttribItalic,DarkBlue)

   ;split the textfield if it contains cr/lf
   stCRLF = chr(13) + chr(10)
	if stfieldText.searchEx(stCRLF) > 0 then
		stfieldText.breakApart(arBreakApart,stCRLF)
      stReturn = blank()
   	for liLoop from 1 to arBreakApart.size()
         if arBreakApart[liLoop] > blank() then
            switch
            	case liLoop < arBreakApart.size():
		             stReturn = "\"" + arBreakApart[liLoop] + "\"" + " + " + "\"" + "\\n" + "\"" + " + "
		             cmTextStyle(uiTarget,True,space(25) + stReturn + space(7),FontAttribNormal,RGB(0,0,0))
               case liLoop = arBreakApart.size():
		             stReturn = "\"" + arBreakApart[liLoop] + "\"" + ")"
		             cmTextStyle(uiTarget,True,space(25) + stReturn + space(7),FontAttribNormal,RGB(0,0,0))
				endswitch
         endif
      endfor
   else
	   cmTextStyle(uiTarget,True,space(25) + "\"" + stfieldText + "\"" + ")" + space(7),FontAttribNormal,RGB(0,0,0))

	endif

   cmTextStyle(uiTarget,False,";Text",FontAttribItalic,DarkBlue)



 delayScreenUpdates(No)
 setMouseShape(MouseArrow,TRUE)

onfail
	errorclear()
endtry


endMethod
 cmCodeCreate B% method cmTextStyle(uiTarget uiobject,
                     loInsertLine logical,
                     stText string,
							siFontStyle smallint,
                     siFontColor longint)

var
endvar
{method used in: popsmfrw}
;part of create code: for font and line properties
	if loInsertLine = True then
		uiTarget.action(EditInsertLine)
   endif
   uiTarget.action(SelectRight)
   uiTarget.SelectedText = stText
   uiTarget.font.style = siFontStyle
   uiTarget.font.color = siFontColor
   uiTarget.action(moveEnd)

endMethod
 cmTextStyle Cj method cmRightClickField(liLookOfPopup longint,
													liMxa longint,
                                       liMya longint)
var

pmFormBoxPop	popupmenu
stKeuze	string

stVrString string


biClipboard    Binary
arClipboard   Array[] String

endvar
{method used in: popsmfrw}

;right click appropriate field: menu popup
try


setMouseShape(MouseArrow,TRUE)

if liLookOfPopup = 1 then
	pmFormBoxPop.addtext("&Cut");Knippen
	pmFormBoxPop.addtext("C&opy");Kopiыren

	biClipboard.enumClipboardFormats(arClipboard)
	if arClipboard.size() = 0 then
		pmFormBoxPop.addtext("&Paste", menugrayed + menudisabled);Plakken
	else
 		if clipboardHasFormat("CF_TEXT") then

			if stVrString.readFromClipboard() = True then
				pmFormBoxPop.addtext("&Paste");Plakken
   		else
				pmFormBoxPop.addtext("&Paste", menugrayed + menudisabled);Plakken

   		endif
 		else
			pmFormBoxPop.addtext("&Paste", menugrayed + menudisabled);Plakken

 		endif
	endif

	pmFormBoxPop.addtext("&Delete");Verwijderen
	pmFormBoxPop.addseparator()
	pmFormBoxPop.addtext("&Select All");Alles Selecteren
	pmFormBoxPop.addseparator()

	if arClipboard.size() = 0 then
		pmFormBoxPop.addtext("C&lipboard Clear", menugrayed + menudisabled);Klembord ledigen
	else
		pmFormBoxPop.addtext("C&lipboard Clear");Klembord ledigen
	endif


else
	pmFormBoxPop.addtext("&Cut", menugrayed + menudisabled);Knippen
	pmFormBoxPop.addtext("C&opy", menugrayed + menudisabled);Kopiыren

	biClipboard.enumClipboardFormats(arClipboard)
	if arClipboard.size() = 0 then
		pmFormBoxPop.addtext("&Paste", menugrayed + menudisabled);Plakken
	else
 		if clipboardHasFormat("CF_TEXT") then

			if stVrString.readFromClipboard() = True then
				pmFormBoxPop.addtext("&Paste");Plakken
   		else
				pmFormBoxPop.addtext("&Paste", menugrayed + menudisabled);Plakken

   		endif
 		else
			pmFormBoxPop.addtext("&Paste", menugrayed + menudisabled);Plakken

 		endif
	endif

	pmFormBoxPop.addtext("&Delete", menugrayed + menudisabled);Verwijderen
	pmFormBoxPop.addseparator()
	pmFormBoxPop.addtext("&Select All");Alles Selecteren
	pmFormBoxPop.addseparator()
	if arClipboard.size() = 0 then
		pmFormBoxPop.addtext("C&lipboard Clear", menugrayed + menudisabled);Klembord ledigen
	else
		pmFormBoxPop.addtext("C&lipboard Clear");Klembord ledigen
	endif

endif


stKeuze = pmFormBoxPop.Show(liMxa,liMya)
if not stKeuze.isblank() then

	switch
		case stKeuze = "&Cut":
			action(EditCutSelection)

		case stKeuze = "C&opy":
			action(EditCopySelection)

		case stKeuze = "&Paste":
			action(EditPaste)

		case stKeuze = "&Delete":
			action(EditDeleteSelection)

		case stKeuze = "&Select All":
			action(SelectSelectAll)

		case stKeuze = "C&lipboard Clear":
         biClipboard.clipBoardErase()



	endswitch

else

endif
onfail
	errorclear()
endtry




endMethod
 cmRightClickField D method cmLoadString(stFullResourceFile string,
											liResID longint)string ;25-02-2005
;load string out of dll
var
stStringReturn string
liLength longint

stTrimR string
stTrimL string

liResLoadstring longint

liResourceHandle longint
liResourceHandleFree longint

endvar
{method used in: popsmfrw}
;load string out of dll
try

;general
	liResourceHandle = 0
   stStringReturn = fill(" ", 255) ; max set to 64000 but mainly not necessary: 255 is enough
   liLength = stStringReturn.size() ;max buffer to store string


;Load the dll in memory and get its handle
    liResourceHandle = LoadLibraryA(stFullResourceFile)
    if liResourceHandle = 0 Then
    liResourceHandle.View()
       stStringReturn = blank()
       return stStringReturn
    endif

;load the string
    liResLoadstring = LoadStringA(liResourceHandle, liResID, stStringReturn, liLength)

;free our loaded DLL
   	if liResourceHandle > 0 then
    		liResourceHandleFree = FreeLibrary(liResourceHandle)
   	endif

;return: trim of the leading - ending spaces if included
	stTrimR = stStringReturn.rTrim()
   stTrimL = stTrimR.lTrim()
   stStringReturn = stTrimL
   return stStringReturn



onfail
	errorclear()
	if liResourceHandle > 0 then
    liResourceHandleFree = FreeLibrary(liResourceHandle)
   endif
   stStringReturn = blank()
   return stStringReturn
endtry

endMethod

 cmLoadString E" method cmSaveBitmapOutOfDllToFile(stAlias string,
												stFullResourceFile string,
												stResID string)longint
{saves a bitmap in dll to file}
var

liRet longint
endvar
try
;general
	liRet = 0

;succes = -1

   liRet = cmSaveBitmapResToFile(stAlias, stFullResourceFile, stResID)
   return liRet

onfail
	errorclear()
	liRet = 0
   return liRet
endtry



endMethod
 cmSaveBitmapOutOfDllToFile FЂ method cmGetWorkArea(var liXa longint, var liYa longint, var liWa longint, var liHa longint)Logical
var
loRes logical

liRectLong longint

liLeft longint
liTop longint
liRight longint
liBottom longint

ptUpperLeftPoint point
ptBottomRightPoint point

ptConvertedUpperLeftPoint point
ptConvertedBottomRightPoint point

endvar
try

	liRectLong = cmGlobalAlloc(16)


   SystemParametersInfoA(SPI_GETWORKAREA, 0, liRectLong, 0)

	RtlMoveMemory(liLeft,liRectLong,4)
	RtlMoveMemory(liTop,liRectLong + 4,4)
	RtlMoveMemory(liRight,liRectLong + 8,4)
	RtlMoveMemory(liBottom,liRectLong + 12,4)

   cmGlobalFree(liRectLong)

   ptUpperLeftPoint = Point(liLeft, liTop)
   ptBottomRightPoint = Point(liRight, liBottom)

   ptConvertedUpperLeftPoint = pixelsToTwips(ptUpperLeftPoint)
   ptConvertedBottomRightPoint = pixelsToTwips(ptBottomRightPoint)

   ;get the new rectangle
   liXa = ptConvertedUpperLeftPoint.x()
   liYa = ptConvertedUpperLeftPoint.y()
   liWa = ptConvertedBottomRightPoint.x()
   liHa = ptConvertedBottomRightPoint.y()

	loRes = True
	return loRes

onfail

	errorclear()
	loRes = False
	return loRes
endtry



endMethod
 cmGetWorkArea G method cmPopupSmallPlaySound()
var
stAliaspath string

endvar
{--->>>>If the smpopsm.dll is in another alias: change it here}

     stAliaspath = getaliaspath("work")

{--->>>>}

;play sound or not
switch
	case propertiesarray["PlaySound"] = "0": stInputWave = "0"
	case propertiesarray["PlaySound"] = "1": stInputWave = "130"
	case propertiesarray["PlaySound"] = "2": stInputWave = "131"
	case propertiesarray["PlaySound"] = "3": stInputWave = "132"
	case propertiesarray["PlaySound"] = "4": stInputWave = "133"
	case propertiesarray["PlaySound"] = "5": stInputWave = "134"
	case propertiesarray["PlaySound"] = "6": stInputWave = "135"

endswitch
if	stInputWave = "0" then
else
	liResWave = cmPlayWavFile(stAliaspath + "\\smpopsm.dll", stInputWave)
endif

endMethod
 cmPopupSmallPlaySound HZ# method cmPopupSmallPopupStart(stTitleForm string,
										liX longint,
                           	liY longint,
                           	liW longint,
                           	liH longint,
                           	liMaxHeight longint)
var
frmPopup form

;topmost
liRestopmost longint

liWHandle longint

liXan, liYan, liWan, liHan longint

liCurHeight , liNewHeight longint
endvar
if frmPopup.attach(stTitleForm) then
;play sound if necessary
	cmPopupSmallPlaySound()

   frmPopup.setposition(liX , liY, liW, liH)

;check to see if it is got to be the topmost window
   	if propertiesarray["OwnerMode"] = "1" then
      	liWHandle = frmPopup.windowClientHandle()
         liRestopmost = cmPopupSmallFormOnTop(True, liWHandle, 0, 0, 0, 0, 83)
      endif

;force to put on desktop
   frmPopup.bringtotop()


;popup
   ;popup
   while True
    frmPopup.getposition(liXan, liYan, liWan, liHan)

    liCurHeight = liHan
    if liCurHeight < liMaxHeight Then ;or the height of the page if curHeight < Ham; standard: 4121
        liNewHeight = liCurHeight + longint(propertiesarray["Speed"]) ;100 : the smaller the slower it popsup

        if liNewHeight > liMaxHeight then
        		liNewHeight = liMaxHeight
        endif

        frmPopup.setposition(liXan,
        							liYan - (liNewHeight - liCurHeight),
                           liWan,
                           liHan + (liNewHeight - liCurHeight))


        frmPopup.bringtotop()
        ;adapt the screen
        sleep(1)
    else
       quitloop
    endif
   endwhile




endif

endMethod
 cmPopupSmallPopupStart I\ method cmPopupSmallPopupEnd(stTitleForm string)
var
frmPopup form

liXan, liYan, liWan, liHan longint

liCurHeight , liNewHeight longint

endvar
if frmPopup.attach(stTitleForm) then

   while True
    frmPopup.getposition(liXan, liYan, liWan, liHan)

    liCurHeight = liHan
    if liCurHeight > 90 Then
        liNewHeight = liCurHeight - longint(propertiesarray["Speed"]) ;100 : the smaller the slower it popsdown

        if liNewHeight < 90 then
        		liNewHeight = 90
        endif

        frmPopup.setposition(liXan,
        								liYan - (liNewHeight - liCurHeight),
                           	liWan,
                           	liHan + (liNewHeight - liCurHeight))

        frmPopup.bringtotop()
        ;adapt the screen
        sleep(1)
    else
       quitloop
    endif
   endwhile


endif

endMethod
 cmPopupSmallPopupEnd J method cmPopupSmallClose(stTitleForm string)
var
frmClose form

endvar
try
if frmClose.attach(stTitleForm) then
 liStart = 1
;close depending on the displaystyle
	switch
   	case propertiesarray["DisplayStyle"] = "0": ;	0 = popup

         cmPopupSmallPopupEnd(stTitleForm)


      case propertiesarray["DisplayStyle"] = "1":  ;	1 = popdown

         cmPopupSmallPopdownEnd(stTitleForm)

      case propertiesarray["DisplayStyle"] = "2":  ;	2 = transparent only for windows >= w2K = version 5.0

			cmPopupSmallTransparentEnd(stTitleForm)

      case propertiesarray["DisplayStyle"] = "3":  ;	3 = atonce = full, no effects
         ;no transition method needed: just close the form
   endswitch
;check modal state of the form
   if frmClose.popupform.Modal = True then

   			formreturn("close")

   endif

	frmClose.close()

endif

onfail
endtry

endMethod
 cmPopupSmallClose K method cmPopupSmallWhileOpen(stTitleForm string,
										stText string,
                              liSleep longint);liSleep >0 = sleep(liSleep)
var
frmWhileOpen form

endvar

if frmWhileOpen.attach(stTitleForm) then
; change the context
   frmWhileOpen.contexttext = stText

;sleep if necessary
	if liSleep > 0 then
   	sleep(liSleep)
   endif
endif

endMethod
 cmPopupSmallWhileOpen L;% method cmPopupSmallPopdownStart(stTitleForm string,
										liX longint,
                           	liY longint,
                           	liW longint,
                           	liH longint,
                           	liMaxHeight longint)
var
frmPopup form

;topmost
liRestopmost longint

liWHandle longint

liXan, liYan, liWan, liHan longint

liCurHeight , liNewHeight longint
endvar
if frmPopup.attach(stTitleForm) then

;play sound if necessary
	cmPopupSmallPlaySound()

   frmPopup.setposition(liX , liY, liW, liH)

;check to see if it is got to be the topmost window
   	if propertiesarray["OwnerMode"] = "1" then
      	liWHandle = frmPopup.windowClientHandle()
         liRestopmost = cmPopupSmallFormOnTop(True, liWHandle, 0, 0, 0, 0, 83)
      endif

;force to put on desktop
   frmPopup.bringtotop()


;popdown

   while True
    frmPopup.getposition(liXan, liYan, liWan, liHan)

    liCurHeight = liHan
    if liCurHeight < liMaxHeight Then ;or the height of the page if curHeight < Ham; standard: 4121
        liNewHeight = liCurHeight + longint(propertiesarray["Speed"]) ;100 : the smaller the slower it popsup

        if liNewHeight > liMaxHeight then
        		liNewHeight = liMaxHeight
        endif

        frmPopup.setposition(liXan,
        							liYan,
                           liWan,
                           liHan + (liNewHeight - liCurHeight))


        frmPopup.bringtotop()
        ;adapt the screen
        sleep(1)
    else
       quitloop
    endif
   endwhile




endif


endMethod
 cmPopupSmallPopdownStart MB method cmPopupSmallPopdownEnd(stTitleForm string)
var
frmPopup form

liXan, liYan, liWan, liHan longint

liCurHeight , liNewHeight longint

endvar
if frmPopup.attach(stTitleForm) then

   while True
    frmPopup.getposition(liXan, liYan, liWan, liHan)

    liCurHeight = liHan
    if liCurHeight > 90 Then
        liNewHeight = liCurHeight - longint(propertiesarray["Speed"]) ;100 : the smaller the slower it popsdown

        if liNewHeight < 90 then
        		liNewHeight = 90
        endif

        frmPopup.setposition(liXan,
        								liYan,
                           	liWan,
                           	liHan + (liNewHeight - liCurHeight))

        frmPopup.bringtotop()
        ;adapt the screen
        sleep(1)
    else
       quitloop
    endif
   endwhile


endif


endMethod
 cmPopupSmallPopdownEnd Nж' method cmPopupSmallTransparentStart(stTitleForm string,
												liX longint,
                           			liY longint,
                           			liW longint,
                           			liH longint)
{Don't use this method on a winversion < 5.0}
var
frmTransparent form

;topmost
liRestopmost longint

liWHandle longint

;transparent creation
stAliaspath string
lbPopmstlb library

endvar
if frmTransparent.attach(stTitleForm) then


;play sound if necessary
	cmPopupSmallPlaySound()


   frmTransparent.setposition(liX , liY, liW, liH)

;launch
{--->>>>If the popmstlb library is in another alias: change it here}

     stAliaspath = getaliaspath("work")

{--->>>>}

	lbPopmstlb.open(stAliaspath + "\\popmstlb")
   lbPopmstlb.cmLoadFormTransparent(stTitleForm,
												frmTransparent.windowClientHandle(),
                                 	180,
                                 	5)
   lbPopmstlb.close()

;check to see if it is got to be the topmost window
   	if propertiesarray["OwnerMode"] = "1" then
      	liWHandle = frmTransparent.windowClientHandle()
         liRestopmost = cmPopupSmallFormOnTop(True, liWHandle, 0, 0, 0, 0, 83)
      endif

endif



endMethod
 cmPopupSmallTransparentStart Oь" method cmPopupSmallAtOnceStart(stTitleForm string,
												liX longint,
                           			liY longint,
                           			liW longint,
                           			liH longint)
var
frmAtOnce form

;topmost
liRestopmost longint

liWHandle longint


endvar
if frmAtOnce.attach(stTitleForm) then

;play sound if necessary
	cmPopupSmallPlaySound()


   frmAtOnce.setposition(liX , liY, liW, liH)

   frmAtOnce.bringToTop()
;check to see if it is got to be the topmost window
   	if propertiesarray["OwnerMode"] = "1" then
      	liWHandle = frmAtOnce.windowClientHandle()
         liRestopmost = cmPopupSmallFormOnTop(True, liWHandle, 0, 0, 0, 0, 83)
      endif



endif




endMethod
 cmPopupSmallAtOnceStart Pћ  method cmPopupSmallFormMouseDown(liWindowHandle longint)
var

endvar
try
;subclassing for moving the popup form around: safe, memory consuming none
	ReleaseCapture()
	winSendMessage (liWindowHandle, 161, 2, 0)

onfail
endtry


endMethod
 cmPopupSmallFormMouseDown Q method cmPopupSmallTransparentEnd(stTitleForm string)
{Don't use this method on a winversion < 5.0}
var
frmTransparent form

;transparent closing
stAliaspath string
lbPopmstlb library

endvar
if frmTransparent.attach(stTitleForm) then


{--->>>>If the popmstlb library is in another alias: change it here}

     stAliaspath = getaliaspath("work")

{--->>>>}

	lbPopmstlb.open(stAliaspath + "\\popmstlb")

   lbPopmstlb.cmCloseFormTransparent(stTitleForm,
												frmTransparent.windowClientHandle(),
                                 	180,
                                 	5)
   lbPopmstlb.close()


endif



endMethod
 cmPopupSmallTransparentEnd    p        U  b    ]   ф9  §           ф9  -                       X  X    о                 Я .    4 O C:\Program Files\Corel\WordPerfect Office 2000\Paradox\PDOXHome\DEFAULT.FT B  #Library1 POST >  џџџџ         ў 
     ў    ў                  - ReleaseCapture
user32.dllcОRtlMoveMemorykernel32.dll9ЊRtlMoveMemorykernel32.dllЊRtlMoveMemorykernel32.dllЭЉRtlMoveMemorykernel32.dllЉSystemParametersInfoA
user32.dllnЉcmSaveBitmapResToFilesmrcread.dllЈFreeLibrarykernel32.dlllЇFreeLibrarykernel32.dllбІLoadStringA
user32.dllІLoadLibraryAkernel32.dllІRtlMoveMemorykernel32.dll"RtlMoveMemorykernel32.dllьRtlMoveMemorykernel32.dllЖRtlMoveMemorykernel32.dllSystemParametersInfoA
user32.dllWExtractIconAshell32.dll~mcmPickColorsmrcread.dllъk	ReleaseDC
user32.dll/jGetPixel	gdi32.dllјiGetDC
user32.dllХiFreeLibrarykernel32.dll;CCloseClipboard
user32.dllгBFreeLibrarykernel32.dllBIsClipboardFormatAvailable
user32.dllEBSetClipboardData
user32.dll&BOpenClipboard
user32.dllўAFreeLibrarykernel32.dllоAFreeLibrarykernel32.dll}A
LoadImageA
user32.dll0ALoadLibraryAkernel32.dll@FreeLibrarykernel32.dll_?FreeLibrarykernel32.dllў>FreeLibrarykernel32.dllЇ>
PlaySoundA	winmm.dllZ>LoadLibraryAkernel32.dllШ=FreeLibrarykernel32.dll=FreeLibrarykernel32.dllЬ<	SetCursor
user32.dll<FreeLibrarykernel32.dllw<
LoadImageA
user32.dll*<LoadLibraryAkernel32.dllа;
GlobalFreekernel32.dllGlobalAllockernel32.dll/SetWindowPos
user32.dll[                   м|  V   Б       Э  џџџџ                  К            Щ                   d                       џџџџ    Є                                                              Ъc  Йd  Щ   С           	CONTAINER     ђ   С      џџџџБ               џџџџ            d  \  b  ACTIVE     >       џџџџБ               џџџџ            К  В      LASTMOUSECLICKED       \     џџџџБ               џџџџ              џ      SUBJECT     с  В     џџџџБ               џџџџ            b  Z      LASTMOUSERIGHTCLICKED     <  џ     џџџџБ               џџџџ                        SELF       Z     џџџџБ               џџџџ                	#LIBRARY1     Э  Є     џџџџБ  ?             џџџџ[       ђ    н(    Є  3  
  Ѓ      A        (  '9    №  /        Ї  д  0;  С    `  f    ю  0  h  t
  &$    К  Й      з^  q  іY  6          [  46    д  Ъc  ж
  О  н        w          у    њ  O  A  T  ЛR  Щ   SPI_GETWORKAREA "  0   	   SND_SYNC "      P   	SND_ASYNC "     D   SND_NODEFAULT "     e   SND_LOOP "     r   
SND_NOSTOP "     |-   SND_RESOURCE "         IMAGE_BITMAP "           
IMAGE_ICON "          IMAGE_CURSOR "     z7   IMAGE_ENHMETAFILE "          CF_TEXT "     S   	CF_BITMAP "     K   CF_METAFILEPICT "     Ї4   CF_SYLK "          CF_DIF "      '   CF_TIFF "     Ш   
CF_OEMTEXT "     O   CF_DIB "     !   
CF_PALETTE "  	   ѓ2   
CF_PENDATA "  
        CF_RIFF "     ю   CF_WAVE "          CF_UNICODETEXT "     2   CF_ENHMETAFILE "     Q   CF_HDROP "     и   	CF_LOCALE "     
   CF_MAX "          CF_OWNERDISPLAY "          
CF_DSPTEXT "     Ї   CF_DSPBITMAP "     kW   CF_DSPMETAFILEPICT "     T   CF_DSPENHMETAFILE "         	winmm.dll Q      
PLAYSOUNDA   Q  H  Н     Е   LPSZNAMEH   HMODULEH   DWFLAGSPlaySoundA N  
user32.dll Ш  д	  SYSTEMPARAMETERSINFOA   Ш  H  P     H   UACTIONH   UPARAMH   LPVPARAMH   FUWININISystemParametersInfoA Р  SETWINDOWPOS   Ш  H  э     H   HWNDH   HWNDINSERTAFTERH  
 XH  
 YH   CXH   CYH   WFLAGSSetWindowPos     
LOADIMAGEA   Ш  H  	     H   HINSTЕ   LPSZH   DWIMAGETYPEH   DWDESIREDWIDTHH   DWDESIREDHEIGHTH   DWFLAGSLoadImageA С  CLOSECLIPBOARD   Ш  H  Х	       CloseClipboard     OPENCLIPBOARD   Ш  H  
     H   HWNDOpenClipboard 
  SETCLIPBOARDDATA   Ш  H  c
     H   WFORMATH   HMEMSetClipboardData   ISCLIPBOARDFORMATAVAILABLE   Ш  H  Л
     H   WFORMATIsClipboardFormatAvailable     	SETCURSOR   Ш  H       H   HCURSORSetCursor     GETDC   Ш  H  E     H   HWNDGetDC т"  	RELEASEDC   Ш  H       H   HWNDH   HDCReleaseDC p@  LOADSTRINGA   Ш  H  ў     H   	HINSTANCEH   WIDЕ   LPBUFFERH   
NBUFFERMAXLoadStringA ]  RELEASECAPTURE   Ш  H  5       ReleaseCapture zC  kernel32.dll D  f  LOADLIBRARYA   D  H       Е   LPLIBFILENAMELoadLibraryA 2F  FREELIBRARY   D  H  т     H   
HLIBMODULEFreeLibrary э  GLOBALALLOC   D  H  5     H   WFLAGSH   DWBYTESGlobalAlloc     
GLOBALFREE   D  H  u     H   HMEMGlobalFree     RTLMOVEMEMORY   D  H  п     Е   WDESTINATIONH   WSOURCEH   WLENGTHRtlMoveMemory #  	gdi32.dll э      GETPIXEL   э  H  F     H   HDCH  
 XH  
 YGetPixel Ћ  smrcread.dll O      CMPICKCOLOR   O  H  Е     Е   REDЕ   GREENЕ   BLUEcmPickColor L  CMBITMAPRESTOCLIPBOARD   O  H       Е   STRESOURCEFILEЕ   STIDcmBitmapResToClipboard Q  CMSAVEBITMAPRESTOFILE   O  H       Е   STALIASЕ   STRESOURCEFILEЕ   STIDcmSaveBitmapResToFile У  shell32.dll Ћ      EXTRACTICONA   Ћ  H       H   HINSTЕ   LPFILEH   NINDEXExtractIconA є  CMLOADFORMTRANSPARENT            Г     а   LIB_SELFV   STTITLEFORM"   LIWINDOWHANDLE"   	LIOPACITY"   LISTEPScmLoadFormTransparent     CMCLOSEFORMTRANSPARENT            Z     а   LIB_SELFV   STTITLEFORM"   LIWINDOWHANDLE"   	LIOPACITY"   LISTEPScmCloseFormTransparent к  PROPERTIESARRAY            8       V          LIILOOP   И   "      LITOLOOP   Ф   "  ~  LITOWAIT   а   "      POSITIONARRAY   м         8       "                   џџџџЭ                                                                  %  CMCALLPOPUP           #  P   а   METHOD_SELFV   STFIELDMODALV   STFIELDPOPUPSTYLEV   STFIELDDISPLAYSTYLEV   STFIELDSHOWCLOSEBUTTONV   STFIELDSOUNDNAMEV   STFIELDTIMERWAITINGV   STFIELDSPEEDV   STFIELDMOUSEPOINTERV  & STFIELDINTERNETACTIONLINKTEXTV   STFIELDINTERNETEFFECTSV   STFIELDBACKGROUNDSTYLEV   STFIELDAUTOCLOSEV   STFIELDOWNERMODEV   STFIELDOWNERPOSITIONV   STFIELDPOPUPTOPV   STFIELDPOPUPLEFTV   STFIELDTEXTALIGNMENTV   STFIELDFONTCOLORV   STFIELDTEXT             џџџџ(                 ,      Й            I  +              METHOD_SELF T   а  ф  STFIELDMODAL P   V  l  STFIELDPOPUPSTYLE L   V  Т  STFIELDDISPLAYSTYLE H   V      STFIELDSHOWCLOSEBUTTON D   V  л  STFIELDSOUNDNAME @   V  C  STFIELDTIMERWAITING <   V  r  STFIELDSPEED 8   V  З  STFIELDMOUSEPOINTER 4   V      STFIELDINTERNETACTIONLINKTEXT 0   V      STFIELDINTERNETEFFECTS ,   V    STFIELDBACKGROUNDSTYLE (   V  M  STFIELDAUTOCLOSE $   V  o  STFIELDOWNERMODE     V      STFIELDOWNERPOSITION    V  Сd  STFIELDPOPUPTOP    V      STFIELDPOPUPLEFT    V      STFIELDTEXTALIGNMENT    V      STFIELDFONTCOLOR    V  кd  STFIELDTEXT    V                       џџџџЭ                                                                      CMPOPUPSMALLFORMONTOP      "  $      а   METHOD_SELFы   ONTOP"   
FORMHANDLE"   XPOS"   YPOS"   WIDTH"   HEIGHT"   FLAGS             џџџџм              А      п    h  єd      4  Q                      METHOD_SELF $   а  e  ONTOP     ы    
FORMHANDLE    "      XPOS    "      YPOS    "  Ч  WIDTH    "      HEIGHT    "      FLAGS    "  ~  д               џџџџЭ                                                                    CMGLOBALALLOC      "  %     а   METHOD_SELF"   LISIZE             џџџџў                                          ї                        METHOD_SELF    а      LISIZE    "  2  і               џџџџЭ                                                                   =  CMGLOBALFREE      "  &     а   METHOD_SELF"   LIMEMORY             џџџџ4                              K          .                          METHOD_SELF    а      LIMEMORY    "  T  ,               џџџџЭ                                                                      CMPOPUPSMALLOPENFORM           '     а   METHOD_SELFV   STTITLEFORM             џџџџm  `e                  )e    ve          r      Јe  e              METHOD_SELF    а  Be  STTITLEFORM    V    e               џџџџЭ                                                                  Ъ+  CMPOPUPSMALLARRIVEFORM           (     а   METHOD_SELFV   STTITLEFORM             џџџџД                      Хe  и  Йf  аf  _f  Л  f  оe              uf  METHOD_SELF    а      STTITLEFORM    V  У  Ќ               џџџџЭ                                                                  З/  CMKEYCODDIALOGBASIS      ы  )     а   METHOD_SELFV   STKEYSTROKEы   	LOALTDRUKы   LOSHIFTDRUKы   LOCONTROLDRUKV   
STHELPFILE"   LIHELPTOPIC             џџџџ§  !              чf          ѕ          Й   ж                      METHOD_SELF     а      STKEYSTROKE    V      	LOALTDRUK    ы  d   LOSHIFTDRUK    ы      LOCONTROLDRUK    ы      
STHELPFILE    V      LIHELPTOPIC    "  
  ѕ               џџџџЭ                                                                  xb  #CMPOPUPSMALLCLOSEFOCUSBUTPUSHBUTTON           *     а   METHOD_SELFV   STTITLEFORM             џџџџ6!                  g      g"              J"                          METHOD_SELF    а      STTITLEFORM    V  S  .!               џџџџЭ                                                                  5B  CMPOPUPSMALLTIMER           +     а   METHOD_SELFV   STTITLEFORM             џџџџ"                          Ћ#              #                  g      METHOD_SELF    а      STTITLEFORM    V  !  "               џџџџЭ                                                                  [1  CMPOPUPSMALLTEXTMOUSEIN           ,     а   METHOD_SELFV   STTITLEFORMы   	LOINOROUT             џџџџа#      ig                  %              ъ$      Lg          $%      METHOD_SELF    а      STTITLEFORM    V  5g  	LOINOROUT    ы  т"  Ш#               џџџџЭ                                                                      CMFORMMAINPREVIEWTEXTMOUSEUP           -     а   METHOD_SELFV   STTITLEFORMV  % STFIELDINTERNETEFFECTSCHOICEV  , #STFIELDINTERNETACTIONLINKTEXTCHOICE             џџџџG%                      g  Т&              Ѕ&      '                  METHOD_SELF    а  п&  STTITLEFORM    V      STFIELDINTERNETEFFECTSCHOICE    V      #STFIELDINTERNETACTIONLINKTEXTCHOICE    V  &$  ?%               џџџџЭ                                                                      CMISVALIDURL      ы  .     а   METHOD_SELFV   
STINPUTURL             џџџџJ'  g  c(                              яg  F(      жg                  METHOD_SELF    а      
STINPUTURL    V  %  B'               џџџџЭ                                                                  S*  CMLOADCURSOR           /     а   METHOD_SELFV   STFULLRESOURCEFILEV   STRESID             џџџџ(      #h  И)  м)                      bh  )  @h  	h                  METHOD_SELF    а      STFULLRESOURCEFILE    V      STRESID    V   '  (               џџџџЭ                                                                      CMPLAYWAVFILE      "  0     а   METHOD_SELFV   STFULLRESOURCEFILEV   STRESID             џџџџ§)          /+  S+      h              ћh  +  йh              Нh      METHOD_SELF    а  Ѓh  STFULLRESOURCEFILE    V      STRESID    V  н(  ѕ)               џџџџЭ                                                                      CMLOADBITMAPTOCLIPBOARD      е  1     а   METHOD_SELFV   STFULLRESOURCEFILEV   STRESID"   LIWINHANDLE             џџџџt+  -  oi  Ф,  ш,      =i          Иi  !i  Ї,  лi  kj          i      METHOD_SELF    а  =j  STFULLRESOURCEFILE    V      STRESID    V      LIWINHANDLE    "  S*  l+               џџџџЭ                                                                      CMKEYCODDIALOGSPECIAL      ы  2     а   METHOD_SELFV   STKEYSTROKEы   	LOALTDRUKы   LOSHIFTDRUKы   LOCONTROLDRUKV   
STHELPFILE"   LIHELPTOPIC             џџџџ&-  </              j           /      Ќ.  ф.  /              Щ.      METHOD_SELF     а      STKEYSTROKE    V      	LOALTDRUK    ы  .  LOSHIFTDRUK    ы      LOCONTROLDRUK    ы      
STHELPFILE    V      LIHELPTOPIC    "  Ъ+  -               џџџџЭ                                                                  ТD  CMFORMMAINREADINI           3     а   METHOD_SELFV   STFORMTITLEV   STALIASPATHV   
STFILENAME             џџџџa/          Кj          Ёj                  0      Ф0      Ї0  с0      METHOD_SELF    а      STFORMTITLE    V      STALIASPATH    V      
STFILENAME    V  |-  Y/               џџџџЭ                                                                      CMFORMMAINSAVEINI           4     а   METHOD_SELFV   	TITLEFORMV   	ALIASNAMEV   FILENAME             џџџџ1      E2              жj              k  (2              `2  ъj  {2  METHOD_SELF    а      	TITLEFORM    V      	ALIASNAME    V      FILENAME    V  З/  §0               џџџџЭ                                                                      CMREADMULTILINESTRING      V  5     а   METHOD_SELFV   STFULLFILENAMEV   STSEARCHSTARTV   STSEARCHEND             џџџџ2              Yk      {k  ,4              а3  4      k      э3      METHOD_SELF    а      STFULLFILENAME    V  7k  STSEARCHSTART    V  k  STSEARCHEND    V  [1  2               џџџџЭ                                                                      CMPICKCOLOROUTBITMAP      "  6     а   METHOD_SELFV   STTITLEFORM"   LIXA"   LIYA             џџџџQ4                      8l  5      l      p5  Р5  ml              Њ5  METHOD_SELF    а      STTITLEFORM    V      LIXA    "  Ђl  LIYA    "  ѓ2  I4               џџџџЭ                                                                  &?  CMPICKCOLOROFSCREEN      "  7     а   METHOD_SELFV   STTITLEFORM             џџџџо5              оl      Тl  џ6  јl      /m  т6                      m  METHOD_SELF    а      STTITLEFORM    V  Ї4  ж5               џџџџЭ                                                                      
CMLOADICON           8     а   METHOD_SELF"   LIWINHANDLEV   STFULLRESOURCEFILE"   LIICONINDEX             џџџџ$7  k8      8      Ќ8          hm          N8                          METHOD_SELF    а      LIWINHANDLE    "      STFULLRESOURCEFILE    V      LIICONINDEX    "  46  7               џџџџЭ                                                                      CMFORMMAINOPEN           9     а   METHOD_SELFV   STTITLEFORMV   STALIASCHOICE"   LOBACKCOLORV   STINITOREAD"   LIWINHANDLE             џџџџб8  Е:                  m  ?:  йm  :      ":  \:      Оm      {:      METHOD_SELF    а   m  STTITLEFORM    V      STALIASCHOICE    V      LOBACKCOLOR    "      STINITOREAD    V      LIWINHANDLE    "  z7  Щ8               џџџџЭ                                                                      CMFORMMAINPREVIEWMOUSEIN           :     а   METHOD_SELFV   STTITLEFORMы   	LOINOROUTV   STALIASCHOICEV   STMOUSEPOINTERCHOICE             џџџџк:                      №m  E<              (<  }<  	n          b<  <  METHOD_SELF    а      STTITLEFORM    V      	LOINOROUT    ы      STALIASCHOICE    V      STMOUSEPOINTERCHOICE    V  '9  в:               џџџџЭ                                                                      CMFORMMAINPREVIEWTEXTMOUSEIN           ;     а   METHOD_SELFV   STTITLEFORMы   	LOINOROUTV  % STFIELDINTERNETEFFECTSCHOICE"   LIRESTORECOLOR             џџџџЪ<                      &n  B>              %>      Ј>          _>      METHOD_SELF    а  z>  STTITLEFORM    V      	LOINOROUT    ы      STFIELDINTERNETEFFECTSCHOICE    V      LIRESTORECOLOR    "  0;  Т<               џџџџЭ                                                                  mU  CMPOPUPSMALLTEXTMOUSEUP           <     а   METHOD_SELFV   STTITLEFORM             џџџџа>                          ѕ?              и?                  ?n      METHOD_SELF    а      STTITLEFORM    V   =  Ш>               џџџџЭ                                                                      CMFORMMAINRESIZE           =     а   METHOD_SELFV   STTITLEFORMы   LOSCREENUPDATESDELAYы   LORESTOREPOSITIONS             џџџџ@                      Vn  pA  ГA  ѓn  	o  SA  Гp  Щp  p  A      Бn  METHOD_SELF    а      STTITLEFORM    V  щo  LOSCREENUPDATESDELAY    ы  Ѕo  LORESTOREPOSITIONS    ы  &?  @               џџџџЭ                                                                  [  CMFORMMAINMAXIMIZE      ы  >     а   METHOD_SELFV   STTITLEFORM             џџџџпA      Lr      рq      пp  џB  *r  ~q  $q  тB  q              r  :q  METHOD_SELF    а      STTITLEFORM    V  p@  зA               џџџџЭ                                                                      CMFORMMAINMAXIMIZEGET      ы  ?     а   METHOD_SELFV   STTITLEFORM             џџџџ$C                      чr  GD      .s  Es  *D  тs  Rt  s  rs      s  METHOD_SELF    а      STTITLEFORM    V  5B  C               џџџџЭ                                                                      CMSHOWHELPFILE           @     а   METHOD_SELFV   
STHELPFILE"   LIHELPTOPIC             џџџџlD  ЗE                          E          ~E                          METHOD_SELF    а      
STHELPFILE    V      LIHELPTOPIC    "  zC  dD               џџџџЭ                                                                      CMCODECREATE           A  T   а   METHOD_SELFБ   UITARGETV   STFIELDMODALV   STFIELDPOPUPSTYLEV   STFIELDDISPLAYSTYLEV   STFIELDSHOWCLOSEBUTTONV   STFIELDSOUNDNAMEV   STFIELDTIMERWAITINGV   STFIELDSPEEDV   STFIELDMOUSEPOINTERV  & STFIELDINTERNETACTIONLINKTEXTV   STFIELDINTERNETEFFECTSV   STFIELDBACKGROUNDSTYLEV   STFIELDAUTOCLOSEV   STFIELDOWNERMODEV   STFIELDOWNERPOSITIONV   STFIELDPOPUPTOPV   STFIELDPOPUPLEFTV   STFIELDTEXTALIGNMENTV   STFIELDFONTCOLORV   STFIELDTEXT             џџџџмE  t  рI  ўI  uK      K      I  Ёt  zJ  дH  qI  )I  I  ёH          METHOD_SELF X   а      UITARGET T   Б  ФJ  STFIELDMODAL P   V  LI  STFIELDPOPUPSTYLE L   V  ЂJ  STFIELDDISPLAYSTYLE H   V      STFIELDSHOWCLOSEBUTTON D   V  ЛI  STFIELDSOUNDNAME @   V  #J  STFIELDTIMERWAITING <   V  RJ  STFIELDSPEED 8   V  K  STFIELDMOUSEPOINTER 4   V      STFIELDINTERNETACTIONLINKTEXT 0   V      STFIELDINTERNETEFFECTS ,   V  цJ  STFIELDBACKGROUNDSTYLE (   V  -K  STFIELDAUTOCLOSE $   V  OK  STFIELDOWNERMODE     V  ьt  STFIELDOWNERPOSITION    V  Йt  STFIELDPOPUPTOP    V      STFIELDPOPUPLEFT    V      STFIELDTEXTALIGNMENT    V      STFIELDFONTCOLOR    V      STFIELDTEXT    V  ТD  дE               џџџџЭ                                                                      CMTEXTSTYLE           B     а   METHOD_SELFБ   UITARGETы   LOINSERTLINEV   STTEXT   SIFONTSTYLE"   SIFONTCOLOR             џџџџМK                      nM  VM              M          8M  M          METHOD_SELF    а      UITARGET    Б      LOINSERTLINE    ы  M  STTEXT    V      SIFONTSTYLE          SIFONTCOLOR    "  2F  ДK               џџџџЭ                                                                  VT  CMRIGHTCLICKFIELD           C     а   METHOD_SELF"   LILOOKOFPOPUP"   LIMXA"   LIMYA             џџџџАM                      O  #O  эN          аN          ;u  u  "u      METHOD_SELF    а      LILOOKOFPOPUP    "  tu  LIMXA    "      LIMYA    "  L  ЈM               џџџџЭ                                                                      CMLOADSTRING      V  D     а   METHOD_SELFV   STFULLRESOURCEFILE"   LIRESID             џџџџBO  Цu  P  sP                          Uv  VP  3v  љu                  METHOD_SELF    а  Іu  STFULLRESOURCEFILE    V      LIRESID    "  N  :O               џџџџЭ                                                                      CMSAVEBITMAPOUTOFDLLTOFILE      "  E     а   METHOD_SELFV   STALIASV   STFULLRESOURCEFILEV   STRESID             џџџџИP           R  DR              R          ъQ                          METHOD_SELF    а  {v  STALIAS    V      STFULLRESOURCEFILE    V      STRESID    V  O  АP               џџџџЭ                                                                  ВX  CMGETWORKAREA      ы  F     а   METHOD_SELF"   LIXA"   LIYA"   LIWA"   LIHA             џџџџeR      Iw      нv      mw      'w  єv  ЬS  S  ЖS      v      w  тS  METHOD_SELF    а  Љv  LIXA    "      LIYA    "      LIWA    "   S  LIHA    "  Q  ]R               џџџџЭ                                                                      CMPOPUPSMALLPLAYSOUND           G     а   METHOD_SELF             џџџџ T                      џw                  ђT  тw  Хw                  METHOD_SELF    а  ЛR  јS               џџџџЭ                                                                      CMPOPUPSMALLPOPUPSTART           H     а   METHOD_SELFV   STTITLEFORM"   LIX"   LIY"   LIW"   LIH"   LIMAXHEIGHT             џџџџU          лV              №V      x  Вx  Щx  Rx                  4x  METHOD_SELF     а      STTITLEFORM    V  БV  LIX    "  x  LIY    "  V  LIW    "  ЦV  LIH    "  V  LIMAXHEIGHT    "  VT  U               џџџџЭ                                                                      CMPOPUPSMALLPOPUPEND           I     а   METHOD_SELFV   STTITLEFORM             џџџџW          y              7X      Ky  by  yy                      4y  METHOD_SELF    а      STTITLEFORM    V  mU  W               џџџџЭ                                                                      CMPOPUPSMALLCLOSE           J     а   METHOD_SELFV   STTITLEFORM             џџџџ\X                  Гy      {Y      Эy      ^Y                          METHOD_SELF    а      STTITLEFORM    V  kW  TX               џџџџЭ                                                                      CMPOPUPSMALLWHILEOPEN           K     а   METHOD_SELFV   STTITLEFORMV   STTEXT"   LISLEEP             џџџџ Y                      цy  тZ  [          ХZ                          METHOD_SELF    а  џZ  STTITLEFORM    V      STTEXT    V      LISLEEP    "  ВX  Y               џџџџЭ                                                                  Њ`  CMPOPUPSMALLPOPDOWNSTART           L     а   METHOD_SELFV   STTITLEFORM"   LIX"   LIY"   LIW"   LIH"   LIMAXHEIGHT             џџџџ8[          ў\              ]      z  z  Гz  <z                  z  METHOD_SELF     а      STTITLEFORM    V  д\  LIX    "  z  LIY    "  П\  LIW    "  щ\  LIH    "  Ђ\  LIMAXHEIGHT    "  іY  0[               џџџџЭ                                                                      CMPOPUPSMALLPOPDOWNEND           M     а   METHOD_SELFV   STTITLEFORM             џџџџ8]          эz              \^      5{  L{  c{                      {  METHOD_SELF    а      STTITLEFORM    V  [  0]               џџџџЭ                                                                      CMPOPUPSMALLTRANSPARENTSTART           N     а   METHOD_SELFV   STTITLEFORM"   LIX"   LIY"   LIW"   LIH             џџџџ^          7`              л_              О_  {  і{              Н{  METHOD_SELF    а  |  STTITLEFORM    V  `  LIX    "      LIY    "  ј_  LIW    "  "`  LIH    "  ]  y^               џџџџЭ                                                                      CMPOPUPSMALLATONCESTART           O     а   METHOD_SELFV   STTITLEFORM"   LIX"   LIY"   LIW"   LIH             џџџџT`          b              Љa              a  h|                  J|  METHOD_SELF    а      STTITLEFORM    V  лa  LIX    "  /|  LIY    "  Цa  LIW    "  №a  LIH    "  з^  L`               џџџџЭ                                                                      CMPOPUPSMALLFORMMOUSEDOWN           P     а   METHOD_SELF"   LIWINDOWHANDLE             џџџџ"b                                          /c          Lc              METHOD_SELF    а      LIWINDOWHANDLE    "  Њ`  b               џџџџЭ                                                                      CMPOPUPSMALLTRANSPARENTEND           Q     а   METHOD_SELFV   STTITLEFORM             џџџџtc                          d              d  |  Ѓ|                  METHOD_SELF    а  Р|  STTITLEFORM    V  xb  lc      FRMMAIN  8џџџЩ      ANDLGVAL  јўџџа      RESCM  Ќџџџ"      INPUTTOPMOST   џџџ"      FRMMAIN  8џџџЩ      GRRESGRAPHIC  $џџџе      STID  џџџV      LIRET  ќўџџ"      	STPRIVDIR  рўџџV      STALIASPATH  ФўџџV  ћe  FRMMAIN  8џџџЩ      STALIASPATH  џџџV      	LIRESWAVE  џџџ"  If  STINPUTWAVE  єўџџV      LIXA  Фўџџ"      LIYA  аўџџ"  Ђf  LIWA  мўџџ"  3f  LIHA  шўџџ"      LIXPG  ўџџ"      LIYPG   ўџџ"      LIWPG  Ќўџџ"  f  LIHPG  Иўџџ"      LOANSWER  Ќџџџы      FRMCLOSE  8џџџЩ      FRMTIMER  8џџџЩ      FORMX  8џџџЩ      STALIASPATH  џџџV      
STFULLFILE  Єўџџа      FRMMAIN  8џџџЩ  Нg  LORESVALIDURL  Ќџџџы      OLEMAIN  џџџЂ      STSHTML  lџџџV      STCHKURL  PџџџV      LICURSOR  Ќџџџ"      LIRESCURSOR   џџџ"      LIRESOURCEHANDLE  џџџ"      LIRESOURCEHANDLEFREE  џџџ"      	LIRESWAVE  Ќџџџ"      LIWFLAGS   џџџ"      
LIRESSOUND  џџџ"      LIRESOURCEHANDLE  џџџ"      LIRESOURCEHANDLEFREE  |џџџ"  j  
BCLIPBOARD  Єџџџp      ARCLIPBOARD  lџџџ Zi     8       V          LIRESCLIPBOARDOPEN  Hџџџ"      LIRESCLIPBOARDCLOSE  Tџџџ"      LIRESCLIPBOARDSET  `џџџ"  ѕi  LIBITMAP  <џџџ"      LIRESOURCEHANDLE  0џџџ"      LIRESOURCEHANDLEFREE  $џџџ"      LIISCLIPBOARDFORMATAVAILABLE  џџџ"      
GRRESGRAPH  џџџе      LOANSWER  Ќџџџы      FRMMAIN  8џџџЩ      
STALIASRES  џџџV      TS  џџџ      FORMX  џџџЩ      	ALIASFULL  ќўџџV  l  	STRINGRES  dџџџV  l  STRINGRESTEMPONE  џџџV  шk  STRINGRESTEMPTWO  џџџV  ­k  TS  Dџџџ      FIRSTCHARONE  ,џџџ"  Ъk  LASTCHARONE  8џџџ"      FIRSTCHARTWO  џџџ"      LASTCHARTWO   џџџ"      TSLOOP  џџџ"      	TOTALLOOP  ќўџџ"  Ql  FRMMAIN  8џџџЩ      
LIRESCOLOR  ,џџџ"      LIRESDC   џџџ"      
LIRESPIXEL  џџџ"      LIRESRELEASEDC  џџџ"  Om  
LIRESCOLOR  Ќџџџ"      LIRESRED   џџџ"      
LIRESGREEN  џџџ"      	LIRESBLUE  џџџ"      LIRESPICKCOLOR  |џџџ"      FRMMAIN  ќўџџЩ      LICURRENTICON  Ќџџџ"      FRMMAIN  8џџџЩ      GRRESGRAPHIC  $џџџе      	STPRIVDIR  џџџV      LIRET  Ь§џџа      FRMMAIN  8џџџЩ      STALIASPATH  џџџV      FRMMAIN  8џџџЩ      FORMX  8џџџЩ      FRMMAIN  8џџџЩ  нn  LIXA  џџџ"  Yp  LIYA  џџџ"  Чn  LIWA   џџџ"  on  LIHA  ,џџџ"  o  LIXP  иўџџ"      LIYP  фўџџ"  Мo  LIWP  №ўџџ"  n  LIHP  ќўџџ"  Bp  LIXT  Јўџџ"      LIYT  Дўџџ"  pp  LIWT  Рўџџ"  гo  LIHT  Ьўџџ"      LIXPR  xўџџ"      LIYPR  ўџџ"      LIWPR  ўџџ"  wo  LIHPR  ўџџ"  o  LIXD  Hўџџ"  5o  LIYD  Tўџџ"  Ko  LIWD  `ўџџ"  ao  LIHD  lўџџ"  p  LIXDL  ўџџ"  p  LIYDL  $ўџџ"      LIWDL  0ўџџ"  +p  LIHDL  <ўџџ"      LIXC  ш§џџ"      LIYC  є§џџ"  n  LIWC   ўџџ"  џo  LIHC  ўџџ"  pr  FRMMAIN  8џџџЩ  gq  LIXA  џџџ"      LIYA  џџџ"  q  LIWA   џџџ"  јp  LIHA  ,џџџ"      LIXAN  иўџџ"  Ќq  LIYAN  фўџџ"  їq  LIWAN  №ўџџ"  Pq  LIHAN  ќўџџ"  Шq  
LIRECTLONG  Ьўџџ"      LILEFT  Рўџџ"  r  LITOP  Дўџџ"  Шr  LIRIGHT  Јўџџ"      LIBOTTOM  ўџџ"      PTUPPERLEFTPOINT  ўџџе      PTBOTTOMRIGHTPOINT  |ўџџе      PTCONVERTEDUPPERLEFTPOINT  lўџџе      PTCONVERTEDBOTTOMRIGHTPOINT  \ўџџе      LORESMAXIMIZE  Pўџџы      FRMMAIN  8џџџЩ      LIXAN  џџџ"      LIYAN  џџџ"  ht  LIWAN   џџџ"   s  LIHAN  ,џџџ"  Ыs  LIXD  иўџџ"      LIYD  фўџџ"  љs  LIWD  №ўџџ"  \s  LIHD  ќўџџ"  t  LIXDL  Јўџџ"  &t  LIYDL  Дўџџ"  <t  LIWDL  Рўџџ"  Дs  LIHDL  Ьўџџ"      LIXC  xўџџ"      LIYC  ўџџ"      LIWC  ўџџ"  s  LIHC  ўџџ"      LORESMAXIMIZE  lўџџы      STRETURN  џџџV      STCRLF  џџџV      ARBREAKAPART  Hџџџ зt     8       V          LILOOP  <џџџ"      PMFORMBOXPOP  џџџO      STKEUZE  lџџџV  Wu  
STVRSTRING  PџџџV      BICLIPBOARD  <џџџp      ARCLIPBOARD  џџџ u     8       V      v  STSTRINGRETURN  џџџV      LILENGTH  џџџ"      STTRIMR  tџџџV  рu  STTRIML  XџџџV      LIRESLOADSTRING  Lџџџ"      LIRESOURCEHANDLE  @џџџ"      LIRESOURCEHANDLEFREE  4џџџ"      LIRET  Ќџџџ"      LORES  Ќџџџы  Хv  
LIRECTLONG   џџџ"      LILEFT  џџџ"  w  LITOP  џџџ"      LIRIGHT  |џџџ"      LIBOTTOM  pџџџ"      PTUPPERLEFTPOINT  `џџџе      PTBOTTOMRIGHTPOINT  Pџџџе      PTCONVERTEDUPPERLEFTPOINT  @џџџе      PTCONVERTEDBOTTOMRIGHTPOINT  0џџџе      STALIASPATH  џџџV      STINPUTWAVE  4џџџа      	LIRESWAVE  єўџџа      FRMPOPUP  8џџџЩ  x  LIRESTOPMOST  ,џџџ"      	LIWHANDLE   џџџ"      LIXAN  №ўџџ"      LIYAN  ќўџџ"      LIWAN  џџџ"  mx  LIHAN  џџџ"  цx  LICURHEIGHT  иўџџ"  bV  LINEWHEIGHT  фўџџ"      FRMPOPUP  8џџџЩ      LIXAN  џџџ"      LIYAN  џџџ"      LIWAN   џџџ"  y  LIHAN  ,џџџ"  y  LICURHEIGHT  №ўџџ"  X  LINEWHEIGHT  ќўџџ"      FRMCLOSE  8џџџЩ      LISTART  шўџџа      FRMWHILEOPEN  8џџџЩ      FRMPOPUP  8џџџЩ  nz  LIRESTOPMOST  ,џџџ"      	LIWHANDLE   џџџ"      LIXAN  №ўџџ"      LIYAN  ќўџџ"      LIWAN  џџџ"  Wz  LIHAN  џџџ"  аz  LICURHEIGHT  иўџџ"  \  LINEWHEIGHT  фўџџ"      FRMPOPUP  8џџџЩ      LIXAN  џџџ"      LIYAN  џџџ"      LIWAN   џџџ"  {  LIHAN  ,џџџ"  {  LICURHEIGHT  №ўџџ"  ?^  LINEWHEIGHT  ќўџџ"  л{  FRMTRANSPARENT  8џџџЩ      LIRESTOPMOST  ,џџџ"      	LIWHANDLE   џџџ"      STALIASPATH  џџџV      
LBPOPMSTLB  pўџџф      	FRMATONCE  8џџџЩ      LIRESTOPMOST  ,џџџ"      	LIWHANDLE   џџџ"      FRMTRANSPARENT  8џџџЩ      STALIASPATH  џџџV      
LBPOPMSTLB  ўџџф                      r  џ                                                                                                                   к  r     џ    Йб  К"      
   \  `Р  м|                                                                                                                                                                                     +Р  GР  r /         #                          $  Ѓ  Ѓ  F                  %  щ  щ                     &  n  n  d                   '  в  в  Њ                  (  |  |  Ќ                  )  (  (  W                  *  3  3  e                  +  ф4  ф4                    ,  e6  e6  O                  -  Д8  Д8  ч                   .  9  9  э                  /  ;  ;  ј                  0  =  =  }                  1  §?  §?  *                  2  'D  'D  е                  3  ќJ  ќJ  у                  4  пW  пW  E                  5  $f  $f                    6  Ai  Ai  "                  7  ck  ck  Р                  8  #m  #m  р                   9  n  n  j                  :  ms  ms  Z                  ;  Чt  Чt  j                  <  1v  1v  џ                   =  0w  0w                    >  Ш~  Ш~  9                  ?      г                  @  д  д                     A  l  l  ?                  B  Ћ  Ћ  №                   C      ђ                  D  Ѕ  Ѕ                    E  &Ј  &Ј  и                   F  ўЈ  ўЈ  ,                  G  *Ќ  *Ќ  R                  H  |Ў  |Ў  щ                  I  eБ  eБ  л                  J  @Г  @Г  Щ                  K  	Е  	Е  Џ                   L  ИЕ  ИЕ  Я                  M  И  И  Џ                  N  6К  6К  l                  O  ЂМ  ЂМ                    P  8О  8О                     Q  ПО  ПО  l                        Йб  щ        шђџџџT   P        @  єў         №P   
*      0  №L   
*      L  №H   
*      h  №D   
*        №@   
*         №<   
*      М  №8   
*      и  №4   
*      є  №0   
*        №,   
*      ,  №(   
*      H  №$   
*      d  №    
*        №   
*        №   
*      И  №   
*      д  №   
*      №  №   
*        №   
*      L  № (  %шўџџP   мўџџ8џџџ D   мўџџТ        L  № `  %шўџџP   мўџџ8џџџ D   мўџџ        L  № |  %шўџџP$   мўџџ8џџџ D      мўџџ?        L  № Є  %шўџџP   мўџџ8џџџ D      мўџџP   
 (  %шўџџP9   јўџџўџџ8џџџ ўџџ*t јўџџ Р  %шўџџH             $A   єў     6   јўџџ    ўџџ    мўџџ    8џџџ    шўџџ             P ш[ќџџ$     h        ј   џЖ   Ќџџџ м  *Ј  џџџ\џџџ\џџџ    
    ф  *t 	    ь  *t *t ЌџџџPџџџ   
   
   
   
   
 џџџ   
#    +*Ј Ќџџџ(   (Ј 4   ,     $AЌџџџ м  *Ј Ќџџџ(   (Ј 	      џ     -   Pџџџ    Ќџџџ     џџџ    \џџџ               шћџџ            I    џџџ   
Ќџџџ є   Ќџџџ#    +   (Ј              џџџ    Ќџџџ              шњџџ            1   Ќџџџ   
#    +   (Ј             Ќџџџ              ш,њџџ    D       ч  РўЦ  Дўџџ8џџџ   
 UДўџџЂ         № (  %ЈўџџP%   8џџџ   %DўџџPЬ    ,  )8@          № `  %ДўџџP    8џџџ   %DўџџPЬ    8  )8     h  № (  %ДўџџP%   8џџџ D  %DўџџP2    ,  )8@        h  № `  %ДўџџP    8џџџ D  %DўџџP2    8  )8     ,  № (  %ДўџџP   џџџ `  * Ц       ,  № `  %ДўџџP   џџџ |  *        ,  № |  %ДўџџP   џџџ   * `       ,  № Є  %ДўџџP   џџџ Д  * -       ,  № а  %ДўџџP   џџџ ь  * њ        ,  №   %ДўџџP   џџџ $  * Ч        ,  № @  %ДўџџP   џџџ \  *         ,  № x  %ДўџџP   џџџ   * a        ,  № А  %ДўџџP   џџџ Ь  * .        ,  № ш  %ДўџџP   џџџ   * рўџџ(ўџџ     &(ўџџ* Фўџџ(ўџџ <   &(ўџџ* Дўџџрўџџ X  %(ўџџ(џџџ%ўџџ( t  %№§џџ( '=Дўџџ   H   ќўџџt§џџ,рўџџ&И§џџ Фўџџ   %д§џџ(&§џџ џџџ&§џџ $E*Ј Дўџџ$џџџрўџџ X  %(ўџџ(џџџ%ўџџ( t  %№§џџ(  Дўџџ ,  %ЈўџџX   8џџџ Ќ  %DўџџP$џџџ*t 8џџџ Ш  %DўџџP       №*t      д  № (  %ДўџџP%   8џџџ Ш  %DўџџPT    м  )8Ъ        д  № `  %ДўџџP%   8џџџ Ш  %DўџџPT    ф  )8        д  № |  %ДўџџP%   8џџџ Ш  %DўџџPT    ь  )8@        д  № Є  %ДўџџP    8џџџ Ш  %DўџџPT    є  )88џџџ Ш  %DўџџP%  t§џџ     №  №  t§џџ)8     $A   Рў     Ђ   џџџ    Dўџџ    $џџџ    8џџџ    Јўџџ    t§џџ    §џџ    §џџ    И§џџ    д§џџ    Дўџџ    №§џџ    Фўџџ    ўџџ    рўџџ    ќўџџ    (ўџџ              шѓџџ    \       }  ўM  ўџџ8џџџ   
 Uўџџ)  xўџџ,Фўџџаўџџмўџџшўџџ$F ,  %lўџџX   
     A  8џџџ Ќ  %ўџџPўџџ ўџџЌўџџИўџџ        № (  %ўџџPj       L  № (  %xўџџP   ,   
&Ш§џџ мўџџЌўџџ%ќ§џџЌ ќ  %№§џџм&М§џџЈ шўџџ   %ф§џџм&А§џџЈ Ќўџџ&Є§џџЈ    &§џџЈ Иўџџ&§џџЈ $HФ       L  № `  %ўџџP   ,   
&Ш§џџ мўџџЌўџџ%ќ§џџЌ ќ  %№§џџм&М§џџЈ шўџџИўџџ%ф§џџЌ&А§џџЈ Ќўџџ&Є§џџЈ    &§џџЈ Иўџџ&§џџЈ $L#       L  № |  %ўџџPt   ,   
&Ш§џџ мўџџЌўџџ%ќ§џџЌ ќ  %№§џџм&М§џџЈ шўџџИўџџ%ф§џџЌ&А§џџЈ Ќўџџ&Є§џџЈ Иўџџ&§џџЈ $N        L  № Є  %ўџџPo   ,   
&Ш§џџ мўџџЌўџџ%ќ§џџЌ ќ  %№§џџм&М§џџЈ шўџџИўџџ%ф§џџЌ&А§џџЈ Ќўџџ&Є§џџЈ Иўџџ&§џџЈ $O         № `  %ўџџP       L  № (  %xўџџPg   ,   
&Ш§џџ  ќ  &№§џџЈ шўџџ   %ќ§џџм&ф§џџЈ Ќўџџ&М§џџЈ    &А§џџЈ Иўџџ&Є§џџЈ $Hv       L  № `  %ўџџPg   ,   
&Ш§џџ  ќ  &№§џџЈ шўџџИўџџ%ќ§џџЌ&ф§џџЈ Ќўџџ&М§џџЈ    &А§џџЈ Иўџџ&Є§џџЈ $Lя        L  № |  %ўџџPZ   ,   
&Ш§џџ  ќ  &№§џџЈ шўџџИўџџ%ќ§џџЌ&ф§џџЈ Ќўџџ&М§џџЈ Иўџџ&А§џџЈ $Nu        L  № Є  %ўџџPU   ,   
&Ш§џџ  ќ  &№§џџЈ шўџџИўџџ%ќ§џџЌ&ф§џџЈ Ќўџџ&М§џџЈ Иўџџ&А§џџЈ $Oq
         № |  %ўџџPP       L  № (  %xўџџP   ,   
&Ш§џџ мўџџЌўџџ%ќ§џџЌ ќ  %№§џџм&А§џџЈ Иўџџ   %ф§џџм ќ  %М§џџd&Є§џџЈ Ќўџџ&§џџЈ    &§џџЈ Иўџџ&§џџЈ $H       L  № `  %ўџџPt   ,   
&Ш§џџ мўџџЌўџџ%ќ§џџЌ ќ  %№§џџм&ф§џџЈ  ќ  &М§џџЈ Ќўџџ&А§џџЈ    &Є§џџЈ Иўџџ&§џџЈ $L	       L  № |  %ўџџPg   ,   
&Ш§џџ мўџџЌўџџ%ќ§џџЌ ќ  %№§џџм&ф§џџЈ  ќ  &М§џџЈ Ќўџџ&А§џџЈ Иўџџ&Є§џџЈ $N        L  № Є  %ўџџPb   ,   
&Ш§џџ мўџџЌўџџ%ќ§џџЌ ќ  %№§џџм&ф§џџЈ  ќ  &М§џџЈ Ќўџџ&А§џџЈ Иўџџ&Є§џџЈ $O         № Є  %ўџџPш       L  № (  %xўџџPt   ,   
&Ш§џџ  ќ  &ф§џџЈ Иўџџ   %ќ§џџм ќ  %№§џџd&М§џџЈ Ќўџџ&А§џџЈ    &Є§џџЈ Иўџџ&§џџЈ $HO       L  № `  %ўџџPZ   ,   
&Ш§џџ  ќ  &ќ§џџЈ  ќ  &№§џџЈ Ќўџџ&ф§џџЈ    &М§џџЈ Иўџџ&А§џџЈ $Lе        L  № |  %ўџџPM   ,   
&Ш§џџ  ќ  &ќ§џџЈ  ќ  &№§џџЈ Ќўџџ&ф§џџЈ Иўџџ&М§џџЈ $Nh        L  № Є  %ўџџPH   ,   
&Ш§џџ  ќ  &ќ§џџЈ  ќ  &№§џџЈ Ќўџџ&ф§џџЈ Иўџџ&М§џџЈ $Oљ         № а  %ўџџP#       L  № (  %xўџџPЙ   ,   
&Ш§џџ ф§џџмўџџЌўџџ%ќ§џџЌ ь  %№§џџд  ф§џџ&§џџЈ Є§џџшўџџИўџџ%М§џџЌ ь  %А§џџд  Є§џџ   %§џџм&§џџЈ Ќўџџ&t§џџЈ    &h§џџЈ Иўџџ&\§џџЈ $HE       L  № `  %ўџџPЌ   ,   
&Ш§џџ ф§џџмўџџЌўџџ%ќ§џџЌ ь  %№§џџд  ф§џџ&§џџЈ Є§џџшўџџИўџџ%М§џџЌ ь  %А§џџд  Є§џџ&§џџЈ Ќўџџ&§џџЈ    &t§џџЈ Иўџџ&h§џџЈ $Ly       L  № |  %ўџџP   ,   
&Ш§џџ ф§џџмўџџЌўџџ%ќ§џџЌ ь  %№§џџд  ф§џџ&§џџЈ Є§џџшўџџИўџџ%М§џџЌ ь  %А§џџд  Є§џџ&§џџЈ Ќўџџ&§џџЈ Иўџџ&t§џџЈ $NК        L  № Є  %ўџџP   ,   
&Ш§џџ ф§џџмўџџЌўџџ%ќ§џџЌ ь  %№§џџд  ф§џџ&§џџЈ Є§џџшўџџИўџџ%М§џџЌ ь  %А§џџд  Є§џџ&§џџЈ Ќўџџ&§џџЈ Иўџџ&t§џџЈ $OЖ         №   %ўџџP       L  № (  %xўџџP   ,   
&Ш§џџ ќ§џџ     И  №  ќ§џџ&М§џџЈ №§џџ       №  №§џџ   %ф§џџм&А§џџЈ Ќўџџ&Є§џџЈ    &§џџЈ Иўџџ&§џџЈ $Hп       L  № `  %ўџџP   ,   
&Ш§џџ ќ§џџ     И  №  ќ§џџ&ф§џџЈ №§џџ       №  №§џџ&М§џџЈ Ќўџџ&А§џџЈ    &Є§џџЈ Иўџџ&§џџЈ $L5       L  № |  %ўџџP}   ,   
&Ш§џџ ќ§џџ     И  №  ќ§џџ&ф§џџЈ №§џџ       №  №§џџ&М§џџЈ Ќўџџ&А§џџЈ Иўџџ&Є§џџЈ $N        L  № Є  %ўџџPx   ,   
&Ш§џџ ќ§џџ     И  №  ќ§џџ&ф§џџЈ №§џџ       №  №§џџ&М§џџЈ Ќўџџ&А§џџЈ Иўџџ&Є§џџЈ $O     H  № (  %ўџџP     H  № `  %xўџџP%lўџџ$^    И      *Ј  Ф    м  *Ј  а   ќ§џџ        №  ќ§џџ*Ј 8џџџ   %ўџџP ф        $A 0   L   JA   ў       мўџџ    шўџџ    єўџџ    џџџ    \§џџ    h§џџ    t§џџ    §џџ    §џџ    §џџ    Є§џџ    А§џџ    М§џџ    Ш§џџ    ф§џџ    џџџ    №§џџ    ўџџ    ќ§џџ    8џџџ    lўџџ    xўџџ    ўџџ    ўџџ     ўџџ    Ќўџџ    Иўџџ    Фўџџ    аўџџ              шжсџџ     \        ї  ЈџК     
 h  %џџџP   
 ,  %џџџX%џџџ   Ќџџџ 8  *t \     
 h  %џџџP   
 ,  %џџџX%џџџ   Ќџџџ ,  *t      
 h  %џџџP   
 ,  %џџџX%џџџ   Ќџџџ ,  *t а     
 h  %џџџP   Ќџџџ ,  *t Ѕ     
   %џџџP   
 ,  %џџџX%џџџ   Ќџџџ 8  *t _     
   %џџџP   
 ,  %џџџX%џџџ   Ќџџџ 8  *t      
   %џџџP   
 ,  %џџџX%џџџ   Ќџџџ 8  *t г     
   %џџџP   Ќџџџ 8  *t Ј     
    %џџџP   
 ,  %џџџX%џџџ   Ќџџџ 8  *t b     
    %џџџP   
 ,  %џџџX%џџџ   Ќџџџ 8  *t      
    %џџџP   
 ,  %џџџX%џџџ   Ќџџџ 8  *t ж     
    %џџџP   Ќџџџ 8  *t Ћ     
 М  %џџџP   
 ,  %џџџX%џџџ   Ќџџџ 8  *t e     
 и  %џџџP   
 ,  %џџџX%џџџ   Ќџџџ 8  *t      
 є  %џџџP   
 ,  %џџџX%џџџ   Ќџџџ 8  *t й     
   %џџџP   
 ,  %џџџX%џџџ   Ќџџџ 8  *t      
 ,  %џџџP   
 ,  %џџџX%џџџ   Ќџџџ 8  *t M     
 H  %џџџP   
 ,  %џџџX%џџџ   Ќџџџ 8  *t      
 d  %џџџP   
 ,  %џџџX%џџџ   Ќџџџ 8  *t С     
   %џџџP   
 ,  %џџџX%џџџ   Ќџџџ 8  *t {     
   %џџџP   
 ,  %џџџX%џџџ   Ќџџџ 8  *t 5     
 И  %џџџP   
 ,  %џџџX%џџџ   Ќџџџ 8  *t я     
 д  %џџџP   
 ,  %џџџX%џџџ   Ќџџџ 8  *t Љ     
 №  %џџџP   
 ,  %џџџX%џџџ   Ќџџџ 8  *t c     
 	  %џџџP   
 ,  %џџџX%џџџ   Ќџџџ 8  *t      
 (	  %џџџP   
 ,  %џџџX%џџџ   Ќџџџ 8  *t з     
 D	  %џџџP   
 ,  %џџџX%џџџ   Ќџџџ 8  *t      
 `	  %џџџP   
 ,  %џџџX%џџџ   Ќџџџ 8  *t K     
 |	  %џџџP   
 ,  %џџџX%џџџ   Ќџџџ 8  *t      
 	  %џџџP   
 ,  %џџџX%џџџ   Ќџџџ 8  *t П     
 Д	  %џџџP   
 ,  %џџџX%џџџ   Ќџџџ 8  *t y     
 а	  %џџџP   
 ,  %џџџX%џџџ   Ќџџџ 8  *t 3     
 ь	  %џџџP   
 ,  %џџџX%џџџ   Ќџџџ ,  *t э     
 
  %џџџP   
 ,  %џџџX%џџџ   Ќџџџ ,  *t Ї     
 $
  %џџџP   
 ,  %џџџX%џџџ   Ќџџџ 8  *t a     
 @
  %џџџP   
 ,  %џџџX%џџџ   Ќџџџ 8  *t      
 \
  %џџџP   
 ,  %џџџX%џџџ   Ќџџџ 8  *t е
     
 \
  %џџџP   
 ,  %џџџX%џџџ   Ќџџџ 8  *t 
     
 \
  %џџџP   
 ,  %џџџX%џџџ   Ќџџџ 8  *t I
     
 \
  %џџџPR      
 x
  %џџџP   "   ,   
&hџџџ    
&\џџџЈ $@Ќџџџ 8  *t п	     
 
  %џџџP   
 ,  %џџџX%џџџ   Ќџџџ ,  *t 	     
 
  %џџџP   
 ,  %џџџX%џџџ   Ќџџџ 8  *t S	     
 
  %џџџP   
 ,  %џџџX%џџџ   Ќџџџ 8  *t 	     
 
  %џџџP   Ќџџџ ,  *t т     
 А
  %џџџP   
 ,  %џџџX%џџџ   Ќџџџ 8  *t      
 А
  %џџџP   
 ,  %џџџX%џџџ   Ќџџџ 8  *t V     
 А
  %џџџP   
 ,  %џџџX%џџџ   Ќџџџ 8  *t      
 А
  %џџџP   Ќџџџ 8  *t х     
 Ь
  %џџџP   Ќџџџ 8  *t К     
 ш
  %џџџP   Ќџџџ 8  *t      
   %џџџP   Ќџџџ 8  *t d     
    %џџџP   Ќџџџ 8  *t 9     
 <  %џџџP   Ќџџџ 8  *t      
 X  %џџџP   Ќџџџ 8  *t у     
 t  %џџџP   
 ,  %џџџX%џџџ   Ќџџџ 8  *t      
 t  %џџџP   
 ,  %џџџX%џџџ   Ќџџџ 8  *t W     
 t  %џџџP   
 ,  %џџџX%џџџ   Ќџџџ 8  *t      
 t  %џџџP   Ќџџџ ,  *t ц     
   %џџџP   Ќџџџ 8  *t Л     
 Ќ  %џџџP   Ќџџџ 8  *t      
 Ш  %џџџP   Ќџџџ 8  *t e     
 ф  %џџџP   Ќџџџ 8  *t :     
    %џџџP   Ќџџџ 8  *t      
   %џџџP   Ќџџџ 8  *t ф     
 8  %џџџP   Ќџџџ 8  *t Й     
 T  %џџџP   
 ,  %џџџX%џџџ   Ќџџџ ,  *t s     
 T  %џџџP   
 ,  %џџџX%џџџ   Ќџџџ 8  *t -     
 T  %џџџP   
 ,  %џџџX%џџџ   Ќџџџ 8  *t ч     
 p  %џџџP   
 ,  %џџџX%џџџ   Ќџџџ 8  *t Ё     
 p  %џџџP   
 ,  %џџџX%џџџ   Ќџџџ 8  *t [     
 p  %џџџP   
 ,  %џџџX%џџџ   Ќџџџ 8  *t      
 p  %џџџP   Ќџџџ ,  *t ъ     
   %џџџP   Ќџџџ 8  *t П     
 Ј  %џџџP   
 ,  %џџџX%џџџ   Ќџџџ 8  *t y     
 Ј  %џџџP   
 ,  %џџџX%џџџ   Ќџџџ 8  *t 3     
 Ј  %џџџP   
 ,  %џџџX%џџџ   Ќџџџ 8  *t э     
 Ј  %џџџP   Ќџџџ ,  *t Т     
 Ф  %џџџP   
 ,  %џџџX%џџџ   Ќџџџ 8  *t |     
 Ф  %џџџP   
 ,  %џџџX%џџџ   Ќџџџ 8  *t 6     
 Ф  %џџџP   Ќџџџ ,  *t      
 р  %џџџP   
 ,  %џџџX%џџџ   Ќџџџ 8  *t Х      
 р  %џџџP   
 ,  %џџџX%џџџ   Ќџџџ 8  *t       
 р  %џџџP   
 ,  %џџџX%џџџ   Ќџџџ 8  *t 9      
 р  %џџџP   Ќџџџ ,  *t    Ќџџџ ,  *t Ќџџџ$   (t /   '   Ќџџџ ,  *t Ќџџџ$   (t 	      Јџ     ?   џџџ    џџџ    џџџ    Ќџџџ    \џџџ    hџџџ              шЬџџ             4џђ   (џџџ8џџџ   
 U(џџџЮ        H  № (  %џџџP0   8џџџ   %ИўџџP ,   
&ўџџ $J~        H  № `  %(џџџP   Y        H  № |  %џџџP   ,   
&ўџџ $J         H  № Є  %(џџџP          4џ     6   ўџџ    8џџџ    џџџ    (џџџ    Иўџџ              шЫџџ    @         4џю   (џџџ8џџџ   
 U(џџџЪ    Ф    а   %џџџ\        H  № (  %џџџP'    ўџџ8џџџ   %ЌўџџP p ўџџ4        H  № `  %(џџџP   ,   
&ўџџ $J3    И    Ф      %xўџџd*Ј  Ф    И   *Ј     IA     $A   4џ     Q   xўџџ    ўџџ     ўџџ    8џџџ    џџџ    џџџ    (џџџ    Ќўџџ              шЩџџ           	 д  џГ  џџџ8џџџ   
 Uџџџ  џџџ№ўџџ <   &№ўџџ*    
 ,  %џџџXР        и  № `  %фўџџP;   Єўџџџџџ   %№ўџџ(*t ,Єўџџ&№ўџџt  ќ  &ўџџ $/       № (  %џџџP@   8џџџ Ш  %$ўџџP%     )88џџџ Ш  %$ўџџP   $  )8        и  № `  %џџџP   ўџџ ,   ,   3Aўџџ       № (  %џџџP@   8џџџ Ш  %$ўџџP%   8  )88џџџ Ш  %$ўџџP   ф  )8     $A   џ    	 Z   фўџџ    ўџџ    №ўџџ    џџџ    $ўџџ    џџџ    ўџџ    8џџџ    Єўџџ              шJЧџџ    Д           4џo   (џџџ8џџџ   
 U(џџџK      
 (  %џџџP3      
 D  %џџџP      џџџ   
 оAџџџ     $A   4џ     6   џџџ    џџџ    8џџџ    џџџ    (џџџ              шcЦџџ    №        {  Lџ9  Ќџџџ 8  *t Pџџџ   
* 0џџџPџџџ ф   `   0џџџ h  %$џџџ    Pџџџ h  Pџџџ%џџџ(* $џџџџџџ     $џџџШўџџџџџ     М  Pџџџ 8     ! џџџ-     p lџџџџџџq  %ШўџџD*t $џџџџџџ $џџџlџџџ и  %$џџџP   Ќџџџ ,  *t    Ќџџџ 8  *t Ќџџџ   (t 4   ,     $AЌџџџ 8  *t Ќџџџ   (t 	      Lџ     Q   0џџџ    Шўџџ    Ќџџџ    Pџџџ    lџџџ    џџџ    $џџџ    џџџ              шvФџџ    t          џ/  џџџ м  *Ј џџџxџџџ   
!#    +*Ј Ќџџџxџџџ м   м   м      є     
%\џџџ(!џџџ#    +*Ј Ќџџџ м  %Pџџџh6   џџџ м  %DџџџH   џџџxџџџџџџ#    +*Ј  џџџxџџџЌџџџ#    +*Ј џџџ м  %PџџџH   џџџxџџџџџџ#    +*Ј A     $Aџџџ м  %PџџџH   џџџxџџџџџџ#    +*Ј    џ     Q   Dџџџ    Pџџџ     џџџ    \џџџ    Ќџџџ    xџџџ    џџџ    џџџ              ш~Тџџ           	   xџ  џџџ м  *Ј џџџlџџџ   
!#    +*Ј џџџ м  %`џџџh!   Ќџџџ м  *Ј Ќџџџ   (Ј    џџџ    8  %lџџџ4*Ј џџџlџџџ џџџџџџ є     
%Dџџџ(!#    +*Ј џџџ м  %`џџџhW   џџџ м  %8џџџH   |џџџlџџџџџџ#    +*Ј Ќџџџ м  *Ј Ќџџџ   (Ј С   џџџ м  %`џџџH   |џџџlџџџџџџ#    +*Ј Ќџџџ ф  *Ј Ќџџџ   (Ј j   b     $Aџџџ м  %`џџџH   |џџџlџџџџџџ#    +*Ј Ќџџџ м  *Ј Ќџџџ   (Ј 	      xџ    	 Z   8џџџ    Dџџџ    Ќџџџ    `џџџ    lџџџ    |џџџ    џџџ    џџџ     џџџ              шРџџ    @       k   џщ  0џџџ м  *Ј јўџџЄџџџlџџџ јўџџИўџџlџџџ Иўџџ м  %ЌўџџH   
   Єџџџ 0џџџ ўџџ   
!#    +*Ј 0џџџ м  %Ќўџџh+   џџџИўџџ  Иўџџ*t џџџ   (   <џџџ ўџџ м   м   м   8   є     
%ўџџ(!0џџџ#    +*Ј <џџџ м  %Ќўџџha   0џџџ м  %xўџџH   $џџџ ўџџ0џџџ#    +*Ј џџџИўџџ  Иўџџ*t џџџ   ( Ч  0џџџ м  %ЌўџџH   $џџџ ўџџ0џџџ#    +*Ј Hџџџ ўџџ   
#    +*Ј `џџџ ўџџ<џџџ   #    +*Ј џџџ ўџџ   #    +*Ј џџџ м  %Ќўџџha   0џџџ м  %xўџџH   $џџџ ўџџ0џџџ#    +*Ј џџџИўџџ  Иўџџ*t џџџ   ( В   Tџџџ ўџџ#    +*Ј Ќўџџџџџ Ќўџџџџџ   ( t   l     $A0џџџ м  %ЌўџџH   $џџџ ўџџ0џџџ#    +*Ј џџџИўџџ  Иўџџ*t џџџ   ( 	       џ        xўџџ    ўџџ     ўџџ    Ќўџџ    Иўџџ    јўџџ    џџџ    џџџ    $џџџ    0џџџ    <џџџ    Hџџџ    Tџџџ    `џџџ    lџџџ   Єџџџ                  шзЛџџ     \        u  Јџ8     
 \
  %џџџP   
 ,  %џџџX%џџџ   Ќџџџ 8  *t к     
 \
  %џџџP   
 ,  %џџџX%џџџ   Ќџџџ 8  *t      
 \
  %џџџP   
 ,  %џџџX%џџџ   Ќџџџ 8  *t N     
 \
  %џџџPR      
 x
  %џџџP   "   ,   
&hџџџ    
&\џџџЈ $@Ќџџџ 8  *t ф     
 T  %џџџP   
 ,  %џџџX%џџџ   Ќџџџ ,  *t      
 T  %џџџP   
 ,  %џџџX%џџџ   Ќџџџ 8  *t X     
 T  %џџџP   
 ,  %џџџX%џџџ   Ќџџџ 8  *t      
 p  %џџџP   
 ,  %џџџX%џџџ   Ќџџџ 8  *t Ь     
 p  %џџџP   
 ,  %џџџX%џџџ   Ќџџџ 8  *t      
 p  %џџџP   
 ,  %џџџX%џџџ   Ќџџџ 8  *t @     
 p  %џџџP   Ќџџџ ,  *t      
 Ј  %џџџP   
 ,  %џџџX%џџџ   Ќџџџ 8  *t Я     
 Ј  %џџџP   
 ,  %џџџX%џџџ   Ќџџџ 8  *t      
 Ј  %џџџP   
 ,  %џџџX%џџџ   Ќџџџ 8  *t C     
 Ј  %џџџP   Ќџџџ ,  *t      
 Ф  %џџџP   
 ,  %џџџX%џџџ   Ќџџџ 8  *t в     
 Ф  %џџџP   
 ,  %џџџX%џџџ   Ќџџџ 8  *t      
 Ф  %џџџP   Ќџџџ ,  *t a     
 р  %џџџP   
 ,  %џџџX%џџџ   Ќџџџ 8  *t      
 р  %џџџP   
 ,  %џџџX%џџџ   Ќџџџ 8  *t е      
 р  %џџџP   
 ,  %џџџX%џџџ   Ќџџџ 8  *t       
 р  %џџџP   Ќџџџ ,  *t d      
 (  %џџџP   Ќџџџ ,  *t 9      
 D  %џџџP   Ќџџџ ,  *t    Ќџџџ 8  *t Ќџџџ$   (t /   '   Ќџџџ ,  *t Ќџџџ$   (t 	      Јџ     ?   џџџ    Ќџџџ    \џџџ    hџџџ    џџџ    џџџ              шЕџџ    Ф       V  џ5  џџџ8џџџ   
 Uџџџ  џџџ   
 X  %№ўџџ(   
%дўџџ(* џџџџџџ '=џџџЮ  , `  &ўџџ  |     %№ўџџ( Д  %дўџџ(   
%Иўџџ( а  %ўџџ(&dўџџ  ь  &XўџџЈ $K8џџџ є  %є§џџP№ўџџџџџ    ,   A№ўџџ*t , `  &ўџџ  |     %№ўџџ( Д  %дўџџ(   
%Иўџџ( H  %ўџџ(&dўџџ  ь  &XўџџЈ $K8џџџ d  %є§џџP№ўџџџџџ       A№ўџџ*t , `  &ўџџ  |     %№ўџџ( Д  %дўџџ(   
%Иўџџ(   %ўџџ(&dўџџ  ь  &XўџџЈ $K8џџџ И  %є§џџP№ўџџџџџ    д   A№ўџџ*t , `  &ўџџ  |     %№ўџџ( Д  %дўџџ(   
%Иўџџ( №  %ўџџ(&dўџџ  ь  &XўџџЈ $K8џџџ   %є§џџP№ўџџџџџ    (   A№ўџџ*t , `  &ўџџ  |     %№ўџџ( Д  %дўџџ(   
%Иўџџ( D  %ўџџ(&dўџџ  ь  &XўџџЈ $K8џџџ `  %є§џџP№ўџџџџџ    |   A№ўџџ*t , `  &ўџџ  |     %№ўџџ( Д  %дўџџ(   
%Иўџџ(   %ўџџ(&dўџџ  ь  &XўџџЈ $K8џџџ Д  %є§џџPXўџџ№ўџџџџџ    а   A№ўџџ  Xўџџ*t , `  &ўџџ  |     %№ўџџ( Д  %дўџџ(   
%Иўџџ( ь  %ўџџ(&dўџџ  ь  &XўџџЈ $K8џџџ   %є§џџPXўџџ№ўџџџџџ    $   A№ўџџ  Xўџџ*t , `  &ўџџ  |     %№ўџџ( Д  %дўџџ(   
%Иўџџ( @  %ўџџ(&dўџџ  ь  &XўџџЈ $K8џџџ \  %є§џџP№ўџџџџџ    x   A№ўџџ*t , `  &ўџџ  |     %№ўџџ( Д  %дўџџ(   
%Иўџџ(   %ўџџ(&dўџџ  ь  &XўџџЈ $K8џџџ А  %є§џџP№ўџџџџџ    Ь   A№ўџџ*t , `  &ўџџ  |     %№ўџџ( Д  %дўџџ(   
%Иўџџ( ш  %ўџџ(&dўџџ  ь  &XўџџЈ $K8џџџ   %є§џџP№ўџџџџџ        A№ўџџ*t , `  &ўџџ  |     %№ўџџ( Д  %дўџџ(   
%Иўџџ( <  %ўџџ(&dўџџ  ь  &XўџџЈ $K8џџџ X  %є§џџP№ўџџџџџ    t   A№ўџџ*t , `  &ўџџ  |     %№ўџџ( Д  %дўџџ(   
%Иўџџ(   %ўџџ(&dўџџ  ь  &XўџџЈ $K8џџџ Ќ  %є§џџP№ўџџџџџ    Ш   A№ўџџ*t , `  &ўџџ  |     %№ўџџ( Д  %дўџџ(   
%Иўџџ( ф  %ўџџ(&dўџџ  ь  &XўџџЈ $K8џџџ    %є§џџP№ўџџџџџ       A№ўџџ*t 8џџџ 8  %є§џџP%   Xўџџ№ўџџџџџ       A№ўџџ  Xўџџ)8, `  &ўџџ  |     %№ўџџ( Д  %дўџџ(   
%Иўџџ( T  %ўџџ(&dўџџ  ь  &XўџџЈ $K8џџџ p  %є§џџP№ўџџџџџ       A№ўџџ*t , `  &ўџџ  |     %№ўџџ( Д  %дўџџ(   
%Иўџџ( Ј  %ўџџ(&dўџџ  ь  &XўџџЈ $K8џџџ Ф  %є§џџP№ўџџџџџ    р   A№ўџџ*t , `  &ўџџ  |     %№ўџџ( Д  %дўџџ(   
%Иўџџ( ќ  %ўџџ(&dўџџ  ь  &XўџџЈ $K8џџџ   %є§џџPXўџџ№ўџџџџџ    4   A№ўџџ  Xўџџ*t , `  &ўџџ  |     %№ўџџ( Д  %дўџџ(   
%Иўџџ( P  %ўџџ(&dўџџ  ь  &XўџџЈ $K8џџџ l  %є§џџPXўџџ№ўџџџџџ       A№ўџџ  Xўџџ*t , `  &ўџџ  |     %№ўџџ( Д  %дўџџ(   
%Иўџџ( Є  %ўџџ(&dўџџ  ь  &XўџџЈ $K8џџџ Р  %є§џџPўџџ,џџџ&№ўџџ  м  &дўџџ  ј  &Иўџџ $5*t , `  &ўџџ  |     %№ўџџ( Д  %дўџџ(   
%Иўџџ(   %ўџџ(&dўџџ  ь  &XўџџЈ $K8џџџ 0  %є§џџPўџџ,џџџ&№ўџџ  L  &дўџџ  h  &Иўџџ $5*t      $A   џ     l   дўџџ    Иўџџ    №ўџџ    є§џџ    џџџ    џџџ    Xўџџ    dўџџ    ўџџ    8џџџ    ўџџ              шЈџџ    №       І  јўk  ьўџџџџџ   
 UьўџџG  рўџџ    ,   3Aрўџџќўџџ   
 X  %Фўџџ(   
%Јўџџ(* ьўџџџџџќўџџ  ьўџџЫ  ўџџџџџ      ! , `  &Hўџџ  Ќ     %Фўџџ( Ш  %Јўџџ(   
%ўџџ( ф  %dўџџ(&,ўџџ  ь  &рўџџЈ $Kьўџџџџџ    Фўџџџџџ є  %Ш§џџP   
! %Јўџџ(   ! , `  &Hўџџ  Ќ     %Фўџџ( Ш  %Јўџџ(   
%ўџџ(   %dўџџ(&,ўџџ  ь  &рўџџЈ $Kьўџџџџџ 8  Фўџџџџџ d  %Ш§џџP   
! %Јўџџ(   ! , `  &Hўџџ  Ќ     %Фўџџ( Ш  %Јўџџ(   
%ўџџ( T  %dўџџ(&,ўџџ  ь  &рўџџЈ $Kьўџџџџџ p  Фўџџџџџ И  %Ш§џџP   
! %Јўџџ(   ! , `  &Hўџџ  Ќ     %Фўџџ( Ш  %Јўџџ(   
%ўџџ(   %dўџџ(&,ўџџ  ь  &рўџџЈ $Kьўџџџџџ Ј  Фўџџџџџ   %Ш§џџP   
! %Јўџџ(   ! , `  &Hўџџ  Ќ     %Фўџџ( Ш  %Јўџџ(   
%ўџџ( Ф  %dўџџ(&,ўџџ  ь  &рўџџЈ $Kьўџџџџџ р  Фўџџџџџ `  %Ш§џџP   
! %Јўџџ(   ! , `  &Hўџџ  Ќ     %Фўџџ( Ш  %Јўџџ(   
%ўџџ( ќ  %dўџџ(&,ўџџ  ь  &рўџџЈ $Kьўџџџџџ   Фўџџџџџ Д  %Ш§џџP   
! %Јўџџ(   ! , `  &Hўџџ  Ќ     %Фўџџ( Ш  %Јўџџ(   
%ўџџ( 4  %dўџџ(&,ўџџ  ь  &рўџџЈ $Kьўџџџџџ P  Фўџџџџџ   %Ш§џџP   
! %Јўџџ(   ! , `  &Hўџџ  Ќ     %Фўџџ( Ш  %Јўџџ(   
%ўџџ( l  %dўџџ(&,ўџџ  ь  &рўџџЈ $Kьўџџџџџ   Фўџџџџџ \  %Ш§џџP   
! %Јўџџ(   ! , `  &Hўџџ  Ќ     %Фўџџ( Ш  %Јўџџ(   
%ўџџ( Є  %dўџџ(&,ўџџ  ь  &рўџџЈ $Kьўџџџџџ Р  Фўџџџџџ А  %Ш§џџP   
! %Јўџџ(   ! , `  &Hўџџ  Ќ     %Фўџџ( Ш  %Јўџџ(   
%ўџџ( м  %dўџџ(&,ўџџ  ь  &рўџџЈ $Kьўџџџџџ ј  Фўџџџџџ   %Ш§џџP   
! %Јўџџ(   ! , `  &Hўџџ  Ќ     %Фўџџ( Ш  %Јўџџ(   
%ўџџ(   %dўџџ(&,ўџџ  ь  &рўџџЈ $Kьўџџџџџ 0  Фўџџџџџ X  %Ш§џџP   
! %Јўџџ(   ! , `  &Hўџџ  Ќ     %Фўџџ( Ш  %Јўџџ(   
%ўџџ( L  %dўџџ(&,ўџџ  ь  &рўџџЈ $Kьўџџџџџ h  Фўџџџџџ Ќ  %Ш§џџP   
! %Јўџџ(   ! , `  &Hўџџ  Ќ     %Фўџџ( Ш  %Јўџџ(   
%ўџџ(   %dўџџ(&,ўџџ  ь  &рўџџЈ $Kьўџџџџџ    Фўџџџџџ    %Ш§џџP   
! %Јўџџ(   ! , `  &Hўџџ  Ќ     %Фўџџ( Ш  %Јўџџ(   
%ўџџ( М  %dўџџ(&,ўџџ  ь  &рўџџЈ $Kьўџџџџџ и  Фўџџџџџ p  %Ш§џџP   
! %Јўџџ(   ! , `  &Hўџџ  Ќ     %Фўџџ( Ш  %Јўџџ(   
%ўџџ( є  %dўџџ(&,ўџџ  ь  &рўџџЈ $Kьўџџџџџ   Фўџџџџџ Ф  %Ш§џџP   
! %Јўџџ(   ! , `  &Hўџџ  Ќ     %Фўџџ( Ш  %Јўџџ(   
%ўџџ( ,  %dўџџ(&,ўџџ  ь  &рўџџЈ $Kьўџџџџџ H  Фўџџџџџ   %Ш§џџP   
! %Јўџџ(   ! , `  &Hўџџ  Ќ     %Фўџџ( Ш  %Јўџџ(   
%ўџџ( d  %dўџџ(&,ўџџ  ь  &рўџџЈ $Kьўџџџџџ   Фўџџџџџ l  %Ш§џџP   
! %Јўџџ(   ! , `  &Hўџџ  Ќ     %Фўџџ( Ш  %Јўџџ(   
%ўџџ(   %dўџџ(&,ўџџ  ь  &рўџџЈ $Kьўџџџџџ И  Фўџџџџџ Р  %Ш§џџP   
! %Јўџџ(   ! ьўџџџџџ ј     ! , `  &Hўџџ  Ќ     %Фўџџ( Ш  %Јўџџ(   
%ўџџ( д  %dўџџ(&,ўџџ  ь  &рўџџЈ $Kьўџџџџџ №  Фўџџџџџ 0  %Ш§џџP   
! %Јўџџ(   ! ьўџџџџџ h     ! ьўџџџџџ ьўџџрўџџ ,   ,   3Aрўџџ%   рўџџ ,   ,   3Aрўџџ  $A   јў     ~   Hўџџ    dўџџ    џџџ    ўџџ    ьўџџ    ќўџџ    ўџџ    џџџ    Јўџџ    Ш§џџ    Фўџџ    рўџџ    ,ўџџ              шкџџ    T       Z  јў  ьўџџDџџџ   
    ьўџџ ,  %рўџџXг  dџџџ ўџџ   ўџџ*t ,џџџ м  *Ј 8џџџ м  *Ј џџџ м  *Ј  џџџ м  *Ј ьўџџDџџџ,џџџ8џџџ   
 (  %ўџџ( ьўџџьўџџDџџџџџџ џџџ   
 ьўџџџџџ ф  *Ј ќўџџџџџ8џџџ%xўџџЌ ь  %lўџџм*Ј Dџџџ8џџџ џџџ ўџџ   ўџџ*t ќўџџ м  %ьўџџH}   рўџџDџџџџџџdўџџ ўџџќўџџ D   d ўџџ  dўџџ рўџџџџџџџџџџџ%ўџџ(* ќўџџќўџџ D  %xўџџм*Ј lџџџdџџџџџџ* ьўџџDџџџ ьўџџdџџџ   ( H        A6     $Adџџџ ўџџ   ўџџ*t dџџџ   ( 	      јў     Ђ   dўџџ    dџџџ    lўџџ    xўџџ    ўџџ    џџџ     ўџџ    рўџџ    ьўџџ    џџџ    ќўџџ    џџџ    џџџ     џџџ    ,џџџ    8џџџ    Dџџџ              шНџџ    №       
   џM  јўџџ8џџџ   
 Uјўџџ)  ,џџџьўџџ ф    ьўџџ*Ј  џџџрўџџьўџџ8џџџ ьўџџ#    +*Ј џџџьўџџ   
   
 џџџ#    +*Ј џџџрўџџ џџџьўџџ8џџџ ьўџџ#    +*Ј џџџ L  %јўџџ\џџџ X  %дўџџ\%Шўџџ$"   ,џџџьўџџ ф    ьўџџ*Ј    ,џџџџџџ*Ј ,џџџ   (Ј C   ;     $A,џџџьўџџ ф    ьўџџ*Ј ,џџџ   (Ј 	      џ    
 c   Шўџџ    дўџџ    ,џџџ    8џџџ    рўџџ    ьўџџ    јўџџ    џџџ    џџџ     џџџ              шџџ    ф       	 E  јўє   ьўџџќўџџ   
 Uьўџџа   Ќџџџрўџџ ф    рўџџ*Ј |џџџрўџџџџџ#џџџ# џџџ##    +*Ј |џџџрўџџ ф    рўџџ%ьўџџ\,   Ќџџџдўџџ џџџџџџџџџ Идўџџ*Ј    Ќџџџрўџџ ф    рўџџ*Ј Ќџџџ   (Ј C   ;     $AЌџџџрўџџ ф    рўџџ*Ј Ќџџџ   (Ј 	      јў    	 Z   дўџџ    рўџџ    ьўџџ    ќўџџ    |џџџ    џџџ    џџџ     џџџ    Ќџџџ              шлџџ    (           Јџz   Ќџџџ м  *Ј Ќџџџџџџ   
   
! м  #    +*Ј џџџ   
џџџ d   џџџ м  Ќџџџ БAџџџ     $A   Јџ     $   џџџ    Ќџџџ    џџџ              шћџџ           Ы  џЊ  јўџџ8џџџ   
 Uјўџџ   ,   -џџџмўџџ     &мўџџ* , `  &Єўџџ  |     %мўџџ(   %Рўџџ(&ўџџ    &|ўџџЈ $K8џџџ%      
)88џџџ Є  %ўџџP%   |ўџџ Р   Ш   а   И|ўџџ)88џџџ и  %ўџџP%    є  )8, `  &Єўџџ  |     %мўџџ(    %Рўџџ(&ўџџ    &|ўџџЈ $K,   
&мўџџ  8  &јўџџt  8  &ўџџt $=, `  &Єўџџ  |     %мўџџ(   %Рўџџ(&ўџџ    &|ўџџЈ $K8џџџ 8  %ўџџP 	  8  )8јўџџџџџ T  %мўџџ( '=јўџџ   I   Ь§џџ|ўџџ,џџџ&Єўџџ    
   %Рўџџ(&ўџџ  p  &А§џџ $E*t јўџџ$џџџџџџ T  %мўџџ(  јўџџ ,  %ўџџX   8џџџ 8  %ўџџP$џџџ*t 8џџџ   %ўџџP2    8  )88џџџ   %ўџџP%   Ј  )88џџџ   %ўџџP%    Ј  )88џџџ Д  %ўџџP2    8  )88џџџ Д  %ўџџP%   Ј  )88џџџ Д  %ўџџP%    Ј  )8, `  &Єўџџ  |     %мўџџ( а  %Рўџџ(&ўџџ    &|ўџџЈ $Kјўџџџџџ ь  %мўџџ( '=јўџџ   I   Ь§џџ|ўџџ,џџџ&Єўџџ    
   %Рўџџ(&ўџџ    &А§џџ $E*t јўџџ$џџџџџџ ь  %мўџџ(  јўџџ ,  %ўџџX   8џџџ $  %ўџџP$џџџ*t ,   
&мўџџ    
&Рўџџ    
&Єўџџ $3 8   -     $A   џ     ~   ўџџ    Єўџџ    $џџџ    Рўџџ    8џџџ    мўџџ    ўџџ    А§џџ    јўџџ    Ь§џџ    џџџ    |ўџџ    ўџџ              шџџ           ш   џЧ   џџџ8џџџ   
 UџџџЃ      
 ,  % џџџXY      
 `  %єўџџP<   џџџ   
   %иўџџ(* ,џџџ&иўџџ  ќ  &Мўџџ $/2      
 `  %џџџP   Аўџџ ,   ,   3AАўџџ     $A   џ     Q   Аўџџ    Мўџџ    иўџџ    єўџџ     џџџ    џџџ    џџџ    8џџџ              ш7џџ             4џђ   (џџџ8џџџ   
 U(џџџЮ      
 ,  %џџџX]      
 (  %џџџP@   8џџџ Ш  %ЌўџџP%     )88џџџ Ш  %ЌўџџP   $  )8Y      
 (  %(џџџPA   8џџџ Ш  %ЌўџџP%     
)88џџџ Ш  %ЌўџџP   ф  )8     $A   4џ     6   8џџџ    џџџ    џџџ    (џџџ    Ќўџџ              шЭџџ    Д        Ј   4џ   (џџџ8џџџ   
 U(џџџc          № (  %џџџPC        є  № D  %џџџP      џџџ     є  № оAџџџ     $A   4џ     6   џџџ    џџџ    џџџ    (џџџ    8џџџ              шЮџџ          &   ф§ї  и§џџ8џџџ   
 Uи§џџг     
 ,  %Ь§џџX
    ,   -   
 ,  %и§џџXg  8џџџ 8  %h§џџPЈўџџДўџџРўџџЬўџџ 8џџџ 8  %h§џџPЈўџџДўџџ м    @  №Јўџџ%\§џџЌЬўџџ 8џџџ \  %h§џџPxўџџўџџўџџўџџ 8џџџ \  %h§џџPxўџџўџџўџџ м    x  № 8џџџ и  %h§џџPўџџ$ўџџ0ўџџ<ўџџ 8џџџ и  %h§џџPўџџ$ўџџ м      №<ўџџ 8џџџ А  %h§џџPш§џџє§џџ ўџџўџџ 8џџџ А  %h§џџPш§џџє§џџ м    Ь  № м    ш  № 8џџџ Є  %h§џџPHўџџTўџџ`ўџџlўџџ 8џџџ Є  %h§џџPHўџџTўџџ м      № м    x  № 8џџџ    %h§џџPиўџџфўџџ№ўџџќўџџ 8џџџ    %h§џџPиўџџфўџџ м    @  № м    <  №   8џџџџџџџџџ џџџ,џџџ !8џџџ    %h§џџPиўџџфўџџ№ўџџќўџџ 8џџџ    %h§џџPиўџџфўџџ џџџ,џџџ 8џџџ 8  %h§џџPЈўџџДўџџРўџџЬўџџ 8џџџ 8  %h§џџPЈўџџДўџџ џџџЈўџџ%\§џџЌЬўџџ 8џџџ \  %h§џџPxўџџўџџўџџўџџ 8џџџ \  %h§џџPxўџџўџџўџџ,џџџўџџ%\§џџЌ X  %P§џџм 8џџџ Є  %h§џџPHўџџTўџџ`ўџџlўџџ 8џџџ Є  %h§џџPHўџџTўџџ џџџHўџџ%\§џџЌHўџџ%P§џџЌxўџџ%D§џџЌўџџ%8§џџ4,џџџTўџџ%,§џџЌ X  % §џџм 8џџџ Є  %h§џџPHўџџTўџџ`ўџџlўџџ 8џџџ и  %h§џџPўџџ$ўџџ0ўџџ<ўџџ 8џџџ и  %h§џџPўџџ$ўџџ`ўџџўџџ%\§џџЌўџџ%P§џџЌ<ўџџ 8џџџ А  %h§џџPш§џџє§џџ ўџџўџџ 8џџџ А  %h§џџPш§џџє§џџ`ўџџш§џџ%\§џџЌш§џџ%P§џџЌlўџџє§џџ%D§џџЌ X  %8§џџм    
 ,  %и§џџX
    8   -     $A   ф§    & _   §џџ    ,§џџ    8§џџ    D§џџ    P§џџ    Рўџџ    Ьўџџ    иўџџ    фўџџ    №ўџџ    ќўџџ    џџџ    џџџ     џџџ    ,џџџ    \§џџ    h§џџ    8џџџ    Ь§џџ    и§џџ    ш§џџ    є§џџ     ўџџ    ўџџ    ўџџ    $ўџџ    0ўџџ    <ўџџ    Hўџџ    Tўџџ    `ўџџ    lўџџ    xўџџ    ўџџ    ўџџ    ўџџ    Јўџџ    Дўџџ              ш6џџ            @  Lўў  @ўџџ8џџџ   
 U@ўџџк  Ьўџџ(ўџџ, $  &4ўџџЈ $%*Ј 4ўџџ м  Ьўџџ м   `  #    +4ўџџ l  ЬўџџРўџџ##    +(ўџџ l  Ьўџџ l  %4ўџџdДўџџ##    +(ўџџ l  Ьўџџ t  %4ўџџdЈўџџ##    +(ўџџ l  Ьўџџ |  %4ўџџdўџџ##    +4ўџџ,Ьўџџ$&ўџџўџџРўџџДўџџ ўџџ*Д |ўџџўџџЈўџџўџџ ўџџ*Д lўџџўџџўџџ oAўџџ*Д \ўџџўџџ|ўџџ oAўџџ*Д џџџ4ўџџlўџџ 4ўџџ*Ј џџџ4ўџџlўџџ 4ўџџ*Ј  џџџ4ўџџ\ўџџ 4ўџџ*Ј ,џџџ4ўџџ\ўџџ 4ўџџ*Ј 8џџџиўџџфўџџ№ўџџќўџџ ! м      №иўџџ*Ј  м       №фўџџ*Ј  м    @  №№ўџџ*Ј  м    <  №ќўџџ*Ј 8џџџџџџџџџ џџџ,џџџ Pўџџ ,  *t Pўџџ   (t 4   ,     $APўџџ 8  *t Pўџџ   (t 	      Lў     и   ќўџџ    џџџ    ўџџ    џџџ     џџџ    ,џџџ    8џџџ    (ўџџ    4ўџџ    @ўџџ    Pўџџ    \ўџџ    lўџџ    |ўџџ    ўџџ    ўџџ    Јўџџ    Дўџџ    Рўџџ    Ьўџџ    иўџџ    фўџџ    №ўџџ              ш§|џџ    Р       ѕ  hўГ  \ўџџ8џџџ   
 U\ўџџ  8џџџџџџџџџ џџџ,џџџ ! м      №џџџ*Ј  м       №џџџ*Ј  м    @  № џџџ*Ј  м    <  №,џџџ*Ј 8џџџ Є  %ј§џџPиўџџфўџџ№ўџџќўџџ  м      №№ўџџ*Ј  м    x  №ќўџџ*Ј 8џџџ и  %ј§џџPЈўџџДўџџРўџџЬўџџ  м      №Рўџџ*Ј 8џџџ А  %ј§џџPxўџџўџџўџџўџџ  м    Ь  №ўџџ*Ј  м    ш  №ўџџ*Ј lўџџ ,  *t lўџџ   (t 4   ,     $Alўџџ 8  *t lўџџ   (t 	      hў     Н   8џџџ    \ўџџ    lўџџ    xўџџ    ўџџ    ўџџ    ўџџ    Јўџџ    Дўџџ    Рўџџ    Ьўџџ    иўџџ    фўџџ    №ўџџ    ќўџџ    џџџ    џџџ     џџџ    ,џџџ    ј§џџ              ш*zџџ            \   Дџ;   Јџџџ   
 '=Јџџџ   џџџ   
   
 XAџџџ     $A   Дџ        џџџ    Јџџџ              шyџџX   T ќ       J  8џ)  ,џџџ    ,   3A,џџџ ,   -,T   
& ўџџА 8  &ўџџt  М   и  %џџџ(P   
%єўџџ( и  %иўџџ( є  %Мўџџ( ўџџ `    ўџџ%ўџџ(&ј§џџ  ф  &№§џџЌ ,џџџ м   м   м   И,џџџ&ф§џџЈ $B,T   
& ўџџА 8  &ўџџt    &џџџ  l  &№§џџЌ  ,  &,џџџЈ $B,T   
& ўџџА ,  &ўџџt џџџ 8   џџџ и  %єўџџ(L   
%иўџџ( и  %Мўџџ( є  % ўџџ(ўџџ `   ўџџ%ј§џџ(&Ш§џџ  ф  &№§џџЌ ,џџџ м   м   м   И,џџџ&ф§џџЈ $B,T   
& ўџџА 8  &ўџџt  @  &џџџ  l  &№§џџЌ  ,  &,џџџЈ $B,T   
& ўџџА ,  &ўџџt џџџ 8   џџџ и  %єўџџ(H   
%иўџџ( и  %Мўџџ( є  % ўџџ(ўџџ `   ўџџ%ј§џџ(&Ш§џџ  ф  &№§џџЌ ,џџџ м   м   м   И,џџџ&ф§џџЈ $B,T   
& ўџџА 8  &ўџџt  \  &џџџ  l  &№§џџЌ  ,  &,џџџЈ $B,T   
& ўџџА ,  &ўџџt џџџ 8   џџџ и  %єўџџ(D   
%иўџџ( и  %Мўџџ( є  % ўџџ(ўџџ `   ўџџ%ј§џџ(&Ш§џџ  ф  &№§џџЌ ,џџџ м   м   м   И,џџџ&ф§џџЈ $B,T   
& ўџџА 8  &ўџџt  x  &џџџ  l  &№§џџЌ  ,  &,џџџЈ $B,T   
& ўџџА ,  &ўџџt џџџ 8   џџџ и  %єўџџ(@   
%иўџџ( и  %Мўџџ( є  % ўџџ(ўџџ `   ўџџ%ј§џџ(&Ш§џџ  ф  &№§џџЌ ,џџџ м   м   м   И,џџџ&ф§џџЈ $B,T   
& ўџџА 8  &ўџџt    &џџџ  l  &№§џџЌ  ,  &,џџџЈ $B,T   
& ўџџА ,  &ўџџt џџџ 8   џџџ и  %єўџџ(<   
%иўџџ( и  %Мўџџ( є  % ўџџ(ўџџ `   ўџџ%ј§џџ(&Ш§џџ  ф  &№§џџЌ ,џџџ м   м   м   И,џџџ&ф§џџЈ $B,T   
& ўџџА 8  &ўџџt  А  &џџџ  l  &№§џџЌ  ,  &,џџџЈ $B,T   
& ўџџА ,  &ўџџt џџџ 8   џџџ и  %єўџџ(8   
%иўџџ( и  %Мўџџ( є  % ўџџ(ўџџ `   ўџџ%ј§џџ(&Ш§џџ  ф  &№§џџЌ ,џџџ м   м   м   И,џџџ&ф§џџЈ $B,T   
& ўџџА 8  &ўџџt  Ь  &џџџ  l  &№§џџЌ  ,  &,џџџЈ $B,T   
& ўџџА ,  &ўџџt џџџ 8   џџџ и  %єўџџ(4   
%иўџџ( и  %Мўџџ( є  % ўџџ(ўџџ `   ўџџ%ј§џџ(&Ш§џџ  ф  &№§џџЌ ,џџџ м   м   м   И,џџџ&ф§џџЈ $B,T   
& ўџџА 8  &ўџџt  ш  &џџџ  l  &№§џџЌ  ,  &,џџџЈ $B,T   
& ўџџА ,  &ўџџt џџџ 8   џџџ и  %єўџџ(0   
%иўџџ( и  %Мўџџ( є  % ўџџ(ўџџ `   ўџџ%ј§џџ(&Ш§џџ  ф  &№§џџЌ ,џџџ м   м   м   И,џџџ&ф§џџЈ $B,T   
& ўџџА 8  &ўџџt    &џџџ  l  &№§џџЌ  ,  &,џџџЈ $B,T   
& ўџџА ,  &ўџџt џџџ 8   џџџ и  %єўџџ(,   
%иўџџ( и  %Мўџџ( є  % ўџџ(ўџџ `   ўџџ%ј§џџ(&Ш§џџ  ф  &№§џџЌ ,џџџ м   м   м   И,џџџ&ф§џџЈ $B,T   
& ўџџА 8  &ўџџt     &џџџ  l  &№§џџЌ  ,  &,џџџЈ $B,T   
& ўџџА ,  &ўџџt џџџ 8   џџџ и  %єўџџ((   
%иўџџ( и  %Мўџџ( є  % ўџџ(ўџџ `   ўџџ%ј§џџ(&Ш§џџ  ф  &№§џџЌ ,џџџ м   м   м   И,џџџ&ф§џџЈ $B,T   
& ўџџА 8  &ўџџt  <  &џџџ  l  &№§џџЌ  ,  &,џџџЈ $B,T   
& ўџџА ,  &ўџџt џџџ 8   џџџ и  %єўџџ($   
%иўџџ( и  %Мўџџ( є  % ўџџ(ўџџ `   ўџџ%ј§џџ(&Ш§џџ  ф  &№§џџЌ ,џџџ м   м   м   И,џџџ&ф§џџЈ $B,T   
& ўџџА 8  &ўџџt  X  &џџџ  l  &№§џџЌ  ,  &,џџџЈ $B,T   
& ўџџА ,  &ўџџt џџџ 8   џџџ и  %єўџџ(    
%иўџџ( и  %Мўџџ( є  % ўџџ(ўџџ `   ўџџ%ј§џџ(&Ш§џџ  ф  &№§џџЌ ,џџџ м   м   м   И,џџџ&ф§џџЈ $B,T   
& ўџџА 8  &ўџџt  t  &џџџ  l  &№§џџЌ  ,  &,џџџЈ $B,T   
& ўџџА ,  &ўџџt џџџ 8   џџџ и  %єўџџ(   
%иўџџ( и  %Мўџџ( є  % ўџџ(ўџџ `   ўџџ%ј§џџ(&Ш§џџ  ф  &№§џџЌ ,џџџ м   м   м   И,џџџ&ф§џџЈ $B,T   
& ўџџА 8  &ўџџt    &џџџ  l  &№§џџЌ  ,  &,џџџЈ $B,T   
& ўџџА ,  &ўџџt џџџ 8   џџџ и  %єўџџ(   
%иўџџ( и  %Мўџџ( є  % ўџџ(ўџџ `   ўџџ%ј§џџ(&Ш§џџ  ф  &№§џџЌ ,џџџ м   м   м   И,џџџ&ф§џџЈ $B,T   
& ўџџА 8  &ўџџt  Ќ  &џџџ  l  &№§џџЌ  ,  &,џџџЈ $B,T   
& ўџџА ,  &ўџџt џџџ 8   џџџ и  %єўџџ(   
%иўџџ( и  %Мўџџ( є  % ўџџ(ўџџ `   ўџџ%ј§џџ(&Ш§џџ  ф  &№§џџЌ ,џџџ м   м   м   И,џџџ&ф§џџЈ $B,T   
& ўџџА 8  &ўџџt  Ш  &џџџ  l  &№§џџЌ  ,  &,џџџЈ $B,T   
& ўџџА ,  &ўџџt џџџ 8   џџџ и  %єўџџ(   
%иўџџ( и  %Мўџџ( є  % ўџџ(ўџџ `   ўџџ%ј§џџ(&Ш§џџ  ф  &№§џџЌ ,џџџ м   м   м   И,џџџ&ф§џџЈ $B,T   
& ўџџА 8  &ўџџt  ф  &џџџ  l  &№§џџЌ  ,  &,џџџЈ $B,T   
& ўџџА ,  &ўџџt џџџ 8   џџџ и  %єўџџ(   
%иўџџ( и  %Мўџџ( є  % ўџџ(ўџџ `   ўџџ%ј§џџ(&Ш§џџ  ф  &№§џџЌ ,џџџ м   м   м   И,џџџ&ф§џџЈ $B,T   
& ўџџА 8  &ўџџt      &џџџ  l  &№§џџЌ  ,  &,џџџЈ $Bџџџџџџ     !џџџєўџџ    !єўџџ%иўџџ(* §џџ   
џџџ §џџ м  %ўџџ(л     
Hџџџџџџ џџџ§џџ  §џџ*t <џџџ ф  *Ј §џџHџџџ §џџH§џџ(t <џџџH§џџ" Ok  Hџџџ<џџџ,§џџ  §џџ%ўџџ(3  <џџџШќџџHџџџ Шќџџ%Мќџџp  џџџ и  Hџџџ<џџџ,%џџџ( и  %єўџџ( $   %иўџџ( и  %Мўџџ( @   % ўџџ( и  %ўџџ( $   %ј§џџ(* ,T   
& ўџџА ,  &ўџџt џџџ 8   џџџџџџ%єўџџ(иўџџ `   иўџџ%Мўџџ(& ўџџ  ф  &№§џџЌ ,џџџ м   м   м   И,џџџ&ф§џџЈ $B§   <џџџ§џџHџџџ §џџ%ўџџHз   џџџ и  Hџџџ<џџџ,%џџџ( и  %єўџџ( \   %иўџџ(* ,T   
& ўџџА ,  &ўџџt џџџ 8   џџџџџџ%єўџџ(иўџџ `   иўџџ%Мўџџ(& ўџџ  ф  &№§џџЌ ,џџџ м   м   м   И,џџџ&ф§џџЈ $B<џџџ'Ш §џџС   ,T   
& ўџџА ,  &ўџџt џџџ 8   џџџ и  %єўџџ(   
%иўџџ( и  %Мўџџ( \   % ўџџ(ўџџ `   ўџџ%ј§џџ(&Ш§џџ  ф  &№§џџЌ ,џџџ м   м   м   И,џџџ&ф§џџЈ $B,T   
& ўџџА 8  &ўџџt  x   &џџџ  l  &№§џџЌ  ,  &,џџџЈ $B 8   -,џџџ ,   ,   3A,џџџ     $A   8џ     д   HџџџЪ   иўџџ    єўџџ    џџџ    Мќџџ    Шќџџ    §џџ    H§џџ    §џџ    џџџ    Ш§џџ    џџџ    ,џџџ     ўџџ    ф§џџ    №§џџ    ј§џџ    ўџџ    <џџџ    ўџџ     ўџџ    Мўџџ                 T шSaџџ            Д      
 ,  %ЌџџџX    џџџ   
     r џџџЌџџџ   
     rЌџџџ   
      
)8   
     
)8   
%     
)8Ќџџџ   
 Є    rЌџџџ         џџџ    Ќџџџ              шc`џџ    X       N   џ-  єўџџ ,   ,   3Aєўџџ   
 ф  %шўџџhА  џџџ Ќ    џџџ Ш    рўџџ<џџџџџџ рўџџ ўџџџџџ  ўџџ м  %шўџџH&   џџџ ф     !   !  %рўџџp    шўџџ !   шўџџ`   ўџџPџџџ *ўџџ ,  %ўџџX   џџџ ф    !   џџџ ф     !   !  %рўџџp !   џџџ ф     !   !  %рўџџp џџџ ,!   џџџ џџџ H!   џџџ  ўџџџџџ  ўџџ м  %шўџџH&   џџџ d!    !   !  %рўџџp    џџџ d!   с  џџџ Ќ     !   !  %рўџџp џџџ Ш     !   !  %рўџџp рўџџ<џџџџџџ рўџџ ўџџџџџ  ўџџ м  %шўџџH&   џџџ ф     !   !  %рўџџp    шўџџ !   шўџџ`   ўџџPџџџ *ўџџ ,  %ўџџX   џџџ ф    !   џџџ ф     !   !  %рўџџp !   џџџ ф     !   !  %рўџџp џџџ ,!    !   !  %рўџџp џџџ џџџ H!   џџџ  ўџџџџџ  ўџџ м  %шўџџH&   џџџ d!    !   !  %рўџџp    џџџ d!   lџџџlўџџџџџ   
   
 lўџџ* шўџџlџџџ шўџџ&ўџџ№  lџџџ Ќ   %ўџџP   `ўџџ !   `ўџџх   lџџџ Ш   %шўџџP   ўџџ !   ўџџД   lџџџ ф   %шўџџP   ўџџ !   ўџџ   lџџџ ,!  %шўџџP   ўџџ !   ўџџR   lџџџ H!  %шўџџP   ўџџ  !   ўџџ!   lџџџ d!  %шўџџP
   <џџџ          $A    џ        џџџy   <џџџ    Pџџџ     ўџџ    `ўџџ    рўџџ    lўџџ    lџџџ    џџџ    шўџџ    ўџџ    ўџџ    єўџџ                  шqZџџ    ќ          0џ  @џџџ м  *Ј џџџџџџ Ј!   Ф!   џџџ* џџџдўџџџџџ дўџџ*t @џџџШўџџ   
!#    +*Ј @џџџ м  %Мўџџh5   @џџџ џџџдўџџ  дўџџ*t џџџ   ( @  LџџџШўџџџџџџџџ!   
@џџџ#    +*Ј @џџџ м  %МўџџH   4џџџШўџџ@џџџ#    +*Ј tџџџџџџџџџ џџџ* Xџџџџџџtџџџ џџџ* џџџXџџџ* џџџ   ( t   l     $A@џџџ м  %МўџџH   4џџџШўџџ@џџџ#    +*Ј џџџдўџџ  дўџџ*t џџџ   ( 	      0џ     l   Мўџџ    Шўџџ    дўџџ    џџџ    џџџ    џџџ    4џџџ    @џџџ    Lџџџ    Xџџџ    tџџџ              шиWџџ               ЈџZ   Ќџџџ м  *Ј Ќџџџџџџ   
!   
!   
!#    +*Ј Ќџџџ   (Ј 4   ,     $AЌџџџ м  *Ј Ќџџџ   (Ј 	      Јџ        џџџ    Ќџџџ              ш Wџџ    Д          ,џK   џџџџџџ, $  & џџџЈ $%*Ј  џџџ м   џџџ м   `  #    + џџџ l   џџџџџџ##    +џџџ l   џџџ l  % џџџdџџџ##    +џџџ l   џџџ t  % џџџd|џџџ##    +џџџ l   џџџ |  % џџџdpџџџ##    + џџџ, џџџ$&`џџџџџџџџџџџџ џџџ*Д Pџџџџџџ|џџџpџџџ џџџ*Д @џџџџџџ`џџџ oAџџџ*Д 0џџџџџџPџџџ oAџџџ*Д    
 џџџ@џџџ  џџџ*Ј    
 џџџ@џџџ  џџџ*Ј    
 џџџ0џџџ  џџџ*Ј    
 џџџ0џџџ  џџџ*Ј Ќџџџ ,  *t Ќџџџ   (t 4   ,     $AЌџџџ 8  *t Ќџџџ   (t 	      ,џ     ~   џџџ    џџџ     џџџ    0џџџ    @џџџ    Pџџџ    `џџџ    pџџџ    |џџџ    џџџ    џџџ     џџџ    Ќџџџ              шдSџџ           р  џџџџџџ <   &џџџ*        № (  %tџџџP   4џџџ (  *t -         № `  %tџџџP   4џџџ Ь!  *t њ          № |  %tџџџP   4џџџ ш!  *t Ч          № Є  %tџџџP   4џџџ "  *t           № а  %tџџџP   4џџџ  "  *t a          №   %tџџџP   4џџџ <"  *t .          № @  %tџџџP   4џџџ X"  *t 4џџџ (  %tџџџH   ;   єўџџАўџџ,џџџ   %џџџ(&иўџџ 4џџџ&Мўџџt $0*t      Q   Аўџџ    Мўџџ    иўџџ    єўџџ    џџџ    џџџ    4џџџ    tџџџ              шQџџ     @       &  Ьўџџ8џџџ   
 UЬўџџћ  ,$G8џџџ   
   
   
   
      d  № `  %ЬўџџP    џџџРўџџ8џџџ Рўџџ*Ј ,џџџxўџџ, ,  &Ьўџџt  џџџ&РўџџЈ  м  &ДўџџЈ  м  &ЈўџџЈ  м  &ўџџЈ  м  &ўџџЈ  t"  &ўџџЈ $ $*Ј 8џџџ ? ,    8џџџ№ўџџќўџџџџџџџџ !иўџџџџџ*Ј иўџџ   
%ЬўџџХ   фўџџиўџџРўџџ     М  №  Рўџџ%Дўџџ4*Ј фўџџ   
%Ьўџџ<   фўџџ   
*Ј 8џџџ№ўџџќўџџфўџџиўџџ%РўџџЌ%ДўџџЌџџџџџџфўџџиўџџ%ЈўџџЌ%ўџџ4 8џџџ ? ф   IA      уўџџ     Ђ   xўџџ    ўџџ    ўџџ    ўџџ    Јўџџ    Дўџџ    8џџџ    Рўџџ    Ьўџџ    иўџџ    фўџџ    №ўџџ    ќўџџ    џџџ    џџџ     џџџ    ,џџџ              шNџџ           E  фўџџ8џџџ   
 Uфўџџ   ,    8џџџџџџџџџ џџџ,џџџ !№ўџџ,џџџ*Ј №ўџџ   %фўџџHУ   ќўџџ№ўџџиўџџ     М  №  иўџџ%ЬўџџЌ*Ј ќўџџ   %фўџџ   ќўџџ   *Ј 8џџџџџџџџџќўџџ№ўџџ%иўџџЌ%ЬўџџЌ џџџ,џџџќўџџ№ўџџ%РўџџЌ%Дўџџ4 8џџџ ? ф   IA      цўџџ     u   Дўџџ    Рўџџ    Ьўџџ    иўџџ    фўџџ    №ўџџ    ќўџџ    џџџ    џџџ     џџџ    ,џџџ    8џџџ              шОLџџ           i  4џM  (џџџ8џџџ   
 U(џџџ)  шўџџ ф  *t      L  № (  %(џџџP   ,   
&Ьўџџ $I        L  № `  %(џџџP   ,   
&Ьўџџ $MY        L  № |  %(џџџP   ,   
&Ьўџџ $Q         L  № Є  %(џџџP    8џџџ   %hўџџPЬ   %(ўџџD ,  %(џџџH
    Р   X(џџџ8џџџ (џџџ      4џ     ?   (ўџџ    8џџџ    Ьўџџ    шўџџ    (џџџ    hўџџ              шѕJџџ    №        j   ,џџџ8џџџ   
 U,џџџ?   8џџџ Ш  %ШўџџP   
*t    
 м  %,џџџH      
 IA     $   8џџџ    ,џџџ    Шўџџ              шFJџџ     @         Ьўџџ8џџџ   
 UЬўџџс  ,$G8џџџ   
   
   
   
      d  № `  %ЬўџџP    џџџРўџџ8џџџ Рўџџ*Ј ,џџџxўџџ, ,  &Ьўџџt  џџџ&РўџџЈ  м  &ДўџџЈ  м  &ЈўџџЈ  м  &ўџџЈ  м  &ўџџЈ  t"  &ўџџЈ $ $*Ј 8џџџ ? ,  љ   8џџџ№ўџџќўџџџџџџџџ !иўџџџџџ*Ј иўџџ   
%ЬўџџЋ   фўџџиўџџРўџџ     М  №  Рўџџ%Дўџџ4*Ј фўџџ   
%Ьўџџ<   фўџџ   
*Ј 8џџџ№ўџџќўџџџџџџџџфўџџиўџџ%РўџџЌ%Дўџџ4 8џџџ ? ф   IA      §ўџџ     Ђ   xўџџ    ўџџ    ўџџ    ўџџ    Јўџџ    Дўџџ    Рўџџ    Ьўџџ    иўџџ    фўџџ    №ўџџ    ќўџџ    џџџ    џџџ     џџџ    ,џџџ    8џџџ              шwGџџ    ь       
 +  фўџџ8џџџ   
 Uфўџџ    ,  і   8џџџџџџџџџ џџџ,џџџ !№ўџџ,џџџ*Ј №ўџџ   %фўџџHЉ   ќўџџ№ўџџиўџџ     М  №  иўџџ%ЬўџџЌ*Ј ќўџџ   %фўџџ   ќўџџ   *Ј 8џџџџџџџџџ џџџ,џџџќўџџ№ўџџ%иўџџЌ%Ьўџџ4 8џџџ ? ф   IA       џџџ    
 c   Ьўџџ    иўџџ    фўџџ    №ўџџ    ќўџџ    џџџ    џџџ     џџџ    ,џџџ    8џџџ              шШEџџ    Ф       Ф  dўџџ8џџџ   
 Udўџџ  ,$G8џџџ   
   
   
   
 џџџHўџџ <   &Hўџџ* dўџџpўџџџџџ |"  %Hўџџ( Ddўџџpўџџ   
&Hўџџ <ўџџ8џџџ <ўџџ&0ўџџЈ  "  &$ўџџЈ   "  &ўџџЈ +CMLOADFORMTRANSPARENT dўџџpўџџ Ddўџџ     d  № `  %dўџџP    џџџ<ўџџ8џџџ <ўџџ*Ј ,џџџє§џџ, ,  &dўџџt  џџџ&<ўџџЈ  м  &0ўџџЈ  м  &$ўџџЈ  м  &ўџџЈ  м  &ўџџЈ  t"  & ўџџЈ $ $*Ј         є§џџ     ўџџ    ўџџ    ўџџ    $ўџџ    0ўџџ     џџџ    ,џџџ    <ўџџ    8џџџ    Hўџџ    dўџџ    pўџџD    џџџ              ш\Cџџ    ј        	  џџџ8џџџ   
 Uџџџо   ,$G8џџџ   
   
   
   
 8џџџ ?     d  № `  %џџџP    џџџџџџ8џџџ џџџ*Ј ,џџџРўџџ, ,  &џџџt  џџџ&џџџЈ  м  &ќўџџЈ  м  &№ўџџЈ  м  &фўџџЈ  м  &иўџџЈ  t"  &ЬўџџЈ $ $*Ј      l   Рўџџ    Ьўџџ    иўџџ    фўџџ    №ўџџ    ќўџџ    џџџ    џџџ     џџџ    ,џџџ    8џџџ              шЦAџџ            T   Дџ8   Јџџџ#    +Јџџџ   
 Ј"   ь   м   БAЈџџџ      Дџ        Јџџџ              ш?Aџџ          	 ё   |ўџџ8џџџ   
 U|ўџџЦ   џџџ`ўџџ <   &`ўџџ* |ўџџўџџџџџ |"  %`ўџџ( D|ўџџўџџ   
&`ўџџ Tўџџ8џџџ Tўџџ&HўџџЈ  "  &<ўџџЈ   "  &0ўџџЈ + CMCLOSEFORMTRANSPARENT |ўџџўџџ D|ўџџ    	 Z   0ўџџ    <ўџџ    Hўџџ    Tўџџ    `ўџџ    |ўџџ    ўџџD    џџџ    8џџџ              шг?џџ         \    шЗ?џџ         \V  Ј"  7   "  0  "  )  |"  "  t"    X"    <"     "    "    ш!    Ь!  §  Ф!  ј  Ј!  ё   !  ь  !  х  !  о  !  з  !  а  d!  Щ  H!  Ф  ,!  П  !  К  !  Е   !  Ў  ф   Ї  Ш   Ђ  Ќ     Є               x     \   ~  @   y  $   t     o      h  ф  c  Ш  ^  Ќ  Y    T  t  O  X  J  <  E     @    ;  ш  6  Ь  1  А  ,    '  x  "  \    @    8    ,        є    и  §
  М  ј
     ѓ
    ю
  |  щ
  t  т
  l  л
  `  д
  X  Я
  <  Ш
     У
    О
  ш  Й
  Ь  Д
  А  Џ
    Њ
  x  Ѕ
  \   
  @  
  $  
    
  ь  
  а  
  Д  
  Ј  }
    x
  p  s
  T  n
  8  i
    d
     _
  є  Z
  и  U
  а  P
  Ш  I
  Р  B
  Є  ;
    6
    /
  d  *
  X  %
  L   
  D  
  (  
    
  №  

  д  
  И   
    ћ	    і	  d  ё	  H  ь	  ,  ч	    т	  є  н	  и  и	  М  г	     Ю	    Щ	  h  Ф	  L  П	  0  К	    Е	  ј  А	  м  Ћ	  Р  І	  Є  Ё	    	  l  	  P  	  4  	    	  ќ  	  р  ~	  Ф  y	  Ј  t	    o	  p  j	  T  e	  8  `	    [	     V	  ф  Q	  Ш  L	  Ќ  G	    B	    =	  h  8	  L  3	  0  .	    )	  ј  $	  м  	  Р  	  Є  	    	  l  	  P  	  4  	    ќ  ќ  ї  р  ђ  Ф  э  Ј  ш    у  p  о  T  й  8  д    Я     Ъ  ф  Х  Ш  Р  Ќ  Л    Ж  t  Б  X  Ќ  <  Ї     Ђ      ш    Ь    А        x    \    @  z  $  u    p  ь  k  а  f  Д  a    \  |  W  `  R  D  M  (  H    C  №  >  д  9  И  4    /    *  d  %  H     ,        є    ь    а    Д       ћ  |  і  `  ё  D  ь  (  ч    т    н  є  и  и  г  М  Ю     Щ    Ф  h  П  `  К  D  Г  8  Ў  ,  Љ  $  Є      ќ    р    Ф    Ј        p    T  z  8  u    p     k  ф  f  Ш  a  Ќ  \    W  t  R  X  M  <  H     C    >  ш
  9  Ь
  4  А
  /  
  *  x
  %  \
     @
    $
    
    ь	    а	    Д	    	  §  |	  ј  `	  ѓ  D	  ю  (	  щ  	  ф  №  п  д  к  И  е    а    Ы  d  Ц  H  С  ,  М    З  є  В  и  ­  М  Ј     Ѓ      h    L    0              ~  ќ  w  є  p  ь  i  ф  b  Ш  [  Ќ  V    Q  t  L  X  G  <  B     =    8  ш  3  Ь  .  А  )    $  x    \    @    $        ь    а    Д  ќ    ї  |  ђ  `  э  D  ш  8  у  ,  о    й  є  д  ь  Я  ф  Ш  м  С  Р  К  Є  Е    А  |  Ћ  `  І  D  Ё  (        №    д    И          ~  d  y  H  t  ,  o    j  є  e  и  `  М  [     V    Q  h  L  L  G  0  B    =  м   8  а       Ф       И            Ё  Д $  S #  "  !         џ    	



	
        @         	
                       
  	                         џ   ў   §   ќ   ћ      0   Xњ   љ   ј   ї   і   ѕ   є   ѓ   ђ   ё   №   я   ю   э   ь   џџџџы   ъ   щ   ш   ч   ц     х   ы ю я ф   ,у   т   ѓѓѓ сой џс   р   п   о   н   м   л   к   й   и   з   ж   е   д   г   в   б   а   Я   Ю   Э   Ь   Ы   Ъ   Щ   Ш   Ч   Ц   Х   Ф   У   Т   С   Р   П   О   Н   М   Л   К   Й   И   З     Ж   Е   Д   Г   В   Б   А   Џ   Ў   ­   Ќ   Ћ   Њ   Љ   Ј   Ї   І   Ѕ   Є   Ѓ   Ђ   Ё                                                                                                          ~   }   |   {   d z   y   x   w   v   u   t        s   r   o   n   m   l    k             џ j   i   h   g   f   e   d   c   b   a   `   _   ^   ]   \   [   Z   Y   X   W   V   U   T   S   R   Q   P   O   N   M   L   K   J   I   H   G   F   E   D   C   B   A   @   ?   >   =   <   ;   :   9   8   7   6   5   4   
 Z     3   2   1   0   /   .   -   ,   +   *   )   (   '   &   %   $   #   "   !                                ўџџџ         @                                         
   	                                       0Modal
PopupStyleDisplayStyleShowCloseButton	PlaySoundTimerWaitingSpeedMousePointerInterNetActionLinkTextInterNetEffectsBackgroundStyle	AutoClose	OwnerModeOwnerPositionPopupTop    	PopupLeftTextAlignment	FontColorText0:work:popmsg123close0x40	POPUPFORMFORMBOXCLOSETEKST520052015202              5203452045520565206752078520895209PRIVwork\     .bmp\smpopsm.dll
TEXTBITMAPCONTEXTTEXTCLOSEFOCUSBUTPopupAlertsForm could not be openedVK_TABVK_NEXTVK_PRIORZRTYUI                OPQSDFGHJKLMWXCV                BNVK_F1noneVK_BACKVK_F6VK_F2VK_F7VK_F8VK_F9VK_F11VK_F12	VK_DELETE	VK_INSERTVK_PAUSEVK_ADD         VK_APPS	VK_CANCELVK_CLEAR
VK_EXECUTE	VK_ESCAPEVK_ENDVK_HELPVK_HOMEVK_F4VK_F38000 http://Microsoft.XMLHTTPopenGET    SEND
STATUSTEXTOK#VK_UPVK_DOWN	popupform!Welcome to the Small PopupAlerts.
Reading : fieldModal
FIELDMODAL
POPUPSMALLfieldModalvalue: fieldPopupStyleFIELDPOPUPSTYLE fieldPopupStylevalue: fieldDisplayStyleFIELDDISPLAYSTYLEfieldDisplayStylevalue: fieldShowCloseButtonFIELDSHOWCLOSEBUTTONfieldShowCloseButtonvalue: fieldSoundNameFIELDSOUNDNAMEfieldSoundNamevalue: fieldTimerWaitingFIELDTIMERWAITINGfieldTimerWaitingvalue: fieldSpeed
FIELDSPEEDfieldSpeedvalue               : fieldMousePointerFIELDMOUSEPOINTERfieldMousePointervalue: fieldInterNetEffectsFIELDINTERNETEFFECTSfieldInterNetEffectsvalue: fieldBackgroundStyleFIELDBACKGROUNDSTYLEfieldBackgroundStylevalue: fieldAutoCloseFIELDAUTOCLOSEfieldAutoClosevalue: fieldTextAlignmentFIELDTEXTALIGNMENTfieldTextAlignmentvalue: fieldFontColor  FIELDFONTCOLORfieldFontColorvalueCOLORFONTCOLOR: fieldOwnerModeFIELDOWNERMODEfieldOwnerModevalue: fieldOwnerPositionFIELDOWNERPOSITIONfieldOwnerPositionvalue: fieldPopupTopFIELDPOPUPTOPfieldPopupTopvalue: fieldPopupLeftFIELDPOPUPLEFTfieldPopupLeftvalue: fieldText         	FIELDTEXTfieldTextvalueendfieldTextvalue: fieldInterNetActionLinkTextFIELDINTERNETACTIONLINKTEXT fieldInterNetActionLinkTextvalue#endfieldInterNetActionLinkTextvalue[POPUPSMALL]+Thank You For Trying the Small PopupAlerts.Writing : fieldModalvaluefieldModalvalue=: fieldPopupStylevaluefieldPopupStylevalue=: fieldDisplayStylevaluefieldDisplayStylevalue=   : fieldShowCloseButtonvaluefieldShowCloseButtonvalue=: fieldSoundNamevaluefieldSoundNamevalue=: fieldTimerWaitingvaluefieldTimerWaitingvalue=: fieldSpeedvaluefieldSpeedvalue=: fieldMousePointervaluefieldMousePointervalue=: fieldInterNetEffectsvaluefieldInterNetEffectsvalue=: fieldBackgroundStylevaluefieldBackgroundStylevalue=: fieldAutoClosevaluefieldAutoClosevalue=                : fieldTextAlignmentvaluefieldTextAlignmentvalue=: fieldFontColorvaluefieldFontColorvalue=: fieldOwnerModevaluefieldOwnerModevalue=: fieldOwnerPositionvaluefieldOwnerPositionvalue=: fieldPopupTopvaluefieldPopupTopvalue=: fieldPopupLeftvaluefieldPopupLeftvalue=: fieldTextvaluefieldTextvalue=": fieldInterNetActionLinkTextvalue!fieldInterNetActionLinkTextvalue=          r=0x0080Loading Backcolor...	DETAILBOXDETAILBOX.DETAILBOXLINELoading cmFormMainResize...Loading Toolbar...BITMAPTOOLBAR	\6000.bmp6000FORMBOX1FORMBOX2Loading ColorPicker...	\7000.bmp7000          BITMAPCOLORCHOOSE	formwidthBOXPROPERTIESdetailboxheightdetailboxlinewidthWRITECODEFIELDwritecodefieldwidthwritecodefieldheightdetailboxwidthMAINPAGE
formheightformleftformtopYourLibVar.cmCallPopup(",           ;Modal;PopupStyle;DisplayStyle;ShowCloseButton
;SoundName;TimerWaiting;Speed;MousePointer;InterNetActionLinkText;InterNetEffects;BackgroundStyle
;AutoClose
;OwnerMode;OwnerPosition	;PopupTop
;PopupLeft            ;TextAlignment
;FontColor + \n);Text&CutC&opy&PasteCF_TEXT&Delete&Select AllC&lipboard Clear 130131              132133134135	\popmstlb      