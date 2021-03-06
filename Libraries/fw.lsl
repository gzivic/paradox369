MZP      ��  �       @                                   �   � �	�!�L�!��This program must be run under Microsoft Windows.
$            NE
� 
     	�                @ P � � � �                P   q  �      �0�    �     � 0�    �     � 0�     �     � 0�    �     � 0�    	�      0�    �      0�      Fw  LIBENTRY  WEP                       � ˸ �                                        �LBorland Standard File           �         @   |              � �~ �      @       	�               �              �               �               �               � �F Library   Form   UIManager   UIContainer   UIObject   	� ��  ���������f6                                             open+ close+ canArrive2 arrive2 setFocus+ canDepart2 removeFocus+ depart2 mouseEnter, mouseExit, mouseMove, mouseDown, mouseUp, mouseDouble, mouseRightDown, mouseRightUp, mouseRightDouble, keyPhysical- keyChar- action. menuAction/ timer4 pushButton+ changeValue0 calcField+ run+ newValue+ proc+ error3 status1 mouseClick, init+ Uses Type Var Const Proc formActionBefore. prefilterActionBefore. formMenuActionBefore/ formOpenBefore+ formCloseBefore+ formActionAfter. prefilterActionAfter. _readMe formMenuActionAfter/ prefilterKeyPhysicalBefore- formOpenAfter+ prefilterMouseEnterBefore, prefilterMouseExitBefore, prefilterMouseRightUpBefore, dmActionBefore init formErrorBefore3 � �6H � �0H��                     b    �DG  �� #� method formActionBefore( var fwFormInfo FWForm, var eventInfo ActionEvent, var fwEventInfo FWEvent)

	var
   	uiTarget		UIObject

		siId			SmallInt

   endVar

	try
		siId = eventInfo.id()

		; Note that this method is called _before_ the
		; app method. Thus an app could re-enable the
		; behaviour by setting the error code back to
      ; zero...

		switch
			case siId = DataDesign			:
				eventInfo.setErrorCode( UserError)

			case siId = DataLookupMove		:
				eventInfo.setErrorCode( UserError)

			case siId = DataSearchReplace	:
				eventInfo.setErrorCode( UserError)

			case siId = DataTableView		:
				eventInfo.setErrorCode( UserError)

			case siId = DataLockRecord		:

         	; Work around a rather awkward problem. If a drop-down
            ; combobox causes a DataLockRecord action and the lock
            ; fails, the combo box will try to get the lock a second
            ; and third time.

            if not gsLastLockedListName.isAssigned() then
					gsLastLockedListName = ""
            endif

				; The work-around is to remember which list last got the
            ; lock, and to re-set the error code if the same list is
            ; locked again.

            ; The 'last locked list' is blanked if a lock is attempted
            ; on any other UIObject.

            eventInfo.getTarget( uiTarget)

            if uiTarget.class = "List" and uiTarget.fullName = gsLastLockedListName then
					eventInfo.setErrorCode( UserError)
            else
            	gsLastLockedListName = ""
	         endIf

		endSwitch
	onFail
		fail( cFailMethod, "formActionBefore")
	endTry

endmethod
 formActionBefore. $� method prefilterActionBefore( var fwFormInfo FWForm, var eventInfo ActionEvent, var fwEventInfo FWEvent)

	try
		switch
			case eventInfo.id() = EditHelp	         :
				glibFWOn.onPrefilterActionBeforeEditHelp( eventInfo)
						
			case eventInfo.id() = EditProperties		:
				glibFWOn.onPrefilterActionBeforeEditProperties( eventInfo)

		endSwitch
	onFail
		fail( cFailMethod, "prefilterActionBefore")
	endTry

