MZP      џџ  И       @                                      К Д	Э!ИLЭ!This program must be run under Microsoft Windows.
$            NE
Я
     	                @ P ДЯЯi     .         7  P 8  q       : 0    ;0    <0    =0    > 0         S& 0         T&40          , 0         ,| 0    	     -ж0    $     т: 0    ё: 0    ; 0    ; 0    ; 0    &;	 0    /; 0    <; 0    N; 0	    ]; 0
    n; 0    ; 0    ; 0    Ќ; 0    К; 0    Х; 0    й; 0    ъ; 0    ћ; 0    < 0     < 0    7< 0    R< 0    m< 0    < 0    < 0    Г< 0    в< 0    ы< 0    = 0    = 0    )= 0     5= 0!    F= 0"    X= 0#    j= 0$      APPLIB  LIBENTRY  WEP               И ЫИ Ы                                        џBorland Standard File           ў         @   |              ў ~ ў      @       	ў               ў              ў               ў               ў               ў F Library   Form   UIManager   UIContainer   UIObject   	ў Е  ЏџџџџџџАfY                                             open+ close+ canArrive2 arrive2 setFocus+ canDepart2 removeFocus+ depart2 mouseEnter, mouseExit, mouseMove, mouseDown, mouseUp, mouseDouble, mouseRightDown, mouseRightUp, mouseRightDouble, keyPhysical- keyChar- action. menuAction/ timer4 pushButton+ changeValue0 calcField+ run+ newValue+ proc+ error3 status1 mouseClick, init+ stringListChange+ Uses Type Var Const Proc menuCreateMain menuShowMain menuProcessMain menuNotDefined formWait formOpen menuPopupMain desktopSave desktopRestore toolbarCreateData systemGetPassword systemShowInfo systemSaveSetting systemReadSetting formSelectMaster reportHandler reportPreview reportPrint reportQuery reportGetDestination menuShowReport menuCreateReport menuCreateForm menuShowForm reportExportFile toolbarShowForm toolbarShowReport menuHide toolbarHideReport toolbarCreateReport toolbarHideForm menuProcessForm reportSetDestination actionHandlerForm actionDataLookup actionEditMemo actionDataDelete systemGetNextNum verifyCloseForm menuRefreshEdit errorActionForm systemRunExpert updateCourseRoster systemSaveAs crosstabSave systemShowHelp desktopResyncForm graphSave reportPublish actionDataInsert tablePublish ўmZ џgZџџ                            dY  џџ8 ф Var

   dloDTStatus DynArray[] Logical ; Display status of Desktop elements.

   ; The following declarations are for the Main menu

   menuMain,                ; The Main menu
   menuForm,                ; The standard form menu
   menuRpts  Menu           ; The std. report menu

   pmFileMain,              ; The File popup menu
   pmFileOpen,              ; The File | Open popup menu
   pmAsksMain,              ; The Analyze menu
   pmRptsMain,              ; The Reports menu
   pmToolMain,              ; The Tools menu
   pmToolInfo,              ; The Tools | System Information menu
   pmToolUtil,              ; Utilities menu (merged into Tools)
   pmHelpMain  PopupMenu    ; The Help menu

   ; The following declarations are for the standard Data menu

   pmFormForm,                    ; The Form popup menu, for data forms
   pmEditForm,                    ; The Edit popup menu, for data forms
   pmDataForm  PopupMenu          ; The Record popup menu, for data forms

   ; The following declarations are for the standard Preview menus
   pmRptsFile,                    ; The File popup menu, for reports
   pmRptsZoom,                    ; The Zoom popup menu, for reports
   pmRptsPage  PopupMenu          ; The Page popup menu, for reports

   ; The following declarations are for the toolbars that are displayed
   ; in the application.

   tbEditing,                     ; The Data toolbar for data entry forms
   tbPreview   Toolbar            ; The Preview toolbar for reports

   ; The following declaration keep tracks of where the user
   ; wants to print reports.  We use a global variable since the
   ; user can select this from other forms of the application.
   strRptDest  String

endVar
 Var $г method menuCreateMain()
; ---------------------------------------------------------------
; This routine defines the Main menu and its associated popup
; menus, including the ones that appear when you click the
; command buttons on the Main Menu form.
; ---------------------------------------------------------------

   ; ------------------------------------------------------------
   ; First, define the popup menus that are used with the File
   ; popup menu
   ; ------------------------------------------------------------

   ; Start with the File | Open commands...

   pmFileOpen.addText( "&Product Catalog" )
   pmFileOpen.addText( "Product &Orders" )
   pmFileOpen.addText( "&Customer Information" )
   pmFileOpen.addSeparator()
   pmFileOpen.addText( "Course &Descriptions" )
   pmFileOpen.addText( "Course &Schedule" )
   pmFileOpen.addSeparator()
   pmFileOpen.addText( "&Employee Information" )

   ; Now, we get to define the File menu and add it to the main
   ; menu

   pmFileMain.addPopup( "&Open",      pmFileOpen )
   pmFileMain.addSeparator()

   pmFileMain.addText( "&Print" )
   pmFileMain.addText( "P&rinter Setup..." )
   pmFileMain.addSeparator()
   pmFileMain.addText( "E&xit" )

   menuMain.addPopup( "&File", pmFileMain )

   ; ------------------------------------------------------------
   ; Now, define the Analyze menu and then add it to the main
   ; menu
   ; ------------------------------------------------------------

   pmAsksMain.addText( "&Salary Allocation"  )
   pmAsksMain.addText( "Sales &Categories" )
   pmAsksMain.addSeparator()
   pmAsksMain.addText( "Salary &Averages" )
   pmAsksMain.addText( "Attendence &Totals" )

   menuMain.addPopup( "&Analyze", pmAsksMain )

   ; ------------------------------------------------------------
   ; Okay, now define the Reports menu, starting with the pop-up
   ; menus.
   ; ------------------------------------------------------------

   pmRptsMain.addText( "&Product List" )
   pmRptsMain.addText( "&Order Packing List" )
   pmRptsMain.addText( "C&ustomer Labels" )
   pmRptsMain.addSeparator()
   pmRptsMain.addText( "&Course Catalog" )
   pmRptsMain.addText( "Class &Schedule" )
   pmRptsMain.addText( "Class &Roster" )
   pmRptsMain.addSeparator()
   pmRptsMain.addText( "Phone &List" )
   pmRptsMain.addText( "&Birthday List" )
   pmRptsMain.addText( "&Employee Roster" )

   ; Now, define the Reports menu
   menuMain.addPopup( "&Reports", pmRptsMain )

   ; ------------------------------------------------------------
   ; Next, define the Maintenance menu, starting with the pop-up
   ; menus.
   ; ------------------------------------------------------------

   pmToolInfo.addText( "&System Settings" )
   pmToolInfo.addText( "&DOS Environment" )
   pmToolInfo.addText( "&Engine Configuration" )
   pmToolInfo.addText( "&Windows Resources" )

   ; Next, define the Utilities menu.

   pmToolUtil.addText( "&Import..." )
   pmToolUtil.addText( "&Mail Merge..." )
   pmToolUtil.addText( "&Publish..." )
   pmToolUtil.addText( "&Table Repair..." )

   ; Now, define the Maintenance menu and add it to the main
   ; menu
   pmToolMain.addText( "Maintain &Lookups" )
   pmToolMain.addPopup( "&System Information", pmToolInfo )
   pmToolMain.addPopup( "&Utilities", pmToolUtil )
   pmToolMain.addSeparator()
   pmToolMain.addText( "&Preferences" )

   menuMain.addPopup( "&Tools", pmToolMain )

   ; ------------------------------------------------------------
   ; Next, define the Help menu and add it to the Main menu.
   ; Since this popup is used by more than one menu, it's defined
   ; with menuAction constants so its effects can be coordinated
   ; coordinated across several forms without additional code,
   ; save that needed to handle general menu event processing.
   ; For more information, see the menuAction event on the form
   ; object of EMPLINFO.FSL.
   ; ------------------------------------------------------------

   pmHelpMain.addText( "&Contents", menuEnabled,
                                    menuHelpContents )
   pmHelpMain.addSeparator()
   pmHelpMain.addText( "&About...", menuEnabled, menuHelpAbout )

   menuMain.addPopup( "&Help", pmHelpMain )

endMethod
 menuCreateMain %5 method menuShowMain()
; -------------------------------------------------------------------------
; This routine displays the Mein menu, which is created and populated in
; menuCreateMain()
; -------------------------------------------------------------------------

   menuMain.show()
   
endMethod
 menuShowMain &q method menuProcessMain( strChoice String ) Logical
; -------------------------------------------------------------------------
; This routine implements the effects of menu commands and is triggered by
; the user when a command is selected from the main menu or from one of
; the popup menus that appear when you click a command button on the Main
; Menu.
;
; If this routine knows how to process the menu command that was sent to
; it, then a TRUE value is returned to the calling process.  However, if
; this routine doesn't know how to handle the passed command, then a FALSE
; is returned to the calling process.
;
; Notice that commands to open forms are collected into a single location,
; using the strFormName variable as a flag to indicate whether or not that
; code should be executed.  This approach reduces the number of errors you
; might make by accidentally specifying different options.
; -------------------------------------------------------------------------
var
   loRetval    Logical  ; Value returned to the calling process.
   strFormName String   ; Name of a form to be opened.
endVar

   ; Initialize the return value
   loRetval = TRUE
   strFormName = "" ; default value

   ; Evaluate the choice that triggered this code and react accordingly.

   switch

      ; pmFileOpen commands

      case strChoice = "&Product Catalog"      : strFormName = "PRODUCTS"
      case strChoice = "Product &Orders"       : strFormName = "PRODORDS"
      case strChoice = "&Customer Information" : strFormName = "CUSTINFO"
      case strChoice = "Course &Descriptions"  : strFormName = "CRSEDESC"
      case strChoice = "Course &Schedule"      : strFormName = "CRSESCHD"
      case strChoice = "&Employee Information" : strFormName = "EMPLINFO"

      ; Other pmFileMenu commands
      case strChoice = "&Print"            : menuAction( MenuFilePrint )
      case strChoice = "P&rinter Setup..." : menuAction( MenuFilePrinterSetup )
      case strChoice = "E&xit"             : menuAction( MenuControlClose )

      ; pmAsksMain commands
      case strChoice = "&Salary Allocation" : strFormName = "GRAFSLRY"
      case strChoice = "Sales &Categories"  : strFormName = "GRAFPROD"
      case strChoice = "Attendence &Totals" : strFormName = "XTABATND"
      case strChoice = "Salary &Averages"   : strFormName = "XTABSLRY"

      ; pmRptsMenu commands
      case strChoice = "&Product List"     :
         reportHandler( ":RPTS:PRODLIST", printPortrait )
      case strChoice = "&Order Packing List" :
         reportHandler( ":RPTS:PACKLIST", printLandscape )
      case strChoice = "C&ustomer Labels"  :
         reportHandler( ":RPTS:CUSTLBLS", printPortrait )


      case strChoice = "&Course Catalog"   :
         reportHandler( ":RPTS:CRSEDESC", printPortrait )
      case strChoice = "Class &Schedule"  :
         reportHandler( ":RPTS:CRSESCHD", printPortrait )
      case strChoice = "Class &Roster"  :
         reportHandler( ":RPTS:CRSERSTR", printPortrait )

      case strChoice = "Phone &List"       :
         reportHandler( ":RPTS:PHONELST", printPortrait )
      case strChoice = "&Birthday List"    :
         reportHandler( ":RPTS:BIRTHDAY", printPortrait )
      case strChoice = "&Employee Roster"  :
         reportHandler( ":RPTS:EMPLROST", printPortrait )

      ; pmToolInfo commands
      case strChoice = "&System Settings"      : systemShowInfo( "SYS" )
      case strChoice = "&DOS Environment"      : systemShowInfo( "DOS" )
      case strChoice = "&Engine Configuration" : systemShowInfo( "BDE" )
      case strChoice = "&Windows Resources"    : systemShowInfo( "WIN" )

      ; pmToolUtil commands
      case strChoice = "&Import..."        :
         systemRunExpert( "Import" )
      case strChoice = "&Mail Merge..."    :
         systemRunExpert( "Merge" )
      case strChoice = "&Publish..."       :
         tablePublish()
      case strChoice = "&Table Repair..."  :
         systemRunExpert( "TUTILITY" )

      ; other pmMtncMenu commands
      case strChoice = "Maintain &Lookups"     : strFormName = "LKUFORMS"
      case strChoice = "&Preferences"          : strFormName = "SYSPREFS"

      ; pmHelpMenu commands
      case strChoice = "&Contents"             : systemShowHelp()
      case strChoice = "&About..."             : strFormName = "ABOUTBOX"

      otherwise :

        loRetval = FALSE

   endSwitch

   ; if the command results in a form being opened, then do so now.
   if strFormName <> "" then
      formWait( ":FORMS:" + strFormName, winStyleDefault + winStyleHidden )
   endIf

   ; return the result

   return loRetval

endMethod
 menuProcessMain 'h method menuNotDefined( strCaption String )
; -------------------------------------------------------------------------
; This routine displays a standard error dialog in response to a menu
; command that has not been implemented yet.  It's provided so the menu can
; be tested during development and should not be required in the final
; release. -- ###
; -------------------------------------------------------------------------

   msgStop( "Can't Perform Command",
            "Reason: " + iif( strCaption = "", "This", strCaption ) +
            " has not been implemented yet, sorry!" )

endMethod
 menuNotDefined ( 	 method formWait( strFormName String, liWinStyle LongInt ) Logical
; ---------------------------------------------------------------
; This routine opens a form and then places it into a wait().
; The parameters indicate the name of the form to open and the
; window style options to be used when opening the form.  The
; return value indicates one of two things: When FALSE, it can
; mean the form failed to open or that it closed with a
; formReturn( FALSE ).  If the return value is TRUE, then the
; form opened successfully and closed with a formReturn( TRUE ).
; ---------------------------------------------------------------

var
   fmTarget,          ; The target form being opened.
   fmCaller   Form    ; Active form when this was called.
   loRetval   Logical ; Value returned to the calling routine.
endVar

   ; Initialize local variables.
   loRetval = TRUE

   ; Next, attach to the form that's currently open, so we can
   ; control its display.

   fmCaller.attach()
   fmCaller.hide()

   ; Next, open the form and then perform the wait().  Notice
   ; that if the form opens, we make sure it gets focus by
   ; bringing it to the top of all open windows.

   if not fmTarget.open( strFormName, liWinStyle ) then
      msgStop( "Can't Perform Action",
               "Reason: " + Upper( strFormName ) +
               " failed to open." )
      loRetval = FALSE
   else

      fmTarget.show()
      fmTarget.bringToTop()
      loRetval = fmTarget.wait()

      ; Now, try to close the form using a technique that won't
      ; trigger a run-time error if the form is already closed.

      try
         fmTarget.close()
      onFail
         ; do nothing, as the form is already closed.
      endTry

   endIf

   ; Finally, clean up by "unhiding" the calling form and
   ; bringing it to the top of all other open windows.  Also,
   ; make sure the menus are updated accordingly.

   fmCaller.bringToTop()
   fmCaller.menuAction( menuBuild )
   fmCaller.unAssign()

   ; Return the result to the calling process.  If everything
   ; went well, this is how the user exited the target form.  If
   ; not, then it indicates that an error was encountered while
   ; trying to open the form.
   return loRetval

endMethod

 formWait )B method formOpen( strFormName String, liWinStyle LongInt ) Logical
; ---------------------------------------------------------------
; This routine opens a form without placing it into a wait().
; This is useful for situations that do not depend on the return
; value of the target form.  The parameters indicate the name of
; the form to open and the window style options to be used when
; opening the form.  The return value indicates whether or not
; the target form could be opened.
;
; Notice that when this routine exits, there is no variable
; attached to the target form.  If you need to access the target
; form after using this routine, declare a form variable and then
; use attach( formTitle ) to do so, where formTitle is the caption
; in the form's title bar.
; ---------------------------------------------------------------

var
   fmTarget   Form    ; The target form being opened.
   loRetval   Logical ; Value returned to the calling routine.
endVar

   ; Initialize local variables.
   loRetval = TRUE

   ; Next, open the form and then perform the wait().  Notice
   ; that if the form opens, we make sure it gets focus by
   ; bringing it to the top of all open windows.

   if not fmTarget.open( strFormName, liWinStyle ) then
      errorShow( "Can't Run Process",
                 "Reason: " + Upper( strFormName ) +
                 "failed to open; see details..." )
      loRetval = FALSE
   else
      fmTarget.show()
      fmTarget.bringToTop()
   endIf

   ; Return the result to the calling process.
   return loRetval

endMethod
 formOpen *R method menuPopupMain( strMenuName String )
; -------------------------------------------------------------------------
; This routine displays one of the popup menus used to create the Main menu
; and is called when the user clicks one of the buttons on the Main Menu
; form.  It receives a string indicating which menu to display and then
; calls the Main Menu process handler when the user chooses a commands from
; the pop up menu.
; -------------------------------------------------------------------------
var
   strChoice  String ; The user's selected menu choice.
endVar

   ; First, initialize strChoice to some known value
   strChoice = ""

   ; Now, determine which menu to display and then display it.

   switch
      case strMenuName = "Open"      : strChoice = pmFileOpen.show()
      case strMenuName = "Analyze"	 : strChoice = pmAsksMain.show()
      case strMenuName = "Reports"   : strChoice = pmRptsMain.show()
      case strMenuName = "Tools"     : strChoice = pmToolMain.show()
      case strMenuName = "Help"      : strChoice = pmHelpMain.show()
   endSwitch

   ; Okay, the user did something.  So, determine what it was.
   ; If a menu command was selected, then pass that command to
   ; the MenuProcessMain() routine.

   if strChoice <> "" then
      menuProcessMain( strChoice )
   endIf

endMethod
 menuPopupMain   Ю  method open(var eventInfo Event)

   ; ### DEBUG ###
   ; This is here to raise flags that occur during development.  It
   ; should be removed before ship.
   errorTrapOnWarnings( Yes )

endMethod
 open+ +E method desktopSave()
; ---------------------------------------------------------------
; This routine saved the current state of the Paradox Desktop and
; then sets it to the appearance we want for this application.
; In this implementation, it:
;
; -- Hides the Project Viewer, if it was open.
; -- Hides each built-in toolbar that is displayed.
;
; The state of the Desktop is saved to the global dloDTStatus
; dynarray declared in the library's Var window.  This is used by
; desktopRestore() to know which elements to display when the
; application is exited.
; ---------------------------------------------------------------
var
   tbTarget  Toolbar  ; Points to various built-in Toolbars
endVar

   ; First, handle the Project Viewer.

   dloDTStatus[ "PV" ] = projectViewerIsOpen()
   If dloDTStatus[ "PV" ] = TRUE then
      projectViewerClose()
   endIf

   ; Next, handle the built-in toolbars.  Notice that we use
   ; the Toolbar type instead of the hideToolbar() method,
   ; which only works with the Standard toolbar.

   tbTarget.attach( "Standard" )
   dloDTStatus[ "Std" ] = tbTarget.isVisible()
   If dloDTStatus[ "Std" ] = TRUE then
      tbTarget.hide()
   endIf

   tbTarget.attach( "General" )
   dloDTStatus[ "Gen" ] = tbTarget.isVisible()
   If dloDTStatus[ "Gen" ] = TRUE then
      tbTarget.hide()
   endIf

   tbTarget.attach( "Object" )
   dloDTStatus[ "Obj" ] = tbTarget.isVisible()
   If dloDTStatus[ "Obj" ] = TRUE then
      tbTarget.hide()
   endIf


   tbTarget.attach( "Global" )
   dloDTStatus[ "Glo" ] = tbTarget.isVisible()
   If dloDTStatus[ "Glo" ] = TRUE then
      tbTarget.hide()
   endIf

   tbTarget.attach( "Align" )
   dloDTStatus[ "Ali" ] = tbTarget.isVisible()
   If dloDTStatus[ "Ali" ] = TRUE then
      tbTarget.hide()
   endIf

   tbTarget.attach( "Text Alignment" )
   dloDTStatus[ "Txt" ] = tbTarget.isVisible()
   If dloDTStatus[ "Txt" ] = TRUE then
      tbTarget.hide()
   endIf

   ; Now, clean up by making sure to close all complex
   ; variables.

   tbTarget.unAttach()

endMethod
 desktopSave ,\ method desktopRestore()
; ---------------------------------------------------------------
; This routine restores the Paradox Desktop to the appearance it
; had when this application was started.  In this implementation,
; it:
;
; -- Opens the project viewer, if it was open.
; -- Shows each built-in toolbar that was displayed.
;
; To do this, the routine examines the display states saved to
; the dloDTStatus dynarray when the application started.  This
; variable is declared in the library's Var window.
; ---------------------------------------------------------------
var
   tbTarget  Toolbar  ; Points to various built-in Toolbars
endVar

   ; First, handle the Project Viewer.

   If dloDTStatus[ "PV" ] = TRUE then
      projectViewerOpen()
   endIf

   ; Now, handle the built-in toolbars.  Notice that we use
   ; the Toolbar type instead of the hideToolbar() method,
   ; which only works with the Standard toolbar.

   If dloDTStatus[ "Std" ] = TRUE then
      tbTarget.attach( "Standard" )
      tbTarget.show()
   endIf

   If dloDTStatus[ "Glo" ] = TRUE then
      tbTarget.attach( "Global" )
      tbTarget.show()
   endIf

   If dloDTStatus[ "Obj" ] = TRUE then
      tbTarget.attach( "Object" )
      tbTarget.show()
   endIf

   If dloDTStatus[ "Ali" ] = TRUE then
      tbTarget.attach( "Align" )
      tbTarget.show()
   endIf

   If dloDTStatus[ "Txt" ] = TRUE then
      tbTarget.attach( "Text Alignment" )
      tbTarget.show()
   endIf

   ; Now, clean up by making sure to close all complex
   ; variables.

   tbTarget.unAttach()

endMethod
 desktopRestore -g method toolbarCreateData()
; -------------------------------------------------------------------------
; This routine declares the Editing toolbar, which is displayed by the data
; entry forms of the system.  Notice that the toolbar is only created if it
; hasn't already been created.  The toolbar variable is declared in the
; library's Var window.
; -------------------------------------------------------------------------

   if not tbEditing.attach( "Data Entry" ) then

      tbEditing.create( "Data Entry" )

      tbEditing.addButton( toolbarFileCluster, toolbarButtonPush,
                           menuFilePrint, bitmapPrint,
                           "Print" )
      tbEditing.addButton( toolbarEditCluster, toolbarButtonPush,
                           menuEditCut, bitmapEditCut,
                           "Cut to Clipboard" )
      tbEditing.addButton( toolbarEditCluster, toolbarButtonPush,
                           menuEditCopy, bitmapEditCopy,
                           "Copy to Clipboard" )
      tbEditing.addButton( toolbarEditCluster, toolbarButtonPush,
                           menuEditPaste, bitmapEditPaste,
                           "Paste from Clipboard" )
      tbEditing.addButton( toolbarModeCluster, toolbarButtonPush,
                           menuFormFilter, bitmapFilter,
                           "Filter" )
      tbEditing.addButton( toolbarToolCluster, toolbarButtonPush,
                           menuRecordLocateValue, bitmapSrchValue,
                           "Locate Field Value" )
      tbEditing.addButton( toolbarToolCluster, toolbarButtonPush,
                           menuRecordLocateNext, bitmapSrchNext,
                           "Locate Next" )
      tbEditing.addButton( toolbarVCRCluster, toolbarButtonPush,
                           menuRecordFirst, bitmapDataBegin,
                           "First Record" )
      tbEditing.addButton( toolbarVCRCluster, toolbarButtonPush,
                           menuRecordFastBackward,
                           bitmapDataPriorSet,
                           "Previous Record Set" )
      tbEditing.addButton( toolbarVCRCluster, toolbarButtonPush,
                           menuRecordPrevious,
                           bitmapDataPriorRecord,
                           "Previous Record" )
      tbEditing.addButton( toolbarVCRCluster, toolbarButtonPush,
                           menuRecordNext, bitmapDataNextRecord,
                           "Next Record" )
      tbEditing.addButton( toolbarVCRCluster, toolbarButtonPush,
                           menuRecordFastForward,
                           bitmapDataNextSet, "Next Record Set" )
      tbEditing.addButton( toolbarVCRCluster, toolbarButtonPush,
                           menuRecordLast, bitmapDataEnd,
                           "Last Record" )
      tbEditing.addButton( toolbarQuickCluster, toolbarButtonPush,
                           menuFormEditData, bitmapCoEdit,
                           "Toggle Edit Mode" )
      tbEditing.addButton( toolbarQuickCluster, toolbarButtonPush,
                           menuRecordInsert, bitmapAddTable,
                           "Insert Record" )
      tbEditing.addButton( toolbarQuickCluster, toolbarButtonPush,
                           menuRecordDelete, bitmapDelTable,
                           "Delete Record" )

   endIf

endMethod
 toolbarCreateData .6 method systemGetPassword( var strPassword String ) Logical
; --------------------------------------------------------------------
; This routine displays the PASSWORD form and waits for the user to
; enter a password.  The parameter should contain either an empty
; string or any previous password that the user may have entered.
; The return value indicates whether the user chose OK or Cancel to
; get rid of the dialog box _or_ the fact that the password could not
; be entered.  (This might happen if the form doesn't exist or could
; not be opened.)
; --------------------------------------------------------------------
var
   loRetval  Logical  ; Value returned by the dialog box.
   fmDialog  Form     ; The form being opened.
endVar

   loRetval = TRUE    ; Assume things will be okay.
   If not fmDialog.open( ":FORMS:PASSWORD" ) then
      msgStop( "Can't Get Password", "Reason: The Enter Password " +
               "dialog could not be opened." )
      loRetval = FALSE
   else
      fmDialog.fldPassword.Value = strPassword
      loRetval = fmDialog.wait()
      If loRetval then
         strPassword = fmDialog.fldPassword.Value
      endIf
   endIf

   try
      fmDialog.close()
   onFail
      ; do nothing as the form is already closed
   endTry

   return loRetval

endMethod
 systemGetPassword / method systemShowInfo( strInfoType String )
; -------------------------------------------------------------------------
; This routine displays one of several types of system information,
; depending on the value of the parameter.
; -------------------------------------------------------------------------
var
   datSysInfo DynArray[] AnyType ; Holds the system settings
   strTitle   String             ;
endVar

   ; First, let the user now something's happening

   setMouseShape( mouseWait )

   ; Next, get the data appropriate for the parameter value
   switch
      case strInfoType = "BDE" : dlgNetSystem()
                                 return
      case strInfoType = "DOS" : enumEnvironmentStrings( datSysInfo )
                                 strTitle = "DOS Environment"
      case strInfoType = "SYS" : sysInfo( datSysInfo )
                                 strTitle = "System Settings"
      case strInfoType = "WIN" : resourceInfo( datSysInfo )
                                 strTitle = "Windows Resources"
      otherwise :

         beep()
         msgStop( "Can't Show Information",
                  "Reason: \"" + strInfoType + "\" is not a valid " +
                  "information type." )
         return
   endSwitch

   ; reset the mouse cursor
   setMouseShape( mouseArrow )

   ; now display the results
   datSysInfo.view( strTitle )

endMethod
 systemShowInfo 0 method systemSaveSetting( strName String, atValue AnyType ) Logical
; --------------------------------------------------------------------
; This routine saves a value for a setting in the SYSPREFS table. It
; takes two parameters: the setting to set and the value to set it to.
; setting into.  The routine returns TRUE if the setting was able to
; be set and returns FALSE when the setting can't be set, the SYSPREFS
; table can't be opened, or the value can't be converted to the
; setting's data type.
; --------------------------------------------------------------------
var
   tcSysPrefs  TCursor ; Pointer to the SYSPREFS table
   atSetValue  Anytype ; Holds the value at various stages.
   loRetval    Logical ; Value returned to the calling process.
   strValType  String  ; The data type of the setting
endVar

const
   ERRTITLE = "Can't Save Setting" ; title for error dialogs
endConst

   loRetval = FALSE
   If not tcSysPrefs.open( ":DATA:SYSPREFS" ) then
      errorShow( ERRTITLE, "Reason: " +
                 "The table failed to open; see details..." )
   else
      If not tcSysPrefs.qLocate( strName ) then
         msgStop( ERRTITLE, "Reason:" +
                  "Couldn't locate the " + strName + " setting." )
      else


         ; We found the table and the setting, so assign the
         ; value to the variable, making sure we perform the correct
         ; typecasting on the value.


         strValType = tcSysPrefs."DataType"
         try
            switch
               case strValType = "String"   :
                  atSetValue = string( atValue )
               case strValType = "SmallInt" :
                  atSetValue = smallInt( atValue )
               case strValType = "LongInt" :
                  atSetValue = longInt( atValue )
               case strValType = "Logical" :
                  atSetValue = logical( atValue )
               case strValType = "Date" :
                  atSetValue = date( atValue )
               case strValType = "DateTime" :
                  atSetValue = dateTime( atValue )
               case strValType = "Time" :
                  atSetValue = time( atValue )
               otherwise :
                  msgStop( ERRTITLE, "Reason: " +
                           "Setting data type is not supported." )
                  loRetval = FALSE
            endSwitch
         onFail
            msgStop( ERRTITLE, "Reason: " +
                     "Invalid value for the " + strName + "setting." )
            loRetval = FALSE
         endTry

         ; Save the change

         tcSysPrefs.edit()
         tcSysPrefs."Value" = atSetValue
         tcSysPrefs.unlockRecord()
         tcSysPrefs.endEdit()

      endIf
   endIf

   ; Clean up and exit

   If tcSysPrefs.isAssigned() then
      tcSysPrefs.close()
   endIf

   atValue = atSetValue
   return loRetval

endMethod
 systemSaveSetting 1
 method systemReadSetting( strName String, var atValue AnyType ) Logical
; --------------------------------------------------------------------
; This routine returns a value from the SYSPREFS table.  It takes two
; parameters: the setting to return and the variabple to place the
; setting into.  The routine returns TRUE if the setting was able to
; be read and returns FALSE when the setting doesn't exist, the
; SYSPREFS table could not be opened, or the datatype couldn't be
; returned.
;
; If the setting can be found in the table, it is cast according to
; the               џ data type for the setting.
; --------------------------------------------------------------------
var
   tcSysPrefs  TCursor ; Pointer to the SYSPREFS table
   atSetValue  Anytype ; Holds the value at various stages.
   loRetval    Logical ; Value returned to the calling process.
   strValType  String  ; The data type of the setting
endVar

const
   ERRTITLE = "Can't Get Setting" ; title for error dialogs
endConst

   loRetval = FALSE
   If not tcSysPrefs.open( ":DATA:SYSPREFS" ) then
      errorShow( ERRTITLE, "Reason: " +
                 "The table failed to open; see details..." )
   else
      If not tcSysPrefs.qLocate( strName ) then
         msgStop( ERRTITLE, "Reason:" +
                  "Couldn't locate the " + strName + " setting." )
      else


         ; We found the table and the setting, so assign the
         ; value to the variable, making sure we perform the correct
         ; typecasting on the value.


         loRetval = TRUE;
         strValType = tcSysPrefs."DataType"
         switch
            case strValType = "String"   :
               atSetValue = tcSysPrefs."Value"
            case strValType = "SmallInt" :
               atSetValue = smallInt( tcSysPrefs."Value" )
            case strValType = "LongInt" :
               atSetValue = longInt( tcSysPrefs."Value" )
            case strValType = "Logical" :
               atSetValue = logical( tcSysPrefs."Value" )
            case strValType = "Date" :
               atSetValue = date( tcSysPrefs."Value" )
            case strValType = "DateTime" :
               atSetValue = dateTime( tcSysPrefs."Value" )
            case strValType = "Time" :
               atSetValue = time( tcSysPrefs."Value" )
            otherwise :
               msgStop( ERRTITLE, "Reason: " +
                        "Setting data type is not supported." )
               loRetval = FALSE
         endSwitch

      endIf
   endIf

   ; Clean up and exit

   If tcSysPrefs.isAssigned() then
      tcSysPrefs.close()
   endIf

   atValue = atSetValue
   return loRetval

