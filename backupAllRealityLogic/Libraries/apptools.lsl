MZP      ��  �       @                                   �   � �	�!�L�!��This program must be run under Microsoft Windows.
$            NE
	
     	�                @ P � 		�                P   q  �      50�    �     S 0�    �     T�0�     �     � 0�    �     � 0�    	�     � 0�    �     � 0�    � 0�      Apptools  LIBENTRY  WEP                     � ˸ �                                        ?#Borland Standard File           �         @   |              � �~ �      @       	�               �              �               �               �               � �F Library   Form   UIManager   UIContainer   UIObject   	� �   ��������f)                                             open+ close+ canArrive2 arrive2 setFocus+ canDepart2 removeFocus+ depart2 mouseEnter, mouseExit, mouseMove, mouseDown, mouseUp, mouseDouble, mouseRightDown, mouseRightUp, mouseRightDouble, keyPhysical- keyChar- action. menuAction/ timer4 pushButton+ changeValue0 calcField+ run+ newValue+ proc+ error3 status1 mouseClick, init+ Uses Type Var Const Proc _readMe init uiObjectPopUpMenu uiObjectOpenLocate � �  � ����                   A  b    �  �� ��  Var

   ;$ Framework Start
   ;
   ; DO NOT MODIFY THIS BLOCK!

   glibFWTools    Library
   glibAppTools   Library

   ;$ Framework End

endVar Var �� Type

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
 Type #u  method _readMe()

	{	(c) 1994-7 frogware inc. all rights reserved.	}

	; Application Tools Library

endmethod
 _readMe $� method init()

	try
		message( "Initializing Application/Tools...")
		sleep()

	   ;$ Framework Start
   	;
	   ; DO NOT MODIFY THIS BLOCK!

		if not glibFWTools.open( ":fw:FWTools") then
			fail()
		endIf

		;$ Framework End

		{
			Open other libraries & such here...
		}

	onFail
		fail( cFailMethod, "init: Couldn't initialize the application/tools (apptools) library.")
	endTry

endmethod
 init �� Uses ObjectPAL

	":fw:fwGlbl.lsl"

endUses

Uses ObjectPAL { FWTools }

	isErr() Logical

	errLogAll()
	errLogAllCritical()

	appPropertyGet( const sPropertyId String) String

	propertyGet( const sObjectTypeId String, const sObjectId String, const sPropertyId String) String
	propertyGetFromFilename( const sFilename String, const sPropertyId String) String

	dialogAttach( const sDialogname String, var fDialog Form) Logical
	dialogAttachOrFindOpen( const sDialogname String, var fDialog Form) Logical
	dialogAttachOrOpen( const sDialogname String, var fDialog Form) Logical
	dialogFind( const sDialogname String, var sFullDialogname String) Logical
	dialogFindOpen( const sDialogname String, var fDialog Form) Logical
	dialogOpen( const sDialogname String, var fDialog Form) Logical

	formAttach( const sFormname String, var fForm Form) Logical
	formAttachOrFindOpen( const sFormname String, var fForm Form) Logical
	formAttachOrOpen( const sFormname String, var fForm Form) Logical
	formFind( const sFormname String, var sFullFormname String) Logical
	formFindOpen( const sFormname String, var fForm Form) Logical
	formOpen( const sFormname String, var fForm Form) Logical