endmethod
 prefilterActionBefore. %� method formMenuActionBefore( var fwFormInfo FWForm, var eventInfo MenuEvent, var fwEventInfo FWEvent)

	try
		switch
			case eventInfo.id() = MenuInit				:
				glibFWOn.onFormMenuActionMenuInit( eventInfo)

			case eventInfo.id() = MenuControlSize		:
				glibFWOn.onFormMenuActionBeforeControlSize( eventInfo)

			case eventInfo.id() = MenuControlMaximize	:
				glibFWOn.onFormMenuActionBeforeControlMaximize( eventInfo)

			case eventInfo.id() = MenuControlClose		:
				glibFWOn.onFormMenuActionBeforeControlClose( eventInfo)

			case eventInfo.id() = MenuCanClose			:
				glibFWOn.onFormMenuActionBeforeCanClose( eventInfo)

		endSwitch
	onFail
		fail( cFailMethod, "formMenuActionBefore")
	endTry

endmethod
 formMenuActionBefore/ &�  method formOpenBefore( var fwFormInfo FWForm, var eventInfo Event, var fwEventInfo FWEvent)

	try
		glibFWOn.onFormOpenBefore( eventInfo)
	onFail
		fail( cFailMethod, "formOpenBefore")
	endTry

endmethod
 formOpenBefore+ '�  method formCloseBefore( var fwFormInfo FWForm, var eventInfo Event, var fwEventInfo FWEvent)

	try
		glibFWOn.onFormCloseBefore( eventInfo)
	onFail
		fail( cFailMethod, "formCloseBefore")
	endTry

endmethod
 formCloseBefore+ ��  Var

   ;$ Framework Start
   ;
   ; DO NOT MODIFY THIS BLOCK!

	glibFWOn			Library
	glibFWTools		Library

   ;$ Framework End

   gsLastLockedListName	String

endVar
 Var �9 Uses ObjectPAL

	":fw:fwGlbl.lsl"

endUses

Uses ObjectPAL { FWTools }

	; Menu Methods

	isMenuKey( var eventInfo KeyEvent) Logical

	; Toolbar Methods

	toolbarSetPage( const siToolbarPage SmallInt)

endUses