endMethod
 systemReadSetting 2є method formSelectMaster( var uiMaster uiObject,
                         strFormName String )
; ---------------------------------------------------------------
; This routine lets the user select a master record on a form by
; displaying a form that displays all the master records.  If the
; user accepts the form (by clicking the Select button), the
; record selected on that form becomes the selected record on the
; active form.
;
; This is accomplished with a TCursor that synchronizes the two
; forms at two times.  When the selection form is first opened,
; it's synchronized to the appearance and properties of the data
; on the calling form.  When the user accepts the selection form,
; the calling form is sychronized to the properties of the data
; on the selection form.
;
; The parameters indicate an object on the calling form that is
; bound to the master table and the name of the form to open,
; including any alias or directory pasth information needed to
; locate that form.
;
; This routine assumes that the names of the master object on
; the calling form and the name of the related object on the
; selection form are the same.  For example, the EMPLINFO.FSL
; and EMPLPICK.FSL forms use the same name for the repeating
; object bound to the EMPLOYEE.DB table.
; ---------------------------------------------------------------
var
   fmSelect  Form     ; The selection form that's displayed.
   fmActive  Form     ; The form that called this routine.
   loResult  Logical  ; User accepted the selection form?
   tcMaster  TCursor  ; Pointer to the form's master table.
   uiSelect  UIObject ; The data object on the target form.
endVar

const
   ERRTITLE = "Can't Select Record"  ; Title for error dialogs.
endConst

   ; First, make sure the object passed to this routine
   ; indicates a valid uiObject with a TableName property.

   fmActive.attach()   ; attach to the calling form.
   try
      tcMaster.attach( uiMaster )
   onFail
      msgStop( ERRTITLE,
               "Reason: " + uiMaster.Name + " is not a valid " +
               "data object or is not bound to a valid table." )
      return
   endTry

   ; Next, try to open the selection form
   If not fmSelect.open( strFormName,
                         winStyleDefault + winStyleHidden ) then
      msgStop( ERRTITLE, "Reason: Unable to open " +
                         Upper( strFormName ) )
      return
   endIf

   ; Now, attach to the data object on the target from and then
   ; synchronize the selection form to the active form
   If not uiSelect.attach( fmSelect, uiMaster.Name ) then
      msgStop( ERRTITLE, "Reason: Selection form does not " +
                         "contain an object named " +
                         uiMaster.Name + "." )
      tcMaster.close()
      fmSelect.close()
   else
      uiSelect.resync( tcMaster )
   endIf

   ; Display the form and wait for the user to close it.
   fmSelect.show()
   fmSelect.bringToTop()
   loResult = fmSelect.wait()

   ; Evaluate the user's response to the form and react
   ; accordingly.
   If loResult then
      tcMaster.attach( uiSelect )
      uiMaster.resync( tcMaster )
   endIf

   ; Now, close the form and the TCursor, to make sure that
   ; locks and memory are correctly freed.
   If tcMaster.isAssigned() then
      tcMaster.close()
   endIf

   ; Make sure the selection formis cleared.
   try
      fmSelect.close()
   onFail
      ; do nothing, as the form is already closed
   endTry

endMethod
 formSelectMaster 3 method reportHandler( strRptName String,
                      siOrient SmallInt ) Logical
; ---------------------------------------------------------------
; This routine is the standard report handler that triggers all
; reporting functions used in the application.  The parameter
; indicates which report is to be printed and the return value
; indicates whether or not the report was handled.
;
; The routine contains four parts:
;
; -- Part 1 initializes local variables to known states, so they
;    can be evaluated without worrying about run-time errors
;    regarding unassigned variables.
;
; -- Part 2 determines whether or not the report requires special
;    handling.  If so, the custom method that handles that report
;    is called.
;
; -- Part 3 lets the user choose the output device for the
;    report, if that hasn't alreday been done.  (Note: In this
;    application, the Destination is preset to Screen, so this
;    should never be called.  However, this remains to ensure that
;    the Destination is set before we try to use it.)
;
; -- Part 4 sends the report to the destination selected by the
;    user.
;
; If any of the routines called by this process returns False,
; that indicates the user chose Cancel from a dialog box or that
; something went wrong.  In either case, the rest of the process
; is cancelled.
; ---------------------------------------------------------------
var
	roiOutput ReportOpenInfo   ; Helps control previewed rpts.
	rpiOutput ReportPrintInfo  ; Helps control printed rpts.
   rptOutput Report           ; Pointer to the Report methods.
   loRetVal  Logical          ; Value returned to calling process.
   loAnswer  Logical          ; Flag indicating whether or not
                              ;  :PRIV:ANSWER is as report's
                              ;  master table.
endVar

   ; Part 1: Declare local variables to known states and perform
   ;         other initializations.

   loRetval = TRUE            ; assume everything will work.
   loAnswer = TRUE            ; Assume we'll use an ANSWER table.
   reportSetDestination( "Screen" )

   ; Also, clear the standard environment strings used to pass
   ; values to reports, just in case we accidentally forget to
   ; clear them ourselves.

   writeEnvironmentString( "RPTITLE", "" )
   writeEnvironmentString( "RPTLINE1", "" )
   writeEnvironmentString( "RPTLINE2", "" )
   writeEnvironmentString( "RPTLINE3", "" )

   ; Finally, make sure the report exists--just in case the
   ; developer recently added a report to the menus and forgot to
   ; modify the other routines to support the report _or_ the
   ; report name was accidentally mistyped.

   If not isFile( strRptName + ".RSL" ) and
      not isFile( strRptName + ".RDL" ) then
      msgStop( "Can't Print Report", "Reason: The " +
               strRptName + " report doesn't appear to exist." +
               "  Please make sure you've created it and " +
               "entered the name correctly in your code." )
      loRetval = FALSE
   endIf

   ; Part 2: Evaluate the report name and see whether or not we
   ;         need to call a custom method for generating the
   ;         report.
   ;
   ; Note: This switch statement needs a branch for every report
   ;       in the system that requires special handling, e.g.
   ;       uses a query form or requires other initial processing.

   If loRetval then
      switch

         case strRptName = ":RPTS:BIRTHDAY" :
            loRetval = reportQuery( strRptName )
         case strRptName = ":RPTS:CRSEDESC" :
            loRetval = reportQuery( strRptName )
         case strRptName = ":RPTS:CRSERSTR" :
            loRetval = reportQuery( strRptName )
         case strRptName = ":RPTS:CRSESCHD" :
            loRetval = reportQuery( strRptName )
         case strRptName = ":RPTS:CUSTLBLS" :
            loRetval = reportQuery( strRptName )
         case strRptName = ":RPTS:EMPLROST" :
            loRetval = reportQuery( strRptName )
         case strRptName = ":RPTS:PACKLIST" :
            loRetval = reportQuery( strRptName )
         case strRptName = ":RPTS:PRODLIST" :
            loRetval = reportQuery( strRptName )
         case strRptName = ":RPTS:PHONELST" :
            loRetval = reportQuery( strRptName )
         case strRptName = ":RPTS:PRODORDS" :
            loRetval = reportQuery( strRptName )

      otherwise :

         ; report doesn't require special handling, so use the
         ; report's original master table.
         loAnswer = FALSE

      endSwitch
   endIf

   ; Part 3: Get the destination for this report, taking the
   ;         result variable into account.

   If loRetval then

      If ( strRptDest = "" ) then
          ; Let the user choose the destination
	      loRetval = reportGetDestination( strRptDest )
      endIf

   endIf

   ; Part 4: Evaluate the user's destination choice and react
   ;         accordingly.

	if loRetval then

      switch

         case strRptDest = "Screen" :

            roiOutput.Name = strRptName
            If loAnswer then
               roiOutput.MasterTable = ":PRIV:ANSWER"
            endIf
            roiOutput.WinStyle = winStyleDefault +
                                 winStyleMaximize +
                                 winStyleHScroll +
                                 winStyleVScroll
            loRetval = reportPreview( roiOutput )

         case strRptDest = "Printer" :

            rpiOutput.Name = strRptName
            rpiOutput.Orient = siOrient
            If loAnswer then
               rpiOutput.MasterTable = ":PRIV:ANSWER"
            endIf
            loRetval = reportPrint( rpiOutput )

         case strRptDest = "Publish" :

            roiOutput.Name = strRptName
            If loAnswer then
               roiOutput.MasterTable = ":PRIV:ANSWER"
            endIf
            roiOutput.WinStyle = winStyleDefault + winStyleMinimize
            loRetval = reportPublish( roiOutput )

         case strRptDest = "File" :

            roiOutput.Name = strRptName
            If loAnswer then
               roiOutput.MasterTable = ":PRIV:ANSWER"
            endIf
            roiOutput.WinStyle = winStyleDefault + winStyleMinimize
            loRetval = reportExportFile( roiOutput )

         otherwise :

            msgStop( "Can't Run Report",
                     "Reason: The destination you chose (" +
                     strRptDest + ") is not currently " +
                     "supported.  Please make sure the " +
                     "reportHandler() library function is " +
                     "updated accordingly." )
            loRetval = FALSE

      endSwitch
   endIf

   ; Last Step: return the results to the calling process
   return loRetval

endMethod
 reportHandler 4ђ method reportPreview( const roi ReportOpenInfo ) Logical
; --------------------------------------------------------------------
; This routine handles the process of sending a report to a screen
; Preview window.  The report information is encapsulated by the
; parameter, which needs to contain all values needed to open the
; report.  (See reportHandler() for more information.)
;
; The routine returns TRUE if the report preview is successfully
; started and returns FALSE if any problems are detected.
; --------------------------------------------------------------------

var
	rptScreen  Report   ; Report window variable.
   fmActive   Form     ; Pointer to the active form.
endVar

   ; First, hide the form currently being displayed
   fmActive.attach()
   fmActive.hide()

   ; Now, open the report and wait for the user to deal with it.

   If not rptScreen.open( roi ) then
      errorShow( "Can't Preview Report", "Reason: The report " +
                 "failed to open; see details..." )
   else

      ; Display the menu and the toolbar for the Preview window.  To
      ; do this, we call custom methods that do this work.  These
      ; methods also create the appropriate objects if they've not
      ; already been created.

      menuShowReport( rptScreen )
      toolbarShowReport()

      ; This makes sure that any changes made to the report do not
      ; overwrite the original report design and is more flexible
      ; than simply delivering the report.

      rptScreen.DesignModified = FALSE

      ; Wait for the user to close the report.

      rptScreen.wait()

      ; Now, make sure the report is closed using a technique that
      ; doesn't trigger a runtime error if the report is already
      ; closed because of a menuControlClose action.

      try
         rptScreen.close()
      onFail
         ; do nothing, as the report is already closed.
      endTry

   endIf

   ; Hide the Preview menu and toolbar.

   menuHide()
   toolbarHideReport()

   ; Now, restore the desktop to the state it had when we started.
   fmActive.show()
   fmActive.bringToTop()
   fmActive.menuAction( menuControlRestore )

   menuShowMain()

   ; return the result

   return True

endmethod
 reportPreview 5џ method reportPrint( rpiInput ReportPrintInfo ) Logical
; --------------------------------------------------------------------
; This routine does the report required to send a report directly to
; the printer.  The parameter contains all information required to
; to open the report and must be managed by the calling process.  (For
; more information and examples, see the ReportHandler() function.)
;
; If the process succeeds normally, then this routines returns TRUE;
; otherwise, it returns FALSE.
; --------------------------------------------------------------------

var
	rptOutput Report  ; Pointer to the Report type RTL.
   loRetval  Logical ; Value indicating success/failure.
endVar

   return rptOutput.print( rpiInput )


endmethod
 reportPrint   ; ---------------------------------------------------------------
; This routine implements the Publish to HTML Destination for
; the reports in this application.  It also demonstrates several
; other techniques that aren't illustrated in this application.
; Specifically, it shows how to:
;
; -- Declare custom data types that are only supported by a
;    single routine.
; -- Declare external ObjectPAL routines from a delivered library.
; -- Declare external ObjectPAL routines that can only be called
;    from a single routine.
; -- Use the HTMLIB01.LSL file provided in the EXPERTS\ folder.
; ---------------------------------------------------------------

type
   _HTMLReport = record
      strURI      String   ; URI (or output file name)
      strTitle	   String   ; Document title
      iBGColor	   LongInt  ; Background color
      iTextColor	LongInt  ; Text color
      mHeader	   Memo     ; (filled) Header template
      mTemplate	Memo     ; (filled) Main template
      lStatic	   Logical  ; Static output? (FALSE = Dynamic)
      lMsg	      Logical	; Show working messages on status line?
   endRecord
endType

uses ObjectPAL
   ; Converts a report to an HTML document.
   HTMLPublish_Report( var rSource Report,
                       var HTMLReport _HTMLReport ) Logical
   ; Launches your internet browser with the file.
   _LaunchBrowser( strFileName String, lWait Logical ) Logical

endUses

method pushButton(var eventInfo Event)
var
   rptWebPub  Report          ; The report being published.
   _hrWebPub  _htmlReport     ; Details for the library routine.
   libWebPub  Library         ; Pointer to the publishing library.
   strSaveAs  String          ; File name for published report.
   fbiSaveAs  fileBrowserInfo ; Information for Save As dialog.
endVar

const
   ERRTITLE = "HTML Publishing Error"  ; title for error dialogs.
endConst

   ; First, we have to open the HTMLIB01.LDL library.  If that
   ; fails, we cannot continue.

   If not libWebPub.open( expertsDir() + "\\HTMLIB01" ) then
      errorShow( ERRTITLE, "Reason: Unable to load publishing " +
                           "library; see details..." )
      return
   endIf

   ; Initialize the variable for the Save As dialog.
   strSaveAs = "PxReport"



   ; Now, we need to initialize the fields of the publishing
   ; information record.

   _hrWebPub.strURI       = strSaveAs
   _hrWebPub.strTitle     = "TBD Published Report"
   _hrWebPub.iBGColor     = Black
   _hrWebPub.iTextColor   = White
   _hrWebPub.lStatic      = TRUE
   _hrWebPub.lMsg         = TRUE

;   rptWebPub.open( ":RPTS:BIRTHDAY", winStyleMinimize + winStyleDefault )

   If not libWebPub.htmlPublish_Report( rptWebPub, _hrWebPub ) then
      errorShow( ERRTITLE, "Reason: The publishing routine failed; " +
                           "see details." )
   else
      If msgQuestion( "Report Sucessfully Published",
                      "Your report has been published.  Would " +
                      "you like to view the final file in " +
                      "your Internet browser?" ) = "Yes" then
         If not libWebPub._launchBrowser( _hrWebPub.strURI,
                                           Yes ) then
            errorShow( "Can't Preview HTML", "Reason: The " +
                       "browser failed to launch; see " +
                       "details..." );
         endIf
      endIf
   endIf

endMethod
 pushButton+ 6+
 method reportQuery( strRptName String ) Logical
; --------------------------------------------------------------
; This routine handles all query-by-form (QBF) interfaces used
; for reporting.  QBF lets the user choose the data that's
; printed from a form designed by the application developer.
; The query form is responsible for implementing the query and
; should return TRUE or FALSE, indicating whether or not the
; user accepted the dialog and whether or not any records were
; returned by the query.  This value, in turn, is returned to the
; reportHandler() process.
; ---------------------------------------------------------------
var
   fmDialog  Form     ; Pointer to the report's query dialog.
   loRetval  Logical  ; Flag indicating success/failure.
   strQForm  String   ; Holds name of the report's query form.
endVar

   ; First, see if the report is one that's been defined.  If
   ; so, get the name of the associated query form

   loRetval = TRUE  ; assume everything's okay.
   switch
      case strRptName = ":RPTS:BIRTHDAY" : strQForm = "QBFBIRTH"
      case strRptName = ":RPTS:CRSEDESC" : strQForm = "QBFCDESC"
      case strRptName = ":RPTS:CRSERSTR" : strQForm = "QBFCRSTR"
      case strRptName = ":RPTS:CRSESCHD" : strQForm = "QBFSCHED"
      case strRptName = ":RPTS:CUSTLBLS" : strQForm = "QBFCLBLS"
      case strRptName = ":RPTS:EMPLROST" : strQForm = "QBFEROST"
      case strRptName = ":RPTS:PACKLIST" : strQForm = "QBFPKLST"
      case strRptName = ":RPTS:PHONELST" : strQForm = "QBFPHONE"
      case strRptName = ":RPTS:PRODLIST" : strQForm = "QBFPRODS"

      otherwise :

         ; Something's wrong because this routine needs a branch
         ; for each report that calls it.  So, we'll presume that
         ; the developer accidentally forgot to implement the
         ; report in question before testing the code and
         ; display an error message to that effect.

         loRetval = FALSE
         msgStop( "Can't Print Report",
                  "Reason: The reportQuery() routine doesn't " +
                  "appear to support the " + strRptName +
                  " report.  Please check your code." )
   endSwitch

   ; Now that we have the name of the query form, call it using
   ; the standard formWait() routine.  This means query forms
   ; must initialize themselves.

   If loRetval then
      loRetval = formWait( ":FORMS:" + strQForm,winStyleDefault )
   endIf

   ; return the results to the calling process, typically
   ; reportHandler().

  return loRetval

endMethod
 reportQuery 7ж method reportGetDestination( var strOutput String ) Logical
; --------------------------------------------------------------------
; This routine lets the user choose the destination for a report.  It
; displays a dialog box listing available destinations, waits for the
; user to deal with the dialgo box and then returns a value indicating
; how the dialog exited.  If the user accepts the dialog, the
; destination is saved to the string passed as the parameter to this
; routine.  Also, if the parameter is not blank, this routine attempts
; to use that value as the default destination.
; --------------------------------------------------------------------
var
   fmDialog  Form     ; Pointer to the Report Destinations dialog box
   loRetval  Logical  ; Holds return value(s).
endVar

const
   FILENAME = ":FORMS:RPTDESTS" ; file name of the dialog.
endConst

   If not fmDialog.open( FILENAME ) then
      loRetval = FALSE
      errorShow( "Can't Output Report", "Reason: The dialog failed " +
                 "to open; see details..." )
   else

      if strOutput <> "" then
         fmDialog.fldRptDest.Value = strOutput
      endIf

      loRetval = fmDialog.wait()

      if loRetval then
         strOutput = fmDialog.fldRptDest.Value
         reportSetDestination( strOutput )
      endIf

   endIf

   try
      fmDialog.close()
   onFail
      ; do nothing as the form is already closed.
   endTry

   return loRetval

endMethod
 reportGetDestination 8l method menuShowReport( var rptTarget Report )
; -------------------------------------------------------------------------
; This routine verifies that the Data menu has been created (if not, it
; does so) and then displays it.  This removes the need to create the
; data menu from each form that uses it; those forms only need to display
; it.
;
; The routine also displays the corresponding toolbar for this menu.
; -------------------------------------------------------------------------

   If menuRpts.count() = 0 then
      menuCreateReport()
   endIf

   rptTarget.setMenu( menuRpts )

endMethod
 menuShowReport 9М method menuCreateReport()

; -------------------------------------------------------------------------
; This routine defines the Report menu (the one used for previewing reports
; on the screen) and its associated popup menus.
; -------------------------------------------------------------------------

   ; First, define the File popup menu and add it to the Report menu

   pmRptsFile.addText( "&Print", MenuEnabled, MenuFilePrint )
   pmRptsFile.addText( "Save to &Text File",
                       MenuEnabled, MenuWriteAsText )
   pmRptsFile.addText( "Publish to &HTML",
                       MenuEnabled, MenuHTMLPublish )

   pmRptsFile.addSeparator()
   pmRptsFile.addText( "Printer &Setup...", menuEnabled,
                       menuFilePrinterSetup )
   pmRptsFile.addSeparator()
   pmRptsFile.addText( "&Close\tCtrl+F4", menuEnabled,
                       menuControlClose )

   menuRpts.addPopup( "&File", pmRptsFile )

   ; Now, define the Zoom menu

   pmRptsZoom.addText( "25%",  MenuEnabled, MenuPropertiesZoom25 )
   pmRptsZoom.addText( "50%",  MenuEnabled, MenuPropertiesZoom50 )
   pmRptsZoom.addText( "100%", MenuEnabled, MenuPropertiesZoom100 )
   pmRptsZoom.addText( "200%", MenuEnabled, MenuPropertiesZoom200 )
   pmRptsZoom.addText( "400%", MenuEnabled, MenuPropertiesZoom400 )
   pmRptsZoom.addText( "Fit &Width",
                       MenuEnabled, MenuPropertiesZoomFitWidth )
   pmRptsZoom.addText( "Fit &Height",
					        MenuEnabled, MenuPropertiesZoomFitHeight)
   pmRptsZoom.addText( "&Best Fit",
					        MenuEnabled, MenuPropertiesZoomBestFit)

   menuRpts.addPopup( "&Zoom", pmRptsZoom )

   ; Finally, define the Page menu and then add it to the Report
   ; menu.

   pmRptsPage.addText( "&First", MenuEnabled, MenuReportPageFirst )
   pmRptsPage.addText( "&Last",  MenuEnabled, MenuReportPageLast )
   pmRptsPage.addText( "&Next\tShift+F4",
                       MenuEnabled, MenuReportPageNext )
   pmRptsPage.addText( "&Previous\tShift+F3",
                       MenuEnabled, MenuReportPagePrevious )
   pmRptsPage.addText( "&Go To...", MenuEnabled, MenuReportPageGoTo )

   menuRpts.addPopUp( "Pa&ge", pmRptsPage )

endMethod
 menuCreateReport :j method menuCreateForm()

; -------------------------------------------------------------------------
; This routine defines the Data menu (the one used for data-entry and
; editing screens) and its associated popup menus.
; -------------------------------------------------------------------------

   ; First, define the Form popup menu and add it to the Data menu

   pmFormForm.addText( "&Filter", menuEnabled, menuFormFilter )
   pmFormForm.addSeparator()
   pmFormForm.addText( "&Close\tCtrl+F4", menuEnabled,
                       menuControlClose )
   pmFormForm.addSeparator()
   pmFormForm.addText( "&Print", menuEnabled, menuFilePrint )
   pmFormForm.addText( "Printer &Setup", menuEnabled,
                       menuFilePrinterSetup )
   menuForm.addPopup( "&Form", pmFormForm )

   ; Now, define the Edit menu

   pmEditForm.addText( "&Undo\tAlt+BkSp", menuEnabled,
                       menuEditUndo )
   pmEditForm.addSeparator()
   pmEditForm.addText( "Cu&t\tCtrl+X",   menuEnabled, menuEditCut )
   pmEditForm.addText( "&Copy\tCtrl+C",  menuEnabled, menuEditCopy )
   pmEditForm.addText( "&Paste\tCtrl+V", menuEnabled, menuEditPaste )
   menuForm.addPopup( "&Edit", pmEditForm )

   ; define the Record menu

   pmDataForm.addText( "&Edit Mode\tF9",
                       menuEnabled, menuFormEditData )
   pmDataForm.addText( "L&ock Record\tCtrl+L",
                       menuEnabled, menuRecordLock )
   pmDataForm.addText( "&Save Changes\tShift+Ctrl+L",
                       menuEnabled, menuRecordPost )
   pmDataForm.addText( "&Cancel Changes\tAlt+BkSp",
                       menuEnabled, menuRecordCancel )
   pmDataForm.addSeparator()
   pmDataForm.addText( "&Insert New Record\tIns",
                       menuEnabled, menuRecordInsert )
   pmDataForm.addText( "&Delete Record\tCtrl+Del",
                       menuEnabled, menuRecordDelete )
   pmDataForm.addSeparator()
   pmDataForm.addText( "&First Record\tCtrl+Home",
                       menuEnabled, menuRecordFirst )
   pmDataForm.addText( "&Previous Record Set\tPgUp",
                       menuEnabled, menuRecordFastBackward )
   pmDataForm.addText( "&Previous Record\tF11",
                       menuEnabled, menuRecordPrevious )
   pmDataForm.addText( "&Next Record\tF12",
                       menuEnabled, menuRecordNext )
   pmDataForm.addText( "&Next Record Set\tPgDn",
                       menuEnabled, menuRecordFastForward )
   pmDataForm.addText( "&Last Record\tCtrl+End",
                       menuEnabled, menuRecordLast )
   pmDataForm.addSeparator()
   pmDataForm.addText( "Locate\tCtrl+Z",
                       menuEnabled, menuRecordLocateValue )
   pmDataForm.addText( "Locate Next\tCtrl+A",
                        menuEnabled, menuRecordLocateNext )

   ; Now, add the Record menu to the Data menu
   menuForm.addPopup( "&Record", pmDataForm )

   ; Finally, add the main menu's Help menu to the Data menu.
   ; If it has not been created, then do so now.

   If pmHelpMain.count() = 0 then
      menuCreateMain()
   endIf
   menuForm.addPopup( "&Help", pmHelpMain )

endMethod
 menuCreateForm ;F method menuShowForm()

; -------------------------------------------------------------------------
; This routine verifies that the Data menu has been created (if not, it
; does so) and then displays it.  This removes the need to create the
; data menu from each form that uses it; those forms only need to display
; it.
;
; The routine also displays the corresponding toolbar for this menu.
; -------------------------------------------------------------------------

   If menuForm.count() = 0 then
      menuCreateForm()
   endIf

   menuForm.show()

endMethod
 menuShowForm <B	 method reportExportFile( roiExport ReportOpenInfo ) Logical
; ---------------------------------------------------------------
; This routine handles the process of sending a report to a text
; file.  The report information is encapsulated by the parameter,
; which needs to contain all values needed to open the report.
; (See reportHandler() for more information.)
;
; The routine returns TRUE if the export completes successfully;
; otherwise, FALSE is returned.
; ---------------------------------------------------------------

var
	rptExport  Report           ; Report window variable.
   strTarget  String           ; User's target file name.
   fbiExport  FileBrowserInfo  ; Parameters for save file dialog
   fmActive   Form             ; Pointer to the active form.
   loRetval   Logical          ; Value returned to calling process
endVar

const
   ERRTITLE = "Can't Export Report"  ; title for error dialogs.
endConst

   strTarget = "REPORT1"
   fbiExport.Title          = "Save Report As"

   ; Note the constant that's used here.  Though the documentation
   ; says the constant is called "browseOptPathMustExist," that
   ; generates a compiler error.  A quick look at the table
   ; generated by enumRTLConstants() shows this is the constant
   ; to use instead.
   fbiExport.Options        = browseOptPathMustExit
   fbiExport.AllowableTypes = fbSimpleText
   fbiExport.Alias          = ":PRIV:"
   fbiExport.NewFileOnly    = True
   fbiExport.DefaultExt     = ".TXT"

   ; Call the SaveAs wrapper function
   loRetval = systemSaveAs( strTarget, fbiExport )

   ; Now, open the report and then try to export it.
   if loRetval then
      if not rptExport.open( roiExport ) then
         errorShow( "Can't Export Report", "Reason: The report " +
                    "failed to open; see details..." )
      else

         rptExport.designModified = FALSE
         if not rptExport.writeText( strTarget ) then
            errorShow( ERRTITLE, "Reason: The report failed to " +
                                 "export; see details..." )
            loRetval = FALSE
         endIf

         try
            rptExport.close()
         onFail
            ; do nothing, as the report is already closed.
         endTry

      endIf
   endIf

   ; return the result
   return True

endMethod
 reportExportFile = method toolbarShowForm()

; -------------------------------------------------------------------------
; This routine displays the Editing toolbar used for the data-entry for               џms
; in this application.  It also verifies that the toolbar has been created
; before trying to display it.  If the toolbar doesn't exist, then the
; routine calls the routine that does so.
;
; This lets the application's forms use a single line of code to make sure
; the toolbar is defined before it is displayed.
; -------------------------------------------------------------------------

   If not tbEditing.attach(  "Data Entry" ) then
      toolbarCreateData()
   endIf

   if not tbEditing.isVisible() then
      tbEditing.show()
   endIf
   menuRefreshEdit( True )

endMethod
 toolbarShowForm >Х method toolbarShowReport()

; -------------------------------------------------------------------------
; This routine displays the Editing toolbar used for the data-entry forms
; in this application.  It also verifies that the toolbar has been created
; before trying to display it.  If the toolbar doesn't exist, then the
; routine calls the routine that does so.
;
; This lets the application's forms use a single line of code to make sure
; the toolbar is defined before it is displayed.
; -------------------------------------------------------------------------

   If not tbPreview.attach( "Report Preview" ) then
      toolbarCreateReport()
   endIf

   tbPreview.show()

endMethod
 toolbarShowReport ?	 method menuHide()

; -------------------------------------------------------------------------
; This routine hides the current menu by displaying a blank menu.
; -------------------------------------------------------------------------
var
   menuNull  Menu  ; Pointer to the blank menu.
endVar

   menuNull.empty()
   menuNull.addText( "" )
   menuNull.show()

endMethod
 menuHide @Ѓ method toolbarHideReport()

; -------------------------------------------------------------------------
; This routine hides the Preview toolbar, but only if it exists and is
; visible.
; -------------------------------------------------------------------------

   If tbPreview.attach( "Report Preview" ) then
      If tbPreview.isVisible() then
         tbPreview.hide()
      endIf
   endIf

endMethod
 toolbarHideReport A method toolbarCreateReport()

; --------------------------------------------------------------------
; This routine declares the Preview toolbar, which is displayed by the
; forms of the system.  Notice that the toolbar is only created if it
; hasn't already been created.  The toolbar variable is declared in the
; library's Var window.
; -------------------------------------------------------------------------
var
	grBitmap  Graphic  ; An external BMP file for a custom toolbar image
endVar

   if not tbPreview.attach( "Report Preview" ) then

      tbPreview.create( "Report Preview" )

      tbPreview.addButton( toolbarFileCluster, toolbarButtonPush,
                           menuFilePrint, bitmapPrint,
									"Print" )

      ; Since the next two buttons are only available for Paradox 8,
      ; you will need to comment the calls out to run this code under
      ; an earlier version.

      grBitmap.readFromFile( ":PIX:TEXTFILE.BMP" )
      tbPreview.addButton( toolbarFileCluster, toolbarButtonPush,
                           menuWriteAsText, grBitmap,
                           "Save As Text File" )

      grBitmap.readFromFile( ":PIX:WEBFIRST.BMP" )
      tbPreview.addButton( toolbarFileCluster, toolbarButtonPush,
                           menuHTMLPublish, grBitmap,
                           "Publish To HTML" )

		grBitmap.readFromFile( ":PIX:ZOOM100.BMP" )
		tbPreview.addButton( toolbarModeCluster, toolbarButtonPush,
									MenuPropertiesZoom100, grBitmap,
									"Zoom to 100%" )

		grBitmap.readFromFile( ":PIX:FITWIDTH.BMP" )
		tbPreview.addButton( toolbarModeCluster, toolbarButtonPush,
									MenuPropertiesZoomFitWidth, grBitmap,
									"Zoom to Page Width" )

		grBitmap.readFromFile( ":PIX:BESTFIT.BMP" )
		tbPreview.addButton( toolbarModeCluster, toolbarButtonPush,
									MenuPropertiesZoomBestFit, grBitmap,
									"Zoom to Best Fit" )

		tbPreview.addButton( toolbarVCRCluster, toolbarButtonPush,
									menuReportPageFirst, bitmapFirstPage,
                           "First Page" )
      tbPreview.addButton( toolbarVCRCluster, toolbarButtonPush,
                           menuReportPagePrevious, bitmapPrevPage,
                           "Previous Page" )
      tbPreview.addButton( toolbarVCRCluster, toolbarButtonPush,
                           menuReportPageNext, bitmapNextPage,
                           "Next Page" )
      tbPreview.addButton( toolbarVCRCluster, toolbarButtonPush,
                           menuReportPageLast, bitmapLastPage,
                           "Last Page" )
      tbPreview.addButton( toolbarVCRCluster, toolbarButtonPush,
                           menuReportPageGoto, bitmapGotoPage,
                           "Go to Page" )

   endIf