endUses
 Uses %� method uiObjectPopUpMenu( var uiTarget UIObject)

	var
		fForm				Form

      popUp				PopUpMenu
      sPopUpChoice	String

	endVar

	try

		; when a field is being edited, paradox plops
		; a little temporary text object on top of it.
		; that's going to get in the way of our ability
		; to figure out what field we're trying to
		; hyperlink on...

		if uiTarget.class = "Text" then
			if uiTarget.container.class = "Field" then

				; attach to containerName rather than
				; container to get around a strange
				; paradox form-related bug...

				; (the bug happens when you right click
				; on a field that's being edited.)

				uiTarget.attach( uiTarget.containerName)

			endIf
		endIf

		if uiTarget.class = "Field" then
			if not isBlank( uiTarget) and uiTarget.tableName <> "" then
				fForm.attach()
            fForm.bringToTop()

				if not uiTarget.focus then
            	uiTarget.moveTo()
            endIf

	         popUp.addText( cMenuItemLocate)
     	      popUp.addText( cMenuItemLocateNext)

				switch
					case match( uiTarget.name, cFieldCustomerNo + "..")		:
               	if upper( uiTarget.tableName) <> upper( cTableCustomer) then
	               	popUp.addSeparator()
   	               popUp.addText( cMenuItemOpenCustomer)
                  endIf

					case match( uiTarget.name, cFieldOrderNo + "..")			:
               	if upper( uiTarget.tableName) <> upper( cTableOrders) then
	               	popUp.addSeparator()
   	               popUp.addText( cMenuItemOpenOrder)
                  endIf

					case match( uiTarget.name, cFieldStockNo + "..")			:
               	if upper( uiTarget.tableName) <> upper( cTableStock) then
	               	popUp.addSeparator()
   	               popUp.addText( cMenuItemOpenStock)
                  endIf

					case match( uiTarget.name, cFieldVendorNo + "..")			:
               	if upper( uiTarget.tableName) <> cTableVendors then
	               	popUp.addSeparator()
   	               popUp.addText( cMenuItemOpenVendor)
                  endIf

					otherwise :

						; ignore it.

				endSwitch

            sPopUpChoice = popUp.show()

            switch
               case sPopUpChoice = cMenuItemLocate			:
                  uiTarget.action( DataSearch)

               case sPopUpChoice = cMenuItemLocateNext	:
                  uiTarget.action( DataSearchNext)

					case sPopUpChoice = cMenuItemOpenCustomer	:
						uiObjectOpenLocate( cFormCustomer, uiTarget)

					case sPopUpChoice = cMenuItemOpenOrder		:
						uiObjectOpenLocate( cFormOrders, uiTarget)

					case sPopUpChoice = cMenuItemOpenStock		:
						uiObjectOpenLocate( cFormStock, uiTarget)

					case sPopUpChoice = cMenuItemOpenVendor	:
						uiObjectOpenLocate( cFormVendors, uiTarget)

            endSwitch

			endIf
		endIf
	onFail
		fail( cFailMethod, "uiObjectPopUpMenu: Couldn't pop up uiObject menu.")
	endTry

endmethod
 uiObjectPopUpMenu &y method uiObjectOpenLocate( const sFormname String, var uiUIObject UIObject) Logical

	var
		lSuccess		Logical

		fForm			Form
		uiForm		UIObject

		daFilter		DynArray [] AnyType

	endVar

	try
		setMouseShape( MouseWait)

		if glibFWTools.formOpen( sFormname, fForm) then

			; for now we'll make the assumption that
			; we always want to seach on the first
			; field. that assumption has its limits...

			uiForm.attach( fForm)

			; if forms are set to 'View One',
			; we'll have to make sure we clear
			; any existing filters before
			; we do the locate thing.

			uiForm.attach( fForm)
			uiForm.setGenFilter( daFilter)

         ; note that the value being located must be
         ; the master table in the form being opened...

			uiForm.locate( 1, uiUIObject.value)

			fForm.bringToTop()
		else
			if fForm.isAssigned() then
				fForm.close()
			endIf
		endIf

		setMouseShape( MouseArrow)

		if fForm.isAssigned() then
			return True
		else
			return False
		endIf
	onFail
		fail( cFailMethod, "uiObjectOpenLocate: Couldn't open and locate the uiObject.")
	endTry

endmethod
 uiObjectOpenLocate � Const

	; Forms

   cFormCustomer				= ":app:customer"
   cFormOrders					= ":app:orders"
   cFormStock					= ":app:stock"
   cFormVendors				= ":app:vendors"

	; Tables

   cTableCustomer				= ":tables:customer.db"
   cTableOrders				= ":tables:orders.db"
   cTableStock					= ":tables:stock.db"
   cTableVendors				= ":tables:vendors.db"

	; Fields

   cFieldCustomerNo			= "Customer_No"
   cFieldOrderNo				= "Order_No"
   cFieldStockNo				= "Stock_No"
   cFieldVendorNo				= "Vendor_No"

	; Menu Items

   cMenuItemLocate			= "&Locate..."
   cMenuItemLocateNext		= "Locate &Next"
   
   cMenuItemOpenCustomer	= "Open Customer"
   cMenuItemOpenOrder		= "Open Order"
   cMenuItemOpenStock		= "Open Stock"
   cMenuItemOpenVendor		= "Open Vendor"

endConst
 Const    p        A  b    ] �                                              ��� �  �     ��  $                � .    4 # C:\APPSWIN\PDOXWIN5\DEFAULT.FT B  #Library1 POST >  ����        � � �
     � �   � �                                    V   �   �  �  ����                  �            �                   d                       ����    �                                                                '  �   �           	CONTAINER     �   �      �����               ����            d  \  b  ACTIVE     >       �����               ����            �  �      LASTMOUSECLICKED     �  \     �����               ����              �      SUBJECT     �  �     �����               ����            b  Z      LASTMOUSERIGHTCLICKED     <  �     �����               ����                        SELF     �  Z     �����               ����                	#LIBRARY1     �  �     �����  ?�          ����[       �  �      �  l  �    |          �  �  Z  
      �              g                  Z  �                  �  �                  k  9      ?                �  �  �  �  V
  5              �          	  �      q              %   CFORMCUSTOMER V  :app:customer          CFORMORDERS V  :app:orders          