Uses ObjectPAL { FWOn }

	; Action Methods: App

	onActionAppCanOpen( var eventInfo ActionEvent)
	onActionAppOpen( var eventInfo ActionEvent)

	onActionAppConfirmClose( var eventInfo ActionEvent)

	onActionAppCanClose( var eventInfo ActionEvent)
	onActionAppClose( var eventInfo ActionEvent)

	onActionAppCanLogin( var eventInfo ActionEvent)
	onActionAppLogin( var eventInfo ActionEvent)

	onActionAppCanLogout( var eventInfo ActionEvent)
	onActionAppLogout( var eventInfo ActionEvent)

	onActionAppClear( var eventInfo ActionEvent)

	onActionAppShowTitle( var eventInfo ActionEvent)
	onActionAppRemoveTitle( var eventInfo ActionEvent)

	onActionAppShowMenu( var eventInfo ActionEvent)
	onActionAppRemoveMenu( var eventInfo ActionEvent)

	onActionAppShowToolbar( var eventInfo ActionEvent)
	onActionAppHideToolbar( var eventInfo ActionEvent)
	onActionAppRemoveToolbar( var eventInfo ActionEvent)

	onActionAppShowHelp( var eventInfo ActionEvent)
	onActionAppRemoveHelp( var eventInfo ActionEvent)

	onActionAppShowHelpHint( var eventInfo ActionEvent)
	onActionAppRemoveHelpHint( var eventInfo ActionEvent)

	onActionAppShowMap( var eventInfo ActionEvent)
	onActionAppRemoveMap( var eventInfo ActionEvent)

	onActionAppConfirmDelete( var eventInfo ActionEvent)

	onActionAppShowKeyViolMsg( var eventInfo ActionEvent)

	onActionAppPopUpMenu( var eventInfo ActionEvent)

	; Action Methods: Form

   onActionFormColor( var eventInfo ActionEvent)

	onActionFormShowMenu( var eventInfo ActionEvent)
	onActionFormRemoveMenu( var eventInfo ActionEvent)

	onActionFormConfirmClose( var eventInfo ActionEvent)

	onActionFormPopUpMenu( var eventInfo ActionEvent)

	; Action Methods: UIObject

	onActionUIObjectPopUpMenu( var eventInfo ActionEvent)

	; DmAction Methods

	onDmActionBeforeDelete( var dmEventInfo DMActionEvent)
	onDmActionBeforeInsert( var dmEventInfo DMActionEvent)
	onDmActionBeforeModify( var dmEventInfo DMActionEvent)

	; Form Methods

	onFormOpenAfter( var eventInfo Event)
	onFormOpenBefore( var eventInfo Event)

	onFormCloseBefore( var eventInfo Event)

	onFormActionAfterPostRecord( var eventInfo ActionEvent)

	onFormMenuAction( var eventInfo MenuEvent)

	onFormMenuActionMenuInit( var eventInfo MenuEvent)

	onFormMenuActionFormOpen( var eventInfo MenuEvent)
	onFormMenuActionReportOpen( var eventInfo MenuEvent)
	onFormMenuActionHelpContents( var eventInfo MenuEvent)
	onFormMenuActionHelpIndex( var eventInfo MenuEvent)
	onFormMenuActionMap( var eventInfo MenuEvent)
	onFormMenuActionAbout( var eventInfo MenuEvent)

	onFormMenuActionAfterControlMaximize( var eventInfo MenuEvent)
	onFormMenuActionAfterControlRestore( var eventInfo MenuEvent)
	onFormMenuActionAfterControlSize( var eventInfo MenuEvent)

	onFormMenuActionBeforeControlSize( var eventInfo MenuEvent)
	onFormMenuActionBeforeControlMaximize( var eventInfo MenuEvent)
	onFormMenuActionBeforeControlClose( var eventInfo MenuEvent)

	onFormMenuActionBeforeCanClose( var eventInfo MenuEvent)

	; Prefilter Methods

	onPrefilterActionAfterDataLookup( var eventInfo ActionEvent)

	onPrefilterActionBeforeEditHelp( var eventInfo ActionEvent)
	onPrefilterActionBeforeEditProperties( var eventInfo ActionEvent)

	onPrefilterKeyPhysicalBeforeVK_RETURN( var eventInfo KeyEvent)
	onPrefilterKeyPhysicalBeforeVK_ESCAPE( var eventInfo KeyEvent)

	onPrefilterKeyPhysicalBeforeMenuKey( var eventInfo KeyEvent)

	onPrefilterMouseEnterBefore( var eventInfo MouseEvent)
	onPrefilterMouseExitBefore( var eventInfo MouseEvent)
	onPrefilterMouseRightUpBefore( var eventInfo MouseEvent)