endMethod
 toolbarCreateReport B method toolbarHideForm()
; -------------------------------------------------------------------------
; This routine hides the form toolbar, but only if it exists and is
; visible.
; -------------------------------------------------------------------------

   If tbEditing.attach( "Data Entry" ) then
      If tbEditing.isVisible() then
         tbEditing.hide()
      endIf
   endIf

endMethod
 toolbarHideForm Cе method menuProcessForm( siMenuAction SmallInt ) Logical
; ---------------------------------------------------------------
; This routine implements the standard menu action responses for
; data-entry forms.  Unlike menuProcessMain(), it works with the
; id() of a menuEvent.
;
; If this routine knows how to process the menu command that was
; sent to it, then a TRUE value is returned to the calling
; process.  However, if this routine doesn't know how to handle
; the passed command, then a FALSE is returned to the calling
; process.
; ---------------------------------------------------------------
var
   loRetval    Logical  ; Value returned to the calling process.
   strFormName String   ; Name of a form to be opened.
endVar

   ; Initialize the return value
   loRetval = TRUE
   strFormName = ""

   ; Evaluate the choice that triggered this code and react
   ; accordingly.

   switch

      ; built-in menu events we want to block
      case siMenuAction = menuControlMaximize   : beep()
      case siMenuAction = menuControlSize       : beep()
      case siMenuAction = menuControlNextWindow : beep()
      case siMenuAction = menuControlPrevWindow : beep()

      ; pmHelpMain commands
      case siMenuAction = menuHelpContents : systemShowHelp()
      case siMenuAction = menuHelpAbout :
         strFormName = "ABOUTBOX"

      otherwise :

        loRetval = FALSE

   endSwitch

   ; if the command results in a form being opened, then
   ; open the target form and wait for it to close.
   if strFormName <> "" then
      formWait( ":FORMS:" + strFormName,
                winStyleDefault + winStyleHidden )
   endIf

   ; return the result

   return loRetval

endMethod
 menuProcessForm ў  Type

	; The following declarations are used to pass lists of values
	; between forms and libraries.

	arrayString  = Array[] String
	dynString    = DynArray[] String
	arrayAnyType = Array[] Anytype
	dynAnyType   = DynArray[] Anytype

endType
 Type DC method reportSetDestination( strNewDest String ) Logical
; ----------------------------------------------------------
; This routine sets the library's report destination
; variable to the value passed as the parameter.  It also
; verifies that the value is one that the reportHandler()
; routine supports.
;
; If the new Destination is not supported, then this
; routine returns FALSE and the variable retains its
; original value.
;
; This should not be a big problem as the application is
; forcing the user to choose from a list of valid values.
; However, it's always a good idea to verify things.  For
; example, this routine can be called by a new routine
; that doesn't restrict the user's input.  This reduces
; the quality risks that can be introduced when you add code
; to an application over time.
; ----------------------------------------------------------
var
   loRetval Logical  ; Value returned to calling process.
endVar

   ; Evaluate the parameter.
   loRetval = ( strNewDest = "Screen" )  OR
              ( strNewDest = "Printer" ) OR
              ( strNewDest = "Publish" ) OR
              ( strNewDest = "File" )

   ; React accordingly.
   if loRetval then

      strRptDest = strNewDest

   else

      msgStop( "Can't Set Destination",
               "Reason: " + strNewDest + " is not a " +
               "supported output device.  Destination " +
               "is set to " + strRptDest + ".\n\n" +
               "Please check you code." )
   endIf

   ; return result to calling process
   return loRetval


endMethod
 reportSetDestination EУ method actionHandlerForm( siActionID SmallInt,
                          var tcTarget TCursor ) Logical
; ---------------------------------------------------------------
; This routine provides the standard action handler for action
; events.  It localizes the specific action behavior used
; throughout the system and minimizes the amount of code that
; must be copied to each form.
;
; The routine takes two parameters:
;
; -- siActionID is the ID of the action that triggered the
;    action() event, e.g. eventInfo.id().
; -- a tcCursor pointing to the active object (the one with
;    focus) at the time the action() event is triggered.
;
; The return value indicates whether or not the event was
; handled by this process.
;
; This routine is designed to be called before the default
; behavior of the action() event.  You should test the return
; value in action and, if this routine returns TRUE, assume
; that the event has already been handled and block the default
; behavior of the triggering action.
;
; For an example of code to use, see the action event of the
; PRODUCTS.FSL form.
;
; To use this handler), you will need to do the following:
;
; 1)  Declare this library in the form's Uses block
;
; 2)  Declare a form-level Library variable
;
; 3)  Open this library with the variable you created in Step 2
;     before the first action event is triggered.  Typically
;     this is done after the default behavior of the form's
;     init() event.
;
; 4)  Maintain the routines triggered by this general handler,
;     such as actionInsertRecord, actionDeleteRecord,
;     actionDataLookup, and so on.
;
; While this approach takes longer to set up, it localizes all
; your application processing in a single location.  In turn,
; this reduces overall maintenance by reducing the amount of
; work needed to change the behavior of an application process.
; ---------------------------------------------------------------
var
   loRetval    Logical  ; Value returned to the calling process.
endVar

   ; Initialize the return value.  We set this to TRUE so we don't
   ; have to maintain it, except when there's a problem or when
   ; there's no general support for the triggering action.
   loRetval = TRUE

   ; Evaluate the action that triggered this code and react
   ; accordingly.  Note that certain actions are commented out.
   ; These are actions that are normally supported, but don't
   ; always have to be.  Sometimes, you may want to disable these
   ; actions.  By implementing that and commenting it out, you
   ; make your code more flexible when it's reused for other
   ; applications.

   switch

      ; First, block the standard actions that we don't want to
      ; support.  Generally, these are actions useful for
      ; interactive Paradox, but not a finished application.

      case siActionID = dataTableView   : beep()
      case siActionID = fieldRotate     : beep()
;      case siActionID = dataDesign      : beep()
;       case siActionID = editProperties : beep()

      case siActionID = dataBeginEdit : menuRefreshEdit( True )
                                        loRetval = FALSE
      case siActionID = dataEndEdit   : menuRefreshEdit( False )
                                        loRetval = FALSE

      case siActionID = dataDeleteRecord :

         ; If there's not specific support, then we use a
         ; general process to confirm record deletes.

         loRetval = actionDataDelete( tcTarget )
         If not loRetval then

            If msgQuestion( "Confirm Delete", "Are you sure you want " +
                            "to permanently remove this data from " +
                            "the system?" ) = "Yes" then

               ; Make sure the table's in Edit mode.  If not,
               ; it will be when the user gets control back.
               If not tcTarget.isEdit() then
                  tcTarget.edit()
               endIf
               tcTarget.deleteRecord()

				endIf

            loRetval = TRUE  ; Indicate that we handled the delete.

         endIf

      case siActionID = dataInsertRecord :

         loRetval = actionDataInsert( tcTarget )

      case siActionID = dataLookup :

         loRetval = actionDataLookup( tcTarget )

      case siActionID = editEnterMemoView :

         loRetval = actionEditMemo( tcTarget )

      otherwise :

        loRetval = FALSE

   endSwitch

   return loRetval

endMethod

 actionHandlerForm F" method actionDataLookup( var tcTarget tCursor ) Logical
; ---------------------------------------------------------------
; This routine implements the custom rules this application needs
; to follow when the user triggers a dataLookup action from a
; form.  See the actionHandlerForm() routine for more information
; about the general process.
;
; This routine also contains examples of explicit record locking
; and shows how to avoid "record already locked" errors when
; using TCursors to replace built-in behavior.
; ---------------------------------------------------------------
var
   atNewValue,           ; New field value selected by user.
   atOldValue  AnyType   ; Existing field value, if any.
   fmDialog    Form      ; Pointer to the lookup form.
   loButtons   Logical   ; Indicates button changes for lookups
   loResult,             ; User's response to the lookup form.
   loRetval    Logical   ; Result passed to calling function.
   strField,             ; Name of field being looked up.
   strLookup,            ; Name of lookup form.
   strTable,             ; Name of table being edited.
   strTitle,             ; Optional title for lookup form.
   strObject   String    ; Name of data object on target form.
   uiTarget    UIObject  ; Pointer to active object.
endVar

const
   ERRTITLE = "Can't Lookup Values"  ; Title for error dialogs
endConst

   errorTrapOnWarnings( True )  ; ### DEBUGGING CODE!

   ; Initialize local variables.
   loButtons = FALSE
   loRetval = TRUE
   uiTarget.attach( active )

   ; Before we continue, make sure the active object isn't
   ; read-only.  If it is, then the user can't perform a
   ; lookup on the field.

   If uiTarget.readOnly then
      fail( peFormTableReadOnly,
            "You cannot modify this field." )
   endIf

   ; Now, see if the record is already locked, which it should be
   ; as dataLookup is generally triggered while records are being
   ; edited.  If this is the case, we need to remove that lock so
   ; we can perform the later post.  To do this, however, we need
   ; to save any pending changes in a way that handles the record
   ; flyaway issue.

   if uiTarget.Locked then
      if not uiTarget.action( dataPostRecord ) then
         errorShow( ERRTITLE, "Reason: Unable to save changes; " +
                              "see details..." )
         return loRetval
      else
         if not uiTarget.action( dataUnlockRecord ) then
            errorShow( ERRTITLE, "Reason: Unable to unlock " +
                                 "record; see details..." )
            return loRetval
         endIf
      endIf
   endIf

   ; Okay, the record is ours to manage.  So, being the process
   ; by initializing the remaining local variables.

   strField = Upper( uiTarget.fieldName )
   strLookup = ""
   strTable = Upper( tcTarget.tableName() )
   strTitle = ""
   If not tcTarget.FieldValue( strField, atOldValue ) then
      atOldValue = blank()
   endIf

   ; Now, evaluate the variables and then react accordingly.

   switch

      case strTable = "CRSEDESC" and
           strField = "COURSECATEGORYID" :

           strLookup = ":FORMS:LKUCATEG"
           strObject = "CrseCtgy.CourseCategoryID"

      case strTable = "CRSEDESC" and strField = "COURSENUMBER" :

           ; This overrides the action for CourseNumber field to
           ; ensure that the CategoryID field is what is looked
           ; up.  This was done primarily for the Select Course
           ; form.

           strField  = "CourseCategoryID"
           strLookup = ":FORMS:LKUCATEG"
           strObject = "CrseCtgy.CourseCategoryID"

      case strTable = "CRSESCHD" and strField = "COURSENUMBER" :

           strLookup = ":FORMS:CRSEDESC"
           strObject = "CRSEDESC.CourseNumber"
           loButtons = TRUE
           strTitle  = "Select Course"

      case strTable = "EMPLOYEE" and strField = "DEPARTMENT" :

           strLookup = ":FORMS:LKUDEPTS"
           strObject = "Dept.Department"

      case strTable = "EMPLOYEE" and strField = "JOBCODE" :

           strLookup = ":FORMS:LKUJOBCD"
           strObject = "JobCd.JobCode"

      case strTable = "EMPREVW" and strField = "JOBCODE" :

           strLookup = ":FORMS:LKUJOBCD"
           strObject = "JobCd.JobCode"

      case strTable = "ORDITEMS" and strField = "ITEMNO" :

           strLookup = ":FORMS:PRODUCTS"
           strObject = "Notebook1.pgSelect.Products.ProductID"
           loButtons = TRUE
           strTitle  = "Select Product"
 
      case strTable = "PRODORDS" and strField = "CUSTOMERID" :

           strLookup = ":FORMS:CUSTINFO"
           strObject = "nbCustInfo.pgSelect.Customer.CustomerID"
           loButtons = TRUE
           strTitle  = "Select Customer"

      case strTable = "PRODUCTS" and strField = "CATEGORYID" :

           strLookup = ":FORMS:LKUCATEG"
           strObject = "CrseCtgy.CourseCategoryID"

      case strTable = "TRAINING" and strField = "COURSENUMBER" :

           strLookup = ":FORMS:CRSEDESC"
           strObject = "CrseDesc.CourseNumber"
           loButtons = TRUE
           strTitle  = "Select Course"

      otherwise :

         strLookup = ""
         loRetval = False

   endSwitch

   ; Okay, now we're ready to try and open the lookup form.

   If loRetval then
      If not fmDialog.open( strLookup,
                            winStyleDefault +
                            winStyleHidden ) then
         msgStop( ERRTITLE, "Reason: Unable to open the " +
                  strLookup + " form.  Please check your code." )
      else

         if not uiTarget.attach( fmDialog, strObject ) then
            msgStop( ERRTITLE, "Reason: Unable to locate the " +
                     strObject + " object on the lookup form." )
         else
            If not atOldValue.isBlank() then
               uiTarget.locate( uiTarget.FieldName, atOldValue )
            endIf

            ; If this form is also a data-entry form, we need to
            ; enable the OK/Cancel buttons.  The loButtons flag
            ; indicates whether or not this needs to be done.

            fmDialog.btnFormDone.Visible = FALSE
            fmDialog.btnAccept.Visible = TRUE
            fmDialog.btnCancel.Visible = TRUE

            ; If the strTitle variable is not blank, then set
            ; the lookup form's title to that value.
            If strTitle <> "" then
               fmDialog.Title = strTitle
            endIf

            ; Display the dialog to the user and then wait
            ; for it to be dealt with.  If the user accepts the
            ; dialog, then update the underlying table with the
            ; selected value.

            fmDialog.show()
            fmDialog.bringToTop()
            loResult = fmDialog.wait()
            If loResult then

               ; Make sure the table is in Edit mode.
               If not tcTarget.isEdit() then
                  tcTarget.edit()
               endIf

               atNewValue = uiTarget.Value
               tcTarget.setFieldValue( strField, atNewValue )

               ; Try to save the change to avoid record fly-away.
               ; If that fails because of a key violation, display
               ; a custom error; otherwise, display a general error.

               if not tcTarget.postRecord() then

                  If errorCode() = peKeyViol then

                     msgStop( "Duplicate Entry",
                              "The value you selected (" +
                              String( atNewValue ) +
                              ") already exists.  Please edit " +
                              "or delete the previous entry." )
                     tcTarget.cancelEdit() ; cancel the key viol.
                  else
                     errorShow( ERRTITLE + String( errorCode() ),
                                "Reason: New Value wasn't " +
                                "accepted; see details..." )
                  endIf
               endIf

               ; Now, place a lock on the record so it will be
               ; locked after the calling process resync's the
               ; TCursor to the original UIObject.

               if not tcTarget.lockRecord() then
                  errorShow( "Can't Relock Record",
                             "See details..." )
               endIf
            endIf
         endIf
      endIf
   endIf

   try
      fmDialog.close()
   onFail
      ; do nothing as the form is already closed
      ; or was never assigned.
   endTry

   ; Finally, return the results to the calling process
   return loRetval

endMethod
 actionDataLookup G' method actionEditMemo( var tcTarget tCursor ) Logical
; ---------------------------------------------------------------
; This routine implements the custom rules this application needs
; to follow when the users begins editing a memo field from a
; form.  See the actionHandlerForm() routine for more information
; about the general process.
;
; Note: Remember that return value indicates whether or not the
;       the action was handled.  TRUE means the calling form
;       should block the action.  FALSE means the calling form
;       should process the action.
; ---------------------------------------------------------------
var
   loRetval   Logical        ; Result passed to calling function
   uiTarget   UIObject       ; Active object on active form.
   fmDialog   Form           ; Pointer to the memo editor dialog
endVar

const
   ERRTITLE = "Can't Edit Memo"  ; title for error dialogs.
endConst

   ; set the return value to a known state
   loRetval = TRUE

   ; attach to the active object
   If not uiTarget.attach( active ) then
      errorShow( ERRTITLE, "Reason: Unable to attach to " +
                 "active object; see details..." )
   else

      ; Try to open the memo editor form
      If not fmDialog.open( ":FORMS:EDITMEMO",
                            winStyleDefault +
                            winStyleHidden ) then
         errorShow( ERRTITLE, "Reason: Unable to open the " +
                    "Memo Editor form; see details..." )
      else

         ; Set up the memo editor with the current memo, if any.
         If not uiTarget.isBlank() then
            fmDialog.fldMemoFld = Memo( uiTarget.Value )
         endIf
         sleep()

         ; Put the user into a decent editinging state, similar
         ; to that done by other Windows applications, and then
         ; display the form.

         fmDialog.action( editEnterMemoView )
         fmDialog.action( moveEnd )
         fmDialog.show()
         fmDialog.bringToTop()

         ; Wait for the user to close the Memo Editor and then
         ; react accordingly.

         If fmDialog.wait() then

            ; Make sure target object is in Edit mode
            If not uiTarget.editing then
               uiTarget.action( DataBeginEdit )
            endIf

            ; Assign the new memo to the uiTarget
            uiTarget.Value = Memo( fmDialog.fldMemoFld.Value )

            ; Move focus to the next field.
            uiTarget.postAction( fieldForward )

         endIf

         ; Make sure the dialog is closed
         try
            fmDialog.close()
         onFail
            ; do nothing, as the form is already closed
         endTry
      endIf
   endIf

   ; Finally, return the results to the calling process
   return loRetval

endMethod
 actionEditMemo H# method actionDataDelete( var tcTarget tCursor ) Logical
; ---------------------------------------------------------------
; This routine implements the custom rules this application needs
; to follow when records are deleted from a form.  See the
; actionHandlerForm() routine for more information about the
; general process.
; 
; This routine also demonstratres four different techniques for
; responding to master record delete requests.  Two of these 
; cascade the delete to the detail tables and two prevent the
; delete when there are linked detail records.
; ---------------------------------------------------------------
var
   loRetval   Logical     ; Result passed to calling function.
	uiActive   UIObject    ; Active object on active form.
   strTable   String      ; Name of the active table.
   tcDetail   TCursor     ; Pointer to detail records of table.
endVar

const
   ERRTITLE = "Can't Delete Record"  ; title for error dialogs
endConst

   ; set the return value to a known state
   loRetval = TRUE

   ; get the name of the table that triggered the event.
   strTable = Upper( tcTarget.tableName() )

   ; Evaluate the table and then see if we need to perform
   ; a cascaded delete.  Notice that we don't change the return
   ; value when problems occur.  We don't want the master
   ; record deleted when there were problems removing detail
   ; records.
   ;
   ; The only time we adjust the return value is when there
	; is no processing at all.

   switch

      case strTable = "PRODORDS" :

         ; If an order is being deleted, we need to remove the
         ; order's items.

         If msgQuestion( "Confirm Delete", "Are you sure you " +
                         "want to delete the current product " +
                         "order?  If you choose [Yes], this " +
                         "will permanently remove the order " +
                         "and its items from the system.  If " +
                         "you make a mistake, you will need to " +
                         "re-enter the order from scratch.\n\n" +
                         "Choose [No] to Cancel." ) = "Yes" then

            If not tcDetail.open( ":DATA:ORDITEMS" ) then
               errorShow( ERRTITLE, "Reason: Unable to remove " +
                          "items; see details..." )
            else
					If not tcDetail.setRange( tcTarget."OrderID",
                                         tcTarget."OrderID" ) then
                  errorShow( ERRTITLE, "Reason: Unable to " +
                             "locate detail items; see details..." )
               else
                  tcDetail.edit()
                  while tcDetail.nRecords() > 0
                     if not tcDetail.lockRecord() then
                        errorShow( ERRTITLE, "Reason: Can't lock details..." )
                        return loRetval
                     endIf
                     if not tcDetail.deleteRecord() then
                        errorShow( ERRTITLE, "Reason: Can't delete details..." )
                        return loRetval
                     endIf
                  endWhile
               endIf

               tcDetail.close()
            endIf

            ; Now, delete the master record, leaving the table
				; in Edit mode, if necessary.
            If not tcTarget.isEdit() then
               tcTarget.edit()
            endIf
            tcTarget.deleteRecord()

         endIf

      case strTable = "CRSESCHD" :

         ; We need to delete the student assignments for this class

         If msgQuestion( "Confirm Delete", "Are you sure you " +
                         "want to delete the currently scheduled " +
                         "class?  If you choose [Yes], this " +
                         "will also remove the student " +
                         "assignments for the class.  If " +
                         "you make a mistake, you will need to " +
                         "re-enter the class and roster from " +
                         "scratch.\n\n" +
                         "Choose [No] to Cancel." ) = "Yes" then

            If not tcDetail.open( ":DATA:CRSERSTR" ) then
               errorShow( ERRTITLE, "Reason: Unable to remove " +
                          "student assignments; see details..." )
            else
               If not tcDetail.setRange( tcTarget."CourseNumber",
                                         tcTarget."ScheduledDate",
                                         tcTarget."ScheduledDate" ) then
                  errorShow( ERRTITLE, "Reason: Unable to " +
                             "locate student assignments; see details..." )
               else
                  tcDetail.empty()
               endIf

               tcDetail.close()
            endIf

            ; Now, delete the master record, leaving the table
            ; in Edit mode, if necessary.
            If not tcTarget.isEdit() then
               tcTarget.edit()
            endIf
            tcTarget.deleteRecord()

         endIf

      case strTable = "CUSTOMER" :

         ; If a customer is being deleted, we need to make sure
         ; there aren't any orders in the system.  If orders do
         ; exist, then we can't delete the customer.

         If msgQuestion( "Confirm Delete", "Are you sure you " +
                         "want to delete the current customer?" +
                         "If you choose [Yes], this will " +
                         "permanently remove the customer from " +
                         "the system.  \n\n" +
                         "Choose [No] to Cancel." ) = "Yes" then

            If not tcDetail.open( ":DATA:PRODORDS" ) then
               errorShow( ERRTITLE, "Reason: Unable to open " +
                          "orders; see details..." )
            else
               tcDetail.switchIndex( "CustomerID" )
               If not tcDetail.setRange( tcTarget."CustomerID",
                                         tcTarget."CustomerID" ) then
                  errorShow( ERRTITLE, "Reason: Unable to " +
                             "locate orders; see details..." )
               else
                  If tcDetail.nRecords() > 0 then
                     msgStop( ERRTITLE, "Reason: The selected " +
                              "customer has " +
                              String( tcDetail.nRecords() ) +
                              " order(s) in the system.  You " +
                              "must delete these before you " +
                              "can delete the customer." )
                  else
                     ; delete the master record, leaving the table
                     ; in Edit mode, if necessary
                     If not tcTarget.isEdit() then
                        tcTarget.edit()
                     endIf
                     tcTarget.deleteRecord()
                  endIf
               endIf
               tcDetail.close()
            endIf

         endIf

      case strTable = "PRODUCTS" :

         ; If a product is being deleted, we need to make sure
         ; there weren't any orders placed for th               џe product.  If
         ; the product was ordered, then we can't delete it to
         ; make sure the data doesn't get out of date.

            If not tcDetail.open( ":DATA:ORDITEMS" ) then
               errorShow( ERRTITLE, "Reason: Unable to open " +
                          "order items; see details..." )
            else
               tcDetail.switchIndex( "ItemNo" )
               If not tcDetail.setRange( tcTarget."ProductID",
                                         tcTarget."ProductID" ) then
                  errorShow( ERRTITLE, "Reason: Unable to " +
                             "locate product; see details..." )
               else
                  If tcDetail.nRecords() > 0 then
                     msgStop( ERRTITLE, "Reason: The selected " +
                              "product has been ordered; " +
                              "It cannot be deleted.\n\n" +
                              "This makes sure we can keep the " +
                              "historical data intact." )
                  else

                     ; In this case, we only needed to verify
                     ; that the product can be deleted.  We can
                     ; let the code in the calling function
                     ; handle the actual delete. To do this,
                     ; we'll say we didn't handle the event.

                     loRetval = FALSE

                  endIf
               endIf
               tcDetail.close()
            endIf

      otherwise : loRetval = FALSE  ; No action taken here.
   endSwitch

   ; Finally, return the results to the calling process
   return loRetval

endMethod
 actionDataDelete I­ method systemGetNextNum( strTable String,
                         strField String,
                         var liNewNum LongInt ) Logical
; ----------------------------------------------------------
; This routine implements an auto-incrementing function that
; is more flexible than the + Paradox field type.  This also
; provides greater flexibility when trying to modify the
; numbering scheme and handle data corruption and integrity
; issues.  It is especially helpful for using surrogate
; keys, for it can help prevent key violations and orphaned
; detail records.
;
; If you are developing file-server or shared applications,
; this approach will be far more effective than using +
; fields in the long run.
;
; The routine takes three parameters:
;
; -- strTable is the name of the table being edited  (input)
; -- strField is the name of the key field (input)
; -- liNewNum is the number to assign to the target field
;     (output)
;
; This routine returns TRUE when it is able to generate a
; new ID number and FALSE when that cannot be accomplished.
; Potential failure conditions include not being unable to:
;
; -- find the NEXTNUM table (primarily because it hasn't
;    been copied or created yet)
; -- find the target table (usually a typo or naming issue)
; -- find the field (usually a typo or naming issue)
; -- lock the record in NUXTNUM (because it's already locked
;    by another user).
;
; ----------------------------------------------------------
var
   tcNextNum  TCursor  ; Pointer to the NEXTNUM.DB table.
   liNextNum  LongInt  ; The value assigned to liNewNum
   loRetval   Logical  ; Value returned to calling process
   siCounter  SmallInt ; Loop counter variable.
endVar

const
   ERRTITLE = "Can't Get Next Number" ; error dialog titles.
   NRETRIES = 10                      ; retry count for lock
endConst

   ; First, initialize the local variables
   loRetval = TRUE  ; assume we'll get the number.
   liNextNum = 0
   loRetval = tcNextNum.open( ":DATA:NEXTNUM" )
   If not loRetval then
      errorShow( ERRTITLE, "Reason: The NEXTNUM table " +
                 "failed to open; see details..." )
   endIf

   ; If we were able to open the table, then try to
   ; locate the target table and field.

   If loRetval then
      loRetval = tcNextNum.qLocate( upper( strTable ),
                                    upper( strField ) )
      If not loRetval then
         msgStop( ERRTITLE, "Reason: Unable to locate the " +
                  upper( strTable ) + " table and " +
                  upper( strField ) +
                  "field.  Please check your code." )
      endIf
   endIf

   ; If we were able to locate the correct record,
   ; go into Edit mode and then try to lock the
   ; record.

   If loRetval then
      loRetval = tcNextNum.edit()
   endIf

   If not loRetval then
      errorShow( ERRTITLE, "Reason: Unabled to edit NEXTNUM; " +
                 "See details..." )
   else
      for siCounter from 1 to NRETRIES
         loRetval = tcNextNum.lockRecord()
         If loRetval then
            quitLoop
         endIf
      endFor
   endIf

   ; see if we were able to lock the record.  If not,
   ; see if siCounter = NRETRIES.  If it does, then the
   ; record is lock and we need to let the user know.

   If not loRetval then
      If siCounter = NRETRIES then
         msgStop( ERRTITLE, "Reason: Another user is " +
                  "adding a record to " + Upper( strTable ) +
                  ".  Please try again in a few moments." )
      endIf
   endIf

   ; If we were able to get a lock, then we need to get
   ; the current value, and then increment it.

   If loRetval then
      liNextNum = tcNextNum."NextNum"

      tcNextNum.edit()
      tcNextNum."NextNum" = liNextNum + 1
      tcNextNum.unlockRecord()
   endIf

   ; Now, make sure the TCursor is formally closed.
   If tcNextNum.isAssigned() then
      tcNextNum.close()
   endIf

   ; Finally, update the output parameter with the
   ; number we generated and then return the results to
   ; the calling process.
   If loRetval then
      liNewNum = liNextNum
   endIf
   return loRetval

