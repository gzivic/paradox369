MZP      ��  �       @                                   �   � �	�!�L�!��This program must be run under Microsoft Windows.
$            NE
� 
     	�                @ P � � � �                P   q  �      � 0�    �      0�    �     *0�     �     B 0�    �     J 0�    	�     ^ 0�    �     y 0�      app  LIBENTRY  WEP                      � ˸ �                                        �Borland Standard File           �         @   |              � �~ �      @       	�               �              �               �               �               � �F Library   Form   UIManager   UIContainer   UIObject   	� ��  ���������f'                                             open+ close+ canArrive2 arrive2 setFocus+ canDepart2 removeFocus+ depart2 mouseEnter, mouseExit, mouseMove, mouseDown, mouseUp, mouseDouble, mouseRightDown, mouseRightUp, mouseRightDouble, keyPhysical- keyChar- action. menuAction/ timer4 pushButton+ changeValue0 calcField+ run+ newValue+ proc+ error3 status1 mouseClick, init+ Uses Type Var Const Proc _readMe init � �� � ����                   �  b    ��  �� �� Type

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

endType Type ��  Var

   ;$ Framework Start
   ;
   ; DO NOT MODIFY THIS BLOCK!

   glibFWTools    Library
   glibAppTools   Library

   ;$ Framework End

endVar Var #o  method _readMe()

	{	(c) 1994-7 frogware inc. all rights reserved.	}

	; Application Library

endmethod
 _readMe $� method init()

	try
		message( "Initializing Application...")
		sleep()

	   ;$ Framework Start
   	;
	   ; DO NOT MODIFY THIS BLOCK!

		if not glibFWTools.open( ":fw:FWTools") then
			fail()
		endIf

		if not glibAppTools.open( ":app:AppTools") then
			fail()
		endIf

		;$ Framework End

		{
			Open other libraries & such here...
		}

	onFail
		fail( 999, "init: Couldn't initialize the application (app) library.")
	endTry

endmethod init �� Uses ObjectPAL

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
 Uses    p        �  b    ] �                                              ��� �  �     �  $                � .    4 # C:\APPSWIN\PDOXWIN5\DEFAULT.FT >  ����        � � �
     � �   � �                         �  V   �   o  �  ����                  �            �                   d                       ����    �                                                              �  g  �   �           	CONTAINER     �   �      �����               ����            d  \  b  ACTIVE     >       �����               ����            �  �      LASTMOUSECLICKED     �  \     �����               ����              �      SUBJECT     �  �     �����               ����            b  Z      LASTMOUSERIGHTCLICKED     <  �     �����               ����                        SELF     �  Z     �����               ����                	#LIBRARY1     �  �     �����  ?�          ����[       �
  �        B  t  
  j                    �      	              U	                  H  	                  �  �                              �                      �  %  �  D                  �              �	      _                  DYNARRAYANYTYPE  �     8       �        FWFORM  %         >   �                      �����                          �                  �  �                  	SFORMNAME      V      SIFORMINDEX            SIFORMOFFSET        *      SFORMNAME SIFORMINDEX SIFORMOFFSET     FWEVENT  +         D   �                      �����              �    S      7  �  �  �  �                    SIEVENT            LISPREFILTER      �  �  LBEFORE      �      LAFTER      �      	LFWBEFORE      �  n  LFWAFTER      �      
LAPPBEFORE      �      	LAPPAFTER      �      LFORMBEFORE   	   �      
LFORMAFTER   
   �      
LDODEFAULT      �  }      SIEVENT LISPREFILTER LBEFORE LAFTER LFWBEFORE LFWAFTER LAPPBEFORE LAPPAFTER LFORMBEFORE LFORMAFTER LDODEFAULT     DMACTIONEVENT  ]         v   {                       �����                �  L      �  `                            /  ISFIRSTTIME      �      ISFROMUI      �      ID            TARGET      V      TARGETALIAS      V      TC      L      	ERRORCODE      "  C      ISFIRSTTIME ISFROMUI ID TARGET TARGETALIAS TC ERRORCODE �  DMCURSOR  ]      �  ISERR       �  	     �   LIB_SELFisErr     	ERRLOGALL            K	     �   LIB_SELFerrLogAll     ERRLOGALLCRITICAL            �	     �   LIB_SELFerrLogAllCritical     APPPROPERTYGET       V  �	     �   LIB_SELFV   SPROPERTYIDappPropertyGet     PROPERTYGET       V  z
     �   LIB_SELFV   SOBJECTTYPEIDV   	SOBJECTIDV   SPROPERTYIDpropertyGet �  PROPERTYGETFROMFILENAME       V  �
     �   LIB_SELFV   	SFILENAMEV   SPROPERTYIDpropertyGetFromFilename     DIALOGATTACH       �  g     �   LIB_SELFV   SDIALOGNAME�   FDIALOGdialogAttach     DIALOGATTACHORFINDOPEN       �  �     �   LIB_SELFV   SDIALOGNAME�   FDIALOGdialogAttachOrFindOpen     DIALOGATTACHOROPEN       �  W     �   LIB_SELFV   SDIALOGNAME�   FDIALOGdialogAttachOrOpen     
DIALOGFIND       �  �     �   LIB_SELFV   SDIALOGNAMEV   SFULLDIALOGNAMEdialogFind     DIALOGFINDOPEN       �  9     �   LIB_SELFV   SDIALOGNAME�   FDIALOGdialogFindOpen     
DIALOGOPEN       �  �     �   LIB_SELFV   SDIALOGNAME�   FDIALOGdialogOpen     
FORMATTACH       �       �   LIB_SELFV   	SFORMNAME�   FFORMformAttach     FORMATTACHORFINDOPEN       �  t     �   LIB_SELFV   	SFORMNAME�   FFORMformAttachOrFindOpen     FORMATTACHOROPEN       �  �     �   LIB_SELFV   	SFORMNAME�   FFORMformAttachOrOpen     FORMFIND       �  V     �   LIB_SELFV   	SFORMNAMEV   SFULLFORMNAMEformFind     FORMFINDOPEN       �  �     �   LIB_SELFV   	SFORMNAME�   FFORMformFindOpen     FORMOPEN       �       �   LIB_SELFV   	SFORMNAME�   FFORMformOpen     GLIBFWTOOLS   �   �      GLIBAPPTOOLS     �               �����                                                                      _README           #     �   METHOD_SELF             ����`                                          D                          METHOD_SELF    �                       �����                                                                      INIT           $     �   METHOD_SELF             ����i                                          J                          METHOD_SELF    �  �  a     �  �  1     7  &  i  X  �           r�  �        �                                                                                                            :  r��     �     �  *      
      N  �                                                                                                                                                                                       5  r�          #        6                   $  B   B   �                         �  ����        �����                       	             ����            �   ��p    �     qA!   HA���� �    �   D����&�����     A����    �   D����&�����     A    �      A   ��        ����    ����              �����              �����          Q     :   �  5   �  .   �  )   �  $     D    �   D       �                    0Initializing Application...:fw:FWTools:app:AppTools8init: Couldn't initialize the application (app) library.               