endUses
 Uses (q method formActionAfter( var fwFormInfo FWForm, var eventInfo ActionEvent, var fwEventInfo FWEvent)

	var
   	uiTarget		UIObject

		siId			SmallInt

   endVar

	try
   	siId = eventInfo.id()

		switch
         case siId = DataLockRecord					:

         	; Work around a rather awkward problem. If a drop-down
            ; combobox causes a DataLockRecord action and the lock
            ; fails, the combo box will try to get the lock a second
            ; and third time.

            eventInfo.getTarget( uiTarget)

				; The work-around is to remember which list last got the
            ; lock, and to re-set the error code if the same list is
            ; locked again.

            if uiTarget.class = "List" and eventInfo.errorCode() <> peOK then
               gsLastLockedListName = uiTarget.FullName
				else
               gsLastLockedListName = ""
	         endif

         case siId = DataUnlockRecord			  	:
            glibFWOn.onFormActionAfterPostRecord( eventInfo)

         case siId = DataPostRecord					:
            glibFWOn.onFormActionAfterPostRecord( eventInfo)

			case siId = cAppCanOpen						:
				glibFWOn.onActionAppCanOpen( eventInfo)

			case siId = cAppOpen							:
				glibFWOn.onActionAppOpen( eventInfo)

			case siId = cAppConfirmClose				:
				glibFWOn.onActionAppConfirmClose( eventInfo)

			case siId = cAppCanClose					:
				glibFWOn.onActionAppCanClose( eventInfo)

			case siId = cAppClose						:
				glibFWOn.onActionAppClose( eventInfo)

			case siId = cAppCanLogin					:
				glibFWOn.onActionAppCanLogin( eventInfo)

			case siId = cAppLogin						:
				glibFWOn.onActionAppLogin( eventInfo)

			case siId = cAppCanLogout					:
				glibFWOn.onActionAppCanLogout( eventInfo)

			case siId = cAppLogout						:
				glibFWOn.onActionAppLogout( eventInfo)

			case siId = cAppClear						:
				glibFWOn.onActionAppClear( eventInfo)

			case siId = cAppShowTitle					:
				glibFWOn.onActionAppShowTitle( eventInfo)

			case siId = cAppRemoveTitle				:
				glibFWOn.onActionAppRemoveTitle( eventInfo)

			case siId = cAppShowMenu					:
				glibFWOn.onActionAppShowMenu( eventInfo)

			case siId = cAppRemoveMenu					:
				glibFWOn.onActionAppRemoveMenu( eventInfo)

			case siId = cAppShowToolbar				:
				glibFWOn.onActionAppShowToolbar( eventInfo)

			case siId = cAppHideToolbar				:
				glibFWOn.onActionAppHideToolbar( eventInfo)

			case siId = cAppRemoveToolbar				:
				glibFWOn.onActionAppRemoveToolbar( eventInfo)

			case siId = cAppShowHelp					:
				glibFWOn.onActionAppShowHelp( eventInfo)

			case siId = cAppRemoveHelp					:
				glibFWOn.onActionAppRemoveHelp( eventInfo)

			case siId = cAppShowHelpHint				:
				glibFWOn.onActionAppShowHelpHint( eventInfo)

			case siId = cAppRemoveHelpHint			:
				glibFWOn.onActionAppRemoveHelpHint( eventInfo)

			case siId = cAppShowMap						:
				glibFWOn.onActionAppShowMap( eventInfo)

			case siId = cAppRemoveMap					:
				glibFWOn.onActionAppRemoveMap( eventInfo)

			case siId = cAppPopUpMenu					:
				glibFWOn.onActionAppPopUpMenu( eventInfo)

			case siId = cAppConfirmDelete				:
				glibFWOn.onActionAppConfirmDelete( eventInfo)

			case siId = cAppShowKeyViolMsg			:
				glibFWOn.onActionAppShowKeyViolMsg( eventInfo)

			case siId = cFormColor						:
				glibFWOn.onActionFormColor( eventInfo)

			case siId = cFormShowMenu					:
				glibFWOn.onActionFormShowMenu( eventInfo)

			case siId = cFormRemoveMenu				:
				glibFWOn.onActionFormRemoveMenu( eventInfo)

			case siId = cFormConfirmClose				:
				glibFWOn.onActionFormConfirmClose( eventInfo)

			case siId = cFormPopUpMenu					:
				glibFWOn.onActionFormPopUpMenu( eventInfo)

			case siId = cUIObjectPopUpMenu			:
				glibFWOn.onActionUIObjectPopUpMenu( eventInfo)

		endSwitch
	onFail
		fail( cFailMethod, "formActionAfter")
	endTry

endmethod
 formActionAfter. )9 method prefilterActionAfter( var fwFormInfo FWForm, var eventInfo ActionEvent, var fwEventInfo FWEvent)

	try
		switch
			case eventInfo.id() = DataLookup	:
				glibFWOn.onPrefilterActionAfterDataLookup( eventInfo)

		endSwitch
	onFail
		fail( cFailMethod, "prefilterActionAfter")
	endTry

endmethod
 prefilterActionAfter. *n  method _readMe()

	{	(c) 1994-7 frogware inc. all rights reserved.	}

	 ; Framework Library