endMethod
 systemGetNextNum  ` method close(var eventInfo Event)
; ----------------------------------------------------------
; This routine ensures that all global variables are cleared
; and released when the library is closed.
; ----------------------------------------------------------

   If dloDTStatus.size() > 0 then
      dloDTStatus.empty()
   endIf

   If menuMain.isAssigned() then menuMain.unassign() endIf
   If menuForm.isAssigned() then menuForm.unassign() endIf
   If menuRpts.isAssigned() then menuRpts.unassign() endIf

   If pmFileMain.isAssigned() then pmFileMain.unassign() endIf
   If pmFileOpen.isAssigned() then pmFileOpen.unassign() endIf
   If pmAsksMain.isAssigned() then pmAsksMain.unassign() endIf
   If pmRptsMain.isAssigned() then pmRptsMain.unassign() endIf
   If pmToolMain.isAssigned() then pmToolMain.unassign() endIf
   If pmToolInfo.isAssigned() then pmToolInfo.unassign() endIf
   If pmToolUtil.isAssigned() then pmToolUtil.unassign() endIf
   If pmHelpMain.isAssigned() then pmHelpMain.unassign() endIf

   If pmFormForm.isAssigned() then pmFormForm.unassign() endIf
   If pmEditForm.isAssigned() then pmEditForm.unassign() endIf
   If pmDataForm.isAssigned() then pmDataForm.unassign() endIf

   If pmRptsFile.isAssigned() then pmRptsFile.unassign() endIf
   If pmRptsZoom.isAssigned() then pmRptsZoom.unassign() endIf
   If pmRptsPage.isAssigned() then pmRptsPage.unassign() endIf

   If tbEditing.isAssigned() then
      tbEditing.empty()
      tbEditing.remove()
   endIf

   If tbPreview.isAssigned() then
      tbPreview.empty()
      tbPreview.remove()
   endIf

endMethod
 close+ J method verifyCloseForm( strTitle String ) Logical
; ---------------------------------------------------------------
; This routine indicates whether or not a form should be closed.
; If the user has set the ConfirmClose system setting to TRUE,
; then a confirmation dialog appears.  The parameter contains a
; string that can customize the confirmation message slightly.
;
; To use the default message, pass an empty string as the
; parameter.
;
; The return value indicates whether or not the calling form
; should be closed.
; ---------------------------------------------------------------

var
   loVerify  Logical  ; Exit confirmation flag
   loRetval  Logical  ; Value returned to the calling process.
endVar

   loRetval = TRUE  ; Assume the user will confirm the exit.
   loVerify = TRUE  ; Assume we need to verify the exit.

   ; Now, get the the system setting, displaying a wanring if
   ; something unexpected happens.

   if not systemReadSetting( "ConfirmExit", loVerify ) then
      msgStop( "Warning", "Reason: The is a problem with the " +
               "call to the getSystemSetting() library " +
               "routine.  The form will close, but you should " +
               "check you code." )
      loVerify = FALSE
   endIf

   ; If we need to confirm the exit, do so.  Otherwise, let the
   ; default value stand.  This covers the case where the user
   ; has elected not to confirm form exits.

   If loVerify then
      if msgQuestion( "Confirm Exit", "Are you sure you " +
                      "want to exit " + iif( strTitle = "",
                      "this form?", "the " + strTitle +
                      " form?" ) ) <> "Yes" then
         loRetval = FALSE
      endIf
   endIf

   ; return the result
   return loRetval


endMethod
 verifyCloseForm Kг method menuRefreshEdit( loEditing Logical )
; ---------------------------------------------------------------
; This routine updates Record menu used for form menus; it places
; or removes a checkmark next to the Edit Data menu command,
; based on the parameter.  
; ---------------------------------------------------------------

   setMenuChoiceAttribute( "&Edit Mode\tF9",
      menuEnabled + iif( loEditing, menuChecked, menuNotChecked ) )

endMethod
 menuRefreshEdit La method errorActionForm( siErrorCode SmallInt,
                        strErrorMsg String ) Logical
; ---------------------------------------------------------------
; This routine handles unexpected errors that were triggered in a
; form's action() event.  It replaces some errors with custom
; messages, hides others, and displays unexpected errors with
; debugging information.
; ---------------------------------------------------------------

var
   strConst    String    ; Constant for unexpected errors.
   loRetval    Logical   ; Value returned to calling process.
   strError    String    ; Message displayed to user.
endVar

   loRetval = TRUE

   ; Evaluate the error and see if there is a custom message
   ; defined.  When an error is assign an empty string, it's
   ; because we don't want a dialog getting in the user's face
   ; for the error in question.  For example, many users find it
   ; annoying to be told "at beginning of table."  If the screen
   ; doesn't change when <PgUp> is pressed, it's generally
   ; assumed that there aren't any more records to show.

   switch
      case siErrorCode = userError : strError = ""
      case siErrorCode = peCancel  : strError = ""
      case siErrorCode = peBOF     : strError = ""
      case siErrorCode = peEOF     : strError = ""

      case siErrorCode = peKeyViol :

         strError = "Duplicate Value.\n\nChange the ID or " +
                    "press <Alt+BackSpace> to undo your " +
                    "change(s)."

      case siErrorCode = peFieldNotInLookupTable :

         strError = "Invalid field value; press <Ctrl+Space> " +
                    "for a list of appropriate values."

      case siErrorCode = peBadMonth or
           siErrorCode = peBadDay or
           siErrorCode = peBadYear :

         strError = "Invalid date value; enter date values " +
                    "in MM/DD/YY format.\n\nNote: Two digit " +
                    "years are assumed to be in the 1900's."

      case siErrorCode = peCannotDepart or
           siErrorCode = peCannotEdit or
           siErrorCode = peCannotPerformAction :

         strError = strErrorMsg

      case siErrorCode = peCannotMove :

         message( "Cannot move in that direction" )
         strError = ""   ; Don't display a message.

      case siErrorCode = peMaxValErr :
         strError = "Value too high."

      case siErrorCode = peMinValErr :
         strError = "Value too low."

      case siErrorCode = peNoLockedRecord :

         strError = "No unsaved changes; either no changes " +
                    "have been made or your changes have " +
                    "already been saved."

      case siErrorCode = peNoLookup :

         strError = "Lookup Help is not available on the " +
                    "current field."

      case siErrorCode = peNotInEditMode :

         strError = "You must be in Edit mode to do this.\n\n" +
                    "Press <F9> and then try again."

      case siErrorCode = peFormTableReadOnly :

         strError = "The current field can't be edited here.  " +
                    "You need to use a different technique or " +
                    "go to another location.  For more " +
                    "information, see Help."

      case siErrorCode = peMatchNotFound : strError = strErrorMsg

      case siErrorCode = peDeliveredDocument :

         strError = "The current form is being displayed as a " +
                    "dialog box.  To design it, close the " +
                    "current window and then open the form in " +
                    "Design mode from the Paradox menus or " +
                    "Project Viewer."

      otherwise :

         ; The error is not one we've coded for, so construct a
         ; message that contains the constant, so we can add to
         ; this routine as necessary.

         ; Get the constant for the error, if any.
         If not ConstantValueToName( "Errors",
                                     siErrorCode, strConst ) then
            strConst = "Unmapped Error " + String( siErrorCode )
         endIf

         ; Construct the message
         strError = strConst + ": " + strErrorMsg
   endSwitch

   ; If there is a message, then display it.

   If strError <> "" then
      msgStop( "Error", strError )
   endIf

   return loRetval

endMethod
 errorActionForm MЧ method systemRunExpert( strMenuText String ) Logical
; ---------------------------------------------------------------
; This routine shows hos to launch a Paradox Expert from an
; ObjectPAL application.  This can a useful way to leverage the
; Experts as part of your application.
;
; The parameter is a string indicating which Expert the user
; elected to start.  The return value indicates whether or not
; the Expert was successfully launched.
; ---------------------------------------------------------------
var
   loRetval    Logical   ; Value returned to the calling process
   strExpType,           ; Type of Expert being run.
   strExpName  String    ; Name of the Expert being run.
endVar

   ; Initialize local variables.  (While not required, it's a
   ; good practice for documentation purposes and can help
   ; provide additional error checking facilities, as shown
   ; later.

   loRetval = TRUE
   strExpName = ""

   ; Evaluate the parameter and then initialize the Expert
   ; variables accordingly.  Note that the HTML branch sees
   ; whether or not you're running a version of Paradox that
   ; supports HTML publishing and displays an error message
   ; if that isn't true.

   switch

      case strMenuText = "Import" :

         strExpType = "Document"
         strExpName = "Import"

      case strMenuText = "Merge"  :

         strExpType = "Document"
         strExpName = "Merge"

      case strMenuText = "HTML"   :

         If Number( version() ) < 8.0 then
            msgStop( "Can't Publish Data", "Reason: HTML " +
                     "publishing features are only available " +
                     "in Corel Paradox 8 for Windows 95/NT " +
                     "or later versions.\n\nWe apologize for " +
                     "any inconvenience." )
            loRetval = FALSE
         else

            strExpType = "CoreUI"
            strExpName = "HTMLTable"

         endIf

      case strMenuText = "TUTILITY"  :

         strExpType = "CoreUI"
         strExpName = "TableRepair"

      otherwise :

         ; This branch detects invalid parameters that are
         ; invalid or otherwise unsupported.  This is a good
         ; way to make sure you maintain support code when
         ; you adapter it for other uses, for it gracefully
         ; handles situations where you forget to add
         ; support and also indicates what you need to change.

         msgStop( "Can Perform Task", "Reason: The " +
                  "systemRunExpert() routine was called with " +
                  "an invalid parameter (" + strMenuText +
                  ").\n\nPlease check your code." )
         loRetval = FALSE

   endSwitch

   ; Now, see if we got a valid parameter.  If so, then try
   ; to launch the appropriate expert.

   If strExpName <> "" then
      loRetval = runExpert( strExpType, strExpName )
      If not loRetval then
         errorShow( "Can't Perform Task", "Reason: An unexpected " +
                    "error occured when trying to launch the " +
                    strExpName + " Expert; see details..." )
      endIf
   endIf

   ; Return results to calling process.
   return loRetval

endMethod
 systemRunExpert NЈ$ uses ObjectPAL
   ":FORMS:DUALLIST.FSL"  ; Routines in the dual-list dialog.
endUses

method updateCourseRoster( strCourseID String,
                           dClassDate Date ) Logical
; ---------------------------------------------------------------
; This routine implements the code used to update the course
; roster, which is handled somewhat differently than normal data-
; entry.  In this approach, the code handles data entry and
; provides the user with a way of doing this quickly.
;
; While the following technique may not be useful for all
; applications, it can be used effectively, especially when your
; table structures are somewhat complicated, as in this example.
;
; The parameters of the routine indicate the ID of the class
; being edited and the date it's being offered.  The return
; value indicates whether or not the process succeeded.
;
; Due to the complexity of this process, it is commented using
; "Steps" that need to occur for it to happen correctly.
; ---------------------------------------------------------------
var
   fmDialog  Form               ; Pointer to various forms.
   strInput  String             ; Holds various input values.
   qryNames  Query              ; Pointer to various queries
   tcAnswer  TCursor            ; Point to query results.
   loRetval  Logical            ; Value returned to calling process

   dliAvail  Dynarray[] LongInt ; List of available IDs.
   dliPicks  Dynarray[] LongInt ; List of picked ID's.
   astrXfer  Array[] String     ; List used to transfer names.
   strIndex  String             ; Counter var for FOREACH loops.
   siCounter LongInt            ; Counter used to add to roster.
endVar

const
   ERRTITLE = "Can't Edit Roster"  ; Title for error dialogs
endConst

   ; Step 0: Initialize local variables
   loRetval = FALSE   ; Assume the worst

   ; Step 1: Get the type of student the user wants to add.
   If not fmDialog.open( ":FORMS:ROSTTYPE" ) then
      errorShow( ERRTITLE, "Reason: Can't open the " +
                 "Student Type dialog; see details..." )
      return loRetval
   else
      loRetval = fmDialog.wait()  
      If loRetval then
         strInput = fmDialog.fldStudentType.Value
      endIf

      try
         fmDialog.close()
      onFail
         ; do nothing, as the form is already closed
      endTry

   endIf

   if not loRetval then
      return loRetval
   endIf


   ; Step 2: Collect the names of available students, based on
   ;         the user's previous selection.

   if strInput = "Customer" then
      qryNames = Query

         :DATA:CUSTOMER | CustomerID  | LastName | FirstName |
                        | Check as ID | Check    | Check     |

      endQuery
   else
      qryNames = Query

         :DATA:EMPLOYEE | EmployeeID  | LastName | FirstName |
                        | Check as ID | Check    | Check     |

      endQuery
   endIf

   ; Now, try to run the query and make sure there are names
   ; to select from.
   If not qryNames.executeQBE( tcAnswer ) then
      errorShow( ERRTITLE, "Reason: Unable to extract " +
                           strInput + " names; see details..." )
      qryNames.writeQBE( ":PRIV:BADQUERY.TXT" )
      return loRetval
   else
      If tcAnswer.nRecords() = 0 then
         msgStop( ERRTITLE, "There are no " + strInput +
                            " names in the system.  You need " +
                            "to add " + strInput + "s before " +
                            "you can assign them to classes." )
         tcAnswer.close()
         return loRetval
      endIf
   endIf

   ; Step 3: Add the names to the dynarray of available names.
   scan tcAnswer :

      dliAvail[ tcAnswer.LastName + ", " +
                tcAnswer.FirstName ] = tcAnswer.ID

   endScan
   tcAnswer.close()

   ; Step 4: Get the previous selected names if any.

   if strInput = "Customer" then

      qryNames = Query

         :DATA:CRSERSTR | CourseID     | ClassDate   |
                        | ~strCourseID | ~dClassDate |

         :DATA:CRSERSTR | StudentID |
                        | _ID       |

         :DATA:CUSTOMER | CustomerID       | LastName | FirstName |
                        | Check as ID, _ID | Check    | Check     |

      endQuery

   else

      qryNames = Query

         :DATA:CRSERSTR | CourseID     | ClassDate   |
                        | ~strCourseID | ~dClassDate |

         :DATA:CRSERSTR | StudentID |
                        | _ID       |

         :DATA:EMPLOYEE | EmployeeID       | LastName | FirstName |
                        | Check as ID, _ID | Check    | Check     |

      endQuery
   endIf

   ; Now, try to run the query.
   If not qryNames.executeQBE( tcAnswer ) then
      errorShow( ERRTITLE, "Reason: Unable to get previous " +
                           strInput + " names; see details..." )
      qryNames.writeQBE( ":PRIV:BADQUERY.TXT" )
      return loRetval
   endIf

   ; Step 5: Add the returned names to the dynarray of selected
   ;         names.

   If tcAnswer.nRecords() = 0 then
      dliPicks.empty()
   else
      scan tcAnswer :
         dliPicks[ tcAnswer.LastName + ", " +
                   tcAnswer.FirstName ] = tcAnswer.ID
      endScan
   endIf
   tcAnswer.close()

   ; Step 6: Remove selected names from available names.
   If dliPicks.size() > 0 then
      forEach strIndex in dliPicks
         If dliAvail.contains( strIndex ) then
            dliAvail.removeItem( strIndex )
         endIf
      endForEach
   endIf

   ; Step 7: Open the dual-list dialog and initialize the lists.
   If not fmDialog.open( ":FORMS:DUALLIST",
                         winStyleDefault + winStyleHidden ) then
      errorShow( ERRTITLE, "Reason: Unable to open the " +
                           "dual list dialog; see details..." )
      return loRetval
   endIf

   ; First, assign the available names.  To do that, though, we
   ; need to transfer the dynarray into the array
   astrXfer.empty()
   forEach strIndex in dliAvail
      astrXfer.addLast( format( "CC", strIndex ) )
   endForEach
   fmDialog.setAvailableValues( astrXfer )

   ; Now, assign the selected names.  To do that, though, we
   ; need to transfer the dynarray into the array.  While doing
   ; this, add the name back to the available names for later
   ; data-entry use.
   astrXfer.empty()
   forEach strIndex in dliPicks
      astrXfer.addLast( format( "CC", strIndex ) )
      dliAvail[ strIndex ] = dliPicks[ strIndex ]
   endForEach
   fmDialog.setSelectedValues( astrXfer )

   ; Set the title of the dialog and then display it to the
   ; user
   fmDialog.Title = "Select " + strInput + "s for Class"
   fmDialog.show()
   fmDialog.bringToTop()

   ; Step 8: Wait for the user to respond.
   loRetval = fmDialog.wait()

   If loRetval then

      ; Step 9: If the user accepted the dual list dialog, then
      ;         update the lists with the ones the user accepted.
      astrXfer.empty()
      astrXFer = fmDialog.getSelectedValues()

      ; Now, replace the names with the corresponding ID's.
      If astrXFer.size() > 0 then
         for siCounter from 1 to astrXfer.size()
            strIndex = String( dliAvail[ astrXfer[ siCounter ] ] )
            astrXfer[ siCounter ] = strIndex
         endFor
      endIf

      ; Step 10: Now, scan the current class roster for this
      ;          particular session and remove any students that
      ;          are no longer selected.

      tcAnswer.open( ":DATA:CRSERSTR" )
      tcAnswer.setRange( strCourseID, dClassDate,
                         strInput.subStr( 1, 1 ),
                         strInput.subStr( 1, 1 ) ) 
      tcAnswer.edit()

      If astrXfer.size() = 0 then
         tcAnswer.empty()
      else

         while not tcAnswer.eot()

            If not astrXfer.contains(
                      String( tcAnswer."StudentID" ) ) then

               tcAnswer.deleteRecord()
            else
               tcAnswer.nextRecord()
            endIf

         endWhile
         tcAnswer.home()
      endIf


      ; Step 11: Now, add the newly selected students into the
      ;          CourseRoster table.

      If astrXfer.size() > 0 then
         for siCounter from 1 to astrXfer.size()
            If not tcAnswer.qLocate(
                      strCourseID, dClassDate,
                      strInput.subStr( 1, 1 ),
                      LongInt( astrXfer[ siCounter ] ) ) then
               tcAnswer.insertRecord()
               tcAnswer.update( 1, strCourseID,
                                2, dClassDate,
                                3, strInput.subStr( 1, 1 ),
                                4, LongInt(
                                      astrXfer[ siCounter ] ) )
               tcAnswer.postRecord()
            endIf
         endFor
      endIf

   endIf

   ; Step 12: Clean-up and exit.

   if tcAnswer.isAssigned() then
      if tcAnswer.isEdit() then
         tcAnswer.endEdit()
      endIf
      tcAnswer.close()
   endIf

   try
      fmDialog.close()
   onFail
      ; do nothing as the form is already closed
   endTry

   return loRetval

endMethod
 updateCourseRoster O
 method systemSaveAs( var strFileName String,
                     fbiInput fileBrowserInfo ) Logical
;----------------------------------------------------------------
; This routine lets the user choose a filename for a save
; operation.  The parameters indicate, respectively, the location
; for the final file name and the options to be used with the
; fileBrowser() call.
;
; The return value indicates whether or not the user changed the
; file name from its initial value.
;----------------------------------------------------------------

var
   strValue  String            ; Fully qualified file name
   fbi       FileBrowserInfo   ; Structure for FileBrowser()
   loRetval  Logical           ; value returned to caller.
   dynParts  Dynarray[] String ; Parts of selected file.
   loRepeat  Logical           ; Variable for the while loop
endVar

   ; Initialize local variables
   loRetval = TRUE         ; assume user will choose a new name.
   loRepeat = TRUE         ; loop control variable
   strValue = strFileName  ; default selected file

   ; Initialize the file browser info structure
   fbi = fbiInput

   while loRepeat

      loRetval = fileBrowser( strValue, fbi )
      If loRetval then

         ; the user selected a file or the user selected an
         ; alias that no longer exists.  So, we need to determine
         ; If the user actually selected a file.

         ; Start by building the final file name from the
         ; components of the fileBroswerInfo structure.

         If fbi.Path <> "" then
            strValue = fbi.Path + strValue
         endIf

         If fbi.Drive <> "" then
            strValue = fbi.Drive + strValue
         else
            strValue = getAliasPath( fbi.alias ) + "\\" + strValue
         endIf

         splitFullFileName( strValue, dynParts )

         ; See if a bad alias was selected.

         If dynParts[ "NAME" ] = "" then
            msgStop( "Can't Use Alias", "The " + fbi.Alias +
                     " alias is not valid, presumeably because " +
                     "the folder or network drive no longer " +
                     "exists.  Choose a different alias or " +
                     "folder." )
            fbi.Alias = ":PRIV:"
         else
            loRepeat = FALSE
         endIf

      else
         loRepeat = FALSE
      endIf
   endWhile

   ; Now, determine whether or not the user changed the file
   ; name
   loRetval = NOT ( upper( FullName( strFileName ) ) =
                    upper( strValue ) )
   If loRetval then
      strFileName = strValue
   endIf

   dynParts.empty()
   return loRetval

endMethod
 systemSaveAs PЈ method crosstabSave( strXFile String ) Logical
; ---------------------------------------------------------------
; This routine lets the user save a CROSSTAB table to a number of
; formats.  It uses the DataTransfer type to convert the crosstab
; data.
;
; The parameter is the name of a saved CROSSTAB table, usually
; ":PRIV:CROSSTAB.DB" and the return value indicates whether or
; not the data was successfully saved.
; ---------------------------------------------------------------
var
   fbiXFile  FileBrowserInfo   ; data for systemSaveAs() function.
   dtExport  DataTransfer      ; Pointer to DataTransfer methods.
   loRetval  Logical           ; Value returned to calling process.
   strValue  String            ; Holds filenames
   dynParts  Dynarray[] String ; Holds parts of a filename.
   fs        FileSystem        ; Used to dele .SCH files.
endVar

const
   ERRTITLE = "Can't Save Crosstab"  ; title for error dialogs
endConst

   ; initialize local vars
   loRetval = TRUE
   strValue = strXFile

   fbiXFile.Title          = "Save Crosstab As"

   ; Note the constant that's used here.  Though the documentation
   ; says the constant is called "browseOptPathMustExist," that
   ; generates a compiler error.  A quick look at the table
   ; generated by enumRTLConstants() shows this is the constant
   ; to use instead.
   fbiXFile.Options        = browseOptPathMustExit
   fbiXFile.AllowableTypes = fbTable + fbParadox + fbdBASE +
                             fbQuattroProWindows + fbAscii
   fbiXFile.Alias          = ":PRIV:"
   fbiXFile.NewFileOnly    = True
   fbiXFile.DefaultExt     = ".DB"

   ; Call the SaveAs wrapper function
   loRetval = systemSaveAs( strValue, fbiXFile )

   ; Make sure the user entered a file name 
   if strValue = "" then
      loRetval = FALSE
   endIf

   if loRetval then

      ; Breakapart the user's selected file name
      splitFullFileName( upper( strValue ), dynParts )

      ; If the user chose to save the data to a table,
      ; we'll simply copy CROSSTAB.DB to the target name.

      If ( dynParts[ "EXT" ] = ".DB" ) or
         ( dynParts[ "EXT" ] = ".DBF" ) then

         message( "Copying data to " + strValue + "..." )
         setMouseShape( mouseWait )
         loRetval = copy( strXFile, strValue )
         setMouseShape( mouseArrow )
         If not loRetval then
            errorShow( ERRTITLE,
                       "Data failed to copy; see details..." )
         endIf
      else

         ; User chose to export the data instead, so
         ; we'll do that.

         Message( "Exporting data to " + strValue + "..." )
         setMouseShape( mouseWait )
         dtExport.setSource( strXFile, dtParadoxAny )

         ; If this is an ASCII export, we need to indicate
                  Da      ; what kind of ASCII export needs to be performed.
         if dynParts[ "EXT" ] = ".TXT" then
            dtExport.setDest( strValue, dtASCIIVar )
         else
            dtExport.setDest( strValue, dtAuto )
         endIf

         ; For non DB exports, include the field names
         ; in the first row.
         dtExport.setDestFieldNamesFromFirst( Yes )

         ; export the data.
         dtExport.transferData()

         ; Blow away any remaining schema files.
         if dynParts[ "EXT" ] = ".TXT" then
            strValue = dynParts[ "DRIVE" ] +
                       dynParts[ "PATH" ] +
                       dynParts[ "NAME" ] + ".SCH"
            if isFile( strValue ) then
               fs.delete( strValue )
            endIf
         endIf
         setMouseShape( mouseArrow )

      endIf
   endIf
   Message( "" )
   return loRetval

endMethod
 crosstabSave Q method systemShowHelp()
; ---------------------------------------------------------------
; This routine launches the Help interface for the application.
; In this case, it opens an Envoy viewer window containing the
; documentation for the application.
; ---------------------------------------------------------------
var
	strHelpFile  String  ; Full path of published Help document.
endVar

	strHelpFile = getAliasPath( ":MAIN:" ) + "\\HELPINFO.EXE"
	execute( strHelpFile, No, exeShowMaximized )

endMethod
 systemShowHelp Rs method desktopResyncForm()
; ---------------------------------------------------------------
; This routine sets up the desktop user interface to what we want
; to display when forms are displayed.
; ---------------------------------------------------------------

   ; Display the data entry menu and toolbar
   menuShowForm()
   toolbarShowForm()

endMethod
 desktopResyncForm S< method graphSave( uiTarget UIObject ) Logical
; ---------------------------------------------------------------
; This routine lets the user save a graph as a bitmap image.
;
; The parameter points to the graph to be saved and the return
; value indicates whether or not the data was successfully saved.
; ---------------------------------------------------------------
var
   fbiXFile  FileBrowserInfo   ; data for systemSaveAs() function.
   loRetval  Logical           ; Value returned to calling process.
   strValue  String            ; Holds filenames
   dynParts  Dynarray[] String ; Holds parts of a filename.
   grOutput  Graphic           ; Internal var used to create BMP
endVar

const
   ERRTITLE = "Can't Save Graph"  ; title for error dialogs
endConst

   ; initialize local vars
   loRetval = TRUE
   strValue = "MYGRAPH"

   fbiXFile.Title          = "Save Graph As"

   ; Note the constant that's used here.  Though the documentation
   ; says the constant is called "browseOptPathMustExist," that
   ; generates a compiler error.  A quick look at the table
   ; generated by enumRTLConstants() shows this is the constant
   ; to use instead.
   fbiXFile.Options        = browseOptPathMustExit
   fbiXFile.AllowableTypes = fbBitmap
   fbiXFile.Alias          = ":PRIV:"
   fbiXFile.NewFileOnly    = True
   fbiXFile.DefaultExt     = "BMP"

   ; Call the SaveAs wrapper function
   loRetval = systemSaveAs( strValue, fbiXFile )

   if loRetval then

      ; Breakapart the user's selected file name
      splitFullFileName( upper( strValue ), dynParts )


      ; Convert the graph to a bitmap.
      message( "Copying graph to " + strValue + "..." )
      setMouseShape( mouseWait )
      uiTarget.action( editCopySelection )
      grOutput.readFromClipboard()
      loRetval = grOutput.writeToFile( strValue )
      setMouseShape( mouseArrow )
      If not loRetval then
         errorShow( ERRTITLE,
                    "Data failed to copy; see details..." )
      endIf
   endIf
   Message( "" )
   return loRetval

endMethod
 graphSave Tь ; ---------------------------------------------------------------
; This routine implements the Publish to HTML Destination for
; the reports in this application.  It also demonstrates several
; other techniques that aren't illustrated in this application.
; Specifically, it shows how to:
;
; -- Declare custom data types that are only supported by a
;    single routine.
; -- Declare external ObjectPAL routines from a delivered library.
; -- Declare external ObjectPAL routines that can only be called
;    from a single routine.
; -- Use the HTMLIB01.LSL file provided in the EXPERTS\ folder.
; ---------------------------------------------------------------

type
   _HTMLReport = record
      strURI      String   ; URI (or output file name)
      strTitle	   String   ; Document title
      iBGColor	   LongInt  ; Background color
      iTextColor	LongInt  ; Text color
      mHeader	   Memo     ; (filled) Header template
      mTemplate	Memo     ; (filled) Main template
      lStatic	   Logical  ; Static output? (FALSE = Dynamic)
      lMsg	      Logical	; Show status line messages?
   endRecord
endType

uses ObjectPAL
   ; Converts a report to an HTML document.
   HTMLPublish_Report( var rSource Report,
                       var HTMLReport _HTMLReport ) Logical
   ; Launches your internet browser with the file.
   _LaunchBrowser( strFileName String, lWait Logical ) Logical

endUses

method reportPublish( roiInput ReportOpenInfo ) Logical
var
   rptWebPub  Report          ; The report being published.
   _hrWebPub  _htmlReport     ; Details for the library routine.
   libWebPub  Library         ; Pointer to the publishing library.
   strSaveAs  String          ; File name for published report.
   fbiSaveAs  fileBrowserInfo ; Information for Save As dialog.
   loRetval   Logical         ; Value returned to calling proc.
endVar

const
   ERRTITLE = "HTML Publishing Error"  ; title for error dialogs.
endConst

   ; Initialize the variable for the Save As dialog.
   strSaveAs = "Publish1"
   fbiSaveAs.Title          = "Publish Report To"

   ; Note the constant that's used here.  Though the documentation
   ; says the constant is called "browseOptPathMustExist," that
   ; generates a compiler error.  A quick look at the table
   ; generated by enumRTLConstants() shows this is the constant
   ; to use instead.
   fbiSaveAs.Options        = browseOptPathMustExit
   fbiSaveAs.AllowableTypes = fbHTML
   fbiSaveAs.Alias          = ":PRIV:"
   fbiSaveAs.NewFileOnly    = True
   fbiSaveAs.DefaultExt     = ".HTM"

   ; Call the SaveAs wrapper function
   loRetval = systemSaveAs( strSaveAs, fbiSaveAs )
   If not loRetval then  ; user cancelled the process.
      return False
   endIf

   ; Next, we have to open the HTMLIB01.LDL library.  If that
   ; fails, we cannot continue.
   loRetval = libWebPub.open( expertsDir() + "\\HTMLIB01" )
   If not loRetval then
      errorShow( ERRTITLE, "Reason: Unable to load publishing " +
                           "library; see details..." )
      return loRetval
   endIf

   ; Open the report.
   loRetval = rptWebPub.open( roiInput )
   If not loRetval then
      errorShow( ERRTITLE, "Reason: The report failed to " +
                           "open; see details..." )
      return loRetval
   endIf

   rptWebPub.DesignModified = FALSE
   ; Now, we need to initialize the fields of the publishing
   ; information record.
   _hrWebPub.strURI       = strSaveAs
   _hrWebPub.strTitle     = "TBD Report"
   _hrWebPub.iBGColor     = Black
   _hrWebPub.iTextColor   = White
   _hrWebPub.lStatic      = TRUE
   _hrWebPub.lMsg         = TRUE

   ; Try to publish the report.
   loRetval = libWebPub.htmlPublish_Report( rptWebPub, _hrWebPub )
   If not loRetval then
      errorShow( ERRTITLE, "Reason: The publishing routine failed; " +
                           "see details." )
   else
      If msgQuestion( "Report Sucessfully Published",
                      "Your report has been published.  Would " +
                      "you like to view the final file in " +
                      "your Internet browser?" ) = "Yes" then
         If not libWebPub._launchBrowser( _hrWebPub.strURI,
                                           Yes ) then
            errorShow( "Can't Preview HTML", "Reason: The " +
                       "browser failed to launch; see " +
                       "details..." );
         endIf
      endIf
   endIf

   ; Make sure the report gets closed.
   try
      rptWebPub.close()
   onFail
      ; do nothing as the report is already closed.
   endtry

   ; Make sure the library gets closed and its memory gets
   ; released.
   If libWebPub.isAssigned() then
      libWebPub.close()
   endIf

endMethod

 reportPublish UЌ# method actionDataInsert( var tcActive TCursor ) Logical
; ---------------------------------------------------------------
; This routine implements the custom rules this application needs
; to follow when records are inserted into tables.  See the
; actionHandlerForm() routine for more information about the
; general process.
; ---------------------------------------------------------------
var
   loRetval   Logical        ; Result returned to calling code.
   loResult   Logical        ; Result of some process.
   liKeyVal   LongInt        ; Holds new key values.
   strTable   String         ; Name of the underlying table.
   strField   String         ; Name of the key field.
   fmActive   Form           ; Pointer to the active form.
   fmDialog   Form           ; Pointer to a dialog box.
endVar

const
   ERRTITLE = "Can't Insert Record"  ; title for error dialogs
endConst

   ; set the return value to a known state
   loRetval = FALSE
   loResult = TRUE

   If not loResult then
      errorShow( ERRTITLE, "Reason: Unable to " +
                 "open the table; see details..." )
   else
      ; Initialize process variables
      strTable = Upper( tcActive.tableName() )
      strField = ""
      liKeyVal = -1
   endIf

   ; Now, see if the table is one that needs a key value
   ; generated.  If so, set the field name variable to the
   ; name of the table's key field.

   switch

      case strTable = "PRODUCTS" : strField = "PRODUCTID"
      case strTable = "PRODORDS" : strField = "ORDERID"
      case strTable = "CRSECTGY" : strField = "COURSECATEGORYID"
      case strTable = "CUSTOMER" : strField = "CUSTOMERID"

      otherwise : loResult = FALSE

   endSwitch

   ; If the table is one that needs a unique ID, then get the
   ; available ID; otherwise, see if there's a custom process
   ; for the table in question.

   if ( strField <> "" ) then

      loRetval = TRUE  ; Indicate that the event was handled.
      loResult = systemGetNextNum( strTable, strField, liKeyVal )
      if not loResult then
         msgStop( ERRTITLE, "Reason: Unable to get a unique" +
                  "ID value.  Try again in a few moments." )
      else

         setMouseShape( mouseWait )
         errorTrapOnWarnings( Yes )
         try
            ; Make sure the table's in Edit mode.  If it isn't,
            ; it will be when the user gets control back.
            If not tcActive.isEdit() then
               tcActive.edit()
            endIf
            tcActive.insertRecord()
            tcActive.setFieldValue( strField, liKeyVal )
            tcActive.postRecord()
         onFail
            setMouseShape( mouseArrow )
            errorTrapOnWarnings( No )
            errorShow( ERRTITLE, "An unexpected error " +
                       "was encountered; see details..." )
         endTry
         errorTrapOnWarnings( No )
      endIf

   else

      ; These following table(s) use special processing that
      ; also demonstrates a variety of techniques.

      switch

         case strTable = "CRSERSTR" :

            ; This uses a custom form to control the insert.

            fmActive.attach()
            If tcActive.nRecords() = 0 then
               updateCourseRoster( fmActive.CourseNumber.Value,
                                   fmActive.ScheduledDate.Value )
            else
               updateCourseRoster( tcActive."CourseID",
                                   tcActive."ClassDate" )
            endIf
            fmActive.bringToTop()
            fmActive.CrseRstr.Attended.moveTo()
            loRetval = TRUE

         case strTable = "CRSEDESC" :

            ; This shows one way to increment an alphanumeric
            ; field.

            loRetval = TRUE  ; Indicate that event was handled
            strField = "COURSENUMBER"
            loResult = systemGetNextNum( strTable,
                                         strField, liKeyVal )
            if not loResult then
               msgStop( ERRTITLE, "Reason: Unable to get a " +
                        "new Course Number.  Try again in a " +
                        "few moments." )
            else

               setMouseShape( mouseWait )
               errorTrapOnWarnings( Yes )
               try
                  ; Make sure the table's in Edit mode.  If not,
                  ; it will be when the user gets control back.
                  If not tcActive.isEdit() then
                     tcActive.edit()
                  endIf
                  tcActive.insertRecord()
                  tcActive.setFieldValue( strField,
                     format( "W3,EZ", SmallInt( liKeyVal ) ) )
                  tcActive.postRecord()
               onFail
                  errorShow( ERRTITLE, "An unexpected error " +
                             "was encountered; see details..." )
                  setMouseShape( mouseArrow )
               endTry
               errorTrapOnWarnings( No )
            endIf

         case strTable = "ORDITEMS" :

            ; This maintains the integrity of the detail table
            ; by adding the current order number value to the
            ; new record.

            loRetval = TRUE        ; We are handling the insert.
            fmActive.attach()      ; get access to current form
            If not fmActive.dmGet( "ProdOrds",
                                   "OrderID", liKeyVal ) then

               msgStop( ERRTITLE,
                        "Reason: You must use the Product " +
                        "Order form to add items to this " +
                        "table." )
            else
               tcActive.insertRecord()       ; insert the record
               tcActive."OrderID" = liKeyVal ; Set linking value
               actionDataLookup( tcActive )  ; Let user pick item
            endIf

         case strTable = "EMPLOYEE" :

            ; This combines a dialog box with a call to the
            ; next num routine.

            loRetval = TRUE  ; Indicate that event was handled
            strField = "EMPLOYEEID"
            loResult = systemGetNextNum( strTable,
                                         strField, liKeyVal )
            if not loResult then
               msgStop( ERRTITLE, "Reason: Unable to get a " +
                        "Employee ID.  Try again in a few " +
                        "moments." )
            else

               ; First, get the required field values from the
               ; user.  If that fails, no insert takes place.

               If not fmDialog.open( ":FORMS:ADDEMPLY" ) then
                  msgStop( ERRTITLE,
                           "Reason: Can't open dialog; " +
                                    "see details..." )
                  return loRetval
               endIf

               If not fmDialog.wait() then
                  Message( "Add Employee cancelled..." )
               else

                  setMouseShape( mouseWait )
                  errorTrapOnWarnings( Yes )
                  try
                     ; Make sure the table's in Edit mode.  If
                     ; not, it will be when the user gets
                     ; control back.
                     If not tcActive.isEdit() then
                        tcActive.edit()
                     endIf
                     tcActive.insertRecord()

                     ; set the field values
                     tcActive.setFieldValue( strField, liKeyVal )

                     ; This shows a faster, though harder to read
                     ; way to refer to fields in TCursors--by
                     ; numeric field positions.
                     tcActive.( 2) = fmDialog.fldLastName.Value
                     tcActive.( 3) = fmDialog.fldFirstName.Value
                     tcActive.( 4) = fmDialog.fldHireDate.Value
                     tcActive.( 5) = fmDialog.fldBirthDate.Value
                     tcActive.(10) = fmDialog.fldSocNum.Value
                     tcActive.(20) = fmDialog.fldGender.Value
                     tcActive.postRecord()
                  onFail
                     errorShow( ERRTITLE,
                                "An unexpected error was " +
                                "encountered; see details..." )
                     setMouseShape( mouseArrow )
                  endTry
                  errorTrapOnWarnings( No )
               endIf

               try
                  fmDialog.close()
               onFail
                  ; do nothing; the form is already closed
               endTry
            endIf

         otherwise  :

            ; There is no special handling for the table, so the
            ; insert should be handled by the form that called
            ; this routine.

            loRetval = FALSE

         endSwitch

   endIf

   ; Finally, return the results to the calling process
   setMouseShape( mouseArrow )
   return loRetval

endMethod

 actionDataInsert VШ ; ---------------------------------------------------------------
; This routine lets the user publish a table to an HTML document.
;
; The return value indicates whether or not the data was
; successfully published.
;
; The code uses the HTMLIB01.LDL library provided with Paradox
; to create the HTML document and also demonstrates how to work
; with delivered libraries.  The documentation for HTMLIB01.LDL
; can be found in the PDXINET.HLP file provided with Paradox.
;
; The following declarations are needed to publish tables and
; have been adapted from the information in the Help file.
; ---------------------------------------------------------------
type

   _HTMLTable = Record
      strURI       String  ; URI (or output file name)
      strTableName String  ; Source table name
      strSource    String  ; Data source name
      strFLDS      String  ; comma-sep. list of fields
      strTitle     String  ; Title
      iBGColor     LongInt ; Background color
      iTextColor   LongInt ; Text color
      lCenter      Logical ; Center the table?
      strParams    String  ; Additional HTML table parameters
      mTemplate    Memo    ; (filled) Template
      lStatic      Logical ; Static output? (FALSE = Dynamic)
      lMsg         Logical	; Show status messages?
   endRecord

endType

uses ObjectPAL

   ; Publishes a table to HTML
   HTMLPublish_Table(var HTMLTable _HTMLTable) Logical
   ; Launches your internet browser with the file.
   _LaunchBrowser( strFileName String, lWait Logical ) Logical

endUses

method tablePublish() Logical
var
   astrList  Array[] String    ; Holds field names in table
   siCounter SmallInt          ; Counter variable for loops
   tcTarget  TCursor           ; Points to table being published.
   fbiParam  FileBrowserInfo   ; data for systemSaveAs().
   loRetval  Logical           ; Value returned to calling code.
   strValue  String            ; Holds filename
   strTblNm  String            ; Table to be published
   strField  String            ; Field list for publish routine.
   strHtmNm  String            ; target HTML file name
   dynParts  Dynarray[] String ; Holds parts of a filename.
   libPxPub  Library           ; Points to HTMLIB01.LIB.
   _htPxPub  _HTMLTable        ; Parameter for publish routine.
endVar

const
   ERRTITLE = "Can't Publish Table"  ; title for error dialogs
endConst

   ; initialize local vars
   loRetval = TRUE
   strValue = ""

   ; We have to open the HTMLIB01.LDL library.  If that
   ; fails, we cannot continue.
   loRetval = libPxPub.open( expertsDir() + "\\HTMLIB01" )
   If not loRetval then
      errorShow( ERRTITLE, "Reason: Unable to load publishing " +
                           "library; see details..." )
      return loRetval
   endIf

   ; Next, let user select the table to publish.

   fbiParam.Title          = "Choose Table to Publish"

   ; Note the constant that's used here.  The documented
   ; constant (browseOptPathMustExist) triggers a compiler
   ; error; use "browseOptPathMustExit" instead.
   fbiParam.Options        = browseOptPathMustExit
   fbiParam.AllowableTypes = fbTable + fbParadox + fbdBASE
   fbiParam.Alias          = ":DATA:"
   fbiParam.NewFileOnly    = False
   fbiParam.DefaultExt     = "DB"

   ; Call the SaveAs wrapper function
   loRetval = systemSaveAs( strValue, fbiParam )

   ; Make sure the table exists.
   If not isTable( strValue ) then
      msgStop( ERRTITLE, "The table you selected ( " +
               strValue + " doesn't appear to exist." )
      return FALSE
   endIf
   strTblNm = strValue

   ; Now, let the user select the outfile file name, the
   ; name for the resulting HTML file.

   ; Initialize the variable for the Save As dialog.
   strValue = "Publish1"
   fbiParam.Title          = "Publish Table To"

   ; Note the constant that's used here.  Though the documentation
   ; says the constant is called "browseOptPathMustExist," that
   ; generates a compiler error.  A quick look at the table
   ; generated by enumRTLConstants() shows this is the constant
   ; to use instead.
   fbiParam.Options        = browseOptPathMustExit
   fbiParam.AllowableTypes = fbHTML
   fbiParam.Alias          = ":PRIV:"
   fbiParam.NewFileOnly    = True
   fbiParam.DefaultExt     = ".HTM"

   ; Call the SaveAs wrapper function
   loRetval = systemSaveAs( strValue, fbiParam )
   If not loRetval then  ; user cancelled the process.
      return False
   endIf
   strHTMNm = strValue

   ; Get a list of the fields in the selected table and
   ; then create the comma-separated list required by the
   ; publishing routine.

   tcTarget.open( strTblNm )
   tcTarget.enumFieldNames( astrList )
   tcTarget.close()
   strField = ""
   for siCounter from 1 to astrList.size()
      strField = strField + astrList[ siCounter ]
      if siCounter <> astrList.size() then
          strField = strField + ","
      endIf
   endFor

   ; Next, define the input parameters for the library's
   ; publishing method.

   _htPxPub.strURI       = strHtmNm
   _htPxPub.strTableName = strTblNm
   _htPxPub.strSource    = ":DATA:"
   _htPxPub.strFLDS      = strField
   _htPxPub.strTitle     = "TBD Table"
   _htPxPub.iBGColor     = White
   _htPxPub.iTextColor   = Black
   _htPxPub.lCenter      = TRUE
   _htPxPub.strParams    = ""
;   _htPxPub.mTemplate    Memo    ; (filled) Template
   _htPxPub.lStatic      = TRUE
   _htPxPub.lMsg         = TRUE

   ; Try to publish the table.
   loRetval = libPxPub.htmlPublish_Table( _htPxPub )
   If not loRetval then
      errorShow( ERRTITLE, "Reason: The publishing routine failed; " +
                           "see details." )
   else
      If msgQuestion( "Table Sucessfully Published",
                      "Your table has been published.  Would " +
                      "you like to view the final file in " +
                      "your Internet browser?" ) = "Yes" then
         Message( "Launching browser..." )
         If not libPxPub._launchBrowser( _htPxPub.strURI,
                                           Yes ) then
            errorShow( "Can't Preview HTML", "Reason: The " +
                       "browser failed to launch; see " +
                       "details..." );
         endIf
      endIf
   endIf

   ; Make sure the library gets closed and its memory gets
   ; released.
   If libPxPub.isAssigned() then
      libPxPub.close()
   endIf

   Message( "" )
   return loRetval

endMethod
 tablePublish    @                  ]                                                                           Я .    4 : C:\Program Files\Borland\Px7Win32\PDOXHOME\DEFAULT.FT B  #Library1 POST >  џџџџ         ў 
     ў    ў                              8c  V   Б   ќb  Э  џџџџ                  К            Щ                   d                       џџџџ    Є                                                              ЙM  iN  Щ   С           	CONTAINER     ђ   С      џџџџЯ               џџџџ            d  \  b  ACTIVE     >       џџџџЯ               џџџџ            К  В      LASTMOUSECLICKED       \     џџџџЯ               џџџџ              џ      SUBJECT     с  В     џџџџЯ               џџџџ            b  Z      LASTMOUSERIGHTCLICKED     <  џ     џџџџЯ               џџџџ                        SELF       Z     џџџџЯ               џџџџ                	#LIBRARY1     Э  Є     џџџџЯ  ?             џџџџ[       A  e  D      у  =$  ?/  ,  
        f  њ*      О!  Й  @      У  А      Я                y  и  eA  9  F          м  ё?  F4  S  -                  I  9  њ"                0    ЙM          ї      1  }      ё  E        5  ARRAYSTRING  њ     8       е          	DYNSTRING  $     8       е      _	  ARRAYANYTYPE  Q     8       а          
DYNANYTYPE  |     8       а        DLODTSTATUS       Ў     8       ы         MENUMAIN   0  P  )  MENUFORM   є   P    MENURPTS   И   P  Д  
PMFILEMAIN   М  m  -  
PMFILEOPEN     m      
PMASKSMAIN   \  m      
PMRPTSMAIN   ,  m  z%  
PMTOOLMAIN   ќ  m  *.  
PMTOOLINFO   Ь  m  Q  
PMTOOLUTIL     m  a  
PMHELPMAIN   l  m    
PMFORMFORM   L  m  №  
PMEDITFORM     m  е  
PMDATAFORM   ь  m  О6  
PMRPTSFILE   м  m  <=  
PMRPTSZOOM   Ќ  m  #  
PMRPTSPAGE   |  m  Љ  	TBEDITING   ,        	TBPREVIEW           
STRRPTDEST   L  е               џџџџЭ                                                                      MENUCREATEMAIN           $     а   METHOD_SELF             џџџџы                                          ж                          METHOD_SELF    а                       џџџџЭ                                                                  Њ(  MENUSHOWMAIN           %     а   METHOD_SELF             џџџџћ                                          ф                          METHOD_SELF    а  A  ѓ               џџџџЭ                                                                      MENUPROCESSMAIN      ы  &     а   METHOD_SELFе   	STRCHOICE             џџџџ		          qN                  $
          
                  N      METHOD_SELF    а      	STRCHOICE    е  Q  	               џџџџЭ                                                                  =  MENUNOTDEFINED           '     а   METHOD_SELFе   
STRCAPTION             џџџџG
                                          E              b          METHOD_SELF    а      
STRCAPTION    е  _	  ?
               џџџџЭ                                                                  н  FORMWAIT      ы  (     а   METHOD_SELFе   STRFORMNAME"   
LIWINSTYLE             џџџџ          мN  ЈN                            Ь              Џ      METHOD_SELF    а  ТN  STRFORMNAME    е      
LIWINSTYLE    "  
  ~               џџџџЭ                                                                  '  FORMOPEN      ы  )     а   METHOD_SELFе   STRFORMNAME"   
LIWINSTYLE             џџџџ№          O  іN                          ќ  6                    METHOD_SELF    а      STRFORMNAME    е      
LIWINSTYLE    "  м  ш               џџџџЭ                                                                  й2  MENUPOPUPMAIN           *     а   METHOD_SELFе   STRMENUNAME             џџџџZ  u                          *O          X                          METHOD_SELF    а      STRMENUNAME    е  F  R               џџџџЭ                                                                  P0  OPEN                  а   METHOD_SELFю   	EVENTINFO             џџџџ                              Њ                                    METHOD_SELF    а      	EVENTINFO    ю  А                 џџџџЭ                                                                      DESKTOPSAVE           +     а   METHOD_SELF             џџџџЭ                          EO              Е                          METHOD_SELF    а  №  Х               џџџџЭ                                                                  Ђ  DESKTOPRESTORE           ,     а   METHOD_SELF             џџџџк                          _O              Х                          METHOD_SELF    а  #  в               џџџџЭ                                                                  &  TOOLBARCREATEDATA           -     а   METHOD_SELF             џџџџъ                                          и                          METHOD_SELF    а  0  т               џџџџЭ                                                                  Т:  SYSTEMGETPASSWORD      ы  .     а   METHOD_SELFе   STRPASSWORD             џџџџ§          yO                              џ      O                METHOD_SELF    а      STRPASSWORD    е  @  ѕ               џџџџЭ                                                                  E  SYSTEMSHOWINFO           /     а   METHOD_SELFе   STRINFOTYPE             џџџџA                  оO              ]      @  ­O                      METHOD_SELF    а      STRINFOTYPE    е  S  9               џџџџЭ                                                                      SYSTEMSAVESETTING      ы  0     а   METHOD_SELFе   STRNAMEа   ATVALUE             џџџџ          0P      fP  P  Ц                        јO  ­          METHOD_SELF    а      STRNAME    е      ATVALUE    а    z               џџџџЭ                                                                      SYSTEMREADSETTING      ы  1     а   METHOD_SELFе   STRNAMEа   ATVALUE             џџџџч          ЩP      џP  ­P  +              ѕ          P            METHOD_SELF    а      STRNAME    е      ATVALUE    а  и  п               џџџџЭ                                                                      FORMSELECTMASTER           2     а   METHOD_SELFЯ   UIMASTERе   STRFORMNAME             џџџџL              ]Q  ЋQ          Q  CQ      ^      )Q                METHOD_SELF    а      UIMASTER    Я      STRFORMNAME    е  =  D               џџџџЭ                                                                      REPORTHANDLER      ы  3     а   METHOD_SELFе   
STRRPTNAME   SIORIENT             џџџџК  ђQ      (R      BR        х          Ш  R              зQ      METHOD_SELF    а      
STRRPTNAME    е      SIORIENT      Ђ  В               џџџџЭ                                                                      REPORTPREVIEW      ы  4     а   METHOD_SELF   ROI             џџџџ#  \R                              wR                    6          METHOD_SELF    а      ROI                       џџџџЭ                                                                      REPORTPRINT      ы  5     а   METHOD_SELFк   RPIINPUT             џџџџS          ЌR      i                      L  R                      METHOD_SELF    а      RPIINPUT    к  y  K               џџџџЭ          с                  ЦR                                  <S  _HTMLREPORT  ј            2                       џџџџ              g                              ш  Я             STRURI      е  Г  STRTITLE      е     IBGCOLOR      "      
ITEXTCOLOR      "      MHEADER             	MTEMPLATE             LSTATIC      ы      LMSG      ы  O      STRURI STRTITLE IBGCOLOR ITEXTCOLOR MHEADER MTEMPLATE LSTATIC LMSG     
PUSHBUTTON                 а   METHOD_SELFю   	EVENTINFO             џџџџ      ЉS  пS      ФS          E!      T  (!                          METHOD_SELF    а      	EVENTINFO    ю  Љ                 џџџџЭ                                                                      REPORTQUERY      ы  6     а   METHOD_SELFе   
STRRPTNAME             џџџџh!          xT                  "          c"      ^T                  METHOD_SELF    а  T  
STRRPTNAME    е     `!               џџџџЭ                                                                      REPORTGETDESTINATION      ы  7     а   METHOD_SELFе   	STROUTPUT             џџџџЄ"          ЦT                              Ї#      ЌT      Ф#      рT  METHOD_SELF    а      	STROUTPUT    е  О!  "               џџџџЭ                                                                    MENUSHOWREPORT           8     а   METHOD_SELF9   	RPTTARGET             џџџџч#      %                                  ф$                          METHOD_SELF    а      	RPTTARGET    9  њ"  п#               џџџџЭ                                                                      MENUCREATEREPORT           9     а   METHOD_SELF             џџџџ$%                                          &                          METHOD_SELF    а  =$  %               џџџџЭ                                                                  Џ>  MENUCREATEFORM           :     а   METHOD_SELF             џџџџ6&                                          !'                          METHOD_SELF    а  z%  .&               џџџџЭ                                                                  I  MENUSHOWFORM           ;     а   METHOD_SELF             џџџџF'                                          /(                          METHOD_SELF    а  &  >'               џџџџЭ                                                                      REPORTEXPORTFILE      ы  <     а   METHOD_SELF   	ROIEXPORT             џџџџT(  p)      sU      #U          >U  YU      S)      U                  METHOD_SELF    а      	ROIEXPORT      '  L(               џџџџЭ                                                                      TOOLBARSHOWFORM           =     а   METHOD_SELF             џџџџ)                                          *                          METHOD_SELF    а  Њ(  )               џџџџЭ                                                                      TOOLBARSHOWREPORT           >     а   METHOD_SELF             џџџџЄ*                                          +                          METHOD_SELF    а  щ)  *               џџџџЭ                                                                  ў;  MENUHIDE           ?     а   METHOD_SELF             џџџџЗ+                                      ЙU  ,                          METHOD_SELF    а  њ*  Џ+               џџџџЭ                                                                  ћ7  TOOLBARHIDEREPORT           @     а   METHOD_SELF             џџџџС,                                          Џ-                          METHOD_SELF    а  ,  Й,               џџџџЭ                                                                      TOOLBARCREATEREPORT           A     а   METHOD_SELF             џџџџд-                                          Ф.                  гU      METHOD_SELF    а  -  Ь-               џџџџЭ                                                                      TOOLBARHIDEFORM           B     а   METHOD_SELF             џџџџщ.                                          е/                          METHOD_SELF    а  *.  с.               џџџџЭ                                                                  щ)  MENUPROCESSFORM      ы  C     а   METHOD_SELF   SIMENUACTION             џџџџњ/          эU      1                      ћ0                  V      METHOD_SELF    а      SIMENUACTION      ?/  ђ/               џџџџЭ                                                                      REPORTSETDESTINATION      ы  D     а   METHOD_SELFе   
STRNEWDEST             џџџџ>1          $V                              B2                      _2  METHOD_SELF    а      
STRNEWDEST    е  P0  61               џџџџЭ                                                                  +F  ACTIONHANDLERFORM      ы  E     а   METHOD_SELF   
SIACTIONIDj   TCTARGET             џџџџ2          >V                  Ю3          3              В3          METHOD_SELF    а      
SIACTIONID          TCTARGET    j  1  {2               џџџџЭ                                                                      ACTIONDATALOOKUP      ы  F     а   METHOD_SELFj   TCTARGET             џџџџ№3          пV  XV  W      љV  5  tV      ю4  W  V      }W  ЊV  .W  METHOD_SELF    а      TCTARGET    j  й2  ш3               џџџџЭ                                                                  ЯB  ACTIONEDITMEMO      ы  G     а   METHOD_SELFj   TCTARGET             џџџџ-5          УW      X          F6          )6      їW      нW          METHOD_SELF    а      TCTARGET    j  F4  %5               џџџџЭ                                                                      ACTIONDATADELETE      ы  H     а   METHOD_SELFj   TCTARGET             џџџџh6          9X  X  ЁX          7          f7                      mX  METHOD_SELF    а      TCTARGET    j  5  `6               џџџџЭ                                                                      SYSTEMGETNEXTNUM      ы  I     а   METHOD_SELFе   STRTABLEе   STRFIELD"   LINEWNUM             џџџџЅ7      ЭX  Y      8Y  fY  ќ8      9      Х8                  шX  т8  METHOD_SELF    а      STRTABLE    е      STRFIELD    е      LINEWNUM    "  О6  7               џџџџЭ                                                                      CLOSE                 а   METHOD_SELFю   	EVENTINFO             џџџџ89                              I:          ,:                          METHOD_SELF    а      	EVENTINFO    ю  ћ7  09               џџџџЭ                                                                      VERIFYCLOSEFORM      ы  J     а   METHOD_SELFе   STRTITLE             џџџџl:          Y      ;                  |Y  i;                          METHOD_SELF    а      STRTITLE    е  9  d:               џџџџЭ                                                                      MENUREFRESHEDIT           K     а   METHOD_SELFы   	LOEDITING             џџџџЈ;  У<                                      І<                          METHOD_SELF    а      	LOEDITING    ы  Т:   ;               џџџџЭ                                                                      ERRORACTIONFORM      ы  L     а   METHOD_SELF   SIERRORCODEе   STRERRORMSG             џџџџц<          >                          4>  њ=      фY                  METHOD_SELF    а  ЪY  SIERRORCODE      АY  STRERRORMSG    е  ў;  о<               џџџџЭ                                                                      SYSTEMRUNEXPERT      ы  M     а   METHOD_SELFе   STRMENUTEXT             џџџџY>          ўY          v?                  Y?              4Z  Z      METHOD_SELF    а      STRMENUTEXT    е  <=  Q>  PZ          џџџџЭ                                                                      UPDATECOURSEROSTER      ы  N     а   METHOD_SELFе   STRCOURSEIDя   
DCLASSDATE             џџџџ?  ЃZ      НZ      [              5[  Ю@  Б@      [          ы@  d[  METHOD_SELF    а  Z  STRCOURSEID    е  зZ  
DCLASSDATE    я  Џ>  ?               џџџџЭ                                                                      SYSTEMSAVEAS      ы  O     а   METHOD_SELFе   STRFILENAME3   FBIINPUT             џџџџA          ђ[          н[                  B  :B          \  У[  WB  METHOD_SELF    а      STRFILENAME    е      FBIINPUT    3  ё?  A               џџџџЭ                                                                      CROSSTABSAVE      ы  P     а   METHOD_SELFе   STRXFILE             џџџџyB          U\  o\   ]          ь\          sC              Н\  Ѓ\  C  METHOD_SELF    а      STRXFILE    е  eA  qB               џџџџЭ                                                                      SYSTEMSHOWHELP           Q     а   METHOD_SELF             џџџџВC              ,]                          D                          METHOD_SELF    а  ЯB  ЊC               џџџџЭ                                                                      DESKTOPRESYNCFORM           R     а   METHOD_SELF             џџџџТD                                          АE                          METHOD_SELF    а  D  КD               џџџџЭ                                                                      	GRAPHSAVE      ы  S     а   METHOD_SELFЯ   UITARGET             џџџџеE          I]  Ц]  р]                      ЬF              ]  }]      METHOD_SELF    а      UITARGET    Я  E  ЭE               џџџџЭ          aG                  	^                                  ^  _HTMLREPORT  xG         G   ВH                      џџџџG              чG  џG                      H      hH  OH      H      STRURI      е  3H  STRTITLE      е  H  IBGCOLOR      "      
ITEXTCOLOR      "      MHEADER             	MTEMPLATE             LSTATIC      ы      LMSG      ы  O      STRURI STRTITLE IBGCOLOR ITEXTCOLOR MHEADER MTEMPLATE LSTATIC LMSG ?J  REPORTPUBLISH      ы  T     а   METHOD_SELF   ROIINPUT             џџџџG      ь^  "_  ЧI  _                  X_  ЊI                          METHOD_SELF    а      ROIINPUT      +F  G               џџџџЭ                                                                      ACTIONDATAINSERT      ы  U     а   METHOD_SELFj   TCACTIVE             џџџџщI          Л_  е_  q`      #`      =`      чJ      W`              я_  METHOD_SELF    а      TCACTIVE    j  I  сI               џџџџЭ           a  |K                                              `      
_HTMLTABLE  K         ЋK   9M                      џџџџ&K          дL  L  kL          L  RL      L      яL  7L      #M      STRURI      е      STRTABLENAME      е      	STRSOURCE      е      STRFLDS      е  L  STRTITLE      е  
M  IBGCOLOR      "  ЛL  
ITEXTCOLOR      "      LCENTER      ы      	STRPARAMS   	   е      	MTEMPLATE   
          LSTATIC      ы      LMSG      ы  |      STRURI STRTABLENAME STRSOURCE STRFLDS STRTITLE IBGCOLOR ITEXTCOLOR LCENTER STRPARAMS MTEMPLATE LSTATIC LMSG     TABLEPUBLISH      ы  V     а   METHOD_SELF             џџџџ&K          a  Жb  аb      9b  Зa          LN  бa          mb  ma      METHOD_SELF    а  ?J  K      LORETVAL  Ќџџџы      STRFORMNAME  џџџе      FMTARGET  Иўџџч      FMCALLER  8џџџч      LORETVAL  Ќўџџы      FMTARGET  8џџџч      LORETVAL  ,џџџы      	STRCHOICE  џџџе      TBTARGET  џџџ      TBTARGET  џџџ      LORETVAL  Ќџџџы      FMDIALOG  ,џџџч      