CFORMSTOCK V  :app:stock     �   CFORMVENDORS V  :app:vendors     &   CTABLECUSTOMER V  :tables:customer.db     7   CTABLEORDERS V  :tables:orders.db        CTABLESTOCK V  :tables:stock.db          CTABLEVENDORS V  :tables:vendors.db     �   CFIELDCUSTOMERNO V  Customer_No          CFIELDORDERNO V  Order_No        CFIELDSTOCKNO V  Stock_No     �   CFIELDVENDORNO V  Vendor_No          CMENUITEMLOCATE V  &Locate...          CMENUITEMLOCATENEXT V  Locate &Next          CMENUITEMOPENCUSTOMER V  Open Customer     T   CMENUITEMOPENORDER V  Open Order          CMENUITEMOPENSTOCK V  Open Stock     *   CMENUITEMOPENVENDOR V  Open Vendor         DYNARRAYANYTYPE       8       �      $  FWFORM  7         P   �                      �����                          �                  �  �                  	SFORMNAME      V      SIFORMINDEX            SIFORMOFFSET        *      SFORMNAME SIFORMINDEX SIFORMOFFSET     FWEVENT  =         V   �	                      �����              �  /	  e	      I	  �  �	  �  �	              	      SIEVENT            LISPREFILTER      �  �  LBEFORE      �      LAFTER      �      	LFWBEFORE      �  �	  LFWAFTER      �      
LAPPBEFORE      �      	LAPPAFTER      �      LFORMBEFORE   	   �      
LFORMAFTER   
   �      
LDODEFAULT      �  }      SIEVENT LISPREFILTER LBEFORE LAFTER LFWBEFORE LFWAFTER LAPPBEFORE LAPPAFTER LFORMBEFORE LFORMAFTER LDODEFAULT     DMACTIONEVENT  o
         �
   �                       �����      )          �
  ^      �
  r                            A  ISFIRSTTIME      �      ISFROMUI      �      ID            TARGET      V      TARGETALIAS      V      TC      L      	ERRORCODE      "  C      ISFIRSTTIME ISFROMUI ID TARGET TARGETALIAS TC ERRORCODE   DMCURSOR  o
      �  ISERR       �        �   LIB_SELFisErr     	ERRLOGALL            ]     �   LIB_SELFerrLogAll     ERRLOGALLCRITICAL            �     �   LIB_SELFerrLogAllCritical �  APPPROPERTYGET       V       �   LIB_SELFV   SPROPERTYIDappPropertyGet     PROPERTYGET       V  �     �   LIB_SELFV   SOBJECTTYPEIDV   	SOBJECTIDV   SPROPERTYIDpropertyGet �  PROPERTYGETFROMFILENAME       V       �   LIB_SELFV   	SFILENAMEV   SPROPERTYIDpropertyGetFromFilename     DIALOGATTACH       �  y     �   LIB_SELFV   SDIALOGNAME�   FDIALOGdialogAttach     DIALOGATTACHORFINDOPEN       �  �     �   LIB_SELFV   SDIALOGNAME�   FDIALOGdialogAttachOrFindOpen     DIALOGATTACHOROPEN       �  i     �   LIB_SELFV   SDIALOGNAME�   FDIALOGdialogAttachOrOpen     