endmethod
 _readMe +� method formMenuActionAfter( var fwFormInfo FWForm, var eventInfo MenuEvent, var fwEventInfo FWEvent)

	try
		switch
			case eventInfo.id() = MenuControlSize								:
				glibFWOn.onFormMenuActionAfterControlSize( eventInfo)

			case eventInfo.id() = MenuControlMaximize							:
				glibFWOn.onFormMenuActionAfterControlMaximize( eventInfo)

			case eventInfo.id() = MenuControlRestore							:
				glibFWOn.onFormMenuActionAfterControlRestore( eventInfo)

			case eventInfo.id() = UserMenu + cMenuChildActivateNone		:
				if eventInfo.errorCode() = peOk then
					self.action( cAppShowMenu)

					glibFWTools.toolbarSetPage( cToolbarPageBlank)
               
				endIf

			case eventInfo.id() = UserMenu + cMenuChildActivateForm		:
				if eventInfo.errorCode() = peOk then
					glibFWTools.toolbarSetPage( cToolbarPageForm)
				endIf

			case eventInfo.id() = UserMenu + cMenuChildActivateReport	:
				if eventInfo.errorCode() = peOk then
					glibFWTools.toolbarSetPage( cToolbarPageReport)
				endIf

			case eventInfo.id() = UserMenu + cMenuChildActivateOther		:
				if eventInfo.errorCode() = peOk then
					glibFWTools.toolbarSetPage( cToolbarPageBlank)
				endIf

			case eventInfo.id() = UserMenu + cMenuFormOpen					:
				glibFWOn.onFormMenuActionFormOpen( eventInfo)

			case eventInfo.id() = UserMenu + cMenuReportOpen				:
				glibFWOn.onFormMenuActionReportOpen( eventInfo)

			case eventInfo.id() = UserMenu + cMenuHelpContents				:
				glibFWOn.onFormMenuActionHelpContents( eventInfo)

			case eventInfo.id() = UserMenu + cMenuHelpIndex					:
				glibFWOn.onFormMenuActionHelpIndex( eventInfo)

			case eventInfo.id() = UserMenu + cMenuMap							:
				glibFWOn.onFormMenuActionMap( eventInfo)

			case eventInfo.id() = UserMenu + cMenuAbout						:
				glibFWOn.onFormMenuActionAbout( eventInfo)

			otherwise :
				glibFWOn.onFormMenuAction( eventInfo)

		endSwitch
	onFail
		fail( cFailMethod, "formMenuActionAfter")
	endTry

endmethod
 formMenuActionAfter/ ,�! method prefilterKeyPhysicalBefore( var fwFormInfo FWForm, var eventInfo KeyEvent, var fwEventInfo FWEvent)

	try

		; These routines will set the error code iff they handle the keystroke.

		if eventInfo.errorCode() = peOk then
			if glibFWTools.isMenuKey( eventInfo) then
				glibFWOn.onPrefilterKeyPhysicalBeforeMenuKey( eventInfo) 
			endif
		endif

		if eventInfo.errorCode() = peOk then
			switch
				case eventInfo.vCharCode() = VK_RETURN	:
					glibFWOn.onPrefilterKeyPhysicalBeforeVK_RETURN( eventInfo)

				case eventInfo.vCharCode() = VK_ESCAPE	:
					glibFWOn.onPrefilterKeyPhysicalBeforeVK_ESCAPE( eventInfo)

			endSwitch
		endIf
      
	onFail
		fail( cFailMethod, "prefilterKeyPhysicalBefore")
	endTry

endmethod
 prefilterKeyPhysicalBefore- -�  method formOpenAfter( var fwFormInfo FWForm, var eventInfo Event, var fwEventInfo FWEvent)

	try
		glibFWOn.onFormOpenAfter( eventInfo)
	onFail
		fail( cFailMethod, "formOpenAfter")
	endTry