DATSYSINFO  џџџ ЩO     8       а          STRTITLE  dџџџе      
TCSYSPREFS  pџџџj  JP  
ATSETVALUE  0џџџа      LORETVAL  $џџџы      
STRVALTYPE  џџџе       ERRTITLE е  Can't Save Setting         
TCSYSPREFS  pџџџj  уP  
ATSETVALUE  0џџџа      LORETVAL  $џџџы      
STRVALTYPE  џџџе       ERRTITLE е  Can't Get Setting     wQ  FMSELECT  8џџџч      FMACTIVE  Иўџџч  {  LORESULT  Ќўџџы      TCMASTER  dўџџj      UISELECT   ўџџЯ       ERRTITLE е  Can't Select Record         	ROIOUTPUT  џџџ      	RPIOUTPUT  xџџџк      	RPTOUTPUT  јўџџ9      LORETVAL  ьўџџы      LOANSWER  рўџџы      	RPTSCREEN  8џџџ9      FMACTIVE  Иўџџч      	RPTOUTPUT  8џџџ9      LORETVAL  ,џџџы      HTMLPUBLISH_REPORT       ы  )S     а   LIB_SELF9   RSOURCE ј   
HTMLREPORTHTMLPublish_Report     _LAUNCHBROWSER       ы  S     а   LIB_SELFе   STRFILENAMEы   LWAIT_LaunchBrowser њS  	RPTWEBPUB  ,џџџ9  0T  	_HRWEBPUB  џџџ ј      	LIBWEBPUB  xўџџ      	STRSAVEAS  \ўџџе      	FBISAVEAS  <ўџџ3       ERRTITLE е  HTML Publishing Error         FMDIALOG  8џџџч      LORETVAL  ,џџџы      STRQFORM  џџџе      FMDIALOG  8џџџч      LORETVAL  ,џџџы       FILENAME е  :FORMS:RPTDESTS         	RPTEXPORT  8џџџ9  U  	STRTARGET  џџџе      	FBIEXPORT  ќўџџ3      FMACTIVE  |ўџџч      LORETVAL  pўџџы       ERRTITLE е  Can't Export Report         MENUNULL  |џџџP      GRBITMAP  ЄџџџЛ      LORETVAL  Ќџџџы      STRFORMNAME  џџџе      LORETVAL  Ќџџџы      LORETVAL  Ќџџџы  ХV  
ATNEWVALUE  8џџџа      
ATOLDVALUE  xџџџа      FMDIALOG  Иўџџч      	LOBUTTONS  Ќўџџы      LORESULT  ўџџы      LORETVAL   ўџџы      STRFIELD  ўџџе      	STRLOOKUP  $ўџџе      STRTABLE  @ўџџе  bW  STRTITLE  \ўџџе      	STROBJECT  xўџџе      UITARGET  Є§џџЯ  HW   ERRTITLE е  Can't Lookup Values         LORETVAL  Ќџџџы      UITARGET  HџџџЯ      FMDIALOG  Шўџџч       ERRTITLE е  Can't Edit Memo         LORETVAL  Ќџџџы      UIACTIVE  HџџџЯ      STRTABLE  ,џџџе  SX  TCDETAIL  фўџџj       ERRTITLE е  Can't Delete Record         	TCNEXTNUM  pџџџj      	LINEXTNUM  dџџџ"  Y  LORETVAL  Xџџџы      	SICOUNTER  Pџџџ       ERRTITLE е  Can't Get Next Number          NRETRIES   
     LOVERIFY  Ќџџџы      LORETVAL   џџџы      STRCONST  џџџе      LORETVAL  џџџы      STRERROR  tџџџе      LORETVAL  Ќџџџы      