DIALOGFIND       �  �     �   LIB_SELFV   SDIALOGNAMEV   SFULLDIALOGNAMEdialogFind     DIALOGFINDOPEN       �  K     �   LIB_SELFV   SDIALOGNAME�   FDIALOGdialogFindOpen     
DIALOGOPEN       �  �     �   LIB_SELFV   SDIALOGNAME�   FDIALOGdialogOpen     
FORMATTACH       �       �   LIB_SELFV   	SFORMNAME�   FFORMformAttach     FORMATTACHORFINDOPEN       �  �     �   LIB_SELFV   	SFORMNAME�   FFORMformAttachOrFindOpen     FORMATTACHOROPEN       �  �     �   LIB_SELFV   	SFORMNAME�   FFORMformAttachOrOpen     FORMFIND       �  h     �   LIB_SELFV   	SFORMNAMEV   SFULLFORMNAMEformFind     FORMFINDOPEN       �  �     �   LIB_SELFV   	SFORMNAME�   FFORMformFindOpen     FORMOPEN       �  .     �   LIB_SELFV   	SFORMNAME�   FFORMformOpen   GLIBFWTOOLS   �   �      GLIBAPPTOOLS     �               �����                                                                      _README           #     �   METHOD_SELF             ����r                                          V                          METHOD_SELF    �                       �����                                                                      INIT           $     �   METHOD_SELF             ����{                                          \                          METHOD_SELF    �  �  s               �����                                                                      UIOBJECTPOPUPMENU           %     �   METHOD_SELF�   UITARGET             �����                              ]  /      �              �  F      METHOD_SELF    �      UITARGET    �  �  y               �����                                                                      UIOBJECTOPENLOCATE      �  &     �   METHOD_SELFV   	SFORMNAME�   
UIUIOBJECT             �����                  �              �      �  �  �      {        METHOD_SELF    �      	SFORMNAME    V      
UIUIOBJECT    �  �  �      FFORM  8����      POPUP  ���O      SPOPUPCHOICE  ����V      LSUCCESS  �����      FFORM  ,����      UIFORM  �����      DAFILTER  ���� �     8       �         �    C  2  I  8  {
  j
  �       r�  �        �                                                                                                            z  r��     �     �
        
   &   	                                                                                                                                                                                       �   	  r�          #        6                   $  B   B   �                   %  �   �   �                  &  �  �  �                        �
  ����        �����                       	             ����            p   ��E    �     qA!   HA���� �    �   D����&�����     A    �   �   A   ��        ����    ����              ����    �       A  ��     
;   %����D   %����H[      
    %8���T;   %����D <  %����H)   ����   
   
<   %����D i����   
;   %����D <  %����Hl  ����   
 ����&�����   
�   %����D X  %�����%����"  |���8��� V|���8��� ?   
�   %����D&�����   ����   
 o������� t   ��� �   ����   
#   %����D �   �  %`���(   ! a   D���   
�   %����D D���(��� �   (���%�����   ��� ���     �  ����   
#   %����D    �  %`���(   ! a   D���   
�   %����D D���(��� 8   (���%�����   ��� ��� T   '  ����   
#   %����D p   �  %`���(   ! a   D���   
�   %����D D���(��� �   (���%�����   ��� ��� �   �   ����   
#   %����D �   �  %`���(   ! R   D���   
�   %����D D��� �  %�����   ��� ��� �       ����`������ `���*� ���� t  %����P    ����   
    r�����   ���� �  %����P    ����   
     r�����   ����    %����P   ����, (     
$&�   ���� T  %����P   ����, D     
$&a   ���� �  %����P   ����, `     
$&.   ���� �  %����P   ����, |     
$&    �   �   A   ��     �   8���    (���    ����    D���    `���    ����    ���    ����    8���    |���    ����    ����    ����    ����    ����    ����              ����    �       �  ��Y  ���� �   2A����t��� �      
,���+FORMOPEN �   h�������,��� jh���t�������,��� jt���t����������� �t���t������� �     
X   %(���D   @! ,��� ?.   t���,��� mt���   h���,��� h������� �   2A����t���,��� mt���    �     (t 5       �     (t        �   �   A   ��     V   ����    ����    ����:   ����    (���    ,���    h���    t���                  ����         &     �����         & �  �  Q  �  L  �  G  �  B  �  =  �  6  �  1  |  ,  `  '  D  "  (             �  
  �    �     �  �   �  �   p  �   T  �   8  �     �      �   �  �   �  �   �  �   �  �   t  �   X  �   <  �      �     �   �  �   �  �   �  �   �  �     D    �   D                                                                       
   	                     �         0!Initializing Application/Tools...:fw:FWToolsCinit: Couldn't initialize the application/tools (apptools) library.Text	CONTAINERField 
&Locate...Locate &NextCustomer_No..:tables:customer.dbOpen CustomerOrder_No:tables:orders.db  
Open OrderStock_No:tables:stock.db
Open Stock	Vendor_No:tables:vendors.dbOpen Vendor:app:customer:app:orders
:app:stock:app:vendors1uiObjectPopUpMenu: Couldn't pop up uiObject menu.:uiObjectOpenLocate: Couldn't open and locate the uiObject.        