endmethod
 formOpenAfter+ .�   method prefilterMouseEnterBefore( var fwFormInfo FWForm, var eventInfo MouseEvent, var fwEventInfo FWEvent)

	try
		glibFWOn.onPrefilterMouseEnterBefore( eventInfo)
	onFail
		fail( cFailMethod, "prefilterMouseEnterBefore")
	endTry

endmethod
 prefilterMouseEnterBefore, /�  method prefilterMouseExitBefore( var fwFormInfo FWForm, var eventInfo MouseEvent, var fwEventInfo FWEvent)

	try
		glibFWOn.onPrefilterMouseExitBefore( eventInfo)
	onFail
		fail( cFailMethod, "prefilterMouseExitBefore")
	endTry

endmethod
 prefilterMouseExitBefore, 0" method prefilterMouseRightUpBefore( var fwFormInfo FWForm, var eventInfo MouseEvent, var fwEventInfo FWEvent)

	try
		glibFWOn.onPrefilterMouseRightUpBefore( eventInfo)
	onFail
		fail( cFailMethod, "prefilterMouseRightUpBefore")
	endTry

endMethod
 prefilterMouseRightUpBefore, 1� method dmActionBefore( var fwFormInfo FWForm, var dmEventInfo DMActionEvent, var fwEventInfo FWEvent)

	try
		switch
			case dmEventInfo.id = DataInsertRecord		:
				glibFWOn.onDmActionBeforeInsert( dmEventInfo)

			case dmEventInfo.id = DataLockRecord		:
				glibFWOn.onDmActionBeforeModify( dmEventInfo)

			case dmEventInfo.id = DataDeleteRecord		:
				glibFWOn.onDmActionBeforeDelete( dmEventInfo)

		endSwitch
	onFail
		fail( cFailMethod, "dmActionBefore")
	endTry

endmethod
 dmActionBefore 2? method init()

	try
		message( "Initializing Framework...")
		sleep()

		if not glibFwOn.open( ":fw:FWOn") then
			fail()
		endIf

		if not glibFwTools.open( ":fw:FWTools") then
			fail()
		endIf
	onFail
		fail( cFailMethod, "init: Couldn't initialize the framework (fw) library.")
	endTry

endmethod
 init 3� method formErrorBefore( var fwFormInfo FWForm, var eventInfo ErrorEvent, var fwEventInfo FWEvent)

	try

		; we don't really want those pesky
		; 'Unknown error 1' messages...

		if (errorCode() = UserError) or (eventInfo.errorCode() = UserError) then
			eventInfo.setErrorCode( peOk)

			errorClear()

		endIf
      
	onFail
		fail( cFailMethod, "formErrorBefore")
	endTry

endmethod
 formErrorBefore3 �� Type

   ;$ Framework Start
   ;
   ; DO NOT MODIFY THIS BLOCK!

   DynArrayAnyType   = DynArray [] AnyType

   FWForm = record
      sFormName      String
      siFormIndex    SmallInt
      siFormOffset   SmallInt
   endRecord

   FWEvent = record
      siEvent        SmallInt

      lIsPrefilter   Logical

      lBefore        Logical
      lAfter         Logical

      lFWBefore      Logical
      lFWAfter       Logical

      lAppBefore     Logical
      lAppAfter      Logical

      lFormBefore    Logical
      lFormAfter     Logical

      lDoDefault     Logical

   endRecord

   DMActionEvent = record
      isFirstTime    Logical

      isFromUI       Logical

      id             SmallInt

      target         String
      targetAlias    String

      tc             TCursor

      errorCode      LongInt

   endRecord

   DMCursor          = DMActionEvent

   ;$ Framework End

endType
 Type    p          b    ] �                                              ��� �  �    ��                   � .    4 # C:\APPSWIN\PDOXWIN5\DEFAULT.FT B  #Library1 POST >  ����        � � �
     � �   � �                                           r�  �        �                                                                                                            �   r��    �                 
                                                                                                                                                                                                                               0              