STREXPTYPE  tџџџе      
STREXPNAME  џџџе          FMDIALOG  8џџџч  ~[  STRINPUT  џџџе      QRYNAMES  Єўџџ      TCANSWER  \ўџџj  oZ  LORETVAL  Pўџџы      DLIAVAIL  ўџџ ёZ     8       "      UZ  DLIPICKS  р§џџ  [     8       "          ASTRXFER  Ј§џџ O[     8       е          STRINDEX  §џџе      	SICOUNTER  §џџ"       ERRTITLE е  Can't Edit Roster         STRVALUE  џџџе  ;\  FBI  |џџџ3      LORETVAL  pџџџы      DYNPARTS  8џџџ &\     8       е          LOREPEAT  ,џџџы  \  FBIXFILE  џџџ3      DTEXPORT  hџџџШ      LORETVAL  \џџџы      STRVALUE  @џџџе      DYNPARTS  џџџ з\     8       е          FS  єўџџ       ERRTITLE е  Can't Save Crosstab         STRHELPFILE  џџџе  c]  FBIXFILE  џџџ3      LORETVAL  џџџы      STRVALUE  pџџџе  щF  DYNPARTS  8џџџ Б]     8       е          GROUTPUT  $џџџЛ       ERRTITLE е  Can't Save Graph         HTMLPUBLISH_REPORT       ы  l^     а   LIB_SELF9   RSOURCE xG   
HTMLREPORTHTMLPublish_Report     _LAUNCHBROWSER       ы  н^     а   LIB_SELFе   STRFILENAMEы   LWAIT_LaunchBrowser =_  	RPTWEBPUB  8џџџ9  _  	_HRWEBPUB  џџџ xG  s_  	LIBWEBPUB  ўџџ      	STRSAVEAS  hўџџе      	FBISAVEAS  Hўџџ3      LORETVAL  <ўџџы       ERRTITLE е  HTML Publishing Error         LORETVAL  Ќџџџы      LORESULT   џџџы  	`  LIKEYVAL  џџџ"      STRTABLE  xџџџе      STRFIELD  \џџџе      FMACTIVE  мўџџч  K  FMDIALOG  \ўџџч       ERRTITLE е  Can't Insert Record         HTMLPUBLISH_TABLE       ы  ю`     а   LIB_SELF K   	HTMLTABLEHTMLPublish_Table     _LAUNCHBROWSER       ы  ^a     а   LIB_SELFе   STRFILENAMEы   LWAIT_LaunchBrowser b  ASTRLIST  џџџ a     8       е      ыa  	SICOUNTER  xџџџ      TCTARGET  0џџџj      FBIPARAM  џџџ3      LORETVAL  џџџы      STRVALUE  шўџџе  b  STRTBLNM  Ьўџџе  Sb  STRFIELD  Аўџџе      STRHTMNM  ўџџе      DYNPARTS  \ўџџ b     8       е      b  LIBPXPUB  Ш§џџ      _HTPXPUB  Ј§џџ K       ERRTITLE е  Can't Publish Table          ѕ    L  w    ѓ  G  sG  K  K  S  Y^  м`          r  џ                                                                                                                   К  r    џ     Qн  :G      
   и  Й  8c                                                                                                                                                                                     ZЙ  vЙ  r 6             ф  ф  ^                      /p  /p  x                     v5  v5                    $        B                  %  N  N  @                   &      щ                  '  w  w  И                   (  /  /  Щ                  )  ј  ј  7                  *  /  /  Е                  +  B  B  u                  ,  З  З  !                  -  и  и  q                  .  I  I                    /  Я  Я  Ю                  0      i                  1  "  "                    2  &  &  :                  3  H)  H)  
                  4  `3  `3                    5  §4  §4  y                   6  }9  }9  Ќ                  7  )<  )<  Е                  8  о=  о=                     9  b>  b>  H                  :  Њ@  Њ@  &                  ;  аC  аC  ~                   <  ND  ND                    =  оG  оG  Ц                   >  ЄH  ЄH                     ?  -I  -I  b                   @  I  I                     A  ,J  ,J                    B  BM  BM                     C  пM  пM  ш                  D  ЧO  ЧO  Ц                  E  Q  Q                    F  T  T  
                  G  &_  &_  ў                  H  $b  $b  
                  I  &l  &l  	                  J  Їs  Їs  й                  K  u  u                     L  v  v                    M  {  {                    N  ­~  ­~  '                  O  д  д  в                  P  І  І  м                  Q      Ѓ                   R  %  %  B                   S  g  g  С                  T  (  (  q                  U  Є  Є                    V  #А  #А  7	                        Qн  щ        шђџџџ                    h                          М       и           є    М          М    М   ,    М   H    М    М   d    0      М    \       \   И    \    \   д    \   №    0      \    ,   (    ,   D    ,   `    ,    ,   |    ,       ,   Д    ,    ,   а    ,   ь    ,       0   $   ,    Ь   @    Ь   \    Ь   x    Ь          А       Ь       ш           ќ        ќ   <   Ь    ќ   X       ќ    ќ   t    0      ќ    l   Ќ   Ш   а    l    l   и   Ш   є    0   ќ   l         	             шАќџџ                  0          	             шpќџџ           	 n  Ќџџџ 	  *t џџџ $	  *    
 h  %џџџP   џџџ @	  * Б     
   %џџџP   џџџ \	  *      
    %џџџP   џџџ x	  * [     
 М  %џџџP   џџџ 	  * 0     
 и  %џџџP   џџџ А	  *      
 є  %џџџP   џџџ Ь	  * к     
 ,  %џџџP   xџџџ ш	   xџџџЈ     
 H  %џџџP   xџџџ №	   xџџџv     
 d  %џџџP   xџџџ ј	   xџџџD     
   %џџџP   џџџ  
  *      
 И  %џџџP   џџџ 
  * ю     
 №  %џџџP   џџџ 8
  * У     
 д  %џџџP   џџџ T
  *      
 (  %џџџP+   xџџџ, p
  &\џџџ  
  &TџџџЌ $3U     
 D  %џџџP+   xџџџ, 
  &\џџџ  А
  &TџџџЌ $3     
 `  %џџџP+   xџџџ, И
  &\џџџ  
  &TџџџЌ $3Я     
 |  %џџџP+   xџџџ, д
  &\џџџ  
  &TџџџЌ $3     
   %џџџP+   xџџџ, №
  &\џџџ  
  &TџџџЌ $3I     
 Д  %џџџP+   xџџџ,   &\џџџ  
  &TџџџЌ $3     
 а  %џџџP+   xџџџ, (  &\џџџ  
  &TџџџЌ $3У     
 ь  %џџџP+   xџџџ, D  &\џџџ  
  &TџџџЌ $3     
   %џџџP+   xџџџ, `  &\џџџ  
  &TџџџЌ $3=     
 @  %џџџP   , |  &\џџџ $/     
 \  %џџџP   ,   &\џџџ $/н     
 x  %џџџP   , Д  &\џџџ $/­     
   %џџџP   , а  &\џџџ $/}     
 А  %џџџP   xџџџ, ь  &\џџџ $MG     
 Ь  %џџџP   xџџџ,   &\џџџ $M     
 ш  %џџџP   xџџџ,$Vш      
   %џџџP   xџџџ, $  &\џџџ $MВ      
    %џџџP   џџџ @  *       
 t  %џџџP   џџџ \  * \      
 Ќ  %џџџP   ,$Q9      
 и  %џџџP   џџџ x  *    Ќџџџ   *t џџџ $	  %џџџ @   xџџџ,    џџџ%\џџџ(&,џџџ  М   Ш  %Hџџџ4& џџџЈ $(Ќџџџ   (t         	 Z    џџџ    ,џџџ    Hџџџ    \џџџ    xџџџ    Ќџџџ    џџџ    џџџ    Tџџџ              шєџџ    Ь        j    д   №  xџџџxџџџ   
 $	  %lџџџP      *t 
      
*t %,џџџ  (  %ьўџџ  NA     -   ьўџџ    lџџџ    ,џџџ    xџџџ              шЯѓџџ    М      	 N  Ќўџџ 	  *t  ўџџ8џџџ W ўџџ8џџџ > ўџџИўџџ   
   
  ўџџ&ўџџ№L    D   №  xўџџ   
 xўџџ%\ўџџ( `  %@ўџџ( NAЌўџџ   *t [   Иўџџ <Иўџџ @Ќўџџ ўџџИўџџ  ўџџ*t ќ§    ўџџИўџџ  ўџџ      ќ§8џџџ @ ўџџ8џџџ |   C ўџџ8џџџ kЌўџџ   (t         	 Z   Ќўџџ     ўџџ    @ўџџ    Иўџџ    \ўџџ    xўџџ    8џџџ    ўџџ     ўџџ              шђџџ           Х   ,џџџ 	  *t  џџџ8џџџ   
   
  џџџ&џџџ№W   Дўџџ    №  јўџџ   
 јўџџ%мўџџ(    %Рўџџ( %AДўџџ,џџџ   *t    8џџџ <8џџџ @,џџџ   (t          Q   Дўџџ    Рўџџ    ,џџџ    мўџџ    јўџџ    8џџџ    џџџ     џџџ              шЯ№џџ    P        g  џџџ $	  *    
 М  %џџџP"   џџџtџџџ    tџџџ* у      
 и  %џџџP"   џџџtџџџ \   tџџџ* Љ      
 є  %џџџP"   џџџtџџџ ,   tџџџ* o      
   %џџџP"   џџџtџџџ ќ   tџџџ* 5      
 ,  %џџџP   џџџtџџџ l   tџџџ* џџџ $	  %џџџ    hџџџ,џџџ&tџџџ $&     -   hџџџ    џџџ    tџџџ    џџџ              шяџџ                Ќџџџ  	   A        Ќџџџ                
  + шМюџџ    8        0       H  №џџџ  жAџџџ*t      H  № 	  %џџџX   џџџ  еAџџџџџџџџџ d    Lџџџ       №џџџџџџ Lџџџ*t        № 	  %џџџX   џџџџџџ Lџџџџџџџџџ     Lџџџ     И  №џџџџџџ Lџџџ*t      И  № 	  %џџџX   џџџџџџ Lџџџџџџџџџ д    Lџџџ     №  №џџџџџџ Lџџџ*t      №  № 	  %џџџX   џџџџџџ Lџџџџџџџџџ     Lџџџ     (  №џџџџџџ Lџџџ*t      (  № 	  %џџџX   џџџџџџ Lџџџџџџџџџ D    Lџџџ     `  №џџџџџџ Lџџџ*t      `  № 	  %џџџX   џџџџџџ Lџџџџџџџџџ |    Lџџџ       №џџџџџџ Lџџџ*t        № 	  %џџџX   џџџџџџ Lџџџџџџџџџ Lџџџ     $   џџџ    џџџ    џџџL              шGыџџ    8        м       H  № 	  %џџџX   џџџ  иAџџџ       № 	  %џџџX/   џџџџџџ d    Lџџџџџџџџџ Lџџџ     (  № 	  %џџџX/   џџџџџџ     Lџџџџџџџџџ Lџџџ     №  № 	  %џџџX/   џџџџџџ д    Lџџџџџџџџџ Lџџџ     `  № 	  %џџџX/   џџџџџџ D    Lџџџџџџџџџ Lџџџ       № 	  %џџџX/   џџџџџџ |    Lџџџџџџџџџ Lџџџџџџџџџ Lџџџ     $   џџџ    џџџ    џџџL              ш&щџџ    $        ,  Ќџџџ ,   Д    LЌџџџ& џџџ№њ  џџџ ,   Д   LџџџЌџџџ ,   а   
   ш	   и   р   LЌџџџЌџџџ ,   
   
   ќ         LЌџџџЌџџџ ,   
   
   (   0   8   LЌџџџЌџџџ ,   
   
   T   \   d   LЌџџџЌџџџ ,   А
   
            LЌџџџЌџџџ ,   Ќ   
   Д   М   Ф   LЌџџџЌџџџ ,   Ќ   
   р   ш   №   LЌџџџЌџџџ ,      
         $   LЌџџџЌџџџ ,      
   @   H   P   LЌџџџЌџџџ ,      
   l   t   |   LЌџџџЌџџџ ,      
          Ј   LЌџџџЌџџџ ,      
   Ф   Ь   д   LЌџџџЌџџџ ,      
   №   ј       LЌџџџЌџџџ ,      
   $   ,   4   LЌџџџЌџџџ ,      
   P   X   `   LЌџџџЌџџџ ,      
   |         LЌџџџ     $   џџџ     џџџ    Ќџџџ              шЕхџџ    h         Ќџџџ 	  *t  џџџ,џџџ Ј    џџџ&џџџ№/    Ф   р   ќ  %јўџџ( NAЌџџџ   *t q   ,џџџ   %ўџџPX      
)8ЌџџџTўџџ,џџџ Tўџџ*t Ќџџџ)      
,џџџ   %ўџџPX   %TўџџD*t Pў    џџџ,џџџ  џџџ      PўЌџџџ   (t          H   Tўџџ    ,џџџ    џџџ    јўџџ     џџџ    Ќџџџ    ўџџ              ш/фџџ    Ь        W  Xџџџ 4   2AXџџџ   
 Д  %LџџџP     A  ы      
   %LџџџP(   @џџџџџџ A@џџџdџџџ @  * Ћ      
 |  %LџџџP   џџџ :Adџџџ \  * v      
 а  %LџџџP   џџџ >Adџџџ x  * A      A    А     
%$џџџ( Ь  %џџџ( ш  %ьўџџ( NA$   Xџџџ    2AXџџџџџџdџџџ       V   Xџџџ    ьўџџ    џџџ:   џџџ    dџџџ    $џџџ    @џџџ    Lџџџ                  шaтџџ    Ь       Џ  $џџџ   *t ќўџџpџџџ    ќўџџ&№ўџџ№,   Шўџџ ,   №   H  %дўџџ( %AШўџџѓ  ќўџџpџџџ   
   ! &№ўџџ№<    ,   d     %дўџџ(   
%Ќўџџ(   %ўџџ( NA  џџџpџџџ И  %,ўџџT* (ўХ  џџџ д  %ќўџџP#   0џџџдўџџ   
 	дўџџ*t   џџџ №  %ќўџџP#   0џџџ ўџџ   
  ўџџ*t L  џџџ   %ќўџџP#   0џџџўџџ   
  ўџџ*t   џџџ (  %ќўџџP#   0џџџ№ўџџ   
  №ўџџ*t и   џџџ D  %ќўџџP#   0џџџўџџ   
 ўџџ*t    џџџ `  %ќўџџP#   0џџџј§џџ   
 	ј§џџ*t 	d   џџџ |  %ќўџџP#   0џџџь§џџ   
  
ь§џџ*t 
*    ,   №     %дўџџ( NA$џџџ   *t K    ,   №   Д  %дўџџ(   
%Ќўџџ( а  %ўџџ( NA$џџџ   *t    (ўќўџџpџџџ ќўџџpџџџ ь  %,ўџџT0џџџ*t ќўџџpџџџ _ќўџџќўџџpџџџ ќўџџќўџџpџџџ ~ќўџџ   №ўџџpџџџ №ўџџ   
0џџџ*t $џџџ   (t             0џџџ    №ўџџ    ўџџ    ќўџџ    ь§џџ
    Ќўџџ    ј§џџ	    pџџџ    ўџџ    џџџ    Шўџџ    ўџџ    дўџџ     ўџџ    $џџџ    ,ўџџ              шјнџџ    Ш       N  $џџџ   *t ќўџџpџџџ    ќўџџ&№ўџџ№,   Шўџџ    №   H  %дўџџ( %AШўџџ  ќўџџpџџџ   
   ! &№ўџџ№<       d     %дўџџ(   
%Ќўџџ(   %ўџџ( NA.  $џџџ 	  *t џџџpџџџ И  %,ўџџT* џџџ д  %ќўџџP    0џџџpџџџ ь  %,ўџџT*t Ю  џџџ №  %ќўџџP/   0џџџ$ўџџpџџџ ь  %,ўџџT $ўџџ*t   џџџ   %ќўџџP/   0џџџўџџpџџџ ь  %,ўџџT  ўџџ*t B  џџџ (  %ќўџџP/   0џџџ№ўџџpџџџ ь  %,ўџџT  №ўџџ*t ќ   џџџ D  %ќўџџP/   0џџџўџџpџџџ ь  %,ўџџT ўџџ*t Ж   џџџ `  %ќўџџP/   0џџџќ§џџpџџџ ь  %,ўџџT 	ќ§џџ*t 	p   џџџ |  %ќўџџP/   0џџџ№§џџpџџџ ь  %,ўџџT  
№§џџ*t 
*       №     %дўџџ( NA$џџџ   *t ќўџџpџџџ ~ќўџџ   №ўџџpџџџ №ўџџ   
0џџџ*t $џџџ   (t             №§џџ
    ќ§џџ	    ўџџ    ўџџ    $ўџџ    0џџџ    ўџџ    Ќўџџ    Шўџџ    дўџџ    pџџџ    №ўџџ    ќўџџ    џџџ    $џџџ    ,ўџџ              ш№йџџ             є§џџИўџџ Wє§џџ№§    є§џџdўџџ   
 [є§џџO    $   №     
#   %А§џџD%p§џџ  @  %0§џџ  \  %№ќџџ  NA     №§є§џџ8џџџ   
 М   Ш  %фќџџ4 є§џџ&иќџџ№1    $   x  Мќџџ   
 Мќџџ% ќџџ( NA  є§џџ ўџџ8џџџ   
#   %А§џџD kє§џџ&иќџџ№s    $      А  %Мќџџ(   
#   %p§џџD%0§џџ  Ь  %№ќџџ  NAє§џџdўџџ є§џџє§џџ8џџџ є§џџ   є§џџ ўџџdўџџ є§џџ8џџџ <8џџџ @ЌўџџА§џџ8џџџ А§џџ*t Ќўџџ5   є§џџdўџџ ўџџ [є§џџє§џџ   
dўџџ є§џџє§џџdўџџ ~є§џџ   иќџџdўџџ иќџџќ   є§џџ8џџџ є§џџ      ќ         ўџџ    є§џџ    8џџџ     ќџџ    Мќџџ    dўџџ    иќџџ    фќџџ    №ќџџ    Ќўџџ    0§џџ    Иўџџ    p§џџ    А§џџ              шЖжџџ              ьўџџ 	  *t рўџџ 	  *t Иўџџ, ш  &Фўџџ $DИўџџ    $	   AИўџџИўџџ     $	   AИўџџИўџџ <   $	   AИўџџИўџџ X   $	   AИўџџИўџџ   
 t  %Фўџџ( '=Иўџџ&Ќўџџ№ўџџ   
   %ўџџ( '=ўџџ&xўџџ№%lўџџR    Ќ   Ш     
%Pўџџ( ф  %4ўџџ(    %ўџџ(   %ќ§џџ( NAьўџџ   *t ьўџџ     
 D  %ИўџџP'   ьўџџЌўџџ,   
&Фўџџ $6*t E     
 д
  %ИўџџP'   ьўџџЌўџџ,   
&Фўџџ $6*t      
   %ИўџџP'   ьўџџЌўџџ,   
&Фўџџ $6*t Ч     
 №
  %ИўџџP'   ьўџџЌўџџ,   
&Фўџџ $6*t      
 И
  %ИўџџP'   ьўџџЌўџџ,   
&Фўџџ $6*t I     
 `  %ИўџџP'   ьўџџЌўџџ,   
&Фўџџ $6*t 
     
 
  %ИўџџP'   ьўџџЌўџџ,   
&Фўџџ $6*t Ы      
 p
  %ИўџџP'   ьўџџЌўџџ,   
&Фўџџ $6*t       
 (  %ИўџџP'   ьўџџЌўџџ,   
&Фўџџ $6*t M      
 8  %ИўџџP'   ьўџџЌўџџ,   
&Фўџџ $6*t    рўџџ   *t ьўџџ0    L   $	  %ИўџџP   ьўџџЌўџџ, L  $7*t ьўџџЬ   L   ш  %ИўџџP   џџџ T  И   
* рўџџ   џџџ \  И d  * џџџ   И М     %№§џџ4   %ф§џџ4    %и§џџ4*Ј ьўџџИўџџ,џџџ$4*t     L   Ќ  %ИўџџPw   xџџџ 
  И   
* xџџџ Ш  И   
*Ќ рўџџ   xџџџ А
  И d  * ьўџџИўџџ,xџџџ&И§џџР $5*t    L   а  %ИўџџP   џџџ T  И   
* рўџџ   џџџ \  И d  * џџџ   И М   ь  %№§џџ4*Ј ьўџџИўџџ,џџџ&§џџР $T*t ј    L   ј  %ИўџџP   џџџ T  И   
* рўџџ   џџџ \  И d  * џџџ   И М   ь  %№§џџ4*Ј ьўџџИўџџ,џџџ&§џџР $<*t ^       0   L  %Фўџџ( L  %ўџџ( h  %Pўџџ(   %4ўџџ(    %ўџџ( NAьўџџ   *t ьўџџ   (t          ъ  Фўџџ    Ќўџџ    џџџЏ   ќ§џџ    рўџџ    ўџџ    ьўџџ    §џџз   4ўџџ    јўџџ    И§џџ  Pўџџ    xџџџМ  и§џџ    Иўџџ    ф§џџ    lўџџ    №§џџ    xўџџ    ўџџ    ўџџ             
   H W Y X NAME MASTERTABLE QUERYSTRING SQLSTRING RESTARTOPTIONS WINSTYLE 
   H W Y X NAME MASTERTABLE QUERYSTRING SQLSTRING RESTARTOPTIONS WINSTYLE    NAME MASTERTABLE QUERYSTRING SQLSTRING RESTARTOPTIONS PRINTBACKWARDS MAKECOPIES PANELOPTIONS NCOPIES STARTPAGE ENDPAGE STARTPAGENUM PAGEINCREMENT XOFFSET YOFFSET ORIENT    NAME MASTERTABLE QUERYSTRING SQLSTRING RESTARTOPTIONS PRINTBACKWARDS MAKECOPIES PANELOPTIONS NCOPIES STARTPAGE ENDPAGE STARTPAGENUM PAGEINCREMENT XOFFSET YOFFSET ORIENT  шЬџџ           4  ЌўџџИўџџ WЌўџџИўџџ >Ќўџџ8џџџ   
 Ќўџџ& ўџџ№,   xўџџ М   и      %ўџџ( %Axўџџc   ,8џџџ$8,$>8џџџи      )88ўџџ8џџџ 8ўџџ4ў   Ќўџџ8џџџ Ќўџџ      4ў,$?,$@Иўџџ <Иўџџ @ЌўџџИўџџ є   CЌўџџ,$% 	     (t          H   Ќўџџ    8ўџџ    xўџџ    ўџџ    Иўџџ    8џџџ     ўџџ              шЫџџ            4    џџџ8џџџ   
  џџџ   (t          $    џџџ    ,џџџ    8џџџ              шЪџџ    `       M  Ќџџџ ј§џџxўџџ ўџџ  A ўџџ ќ  %ўџџ( Dј§џџ&ь§џџ№,   Ф§џџ    4   P  %а§џџ( %AФ§џџЮ  \ўџџ l  * џџџ 
  И\ўџџ* џџџ А
  И   * џџџ Ќ  И Є  *Ј џџџ   И А  *Ј џџџ   И 	  *t џџџ М  И 	  *t ј§џџxўџџ,џџџџџџ+HTMLPUBLISH_REPORT &ь§џџ№,   Ф§џџ    Ф   р  % ўџџ( %AФ§џџЬ   а§џџ ќ      4  % ўџџ( P  %ўџџ( OAа§џџ l  %ј§џџP   Ф§џџxўџџџџџ 
  И&Ј§џџ  	  &ь§џџt +_LAUNCHBROWSER &§џџ№4   X§џџ    Ш   Є  %§џџ( Р  %d§џџ( %AX§џџ       X§џџ    d§џџ     ўџџ    §џџ    <ўџџy   \ўџџ    §џџ    Ј§џџ    Ф§џџ    а§џџ    xўџџD    џџџз   ,џџџ    ь§џџ    ј§џџ    ўџџ    Ќџџџ                H W Y X WINDOWSTYLE TITLE OPTIONS ALLOWABLETYPES SELECTEDTYPE FILEFILTERS CUSTOMFILTER ALIAS PATH DRIVE DEFAULTEXT PATHONLY NEWFILEONLY    STRURI STRTITLE IBGCOLOR ITEXTCOLOR MHEADER MTEMPLATE LSTATIC LMSG    
  + шЦџџ           :  ,џџџ 	  *t    
 D  %џџџP   џџџ м  *      
 д
  %џџџP   џџџ ј  * r     
   %џџџP   џџџ   * G     
 №
  %џџџP   џџџ 0  *      
 И
  %џџџP   џџџ L  * ё      
 `  %џџџP   џџџ h  * Ц      
 
  %џџџP   џџџ   *       
 (  %џџџP   џџџ    * p      
 p
  %џџџP   џџџ М  * E   ,џџџ   *t  Ќ   и   є  %шўџџ(   
%Ьўџџ(   %Аўџџ( NA,џџџ;   ,џџџџџџ,    џџџ%шўџџ(&Ьўџџ  М  &ЄўџџЈ $(*t ,џџџ   (t          Q   Єўџџ    Аўџџ    џџџ    Ьўџџ    шўџџ    џџџ    ,џџџ    8џџџ              шеУџџ    h       L   џџџ8џџџ ,    џџџ&џџџ№:   ,џџџ   *t  џџџ H   d     %јўџџ( %A џџџЃ      
 $	  % џџџ !   8џџџ   %ўџџPX      
)8,џџџTўџџ8џџџ Tўџџ*t ,џџџC      
8џџџ   %ўџџPX   %TўџџD*t  џџџ,   
&јўџџ $DPў    џџџ8џџџ  џџџ      Pў,џџџ   (t          H   Tўџџ    ,џџџ    џџџ    јўџџ     џџџ    8џџџ    ўџџ              ш Тџџ            H   Аџџџ И    Аџџџ а  %Єџџџh   ,$9   
 И    !        Єџџџ    Аџџџ              шСџџ                 м   ,   Ш   ш	    м   И   Ш   д    м   м   Ш   ј    м    м       Ш   №	    м    м      Ш   ј	    И       м    Ќ   8   Ш   T    Ќ   \   Ш   x    Ќ      Ш       Ќ   Є   Ш   Р    Ќ   Ш   Ш   ф    Ќ   ь   Ш       Ќ      Ш   ,    Ќ   4   Ш   P    И    X   Ќ    |   t   Ш       |      Ш   Д    |   М   Ш   и    |   р   Ш   ќ    |       Ш         И    (    |         	             шTПџџ            ъ   L   D    Ш       L    L      Ш   ј	    L    L   ,   Ш   ш	    L   `    Ш   №	    є    |    L           Ш   Д            М    Ш   ќ       и    Ш   (       є    Ш   T    є    !       ь   ,!   Ш   $    ь   H!   Ш   d!    ь   l!   Ш   !    ь   !   Ш   Ќ!    ь    ь   Д!   Ш   P    ь   а!   Ш   |    ь    ь   ь!   Ш       ь   "   Ш   @    ь   $"   Ш   l    ь   @"   Ш       ь   \"   Ш   Ф    ь   x"   Ш   №    ь    ь   "   Ш   Д    ь   А"   Ш   р    є    Ь"   ь   Аџџџ l   Аџџџ а  %Єџџџh   ,$$ є    ќ   l           Єџџџ    Аџџџ              ш.Мџџ            B   Аџџџ є    Аџџџ а  %Єџџџh   ,$: є             Єџџџ    Аџџџ              шАЛџџ    Ќ      
 в  џџџ ш"  * ќўџџ \  И #  * ќўџџ   И  #  *Ј ќўџџ М  И ,#  *Ј ќўџџ 8#  И @#  * ќўџџ \#  И 	  *t ќўџџ d#  И l#  * pўџџDўџџ,џџџќўџџ&PўџџР $O*t pўџџы   Dўџџ8џџџ   
 Dўџџ&8ўџџ№,   ўџџ #   и      %ўџџ( %Aўџџ   8џџџи      )8Dўџџ8џџџџџџ Dўџџ&8ўџџ№5   ўџџ #   Є#   Р#  %ўџџ( %Aўџџpўџџ   *t ў   Dўџџ8џџџ Dўџџ      ў 	     (t         
   џџџ    8џџџ    ўџџ    ўџџ    pўџџ    8ўџџ    Dўџџ    Pўџџ   |ўџџ    ќўџџЊ               H W Y X WINDOWSTYLE TITLE OPTIONS ALLOWABLETYPES SELECTEDTYPE FILEFILTERS CUSTOMFILTER ALIAS PATH DRIVE DEFAULTEXT PATHONLY NEWFILEONLY    H W Y X WINDOWSTYLE TITLE OPTIONS ALLOWABLETYPES SELECTEDTYPE FILEFILTERS CUSTOMFILTER ALIAS PATH DRIVE DEFAULTEXT PATHONLY NEWFILEONLY  ш Иџџ    $           Ќџџџ ,   Д    LЌџџџ& џџџ№   ,$-Ќџџџ ,   LЌџџџ& џџџ№   џџџ ,   Lџџџ, 	  &Ќџџџt $K     $   џџџ     џџџ    Ќџџџ              шZЗџџ            M   Ќџџџ    м#    LЌџџџ& џџџ№   ,$AЌџџџ    LЌџџџ         џџџ    Ќџџџ              шбЖџџ    <        /   |џџџ |џџџ $	   |џџџ          |џџџ              шoЖџџ    $        X   Ќџџџ    м#    LЌџџџ.    џџџ    L џџџ   џџџ    Lџџџ     $   џџџ     џџџ    Ќџџџ              швЕџџ    8        Ш  џџџ    м#    Lџџџ&џџџ№  џџџ    м#   Lџџџџџџ    а   
   ш	   и   р   LџџџџџџЄџџџ ј#    џџџџџџ    а   
   д  Єџџџ $   LџџџџџџЄџџџ 0$    џџџџџџ    а   
   ј  Єџџџ L$   LџџџџџџЄџџџ h$    џџџџџџ    А
   
     Єџџџ $   LџџџџџџЄџџџ  $    џџџџџџ    А
   
     Єџџџ М$   LџџџџџџЄџџџ и$    џџџџџџ    А
   
   P  Єџџџ є$   Lџџџџџџ       
      %   %   Lџџџџџџ       
   ќ   4%   <%   Lџџџџџџ       
   и   X%   `%   Lџџџџџџ       
   Д   |%   %   Lџџџџџџ       
         %   Ј%   Lџџџ     -   џџџ    џџџ    џџџ    Єџџџ              шМВџџ    $        X   Ќџџџ ,   Д    LЌџџџ.    џџџ ,   L џџџ   џџџ ,   Lџџџ     $   џџџ     џџџ    Ќџџџ              шВџџ            v  Ќџџџ 	  *t џџџ $	  *    
 Ф%  %џџџh
      AТ      
 Ь%  %џџџh
      A       
 д%  %џџџh
      A~      
 м%  %џџџh
      A\      
 а  %џџџh   ,$Q9      
 є  %џџџh   џџџ x  *    Ќџџџ   *t џџџ $	  %џџџ @   (џџџ,    џџџ%hџџџ(&@џџџ  М   Ш  %\џџџ4&4џџџЈ $(Ќџџџ   (t          Q   (џџџ    4џџџ    @џџџ    \џџџ    hџџџ    џџџ    Ќџџџ    џџџ              ш7Аџџ    $         Ќџџџ   
 ш  % џџџP   
 Ќ  %џџџP%џџџ$   
 а  %|џџџP%pџџџ$   
 ј  %dџџџP%Xџџџ$*t Ќџџџ    L     
* k    ф%   №     
%<џџџ(  &  % џџџ( &  %џџџ( 8&  %шўџџ( L  %Ьўџџ( T&  %Аўџџ( p&  %ўџџ( NAЌџџџ   (t             ўџџ    pџџџ    Аўџџ    |џџџ    Ьўџџ    шўџџ    џџџ    џџџ    џџџ     џџџ     џџџ    <џџџ    Ќџџџ    Xџџџ    dџџџ              шqЎџџ           	   Ќџџџ 	  *t    
 &  % џџџh
      A;     
 &  % џџџh
      A     
 &  % џџџh&   , 	  &џџџt $KЌџџџ   *t л     
 Є&  % џџџh&   ,   &џџџt $KЌџџџ   *t      
 Ќ&  % џџџhв   Ќџџџџџџ,   
$H*t Ќџџџ& џџџ№Ё   @џџџ Д&   а&   ь&  %xџџџ( '  %\џџџ( OA@џџџ l  %џџџPN   4џџџ   
 4џџџ&(џџџ№   џџџ   
 џџџ џџџ   
  џџџЌџџџ 	  *t Г      
 $'  % џџџh   Ќџџџџџџ,   
$U*t |      
 ,'  % џџџh   Ќџџџџџџ,   
$F*t E      
 4'  % џџџh   Ќџџџџџџ,   
$G*t    Ќџџџ   *t Ќџџџ   (t         	 Z   xџџџ     џџџ    Ќџџџ    џџџ    (џџџ    4џџџ    @џџџ    \џџџ    џџџ              шlЋџџ    Ш       	   	   AЌўџџ   *t  ўџџ 	  *t 4§џџЄ§џџ@§џџ h4§џџЄ§џџa   %єќџџD    <'   D'   AЄ§џџЃ   %єќџџDХ   4§џџЄ§џџ `'   r4§џџ&шќџџ№?   Рќџџ h'   '    '  %Ьќџџ( %AРќџџ ўџџ   (t Ђ  `   4§џџЄ§џџ М'   r4§џџ&шќџџ№:   Рќџџ h'   Ф'   р'  %Ьќџџ( %AРќџџ ўџџ   (t =  ўџџЬќџџЄ§џџИ   %єќџџD Ьќџџ* $ўџџ $	  * @ўџџЄќџџЬќџџ   
 8Ьќџџ Єќџџ* \ўџџ $	  * 4§џџ   
ўџџxџџџ N4§џџ&шќџџ№   xџџџєќџџ  єќџџ*t @ўџџ 	  %4§џџPўџџ ќ'  %шќџџP%Рќџџ!   $ўџџ (  * xўџџ 4(  * |  @ўџџ 	  %4§џџPўџџ P(  %шќџџP%Рќџџ/   ўџџ l(  * $ўџџ (  * xўџџ 4(  *   @ўџџ А	  %4§џџPўџџ P(  %шќџџP%Рќџџ=   $ўџџ (  * xўџџ Є(  * Ќўџџ 	  *t \ўџџ Р(  * Ў  @ўџџ м(  %4§џџPўџџ ј(  %шќџџP%Рќџџ!   $ўџџ )  * xўџџ 0)  * \  @ўџџ м(  %4§џџPўџџ L)  %шќџџP%Рќџџ!   $ўџџ h)  * xўџџ )  * 
  @ўџџ  )  %4§џџPўџџ L)  %шќџџP%Рќџџ!   $ўџџ h)  * xўџџ )  * И  @ўџџ М)  %4§џџPўџџ и)  %шќџџP%Рќџџ=   $ўџџ є)  * xўџџ *  * Ќўџџ 	  *t \ўџџ ,*  * J  @ўџџ \	  %4§џџPўџџ H*  %шќџџP%Рќџџ=   $ўџџ d*  * xўџџ *  * Ќўџџ 	  *t \ўџџ *  * м   @ўџџ @	  %4§џџPўџџ И*  %шќџџP%Рќџџ!   $ўџџ (  * xўџџ 4(  *    @ўџџ д*  %4§џџPўџџ P(  %шќџџP%Рќџџ=   $ўџџ (  * xўџџ №*  * Ќўџџ 	  *t \ўџџ Р(  *    $ўџџ $	  *  ўџџ   *t  ўџџq  4§џџИўџџ$ўџџ М   Ш  %ќџџ4 4§џџ&шќџџ№.    h'   +  $ўџџ%Ьќџџ( (+  %Єќџџ( NA  4§џџЄ§џџИўџџxўџџ k4§џџ&шќџџ№.    h'   D+  xўџџ%Ьќџџ( `+  %Єќџџ( NAВ  4§џџxџџџ 4§џџ&шќџџ№-   РќџџЄ§џџЄ§џџИ   %єќџџDxџџџ   @! Иўџџ |+  %4ќџџP2      )8Иўџџ +  %4ќџџP2    	  )8Иўџџ Д+  %4ќџџP2    	  )8\ўџџ $	  %4§џџ    ИўџџХ   \ўџџ)8Иўџџ <Иўџџ @ўџџєќџџИўџџ єќџџ*t ўџџ  4§џџ   
 4§џџ&шќџџ№   Рќџџ   
 Рќџџ8џџџЄ§џџX   %єќџџD*t 4§џџ   
ўџџ8џџџ O4§џџ4§џџ   
 r4§џџ&шќџџ№Ю   ,ќџџ  A,ќџџ а+  %Рќџџh`    и+   є+  Ьќџџ8џџџ 	Ьќџџ%Єќџџ( ,  %ќџџ( ,,  %єћџџ( NA4§џџ   
 4§џџM   4§џџ h'  Ьќџџ,ќџџ  A,ќџџ 	Ьќџџ%Єќџџ( H,   d,  %ќџџ( %A4§џџ4§џџ   
 ^4§џџ&шќџџ№   Рќџџ ,   ,   %AРќџџ№ћ   4§џџИўџџ 4§џџ      №ћ ўџџ   (t          ш   єќџџ    4§џџ    Є§џџ    xџџџ    єћџџ    ўџџ    ќџџ    $ўџџ    Єќџџ    @ўџџ    \ўџџ    ,ќџџ    xўџџ    4ќџџ    Рќџџ    Ьќџџ    ўџџ     ўџџ    Ќўџџ    шќџџ    ќџџ    Иўџџ    8џџџ    @§џџ            ACTIVE  ши џџ    м       O  Ќџџџ 	  *t XўџџHџџџdўџџ hXўџџ&Lўџџ№,   $ўџџ И,   д,   №,  %0ўџџ( %A$ўџџа  XўџџШўџџ -   М   Ш  %ўџџ4 Xўџџ&Lўџџ№,   $ўџџ И,   +   (-  %0ўџџ( %A$ўџџl  XўџџHџџџ Xўџџ&Lўџџ№7   Шўџџ D-  %Д§џџP`§џџHџџџX   %t§џџD `§џџ*t   KAXўџџШўџџ 4'   BXўџџXўџџШўџџ `-   BXўџџШўџџ <Шўџџ @t§џџШўџџ t§џџ   Hџџџ   % §џџD&рќџџш   XўџџHџџџ &   rXўџџHџџџX   `§џџШўџџ D-  %Д§џџPX   %t§џџD `§џџ)8Hџџџ h-   tмќ   XўџџШўџџ Xўџџ      мќЌџџџ   (t             Ќџџџ    рќџџ     §џџ    Д§џџ    `§џџ    t§џџ    dўџџL   Lўџџ    Xўџџ    ўџџ    Hџџџ    $ўџџ    0ўџџ    Шўџџ             ACTIVE  шкџџ    l        	  Ќџџџ 	  *t ,џџџЌўџџШўџџ   
 8Шўџџ Ќўџџ* ,џџџ \	  % ўџџP  ј§џџ Д&   p-   -  %Шўџџ( Ј-  %Ќўџџ( Ф-  %ўџџ( р-  %hўџџ( ќ-  %Lўџџ( .  %0ўџџ( 4.  %ўџџ( OAј§џџ l  %ь§џџP  р§џџфўџџ P.   р§џџ&д§џџ№,   Ќ§џџ l.   .   Є.  %И§џџ( %AЌ§џџe   ўџџфўџџ   
 Р.  %H§џџT   
 Р.  %фќџџT   ! &ь§џџ№,   р§џџ l.   м.   ј.  %Шўџџ( %Aр§џџм    ўџџфўџџ  ўџџиќџџфўџџ иќџџ а  % ўџџHЁ   ь§џџфўџџ ^ь§џџ&р§џџ№-   д§џџ l.   /   %Aд§џџЌџџџ   (t Э   ўџџфўџџ  ўџџ&ь§џџ№-   р§џџ l.   0/   %Aр§џџЌџџџ   (t   9џџџ ўџџфўџџ  ўџџ ўџџ   
  ўџџ&ь§џџ№   р§џџ   
 р§џџ ўџџ   
  ўџџџ  ,џџџ А	  % ўџџPщ  И§џџ Д&   p-   L/  %Шўџџ( h/  %Ќўџџ( /  %ўџџ(  /  %hўџџ( ќ-  %Lўџџ( М/  %0ўџџ( и/  %ўџџ( 4.  %ј§џџ( OAИ§џџ l  %ь§џџPQ  р§џџфўџџ є/   р§џџ&д§џџ№,   Ќ§џџ l.   .   0  %Мќџџ( %AЌ§џџБ    ўџџфўџџ   
 ,0  %H§џџT   
 H0  %фќџџT   
 H0  %XќџџT   ! &ь§џџ№,   р§џџ l.   м.   d0  %Шўџџ( %Aр§џџ    ўџџфўџџ  ўџџ ўџџфўџџ  ўџџ ўџџ   
  ўџџ&ь§џџ№   р§џџ   
 р§џџ ўџџ   
  ўџџџ  ,џџџ 0  % ўџџPM  0ўџџ Д&   p-   0  %Шўџџ( И0  %Ќўџџ( д0  %ўџџ( №0  %hўџџ( 4.  %Lўџџ( OA0ўџџ l  %ь§џџPм  р§џџфўџџ 1   р§џџ&д§џџ№,   Ќ§џџ l.   x   (1  %ўџџ( %AЌ§џџ   ўџџфўџџ D1   d ўџџ ўџџфўџџ   
 D1  %H§џџT   
 D1  %фќџџT   ! &ь§џџ№,   р§џџ l.   м.   `1  %Шўџџ( %Aр§џџч   иќџџфўџџ иќџџ а  % ўџџHs    l.   |1   1  %Шўџџ(ЌўџџLќџџфўџџ Lќџџ 	Ќўџџ%ўџџ( Д1  %hўџџ( а1  %Lўџџ( ь1  %0ўџџ( NAN    ўџџ   
  ўџџ&ь§џџ№   р§џџ   
 р§џџ ўџџ   
  ўџџ ўџџфўџџ  ўџџ  ,џџџ @	  % ўџџPv  ь§џџфўџџ P.   ь§џџ&р§џџ№,   д§џџ l.   x   2  %Шўџџ( %Aд§џџ   ўџџфўџџ $2   d ўџџ ўџџфўџџ   
 @2  %H§џџT   
 @2  %фќџџT   ! &ь§џџ№,   р§џџ l.   м.   \2  %Шўџџ( %Aр§џџ|   иќџџфўџџ иќџџ а  % ўџџHH    l.   |1   x2  %Шўџџ( 2  %Ќўџџ( А2  %ўџџ( Ь2  %hўџџ( NA   Ќџџџ   *t  ўџџфўџџ  ўџџ   Ќџџџ   *t Ќџџџ   (t          с   ўџџ    фўџџ    ,џџџ    Мќџџ    д§џџ    р§џџ    Ќџџџ    ь§џџ    ј§џџ    ўџџ    Hџџџ    Lќџџ    0ўџџ     ўџџ    Lўџџ    иќџџ    Ќўџџ    фќџџ    H§џџ    hўџџ    Шўџџ    Ќ§џџ    И§џџ    Xќџџ              шиџџ            X  Xџџџ 	  *t dџџџ а  *Ј XџџџDџџџpџџџ ш2   Dџџџ*t Xџџџ&Dџџџ№'   џџџ 3    3      %(џџџ( %AџџџXџџџН   XџџџDџџџpџџџ(џџџ   
 (џџџ џџџ   
  џџџ   ! *t Xџџџ&Dџџџ№c    3   D+  (џџџ   
 (џџџ% џџџ( <3  %фўџџ(Шўџџ   
 Шўџџ%Ќўџџ( X3  %ўџџ( NAXџџџ   XџџџDџџџpџџџ Dџџџ*t Xџџџ&Dџџџ№,   џџџ 3   t3   ,  %(џџџ( %Aџџџi   Pџџџ 
  *Ќ    ўџџ(Ќ Pџџџўџџ" B:   XџџџDџџџpџџџ ^Dџџџ*t Xџџџ      Pџџџ'Ш ГџџџXџџџ&Dџџџ№]   Pџџџ   %џџџhF    3   3   Ќ3  %(џџџ( џџџ   
  џџџ%фўџџ( Ш3  %Шўџџ( NAXџџџm   dџџџpџџџ ф3  %$ўџџT*Ј Dџџџpџџџ Dџџџpџџџ ф3  %$ўџџTdџџџ 
  %ўџџd*t Dџџџpџџџ _DџџџDџџџpџџџ ~Dџџџ   џџџpџџџ џџџXџџџ      
dџџџ*Ј Xџџџ   (t             ўџџ     џџџ    џџџ    (џџџ    Xџџџ    dџџџ    ўџџ    Dџџџ    ўџџ    pџџџ    Ќўџџ    Шўџџ    фўџџ    Pџџџ    $ўџџ              шЯџџ    d          Ќџџџ lџџџ     lџџџ а  %`џџџ(
        `џџџ 0   `џџџ
    0   `џџџ є    `џџџ
    є    `џџџ И    `џџџ
    И    `џџџ М   `џџџ
    М   `џџџ    `џџџ
       `џџџ \   `џџџ
    \   `џџџ ,   `џџџ
    ,   `џџџ ќ   `џџџ
    ќ   `џџџ Ь   `џџџ
    Ь   `џџџ    `џџџ
       `џџџ l   `џџџ
    l   `џџџ L   `џџџ
    L   `џџџ    `џџџ
       `џџџ ь   `џџџ
    ь   `џџџ м   `џџџ
    м   `џџџ Ќ   `џџџ
    Ќ   `џџџ |   `џџџ
    |   `џџџ ,   L`џџџ*   Tџџџ ,   LTџџџ`џџџ ,   L`џџџ`џџџ    L`џџџ*   Tџџџ    LTџџџ`џџџ    L`џџџ     -   Tџџџ    `џџџ    lџџџ    Ќџџџ                
  + шWџџ           
 U   џџџ 	  *t Ќџџџ 	  *t xџџџ,  4  &џџџ Ќџџџ$1&lџџџ№D    4   84   T4  %Pџџџ( p4  %4џџџ( 4  %џџџ( NAЌџџџ   *t ЌџџџЂ   џџџ Ј4   p-   Ф4  %џџџ(иўџџиўџџ   
 $	  %xџџџP    р4  *t $    ќ4     
%Pџџџ( 5  %4џџџ(*t %ўџџ  OAџџџ l  %lџџџ     џџџ   *t  џџџ   (t         
 c   ўџџ    xџџџ    Pџџџ    џџџ    иўџџ    Ќџџџ     џџџ    џџџ    lџџџ    4џџџ              ш~џџ            O    ,!   Ш  xџџџxџџџ   
    
  *t 	    А
  *t %8џџџ          8џџџ    xџџџ              шѓџџ    №        ќ  џџџ 	  *t    
 
  %hџџџh   tџџџ $	  * ~     
 45  %hџџџh   tџџџ $	  * S     
 <5  %hџџџh   tџџџ $	  * (     
 D5  %hџџџh   tџџџ $	  * §     
 а+  %hџџџh-   tџџџ L5   h5  %Lџџџ( 5  %0џџџ(* И     
  5  %hџџџh    tџџџ Ј5   Ф5  %Lџџџ(*      
 р5  %hџџџh   
 ш5  %$џџџh%џџџ$   
 №5  %џџџh% џџџ$-   tџџџ ј5   6  %Lџџџ( 06  %0џџџ(*      
 L6  %hџџџh   
 T6  %$џџџh%џџџ$   
 \6  %џџџh% џџџ$   tџџџ   
* Ѓ     
 d6  %hџџџh#    l6     tA! tџџџ $	  * h     
 6  %hџџџh   tџџџ 6  * =     
 Ќ6  %hџџџh   tџџџ Д6  *      
 а6  %hџџџh-   tџџџ и6   є6  %Lџџџ( 7  %0џџџ(* Э     
 ,7  %hџџџh    tџџџ 47   P7  %Lџџџ(*      
 l7  %hџџџh    tџџџ t7   7  %Lџџџ(* ]     
 <'  %hџџџh:   tџџџ Ќ7   Ш7  %Lџџџ( ф7  %0џџџ(  8  %фўџџ(*      
 8  %hџџџh   tџџџ   
* п      
 $8  %hџџџhG   tџџџ ,8   H8  %Lџџџ( d8  %0џџџ( 8  %фўџџ( 8  %Шўџџ(*    hџџџ И8     
џџџ ЂAhџџџ&$џџџ№+   џџџ д8  Lџџџ   
 	Lџџџ%0џџџ(* tџџџџџџ №8  %Lџџџ(   
%0џџџ(* tџџџ $	  %hџџџ     9  tџџџ NAџџџ   (t          u   фўџџ    $џџџ    џџџ    Lџџџ    Шўџџ    џџџ    hџџџ    tџџџ     џџџ    џџџ    0џџџ    џџџ              шaџџ    ј          Ќџџџ 	  *t џџџ $	  *    
 ь  %hџџџP!   tџџџ (9  * џџџ ь  *      
   %hџџџP!   tџџџ (9  * џџџ   * J     
 D9  %hџџџPЇ   <џџџLџџџ  CALџџџ <џџџ `9  %0џџџV    p9   9   Ј9  %џџџ( Ф9  %јўџџ( р9  %мўџџ( ќ9  %Рўџџ( NAЌџџџ   *t    tџџџ :  * џџџ 4:  *       
 $  %hџџџP!   tџџџ :  * џџџ P:  * R    l:   Ш   :  %Lџџџ( Є:  %џџџ(   
%јўџџ( Р:  %мўџџ( NAЌџџџ   *t џџџ $	  %hџџџ u   Ќџџџ0џџџtџџџџџџ A0џџџ*t Ќџџџ&hџџџ№A   0џџџ м:   ј:   ;  %Lџџџ(џџџ%џџџ( 0;  %јўџџ( %A0џџџЌџџџ   (t          l   Рўџџ    tџџџ    мўџџ    <џџџ    јўџџ    Lџџџ    џџџ    џџџ    Ќџџџ    hџџџ    0џџџ              шQџџ    ф        П  Pўџџ   *t t§џџ8џџџ L;   t§џџ&h§џџ№?   @§џџ h;   ;    ;  %L§џџ( %A@§џџPўџџ   (t E  y   Pўџџ §џџ8џџџ  §џџ*t Pўџџ(   џџџ8џџџ М;  %ќџџPX   % §џџD*t ќ   t§џџ8џџџ t§џџ      ќPўџџ&t§џџ№   Pўџџ   (t Ђ  џџџ и;  %t§џџPЊ   Єўџџ QUERY

         :DATA:CUSTOMER | CustomerID  | LastName | FirstName |
                        | Check as ID | Check    | Check     |

      ENDQUERY   Ѕ   Єўџџ QUERY

         :DATA:EMPLOYEE | EmployeeID  | LastName | FirstName |
                        | Check as ID | Check    | Check     |

      ENDQUERY   t§џџЄўџџ\ўџџ ( t§џџ&h§џџ№f   @§џџ h;   є;  џџџ%L§џџ( <  %|ќџџ( %A@§џџt§џџЄўџџ ,<   2 t§џџPўџџ   (t Е  Ћ   pќџџ\ўџџ pќџџ а  %t§џџh    h;   H<  џџџ%L§џџ( d<  %|ќџџ( <  %Tќџџ(џџџ%8ќџџ( <  %ќџџ( И<  % ќџџ( NAt§џџ\ўџџ t§џџPўџџ   (t   t§џџ\ўџџ h§џџ\ўџџ h§џџ&@§џџ№l   ўџџ\ўџџ д<  %ќџџT №<  % §џџ \ўџџ =  %ћџџT%\ћџџ ь\ўџџ (=  %јњџџT*Ј t§џџ\ўџџ sџџџt§џџ\ўџџ t§џџџџџ и;  %t§џџPo  Єўџџ   
   
OQUERY

         :DATA:CRSERSTR | CourseID     | ClassDate   |
                        |  |  |

         :DATA:CRSERSTR | StudentID |
                        | _ID       |

         :DATA:CUSTOMER | CustomerID       | LastName | FirstName |
                        | Check as ID, _ID | Check    | Check     |

      ENDQUERY  [ ^ j  Єўџџ   
   
OQUERY

         :DATA:CRSERSTR | CourseID     | ClassDate   |
                        |  |  |

         :DATA:CRSERSTR | StudentID |
                        | _ID       |

         :DATA:EMPLOYEE | EmployeeID       | LastName | FirstName |
                        | Check as ID, _ID | Check    | Check     |

      ENDQUERY  [ ^ t§џџЄўџџ\ўџџ ( t§џџ&h§џџ№a   @§џџ h;   D=  џџџ%L§џџ( <  %|ќџџ( %A@§џџt§џџЄўџџ ,<   2 t§џџPўџџ   (t н  pќџџ\ўџџ pќџџ а  %t§џџh   р§џџ    t§џџ\ўџџ h§џџ\ўџџ h§џџ&@§џџ№l   р§џџ\ўџџ д<  %ќџџT №<  % §џџ \ўџџ =  %ћџџT%\ћџџ ь\ўџџ (=  %јњџџT*Ј t§џџ\ўџџ sџџџt§џџ\ўџџ t§џџ §џџр§џџ  §џџ а  %t§џџ(T   ињџџр§џџ  Bињџџ§џџ" B2   h§џџўџџ§џџ h§џџ   ўџџ§џџ Лџџџt§џџ8џџџ `=   М   Ш  %pќџџ4 t§џџ&h§џџ№:   @§џџ h;   +   |=  %L§џџ( %A@§џџPўџџ   (t   Ј§џџ ињџџўџџ  Bињџџ§џџ" B(   Ј§џџL§џџ =  §џџ +L§џџ Хџџџt§џџ8џџџЈ§џџ& њџџИ +SETAVAILABLEVALUES Ј§џџ ињџџр§џџ  Bињџџ§џџ" BH   Ј§џџL§џџ =  §џџ +L§џџ ўџџ§џџ№р§џџ§џџ№*Ј Ѕџџџt§џџ8џџџЈ§џџ&hњџџИ +SETSELECTEDVALUES 8џџџХ    Д=  џџџ%L§џџ( а=  %|ќџџ()88џџџ <8џџџ @Pўџџ §џџ8џџџ  §џџ*t Pўџџн  Ј§џџ Ј§џџ0њџџ8џџџ+GETSELECTEDVALUES *И  §џџЈ§џџ  §џџ а  %t§џџ(   §џџ 
  *Ј \ћџџЈ§џџ \ћџџ№љџџ(t §џџ№љџџ" OT   §џџL§џџўџџЈ§џџ§џџ,№ 	L§џџ* Ј§џџ§џџ,§џџ* §џџ'Ш џџџt§џџ\ўџџ є/   t§џџt§џџ\ўџџ   
   
L§џџџџџ 
   
   L§џџ|ќџџџџџ 
   
   |ќџџ   ! t§џџ\ўџџ t§џџ §џџЈ§џџ  §џџ а  %t§џџH   h§џџ\ўџџ h§џџ­   t§џџ\ўџџ "t§џџ&h§џџ№w   @§џџЈ§џџL§џџ\ўџџ ь=  %ќџџT   
!  @§џџ&фљџџ№   иљџџ\ўџџ иљџџ   t§џџ\ўџџ 
t§џџhџџџt§џџ\ўџџ t§џџ §џџЈ§џџ  §џџ а  %t§џџ(P  §џџ 
  *Ј \ћџџЈ§џџ \ћџџ№љџџ(t §џџ№љџџ" O  h§џџ\ўџџ   
   
L§џџџџџ 
   
   L§џџpќџџЈ§џџ§џџ,  pќџџ   ! &@§џџ№   фљџџ\ўџџ фљџџt§џџ\ўџџ 
     
 А
     
 Ќ  L§џџџџџ 
   
   L§џџ   pќџџЈ§џџ§џџ,  pќџџ 	 $ !( t§џџ\ўџџ rt§џџ§џџ'Ш лўџџt§џџ\ўџџ ~t§џџC   h§џџ\ўџџ h§џџ   @§џџ\ўџџ @§џџt§џџ\ўџџ t§џџдљ   t§џџ8џџџ t§џџ      дљPўџџ   (t           G  иљџџ    фљџџ    |ќџџ    №љџџ    0њџџ   Ј§џџќ   р§џџј   hњџџє    њџџ№   ќџџ    ўџџу   Pўџџ    ињџџB    јњџџ     §џџ    ћџџ    \ћџџ    @§џџ    L§џџ    \ўџџ    Єўџџ"     ќџџ    џџџ    ќџџ    h§џџ    8ќџџ    Tќџџ    t§џџ    8џџџ    §џџ    pќџџ    §џџ                                      ш*pџџ    0         pџџџ 	  *t ,џџџ 	  *t џџџ   
* |џџџ   
*Р ,џџџУ  pџџџ џџџџџџ|џџџ 0A џџџ*t pџџџ  |џџџ >  И $	  % џџџ $   џџџ|џџџ >  Иџџџ%џџџ(* |џџџ >  И $	  % џџџ )   џџџ|џџџ >  Иџџџ%џџџ(* @   џџџџџџ|џџџ 8#  И &џџџ >  %шўџџ(џџџ%Ьўџџ(* џџџ8џџџ =8џџџ 4>  № $	  % џџџPu    P>   l>  |џџџ 8#  И%џџџ( >  %шўџџ( Є>  %Ьўџџ( Р>  %Аўџџ( м>  %ўџџ( NA|џџџ 8#  И @#  *    ,џџџ   *t    ,џџџ   *t 3ўџџpџџџшўџџџџџ   
 =џџџ шўџџЬўџџџџџ Ьўџџ% џџџP&ўџџ№*t pџџџ      
џџџ* 8џџџ pџџџ   (t            ўџџ    ўџџ    pџџџ    Аўџџ    |џџџL   џџџ    џџџ     џџџ    ,џџџ    8џџџМ   Ьўџџ    шўџџ                H W Y X WINDOWSTYLE TITLE OPTIONS ALLOWABLETYPES SELECTEDTYPE FILEFILTERS CUSTOMFILTER ALIAS PATH DRIVE DEFAULTEXT PATHONLY NEWFILEONLY      шXlџџ           к  \џџџ 	  *t @џџџ   
* џџџ \  И ј>  * џџџ   И  #  *Ј џџџ М  И ?    #  %шўџџ4  ?  %мўџџ4 ,?  %аўџџ4 М  %Фўџџ4*Ј џџџ 8#  И @#  * џџџ \#  И 	  *t џџџ d#  И 8?  * \џџџўџџ,@џџџџџџ&ЄўџџР $O*t @џџџ $	  %ўџџP   \џџџ   *t \џџџ{  |ўџџ@џџџ |ўџџџџџ =џџџ T?  № 8?  %ўџџPџџџ T?  № p?  %pўџџP%dўџџ$Ј    ?  @џџџ%|ўџџ( Ј?  %Hўџџ(   tA! шўџџ 4   2Aшўџџ\џџџўџџ   
@џџџ G$ўџџ*t шўџџ    2Aшўџџ\џџџ&ўџџ№   pўџџ Ф?   р?   %Apўџџr   ќ?  @џџџ%|ўџџ( Ј?  %Hўџџ(   tA! шўџџ 4   2Aшўџџhџџџ   
    Nџџџ T?  № l#  %ўџџP   hџџџ@џџџ d#   N   hџџџ@џџџ а   Nhџџџ 	   0Nhџџџ Nџџџ T?  № l#  %ўџџP   @џџџџџџ @  №џџџ 4@  №%|ўџџ(џџџ 4>  №%Hўџџ( P@  %,ўџџ(* ўџџ@џџџ '=ўџџ   pўџџєўџџ@џџџ =pўџџшўџџ    2Aшўџџ $	     tA! \џџџ   (t          с  ,ўџџ    џџџ   Фўџџ    аўџџ    @џџџ    мўџџ    \џџџ    Hўџџ    шўџџ    hџџџN    dўџџ    pўџџ    џџџ6   єўџџ=    |ўџџ    ўџџ    ЄўџџЏ                   H W Y X WINDOWSTYLE TITLE OPTIONS ALLOWABLETYPES SELECTEDTYPE FILEFILTERS CUSTOMFILTER ALIAS PATH DRIVE DEFAULTEXT PATHONLY NEWFILEONLY    H W Y X WINDOWSTYLE TITLE OPTIONS ALLOWABLETYPES SELECTEDTYPE FILEFILTERS CUSTOMFILTER ALIAS PATH DRIVE DEFAULTEXT PATHONLY NEWFILEONLY  ш|fџџ    `        U   џџџџџџ l@   &џџџ @  %dџџџ(* Xџџџџџџ    Ќ   VAXџџџ     -   Xџџџ    dџџџ    џџџ    џџџ              шйeџџ                 ,$;,$=      	             шeџџ           ѕ  џџџ 	  *t pџџџ Є@  * џџџ \  И Р@  * џџџ   И  #  *Ј џџџ М  И м@  *Ј џџџ 8#  И @#  * џџџ \#  И 	  *t џџџ d#  И ш@  * џџџјўџџ,pџџџџџџ&џџџР $O*t џџџ№   мўџџpџџџ мўџџ8џџџ = A  pџџџ%мўџџ( Ј?  %Рўџџ(   tA! Дўџџ 4   2AДўџџјўџџ   
  A   rјўџџјўџџ$џџџ јўџџџџџјўџџ$џџџpџџџ јўџџ*t Дўџџ    2AДўџџџџџ&јўџџ№   Јўџџ (A   р?   %AЈўџџ $	     tA! џџџ   (t          Ћ  Јўџџ    џџџ    џџџU   Дўџџ    Рўџџ    $џџџ    мўџџ    јўџџ    џџџМ   8џџџP  pџџџ                H W Y X WINDOWSTYLE TITLE OPTIONS ALLOWABLETYPES SELECTEDTYPE FILEFILTERS CUSTOMFILTER ALIAS PATH DRIVE DEFAULTEXT PATHONLY NEWFILEONLY    H W Y X WINDOWSTYLE TITLE OPTIONS ALLOWABLETYPES SELECTEDTYPE FILEFILTERS CUSTOMFILTER ALIAS PATH DRIVE DEFAULTEXT PATHONLY NEWFILEONLY      шжaџџ             hўџџ DA  * Hўџџ \  И `A  * Hўџџ   И  #  *Ј Hўџџ М  И ь  *Ј Hўџџ 8#  И @#  * Hўџџ \#  И 	  *t Hўџџ d#  И |A  * <ўџџўџџ,hўџџHўџџ&ўџџР $O*t <ўџџ&ўџџ№         (t -  <ўџџўџџўџџє§џџ  Aє§џџ ќ  %и§џџ( Dўџџ*t <ўџџ&ўџџ№:   Ь§џџ    4   P  %є§џџ( %AЬ§џџ<ўџџ   (t Ј  <ўџџўџџ8џџџ   
 ўџџ*t <ўџџ&ўџџ№:   Ь§џџ    Є#   A  %є§џџ( %AЬ§џџ<ўџџ   (t 9  8џџџи      )8џџџ 
  Иhўџџ* џџџ А
  И ДA  * џџџ Ќ  И Є  *Ј џџџ   И А  *Ј џџџ   И 	  *t џџџ М  И 	  *t <ўџџўџџўџџ8џџџџџџ+HTMLPUBLISH_REPORT *t <ўџџ&ўџџ№,   Ь§џџ    Ф   р  %є§џџ( %AЬ§џџЬ   А§џџ ќ      4  %є§џџ( P  %и§џџ( OAА§џџ l  %ўџџP   §џџўџџџџџ 
  И&§џџ  	  &Ь§џџt +_LAUNCHBROWSER &|§џџ№4   8§џџ    Ш   Є  %`§џџ( Р  %D§џџ( %A8§џџ4§   ўџџ8џџџ ўџџ      4§ўџџўџџ Dўџџ   Ь§џџўџџ DЬ§џџ     4  8§џџ    D§џџ    `§џџ    |§џџ    §џџ    §џџ    А§џџ    Hўџџg   hўџџ    Ь§џџ    и§џџ    є§џџ    ўџџ    ўџџЮ   ўџџD    џџџY  8џџџ    <ўџџ                H W Y X WINDOWSTYLE TITLE OPTIONS ALLOWABLETYPES SELECTEDTYPE FILEFILTERS CUSTOMFILTER ALIAS PATH DRIVE DEFAULTEXT PATHONLY NEWFILEONLY    H W Y X WINDOWSTYLE TITLE OPTIONS ALLOWABLETYPES SELECTEDTYPE FILEFILTERS CUSTOMFILTER ALIAS PATH DRIVE DEFAULTEXT PATHONLY NEWFILEONLY    STRURI STRTITLE IBGCOLOR ITEXTCOLOR MHEADER MTEMPLATE LSTATIC LMSG  шe[џџ    0       Е
  Ќџџџ   *t  џџџ 	  *t  џџџ&Pўџџ№,   (ўџџ аA   м.   ьA  %4ўџџ( %A(ўџџI   xџџџўџџ4ўџџ   
 84ўџџ ўџџ* \џџџ $	  * џџџ B  *Ј xџџџ @	  %PўџџP   \џџџ B  *    xџџџ \	  %PўџџP   \џџџ ,B  * b   xџџџ HB  %PўџџP   \џџџ ќ'  * 8   xџџџ 0  %PўџџP   \џџџ H*  *     џџџ   *t \џџџ $	  %Pўџџ   Ќџџџ 	  *t  џџџPўџџ,xџџџ&4ўџџ \џџџ&ўџџ џџџ$I*t  џџџ&Pўџџ№!    аA   dB   B  %4ўџџ( NA   ўџџ 4   2A ўџџ 	   Aќ§   Pўџџ   
 Pўџџ&(ўџџ№   №§џџ   
 №§џџPўџџ   
 PўџџPўџџ   
\џџџџџџ OPўџџPўџџ   
 rPўџџL    ўџџ    2A ўџџ    APўџџ аA   B   ИB  %4ўџџ( %APўџџ   ќ§    A  xџџџ дB  %PўџџP  (ўџџмўџџ W(ўџџ ўџџ   
  ўџџ а  %Pўџџh_   (ўџџ,мўџџ P(  %§џџPX   %L§џџD&4ўџџt мўџџ №B  %шќџџPX   %ЈќџџD&ќџџt $NB   Pўџџ,   
 C  %§џџT&4ўџџ    
 (C  %шќџџT&ќџџ $Nмўџџ @Pўџџмўџџ DC  %§џџP oPўџџЌџџџ 	  *t ]  xџџџ 	  %PўџџPЕ  Ќџџџ 	  *t \џџџ P(  *  џџџPўџџ,xџџџ&4ўџџ \џџџ&ўџџ џџџ$I*t  џџџ&Pўџџ№.    аA   `C   |C  %4ўџџ( C  %ўџџ( NA!   ўџџ 4   2A ўџџ 	   AќЌ   Pўџџ   
 Pўџџ&(ўџџ№   №§џџ   
 №§џџPўџџ   
 PўџџPўџџ   
\џџџ4ўџџ ДC  ќџџџџџ ќџџ +4ўџџ OPўџџPўџџ   
 rPўџџB   Pўџџ аA   B   ИB  %4ўџџ( %APўџџ ўџџ    2A ўџџ   ќ    A  xџџџ М)  %PўџџPЪ   Ќџџџ 	  *t Pўџџмўџџ WPўџџPўџџмўџџ аC   Р.  џџџ zPўџџ&(ўџџ№.    аA   ьC   D  %4ўџџ( $D  %ўџџ( NAD   Pўџџ   
 Pўџџ   
 Р.  %§џџTџџџ*t Pўџџ,   
$FА  xџџџ м(  %PўџџP  Ќџџџ 	  *t \џџџ @D  *  џџџPўџџ,xџџџ&4ўџџ \џџџ&ўџџ џџџ$I*t  џџџ&Pўџџ№.    аA   `C   \D  %4ўџџ( xD  %ўџџ( NAї  Pўџџ\ўџџ D   Pўџџ&(ўџџ№/    аA   АD    '  %4ўџџ( NAЌџџџ   (t н  L§џџ\ўџџ L§џџ&Јќџџш    ЬD     tA! B   ўџџ 4   2A ўџџ 	   AќЭ  Pўџџ   
 Pўџџ&(ўџџ№   №§џџ   
 №§џџPўџџ   
 PўџџPўџџ   
\џџџџџџ OPўџџ   
 А
  %§џџX\ўџџ шD  %шќџџPX   %L§џџD*t    
 Ќ  %§џџX\ўџџ E  %шќџџPX   %L§џџD*t    
   %§џџX\ўџџ  E  %шќџџPX   %L§џџD*t    
 T  %§џџX\ўџџ <E  %шќџџPX   %L§џџD*t    
   %§џџX\ўџџ XE  %шќџџPX   %L§џџD*t    
 tE  %§џџX\ўџџ |E  %шќџџPX   %L§џџD*t Pўџџ   
 rPўџџB   Pўџџ аA   E   ДE  %4ўџџ( %APўџџ ўџџ    2A ўџџ   ќ    Aќ   Pўџџ\ўџџ Pўџџ      ќ   Ќџџџ   *t  ўџџ    2A ўџџЌџџџ   (t          Д   ќџџ    Pўџџ    \ўџџ    мўџџ    \џџџ    xџџџ    џџџ    шќџџ    ќџџ    Јќџџ    ўџџ    §џџ    L§џџ    (ўџџ    4ўџџ     џџџ    Ќџџџ    №§џџ     ўџџ              шлOџџ    L       u  џџџ 	  *t шўџџ $	  * џџџd§џџШ§џџ§џџ  A§џџ ќ  %p§џџ( Dd§џџ*t џџџ&d§џџ№:   X§џџ аE   4   P  %§џџ( %AX§џџџџџ   (t Ш  џџџ \  И ьE  * џџџ   И  #  *Ј џџџ М  И ?    #  %L§џџ4  ?  %@§џџ4*Ј џџџ 8#  И F  * џџџ \#  И   *t џџџ d#  И $F  * џџџd§џџ,шўџџџџџ& §џџР $O*t d§џџшўџџ R$d§џџ&X§џџ№<    аE   @F  шўџџ%§џџ( \F  %p§џџ( NA      (t Ё  Ьўџџшўџџ* шўџџ DA  * џџџ \  И xF  * џџџ   И  #  *Ј џџџ М  И ь  *Ј џџџ 8#  И @#  * џџџ \#  И 	  *t џџџ d#  И |A  * џџџd§џџ,шўџџџџџ& §џџР $O*t џџџ&d§џџ№         (t А  ўџџшўџџ* d§џџ0џџџЬўџџ d§џџd§џџ0џџџџџџ }d§џџd§џџ0џџџ d§џџАўџџ $	  * xџџџ 
  *Ќ рќџџџџџ рќџџ ќџџ(t xџџџ ќџџ" Os   АўџџАўџџџџџxџџџ(%§џџ(* xџџџрќџџџџџ рќџџ%d§џџ   АўџџАўџџ F  %§џџ(* xџџџ'Ш zџџџЈ§џџ 
  Иўџџ* Ј§џџ А
  ИЬўџџ* Ј§џџ Ќ  И F  * Ј§џџ   ИАўџџ* Ј§џџ T  И АF  * Ј§џџ \  И А  *Ј Ј§џџ   И Є  *Ј Ј§џџ М  И 	  *t Ј§џџ ЬF  И $	  * Ј§џџ дF  И 	  *t Ј§џџ 8#  И 	  *t џџџd§џџШ§џџЈ§џџ+HTMLPUBLISH_TABLE *t џџџ&d§џџ№,   X§џџ аE   Ф   р  %§џџ( %AX§џџм   ќџџ мF   јF   4  %§џџ( P  %p§џџ( OAќџџ l  %d§џџP    G     tA! X§џџШ§џџЈ§џџ 
  И&§џџ  	  &d§џџt +_LAUNCHBROWSER &xќџџ№4   lќџџ    Ш   Є  %p§џџ( Р  %ќџџ( %Alќџџd§џџШ§џџ Dd§џџ   X§џџШ§џџ DX§џџ $	     tA! џџџ   (t          Ё  lќџџ    xќџџ    p§џџ    ќџџ    §џџ    Ј§џџЏ   Ш§џџD    \ўџџ  ўџџ    Аўџџ     ќџџ    рќџџ    Ьўџџ    шўџџ    џџџ     §џџж   џџџj  0џџџ    @§џџ    L§џџ    xџџџ    X§џџ    џџџб  d§џџ                STRURI STRTABLENAME STRSOURCE STRFLDS STRTITLE IBGCOLOR ITEXTCOLOR LCENTER STRPARAMS MTEMPLATE LSTATIC LMSG        H W Y X WINDOWSTYLE TITLE OPTIONS ALLOWABLETYPES SELECTEDTYPE FILEFILTERS CUSTOMFILTER ALIAS PATH DRIVE DEFAULTEXT PATHONLY NEWFILEONLY    H W Y X WINDOWSTYLE TITLE OPTIONS ALLOWABLETYPES SELECTEDTYPE FILEFILTERS CUSTOMFILTER ALIAS PATH DRIVE DEFAULTEXT PATHONLY NEWFILEONLY      шЄFџџ         и    шFџџ         иП#  G    јF    мF    дF    ЬF  }  АF  v  F  q  xF  l  \F  g  @F  b  $F  ]  F  X  ьE  S  аE  N  ДE  I  E  D  |E  ?  tE  :  XE  3  <E  .   E  )  E  $  шD    ЬD    АD    D    xD    \D    @D    $D  ќ  D  ї  ьC  ђ  аC  э  ДC  ш  C  у  |C  о  `C  й  DC  д  (C  Я  C  Ъ  №B  Х  дB  Р  ИB  Л  B  Ж  B  Б  dB  Ќ  HB  Ї  ,B  Ђ  B    B    ьA    аA    ДA    A    |A  }  `A  x  DA  s  (A  n   A  i  A  b  ш@  ]  м@  X  Р@  S  Є@  N  @  I  l@  D  P@  ?  4@  :  @  5  ќ?  0  р?  +  Ф?  &  Ј?  !  ?    p?    T?    8?    ,?     ?    ?  ў  ј>  љ  м>  є  Р>  я  Є>  ъ  >  х  l>  р  P>  л  4>  ж  >  б  >  Ь  >  Х  ь=  О  а=  Й  Д=  Д  =  Џ  |=  Њ  `=  Ѕ  D=     (=    =    №<    д<    И<    <    <  }  d<  x  H<  s  ,<  n  <  i  є;  d  и;  _  М;  Z   ;  U  ;  P  h;  K  L;  F  0;  A  ;  <  ј:  7  м:  2  Р:  -  Є:  (  :  #  l:    P:    4:    :    ќ9  
  р9    Ф9     Ј9  ћ  9  і  p9  ё  `9  ь  D9  э  (9  ш  9  у  №8  о  д8  й  И8  д  8  Я  8  Ъ  d8  Х  H8  Р  ,8  Л  $8  Ж  8  Џ   8  Ј  ф7  Ѓ  Ш7    Ќ7    7    t7    l7    P7    47  ~  ,7  y  7  r  є6  m  и6  h  а6  c  Д6  \  Ќ6  W  6  P  6  K  l6  D  d6  ?  \6  8  T6  1  L6  *  06  #  6    ј5    №5    ш5    р5    Ф5  џ  Ј5  њ   5  ѕ  5  ю  h5  щ  L5  ф  D5  п  <5  и  45  б  5  Ъ  ќ4  Х  р4  Р  Ф4  Л  Ј4  Ж  4  Б  p4  Ќ  T4  Ї  84  Ђ  4     4    ф3    Ш3    Ќ3    3    t3    X3  z  <3  u   3  p  3  k  ш2  f  Ь2  a  А2  \  2  W  x2  R  \2  M  @2  H  $2  C  2  >  ь1  9  а1  4  Д1  /  1  *  |1  %  `1     D1    (1    1    №0    д0    И0    0  §  0  ј  d0  ѓ  H0  ю  ,0  щ  0  ф  є/  п  и/  к  М/  е   /  а  /  Ы  h/  Ц  L/  С  0/  М  /  З  ј.  В  м.  ­  Р.  Ј  Є.  Ѓ  .    l.    P.    4.    .    ќ-    р-    Ф-  {  Ј-  v  -  q  p-  l  h-  g  `-  `  D-  Y  (-  T  -  O  №,  J  д,  E  И,  @  ,  ;  ,  6  d,  1  H,  ,  ,,  '  ,  "  є+    и+    а+    Д+    +    |+    `+  §  D+  ј  (+  ѓ  +  ю  №*  щ  д*  ф  И*  п  *  к  *  е  d*  а  H*  Ы  ,*  Ц  *  С  є)  М  и)  З  М)  В   )  ­  )  Ј  h)  Ѓ  L)    0)    )    ј(    м(    Р(    Є(    (  {  l(  v  P(  q  4(  l  (  g  ќ'  b  р'  ]  Ф'  X  М'  S   '  L  '  G  h'  B  `'  =  D'  6  <'  1  4'  *  ,'  #  $'    '    ь&    а&    Д&    Ќ&    Є&  њ  &  ѓ  &  ь  &  х  p&  о  T&  й  8&  д  &  Я   &  Ъ  ф%  Х  м%  Р  д%  Й  Ь%  В  Ф%  Ћ  Ј%  Є   %    %    |%    `%    X%    <%    4%  {  %  t  %  o  є$  h  и$  c  М$  ^   $  Y  $  T  h$  O  L$  J  0$  E  $  @  ј#  ;  м#  6  Р#  1  Є#  ,  #  '  l#  "  d#    \#    @#    8#  
  ,#     #  ў  #  љ  ш"  є  Ь"  я  А"  ъ  "  х  x"  р  \"  л  @"  ж  $"  б  "  Ь  ь!  Ч  а!  Т  Д!  Н  Ќ!  И  !  Б  !  Ќ  l!  Ѕ  d!     H!    ,!    !    є     и     М     Д   {     t  |   o  `   j  D   e  (   `      [     T  ќ  O  р  H  и  C  М  <  Д  7    0    +  t  $  X    P    4    ,            ь  ћ  ф  і  Ш  я  Р  ъ  Є  у    о    з  x  в  \  Ы  T  Ц  8  П    К     Е  ј  А  м  Љ  д  Є  И            d    H    ,        є  z  и  u  М  p     k    f  h  a  L  \  0  W    R  ј  M  м  H  Р  C  Є  >    9  l  4  P  /  4  *    %  ќ     р    Ф    М    А  
  Є         l  ћ  P  і  4  ё    ь  ќ  ч  є  т  и  л  М  ж     б    Ь  h  Ч  L  Т  0  Н    И  ј  Г  ь  Ў  а  Љ  Ш  Є  Ќ                     d    \  }  T  v  8  o    j     e  ф  `  Ш  [  Ќ  V    Q  t  L  X  G  <  B     =    8  ш  3  Ь  .  А  )    $  x    \    @    $        ь    а    Д  ќ    ї  |  ђ  `  э  D  ш  (  у    о  №  й  д  д  И  Я    Ъ    Х  d  Р  H  Л  ,  Ж    Б    Ќ  ш  Ї  Ь  Ђ  А        x    \    @    4        ќ  z  р  u  Ф  p  Ј  k    f    a  |  Z  `  S  X  N  P  G  4  @  ,  ;  $  4    -     &  ј  !  №    д    Ь    Ф    Ј        ћ    є  |  э  t  ш  l  с  P  к  H  е  @  Ю  $  Ч    Т    Л    Д  №  ­  ш  Ј  р  Ё  Ф    М    Д    Ќ          {    t  d  m  \  h  T  a  8  Z  0  U  (  N    G    B  ќ  ;  р  4  и  /  а  (  Д  !      |    `    D    (        №  ў  д  љ  И  є    я    ъ  d  х  H  р  ,  л    ж  є  б  и  Ь  М  Ч     Т    Н  |  И  `  Б  D  Ќ  (  Ї    Ђ  №    д    Ш    М             x    \  z  @  u  $  p    k  ь  f  а  a  Д  \    W  |  R  `  M  D  H  (  C    >  №
  9  д
  4  И
  /  А
  *  
  #  
    p
    T
    8
    
     
    ј	  ў  №	  ї  ш	  №  Ь	  щ  А	  ф  	  п  x	  к  \	  е  @	  а  $	  Ы  	  Ц  ќ  С  є  М  и  Е  а  А  Ш  Љ  Ќ  Ђ      t    X    <             ш    Ь  z  А  u    p  x  k  \  f  @  a  $  \    W  ь  R  а  M  Д  H    C  |  >  `  9  D  4  (  /    *  №  %  д     И            d    H    ,      §
  є  ј
  и  ѓ
  М  ю
     щ
    ф
  h  п
  L      ,  L      L    м      Ќ      |      L            ь      М            \      ,      ќ      Ь            l      0      є       И          &
  8  7  6   	 5  4  3  2  1  0  /  .  -  ,  +  *   )  (  '  &  %  $  #  "  !                                               џџ
  	              

          џ  ў  §  ќ  ћ  њ  љ  ј  ї  і  ѕ  є  ѓ  ђ           ё  №  я  ю  э  ь  ы  ъ  щ    ш  ч  ц  х  ф  у  т  с  р  п  о  н  м  л  к  й  и  з  ж  е  д  г  в  б  а  Я  Ю  Э  Ь  Ы  Ъ  Щ  Ш  Ч  Ц  Х  Ф  У  Т  С  Р  П         @О  Н  М  Л  К  Й  И  З  Ж  Е  Д  OГ  В  Б  А  Џ  Ў  F­  Ќ  Ћ  Њ  Љ  _Ј  &Ї  &І  V>qЅ  Є  Ѓ  Ђ  Ё  &       ""C                                                              ~  }  |  {  z  y  x  w  v  u  t  s  r  q  p  o  n  m  l  k  j  i  h  g  f  e  d  c  b  a  `  _  ^  ]  \  [  Z  Y  X  W   V  U  T  S  R  Q  P  O  N  M  L  K  J  I  &H  G  F  E  D  C  B  A  @  ?  >  =  <  ;  :  9  8  7  6  5  4  3  2  1  0  /  .  -  ,  +  *  )  (  '  &  %  $  	#  "  !     I
                    P№@№ №0№  a_  `_  ^_  __  ]_            
  	                               џ   ў   §   ќ   ћ   њ   љ   ј   ї   і   ѕ   є   ѓ   ђ   ё   №   я   ю   э   ь   Кwы   ъ   щ   ш   ч   ц   х   ф   у   т   с   р   п   о   н   м   л   к   й   и   з   Вwж   Се   д   г   в   б   а   Я   Ю   Э   Ь   Ы   Ъ   Щ   Ш   Ч   Ц   Х   Ф   У   Т   С   Р   П   О   Н   М   Л   К    џџџ     Й   И   З   Ж   Е   Д    ёГ   В   Б   А   Џ   Ў   ­   Ќ   Ћ       Њ    Љ             
 Ј     Ї   І   Ѕ   Є   Ѓ   Ђ   Ё                                                                                                             ~   }   |   {   z     y   x   w   v   u   t   ђ_s   ё_r   э^ё q   Щ^p   Ш^ o   Ч^џn   Ц^ўm   Х^§l   Ф^ќ k   ё^j   №^	 i   і^)h   r`Нwg   h`Мwf   ^`Лwe   V_  d   c   b   a   `   _   ^   ]   \   [   Z   Y   X   W   V   U   T   S   R   Q   P   (O   N   M   L   K   J    @      I       H   G   F   E   D   C   B   A   @   ?   >   =   <   ;   :   9   8    7    6   5   4   3   2   `№ЉwЎw1   0   /   .   -   ,   +      *   x)   ћw (   '   &   %   $   #   "   !                                                                      
   	                                           0&Product CatalogProduct &Orders&Customer InformationCourse &DescriptionsCourse &Schedule&Employee Information&Open&PrintP&rinter Setup...E&xit&File&Salary AllocationSales &CategoriesSalary &AveragesAttendence &Totals       &Analyze&Product List&Order Packing ListC&ustomer Labels&Course CatalogClass &ScheduleClass &RosterPhone &List&Birthday List&Employee Roster&Reports&System Settings&DOS Environment&Engine Configuration&Windows Resources
&Import...           &Mail Merge...&Publish...&Table Repair...Maintain &Lookups&System Information
&Utilities&Preferences&Tools	&Contents	&About...&Help PRODUCTSPRODORDSCUSTINFOCRSEDESC                CRSESCHDEMPLINFOGRAFSLRYGRAFPRODXTABATNDXTABSLRY:RPTS:PRODLIST:RPTS:PACKLIST:RPTS:CUSTLBLS:RPTS:CRSEDESC:RPTS:CRSESCHD:RPTS:CRSERSTR:RPTS:PHONELST:RPTS:BIRTHDAY:RPTS:EMPLROSTSYS               DOSBDEWINImportMergeTUTILITYLKUFORMSSYSPREFSABOUTBOX:FORMS:Can't Perform CommandReason: This% has not been implemented yet, sorry!Can't Perform Action failed to open.           Can't Run Processfailed to open; see details...OpenAnalyzeReportsToolsHelpPVStandardStdGeneralGenObjectObjGlobalGlo             AlignAliText AlignmentTxt
Data EntryPrintCut to ClipboardCopy to ClipboardPaste from ClipboardFilterLocate Field ValueLocate NextFirst RecordPrevious Record SetPrevious RecordNext Record       Next Record SetLast RecordToggle Edit ModeInsert RecordDelete Record:FORMS:PASSWORDCan't Get PasswordReason: The Enter Password dialog could not be opened.FLDPASSWORDDOS EnvironmentSystem SettingsWindows ResourcesCan't Show Information	Reason: "" is not a valid            information type.:DATA:SYSPREFSCan't Save Setting(The table failed to open; see details...Reason:Couldn't locate the 	 setting.DataTypeStringSmallIntLongIntLogicalDateDateTimeTime#Setting data type is not supported.            Invalid value for the setting.ValueCan't Get SettingCan't Select Record is not a valid -data object or is not bound to a valid table.Reason: Unable to open  Reason: Selection form does not contain an object named .ScreenRPTITLERPTLINE1RPTLINE2RPTLINE3       .RSL.RDLCan't Print ReportReason: The   report doesn't appear to exist.)  Please make sure you've created it and (entered the name correctly in your code.:RPTS:PRODORDS:PRIV:ANSWERPrinterPublishFileCan't Run Report#Reason: The destination you chose () is not currently !supported.  Please make sure the       $reportHandler() library function is updated accordingly.Can't Preview ReportReason: The report 	\HTMLIB01HTML Publishing Error"Reason: Unable to load publishing library; see details...PxReportTBD Published Report'Reason: The publishing routine failed; see details.Report Sucessfully Published'Your report has been published.  Would #you like to view the final file in your Internet browser?               YesCan't Preview HTMLbrowser failed to launch; see 
details...QBFBIRTHQBFCDESCQBFCRSTRQBFSCHEDQBFCLBLSQBFEROSTQBFPKLSTQBFPHONEQBFPRODS*Reason: The reportQuery() routine doesn't appear to support the ! report.  Please check your code.          :FORMS:RPTDESTSCan't Output ReportReason: The dialog failed to open; see details...
FLDRPTDESTSave to &Text FilePublish to &HTMLPrinter &Setup...&Close	Ctrl+F425%50%100%200%400%
Fit &WidthFit &Height           	&Best Fit&Zoom&First&Last&Next	Shift+F4&Previous	Shift+F3	&Go To...Pa&ge&FilterPrinter &Setup&Form&Undo	Alt+BkSpCu&t	Ctrl+X&Copy	Ctrl+C&Paste	Ctrl+V&Edit        &Edit Mode	F9L&ock Record	Ctrl+L&Save Changes	Shift+Ctrl+L&Cancel Changes	Alt+BkSp&Insert New Record	Ins&Delete Record	Ctrl+Del&First Record	Ctrl+Home&Previous Record Set	PgUp&Previous Record	F11&Next Record	F12&Next Record Set	PgDn&Last Record	Ctrl+EndLocate	Ctrl+ZLocate Next	Ctrl+A&RecordREPORT1      Save Report As:PRIV:.TXTCan't Export ReportReason: The report failed to export; see details...Report Preview:PIX:TEXTFILE.BMPSave As Text File:PIX:WEBFIRST.BMPPublish To HTML:PIX:ZOOM100.BMPZoom to 100%:PIX:FITWIDTH.BMPZoom to Page Width:PIX:BESTFIT.BMP   Zoom to Best Fit
First PagePrevious Page	Next Page	Last Page
Go to PageCan't Set Destination
 is not a &supported output device.  Destination 
is set to .

Please check you code.Confirm DeleteAre you sure you want %to permanently remove this data from the system? You cannot modify this field.Can't Lookup Values Reason: Unable to save changes; see details...Reason: Unable to unlock record; see details...COURSECATEGORYID:FORMS:LKUCATEGCrseCtgy.CourseCategoryIDCOURSENUMBERCourseCategoryID:FORMS:CRSEDESCCRSEDESC.CourseNumberSelect CourseEMPLOYEE
DEPARTMENT            :FORMS:LKUDEPTSDept.DepartmentJOBCODE:FORMS:LKUJOBCDJobCd.JobCodeEMPREVWORDITEMSITEMNO:FORMS:PRODUCTS%Notebook1.pgSelect.Products.ProductIDSelect Product
CUSTOMERID:FORMS:CUSTINFO'nbCustInfo.pgSelect.Customer.CustomerIDSelect Customer
CATEGORYID               TRAININGCrseDesc.CourseNumberReason: Unable to open the  form.  Please check your code.Reason: Unable to locate the  object on the lookup form.BTNFORMDONE	BTNACCEPT	BTNCANCELDuplicate EntryThe value you selected () already exists.  Please edit or delete the previous entry.Reason: New Value wasn't accepted; see details...Can't Relock Record             See details...Can't Edit MemoReason: Unable to attach to active object; see details...:FORMS:EDITMEMO Memo Editor form; see details...
FLDMEMOFLDAre you sure you #want to delete the current product "order?  If you choose [Yes], this "will permanently remove the order #and its items from the system.  If %you make a mistake, you will need to "re-enter the order from scratch.

Choose [No] to Cancel.:DATA:ORDITEMS           Can't Delete RecordReason: Unable to remove items; see details...OrderIDReason: Unable to #locate detail items; see details...Reason: Can't lock details...Reason: Can't delete details...'want to delete the currently scheduled "class?  If you choose [Yes], this will also remove the student assignments for the class.  If #re-enter the class and roster from 
scratch.

:DATA:CRSERSTR#student assignments; see details...    CourseNumberScheduledDate*locate student assignments; see details...CUSTOMER$want to delete the current customer?If you choose [Yes], this will %permanently remove the customer from the system.  

:DATA:PRODORDSorders; see details...
CustomerIDlocate orders; see details...Reason: The selected customer has  order(s) in the system.  You must delete these before you       can delete the customer.order items; see details...ItemNo	ProductIDlocate product; see details...product has been ordered; It cannot be deleted.

 This makes sure we can keep the historical data intact.:DATA:NEXTNUMCan't Get Next NumberReason: The NEXTNUM table  table and field.  Please check your code.!Reason: Unabled to edit NEXTNUM; Reason: Another user is          adding a record to %.  Please try again in a few moments.NextNumConfirmExitWarning"Reason: The is a problem with the 'call to the getSystemSetting() library .routine.  The form will close, but you should check you code.Confirm Exitwant to exit 
this form?the  form?#Duplicate Value.

Change the ID or #press <Alt+BackSpace> to undo your       
change(s).(Invalid field value; press <Ctrl+Space> !for a list of appropriate values.&Invalid date value; enter date values %in MM/DD/YY format.

Note: Two digit &years are assumed to be in the 1900's.Cannot move in that directionValue too high.Value too low.&No unsaved changes; either no changes $have been made or your changes have already been saved.$Lookup Help is not available on the current field.&You must be in Edit mode to do this.

Press <F9> and then try again.               )The current field can't be edited here.  )You need to use a different technique or "go to another location.  For more information, see Help.)The current form is being displayed as a %dialog box.  To design it, close the )current window and then open the form in &Design mode from the Paradox menus or Project Viewer.ErrorsUnmapped Error : ErrorDocumentHTMLCan't Publish Data                Reason: HTML 'publishing features are only available %in Corel Paradox 8 for Windows 95/NT %or later versions.

We apologize for any inconvenience.CoreUI	HTMLTableTableRepairCan Perform Task*systemRunExpert() routine was called with an invalid parameter ().

Please check your code.Can't Perform TaskReason: An unexpected (error occured when trying to launch the  Expert; see details...    :FORMS:ROSTTYPECan't Edit RosterReason: Can't open the #Student Type dialog; see details...FLDSTUDENTTYPECustomerReason: Unable to extract  names; see details...:PRIV:BADQUERY.TXTThere are no   names in the system.  You need to add 	s before you can assign them to classes.LASTNAME,         	FIRSTNAMEIDReason: Unable to get previous :FORMS:DUALLIST dual list dialog; see details...CCSelect s for Class	StudentID\NAMECan't Use AliasThe ) alias is not valid, presumeably because &the folder or network drive no longer %exists.  Choose a different alias or               folder.Save Crosstab As.DBEXT.DBFCopying data to ...Can't Save Crosstab#Data failed to copy; see details...Exporting data to DRIVEPATH.SCH:MAIN:\HELPINFO.EXEMYGRAPH             Save Graph AsBMPCopying graph to Can't Save GraphPublish1Publish Report To.HTMopen; see details...
TBD ReportCan't Insert Recordopen the table; see details...	PRODUCTIDORDERIDCRSECTGYReason: Unable to get a unique&ID value.  Try again in a few moments.       An unexpected error was encountered; see details...CRSERSTRSCHEDULEDDATECourseID	ClassDateCRSERSTR.ATTENDEDReason: Unable to get a #new Course Number.  Try again in a few moments.W3,EZProdOrds!Reason: You must use the Product  Order form to add items to this table.
EMPLOYEEID !Employee ID.  Try again in a few moments.:FORMS:ADDEMPLYReason: Can't open dialog; Add Employee cancelled...FLDLASTNAMEFLDFIRSTNAMEFLDHIREDATEFLDBIRTHDATE	FLDSOCNUM	FLDGENDERAn unexpected error was encountered; see details...Can't Publish TableChoose Table to Publish:DATA: DBThe table you selected (  doesn't appear to exist.Publish Table To,	TBD TableTable Sucessfully Published&Your table has been published.  Would Launching browser...    