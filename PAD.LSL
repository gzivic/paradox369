MZP      €€  Є       @                                   Р   Ї і	Ќ!ЄLЌ!РРThis program must be run under Microsoft Windows.
$            NE

     	Г                @ P ф ¶                P   q  Б      0А    Б     7 0А    Б     H 0А    Б     I`0А     Б     © 0А    Б     ±. 0А    	Б     яџ0А    А     Ї 0А      PAD  LIBENTRY  WEP                  Є ЋЄ Ћ                                        М1Borland Standard File           ю         @   |              ю А~ ю      @       	ю               ю              ю               ю               ю               ю Аd Library   Form   UIManager   UIContainer   UIObject   Page   FormObj   Text   	ю А9  А3€€€€€€∞f3                                             open+ close+ canArrive2 arrive2 setFocus+ canDepart2 removeFocus+ depart2 mouseEnter, mouseExit, mouseMove, mouseDown, mouseUp, mouseDouble, mouseRightDown, mouseRightUp, mouseRightDouble, keyPhysical- keyChar- action. menuAction/ timer4 pushButton+ changeValue0 calcField+ run+ newValue+ proc+ error3 status1 mouseClick, init+ Uses Type Var Const Proc inputPasswordDlg setDebugMode inputNameAndPasswordDlg inputIntegerDlg inputNumberDlg inputTwoDatesDlg inputDateDlg selectColorDlg selectFontDlg selectArrayItemDlg getLanguageID selectDynArrayItemDlg twoArraysDlg getVersion ю АI, € Ае)€€                   Й  њ    Ап(  €€ Ау Uses pad
	PasswordEdit(Title CPTR, Caption CPTR, Passw1 CPTR, var Passw2 CPTR) CWORD [STDCALL]
	NamePasswordEdit(Title CPTR, CaptionName CPTR, CaptionPassw CPTR, Name CPTR,
                    Name2 CPTR, Passw CPTR, Passw2 CPTR) CWORD [STDCALL]
	IntegerEdit(Title CPTR, Caption CPTR, Val CPTR) CWORD [STDCALL]
	NumberEdit(Title CPTR, Caption CPTR, Val CPTR, Dec CWORD) CWORD [STDCALL]
	NumberEdit8(Title CPTR, Caption CPTR, Val CPTR, Dec CWORD) CWORD [STDCALL]
   TwoDatesEdit(Title CPTR, Caption1 CPTR, Caption2 CPTR, Date1 CPTR, Date2 CPTR) CWORD [STDCALL]
   TwoDatesEdit8(Title CPTR, Caption1 CPTR, Caption2 CPTR, Date1 CPTR, Date2 CPTR) CWORD [STDCALL]
   DateEdit(Title CPTR, Caption CPTR, Date1 CPTR) CWORD [STDCALL]
   DateEdit8(Title CPTR, Caption CPTR, Date1 CPTR) CWORD [STDCALL]
   ColorDlg( Color1 CPTR ) CWORD [STDCALL]
   FontDlg( Name1 CPTR, NameEd CPTR, Size1 CPTR, Color1 CPTR, Style1 CPTR ) CWORD [STDCALL]

   SelectArray(Title CPTR, Caption CPTR, Indexes CPTR, Items CPTR,
                      CaptionColumn1 CPTR, CaptionColumn2 CPTR, Sel CPTR, Algn CWORD) CWORD [STDCALL]

	DualListDlg( Title CPTR, Cap1 CPTR, Cap2 CPTR, Ar1 CPTR, Ar2 CPTR, Ret1 CPTR, Ret2 CPTR) CWORD [STDCALL]

	getLocaleID() CLONG [STDCALL]

endUses
 Uses #г method inputPasswordDlg(Title String, Caption String, var Password String) Logical
var
	tmpPas		String
   r				smallInt
endVar

try
   tmpPas = space(255)
	r = PasswordEdit(Title, Caption, Password, tmpPas)
	switch
   	case r = 0 : Password = rtrim(tmpPas)
                   return True
      case r = 1 : return False
      otherwise  : fail(999, "Error call PAD.DLL")
   endSwitch
onFail
	if DebugMode then	ErrorShow() endIf
   return False
endTry

endMethod
 inputPasswordDlg А"  Var
	DebugMode 	Logical
endVar
 Var   E  method open(var eventInfo Event)

	DebugMode = False

endMethod
 open+ $G  method setDebugMode( Mode Logical )

	DebugMode = Mode

endMethod
 setDebugMode %ѓ# method inputNameAndPasswordDlg( Title String, NameLabel String, PasswordLabel String,
                                var Name String, var Password String ) Logical
var
	tmpNam      String
	tmpPas		String
   r				smallInt
endVar

try
   tmpNam = space(255)
   tmpPas = space(255)
	r = NamePasswordEdit(Title, NameLabel, PasswordLabel, Name, tmpNam, Password, tmpPas)
	switch
   	case r = 0 : Password = rtrim(tmpPas)
                   Name = rtrim(tmpNam)
                   return True
      case r = 1 : return False
      otherwise  : fail(999, "Error call PAD.DLL")
   endSwitch
onFail
	if DebugMode then	ErrorShow() endIf
   return False
endTry

endMethod
 inputNameAndPasswordDlg &∞ method inputIntegerDlg(Title String, Caption String, var Val LongInt ) Logical
var
   r				smallInt
   l				LongInt
endVar

try
	L = Val
	r = IntegerEdit(Title, Caption, L)
	switch
   	case r = 0 : Val = L
                   return True
      case r = 1 : return False
      otherwise  : fail(999, "Error call PAD.DLL")
   endSwitch
onFail
	if DebugMode then	ErrorShow() endIf
   return False
endTry

endMethod
 inputIntegerDlg 'B method inputNumberDlg(Title String, Caption String, var Val Number, Dec smallInt ) Logical
var
   r				smallInt
   L				Number
endVar

try
	L = Val
	switch
   case getVersion() = 8 : r = NumberEdit8(Title, Caption, L, Dec)
	otherwise             : r = NumberEdit(Title, Caption, L, Dec)
   endSwitch
	switch
   	case r = 0 : Val = L.truncate(Dec)
                   return True
      case r = 1 : return False
      otherwise  : fail(999, "Error call PAD.DLL")
   endSwitch
onFail
	if DebugMode then	ErrorShow() endIf
   return False
endTry

endMethod

 inputNumberDlg (н method inputTwoDatesDlg(Title String, Cap1 String, Cap2 String, var Dat1 Date, var Dat2 Date ) Logical
var
   r				smallInt
   D1, D2		Number
endVar

try
	D1 = Number(Dat1 - Date(12,30,1899))
   D2 = Number(Dat2 - Date(12,30,1899))

	switch
   case getVersion() = 8 : r = TwoDatesEdit8(Title, Cap1, Cap2, D1, D2)
	otherwise             : r = TwoDatesEdit(Title, Cap1, Cap2, D1, D2)
   endSwitch

	switch
   	case r = 0 : Dat1 = DateVal(D1) + Date(12,30,1899)
                   Dat2 = DateVal(D2) + Date(12,30,1899)
                   return True
      case r = 1 : return False
      otherwise  : fail(999, "Error call PAD.DLL")
   endSwitch
onFail
	if DebugMode then	ErrorShow() endIf
   return False
endTry

endMethod
 inputTwoDatesDlg )Q method inputDateDlg( Title String, Caption String, var EDate Date) Logical
var
   r				smallInt
   D				Number
endVar

try
	D = Number(EDate - Date(12,30,1899))
	switch
   case getVersion() = 8 : r = DateEdit8(Title, Caption, D)
	otherwise             : r = DateEdit(Title, Caption, D)
   endSwitch

	switch
   	case r = 0 : EDate = DateVal(D) + Date(12,30,1899)
                   return True
      case r = 1 : return False
      otherwise  : fail(999, "Error call PAD.DLL")
   endSwitch
onFail
	if DebugMode then	ErrorShow() endIf
   return False
endTry

endMethod
 inputDateDlg *≥ method selectColorDlg( var clr LongInt ) Logical
var
	t		LongInt
   r		smallInt
endVar

	t = clr
	r = ColorDlg( t )
	switch
   	case r = 0 : clr = t
                   return True
      case r = 1 : return False
      otherwise  : if DebugMode then
                      fail(999, "Error call PAD.DLL")
	      				 return False
						 else
	      				 return False
                   endIf
   endSwitch

endMethod
 selectColorDlg +) method selectFontDlg(var FName String, var FSize smallInt, var FColor LongInt, var FStyle smallInt) Logical
var
	n1, n2	String
	tColor	LongInt
   tSize,
   tStyle	LongInt
   r			SmallInt
endVar

	n1 = FName
	n2 = space(255)
	tColor = FColor
   tSize  = LongInt(FSize)
   tStyle = LongInt(FStyle)
	r = FontDlg( n1, n2, tSize, tColor, tStyle )
	switch
   	case r = 0 : FName  = rtrim(n2)
                   FSize  = smallInt(tSize)
                   FColor = tColor
                   FStyle = smallInt(tStyle)
                   return True
      case r = 1 : return False
      otherwise  : if DebugMode then
                      fail(999, " Error call PAD.DLL")
	      				 return False
						 else
	      				 return False
                   endIf
   endSwitch


endMethod
 selectFontDlg ,ў  method selectArrayItemDlg( Title String, Caption String, ar AAnyType, var indx LongInt, CapCol1 String, CapCol2 String) Logical
var
	PS1, PS2			String
   I					LongInt
   Q					String
   Align				smallInt
endVar

try
{   if ar.size() = 0 then
      Align = 0
	else
		switch
      	case ar[1].DataType() = "Currency" : Align = 1
      	case ar[1].DataType() = "Number"   : Align = 1
      	case ar[1].DataType() = "longInt"  : Align = 1
      	case ar[1].DataType() = "smallInt" : Align = 1
			otherwise : Algn = 0
      endSwitch
   endIf}
   Align = 0

   PS1 = blank()
   PS2 = blank()
	for i from 1 to ar.size()
		PS1 = PS1 + String(i) + chr(31) + chr(31)
      PS2 = PS2 + String(ar[i]) + chr(31) + chr(31)
   endFor
	Q = space(255)
	r = SelectArray( Title, Caption, PS1, PS2, CapCol1, CapCol2, Q, Align )
	switch
   	case r = 0 : indx = LongInt( rtrim(Q) )
                   return True
      case r = 1 : return False
      otherwise  : if DebugMode then
                      fail(999, "Error call PAD.DLL")
	      				 return False
						 else
	      				 return False
                   endIf
   endSwitch
onFail
	if DebugMode then	ErrorShow() endIf
   return False
endTry

endMethod
 selectArrayItemDlg АN  Type
	AAnyType = Array[] AnyType
   DAnyType = DynArray[] AnyType
endType
 Type -F  method getLanguageID() LongInt

	return getLocaleID()

endMethod
 getLanguageID .…# method selectDynArrayItemDlg( Title String, Caption String, ar DAnyType, var indx String, CapCol1 String, CapCol2 String) Logical
var
	PS1, PS2			String
   I					String
   Q					String
   Align				smallInt
endVar

try
{   if ar.size() = 0 then
      Align = 0
	else
		switch
      	case ar[1].DataType() = "Currency" : Align = 1
      	case ar[1].DataType() = "Number"   : Align = 1
      	case ar[1].DataType() = "longInt"  : Align = 1
      	case ar[1].DataType() = "smallInt" : Align = 1
			otherwise : Algn = 0
      endSwitch
   endIf}
   Align = 0

   PS1 = blank()
   PS2 = blank()
	foreach i in ar
		PS1 = PS1 + String(i) + chr(31) + chr(31)
      PS2 = PS2 + String(ar[i]) + chr(31) + chr(31)
   endForeach
	Q = space(255)
	r = SelectArray( Title, Caption, PS1, PS2, CapCol1, CapCol2, Q, Align )
	switch
   	case r = 0 : indx = rtrim(Q)
                   return True
      case r = 1 : return False
      otherwise  : if DebugMode then
                      fail(999, "Error call PAD.DLL")
	      				 return False
						 else
	      				 return False
                   endIf
   endSwitch
onFail
	if DebugMode then	ErrorShow() endIf
   return False
endTry

endMethod
 selectDynArrayItemDlg /б method twoArraysDlg(Title String, Cap1 String, Cap2 String, var Lst1 AAnyType, var Lst2 AAnyType) Logical
var
	PS1, PS2,
   PP1, PP2			String
   I					LongInt
   Q					String
   Align				smallInt
endVar

try
   PS1 = blank()
   PS2 = blank()
	PP1 = space(9999)
   PP2 = space(9999)
	for I from 1 to Lst1.size()
		PS1 = PS1 + String(Lst1[I]) + chr(31) + chr(31)
   endFor
	for I from 1 to Lst2.size()
		PS2 = PS2 + String(Lst2[I]) + chr(31) + chr(31)
   endFor

	r = DualListDlg(Title, Cap1, Cap2, PS1, PS2, PP1, PP2)
	switch
   	case r = 0 : PP1.breakApart(Lst1, chr(31))
                   PP2.breakApart(Lst2, chr(31))
                   return True
      case r = 1 : return False
      otherwise  : if DebugMode then
                      fail(999, "Error call PAD.DLL")
	      				 return False
						 else
	      				 return False
                   endIf
   endSwitch
onFail
	if DebugMode then	ErrorShow() endIf
   return False
endTry

endMethod
 twoArraysDlg 0£  method getVersion() smallInt
var
	v		String
   a		Array[] String

endVar

	v = version()
   v.breakApart( a, "." )
   return smallInt(a[1])

endMethod
 getVersion   @        Ф  ў    ]   У  Ў          У                        ААА Л  Л   
 УР                  ѕ .    4 - d:\Paradox\9\Paradox\PDOXHome\DEFAULT.FT B  #Library1 POST >  јјј         А € АЗ €€     E           У  Ў    А   €€    А        u  Ї    
 *     0    2    <             А   јјј          А € А‘ €€      G  Z   G  ю    А   €€              G  ю    
     0    2    <             А €€€€                
                     P.A.D  AG          €       А    А  € А€€       і   H  N  ,    А   €€              0  √     
     0    2    <             А €€€€             &   
                     © 2002 Yaroslav Kvitchenko  zild@ua.fm   0                   €     А   А    А  ю А6              @€-–                @€-–     ю А™  §    Љ          " Arial  рэ/   †UK/   ѕв/   ды†     Р          " Arial s Serif 7(ҐР≤?7(ю  »»†     Р          " Arial s Serif 7(ҐР≤?7(ю  »»ю А      DualListDlgPADSelectArrayPADgetLocaleIDPADSelectArrayPAD/FontDlgPADµColorDlgPADрDateEditPADO	DateEdit8PADTwoDatesEditPADЉTwoDatesEdit8PADq
NumberEditPADGNumberEdit8PADIntegerEditPADДNamePasswordEditPADлPasswordEditPADА                     ш%  V   ±   Ў%  Ќ  €€€€                  Ї            …                   d                       €€€€    §                  k  '                      г              М!  :"  …   Ѕ           	CONTAINER     т   Ѕ      €€€€±               €€€€            d  \  b  ACTIVE     >       €€€€±               €€€€            Ї  ≤      LASTMOUSECLICKED     Ф  \     €€€€±               €€€€              €      SUBJECT     б  ≤     €€€€±               €€€€            b  Z      LASTMOUSERIGHTCLICKED     <  €     €€€€±               €€€€                        SELF     Ж  Z     €€€€±               €€€€                	#LIBRARY1     Ќ  §     €€€€±  ?             €€€€[   W	              ≥  а  ^              ч      ґ        	                          .      Ќ              ћ	              У  ≈          ѓ  ф  М  Ў  Г
              Б  t  A                  •      ѕ                  v  (  Њ  d      E      #PAGE2 і  	  г     €€€€±               €€€€Ќ              #TEXT4 р  M  '     €€€€±               €€€€	              #TEXT3 р  С  k     €€€€±               €€€€	            AANYTYPE  √     8       –          DANYTYPE  м     8       –        PAD       PASSWORDEDIT    /  t     µ   TITLEµ   CAPTIONµ   PASSW1µ   PASSW2PasswordEdit     NAMEPASSWORDEDIT    /       µ   TITLEµ   CAPTIONNAMEµ   CAPTIONPASSWµ   NAMEµ   NAME2µ   PASSWµ   PASSW2NamePasswordEdit ‘  INTEGEREDIT    /  А     µ   TITLEµ   CAPTIONµ   VALIntegerEdit     
NUMBEREDIT    /  й     µ   TITLEµ   CAPTIONµ   VAL/   DECNumberEdit     NUMBEREDIT8    /  R     µ   TITLEµ   CAPTIONµ   VAL/   DECNumberEdit8     TWODATESEDIT    /  ”     µ   TITLEµ   CAPTION1µ   CAPTION2µ   DATE1µ   DATE2TwoDatesEdit     TWODATESEDIT8    /  V     µ   TITLEµ   CAPTION1µ   CAPTION2µ   DATE1µ   DATE2TwoDatesEdit8 М!  DATEEDIT    /  µ     µ   TITLEµ   CAPTIONµ   DATE1DateEdit     	DATEEDIT8    /  	     µ   TITLEµ   CAPTIONµ   DATE1DateEdit8   COLORDLG    /  N	     µ   COLOR1ColorDlg     FONTDLG    /  ƒ	     µ   NAME1µ   NAMEEDµ   SIZE1µ   COLOR1µ   STYLE1FontDlg     SELECTARRAY    /  w
      µ   TITLEµ   CAPTIONµ   INDEXESµ   ITEMSµ   CAPTIONCOLUMN1µ   CAPTIONCOLUMN2µ   SEL/   ALGNSelectArray     DUALLISTDLG    /       µ   TITLEµ   CAP1µ   CAP2µ   AR1µ   AR2µ   RET1µ   RET2DualListDlg     GETLOCALEID    H  9       getLocaleID     	DEBUGMODE   А   л               €€€€Ќ                                                                      INPUTPASSWORDDLG      л  #     –   METHOD_SELFV   TITLEV   CAPTIONV   PASSWORD             €€€€`                                  Щ  ∞  |      …      Z"  B"      METHOD_SELF    –      TITLE    V      CAPTION    V      PASSWORD    V                       €€€€Ќ                                                                      OPEN                  –   METHOD_SELFо   	EVENTINFO             €€€€л                              ы          ё                          METHOD_SELF    –      	EVENTINFO    о  ґ  г               €€€€Ќ                                                                      SETDEBUGMODE           $     –   METHOD_SELFл   MODE             €€€€      1                                                            METHOD_SELF    –      MODE    л  A                 €€€€Ќ                                                                      INPUTNAMEANDPASSWORDDLG      л  %     –   METHOD_SELFV   TITLEV   	NAMELABELV   PASSWORDLABELV   NAMEV   PASSWORD             €€€€O                              m"  і      Ч  ж    Ћ  Э"  Е"      METHOD_SELF    –      TITLE    V    	NAMELABEL    V      PASSWORDLABEL    V      NAME    V      PASSWORD    V  t  G               €€€€Ќ                                                                      INPUTINTEGERDLG      л  &     –   METHOD_SELFV   TITLEV   CAPTION"   VAL             €€€€=                  †              p  З  S              √"          METHOD_SELF    –      TITLE    V      CAPTION    V      VAL    "  •  5               €€€€Ќ                                                                      INPUTNUMBERDLG      л  '     –   METHOD_SELFV   TITLEV   CAPTION<   VAL   DEC             €€€€љ                  +      @      ы    ё              й"          METHOD_SELF    –      TITLE    V      CAPTION    V      VAL    <      DEC      У  µ               €€€€Ќ                                                                      INPUTTWODATESDLG      л  (     –   METHOD_SELFV   TITLEV   CAP1V   CAP2	   DAT1	   DAT2             €€€€]      ј  ÷  #  ##      м    ©      М              ь"          METHOD_SELF    –      TITLE    V      CAP1    V      CAP2    V      DAT1    	      DAT2    	    U               €€€€Ќ                                                                      INPUTDATEDLG      л  )     –   METHOD_SELFV   TITLEV   CAPTION	   EDATE             €€€€                                   R  i  5              J#          METHOD_SELF    –      TITLE    V  В  CAPTION    V      EDATE    	  ≥                 €€€€Ќ                                                                      SELECTCOLORDLG      л  *     –   METHOD_SELF"   CLR             €€€€°                                          Ш      µ      p#          METHOD_SELF    –      CLR    "  v  Щ               €€€€Ќ                                                                      SELECTFONTDLG      л  +     –   METHOD_SELFV   FNAME   FSIZE"   FCOLOR   FSTYLE             €€€€“      Y              √#      *          ц            Ч#  A      METHOD_SELF    –  Г#  FNAME    V      FSIZE      Џ#  FCOLOR    "      FSTYLE      ч                  €€€€Ќ                                                                      SELECTARRAYITEMDLG      л  ,     –   METHOD_SELFV   TITLEV   CAPTION √   AR"   INDXV   CAPCOL1V   CAPCOL2             €€€€y  $                            U$  т  Њ  5          /$        METHOD_SELF     –      TITLE    V      CAPTION    V      AR     √      INDX    "  N  CAPCOL1    V      CAPCOL2    V  (  q               €€€€Ќ                                                                      GETLANGUAGEID      "  -     –   METHOD_SELF             €€€€o                                          Y                          METHOD_SELF    –  ѕ  g               €€€€Ќ                                                                      SELECTDYNARRAYITEMDLG      л  .     –   METHOD_SELFV   TITLEV   CAPTION м   ARV   INDXV   CAPCOL1V   CAPCOL2             €€€€~  $                            ѕ$  ъ  ∆  =          ©$  '      METHOD_SELF     –      TITLE    V      CAPTION    V      AR     м      INDX    V  V  CAPCOL1    V      CAPCOL2    V  ≈  v               €€€€Ќ                                                                      TWOARRAYSDLG      л  /     –   METHOD_SELFV   TITLEV   CAP1V   CAP2 √   LST1 √   LST2             €€€€w  !  ÷   м                       s%      Ґ           #%  M%          METHOD_SELF    –      TITLE    V  !  CAP1    V      CAP2    V  щ$  LST1     √      LST2     √  ‘  o               €€€€Ќ                                                                      
GETVERSION        0     –   METHOD_SELF             €€€€6!                                          "              ∞%          METHOD_SELF    –  Ќ  .!      TMPPAS  Ь€€€V      R  Ф€€€      TMPNAM  Ь€€€V      TMPPAS  А€€€V      R  x€€€      R  ∞€€€  ∞"  L  §€€€"      R  ∞€€€  ÷"  L  †€€€<      R  ∞€€€      D1  Р€€€<      D2  †€€€<      R  ∞€€€  7#  D  †€€€<      T  ђ€€€"  ]#  R  §€€€  Ђ#  N1  А€€€V  т#  N2  Ь€€€V      TCOLOR  t€€€"      TSIZE  \€€€"      TSTYLE  h€€€"      R  T€€€  $  PS1  А€€€V      PS2  Ь€€€V  B$  I  t€€€"  l$  Q  X€€€V  џ  ALIGN  P€€€      R  дэ€€–  Ф$  PS1  А€€€V      PS2  Ь€€€V  Љ$  I  d€€€V  ж$  Q  H€€€V  г  ALIGN  @€€€      R  фэ€€–  %  PS1  H€€€V      PS2  d€€€V  8%  PP1  А€€€V      PP2  Ь€€€V  `%  I  <€€€"  К%  Q   €€€V  њ   ALIGN  €€€      R  ђэ€€–      V  Ь€€€V  Э%  A  d€€€ √%     8       V         Р  Њ  з  0  8  2   ?           rВ  €       Ч                                                                                                            Џ  rВЧ     €    ®  R      
      н  ш%                                                                                                                                                                                     Є  ‘  rВ              Ц  Ц  b                   #        К                  $  ш  ш  E                   %  =  =  л                  &  (  (  Z                  '  В  В  к                  (  l  l  э                  )  i
  i
  F                  *  ѓ  ѓ  9                  +  и  и  U                  ,  =  =  Є                  -  х  х  Z                   .  O  O  {                  /        8                  0      ґ                         ®  РРРй        ит€€€    X        3  Р€к   Ь€€€t€€€ М    t€€€*Р Ф€€€l€€€Ь€€€!   
!   
!   
!#    '*ђ Ф€€€ Ф   %`€€€h6      
t€€€Ь€€€ t€€€*Р  Ь      (t ~   >   Ф€€€ ®   %`€€€h    ∞      (t O       Љ    ƒ    A3    А      `€€€  'A`€€€ ∞      (t 	      Р€     6   `€€€    Ф€€€    l€€€    t€€€    Ь€€€              иhю€€            $   ђ€€€  А    ∞   *t         ђ€€€                
  + ию€€                  А      
*t       	             иЅэ€€    t        Л  t€B  Ь€€€X€€€ М    X€€€*Р А€€€X€€€ М    X€€€*Р x€€€P€€€А€€€!   
!Ь€€€!   
!   
!   
!   
!#    '*ђ x€€€ Ф   %D€€€hT      
X€€€А€€€ X€€€*Р    
X€€€Ь€€€ X€€€*Р  Ь       (t ~   >   x€€€ ®   %D€€€h    ∞       (t O       Љ    ƒ    A3    А      D€€€  'AD€€€ ∞       (t 	      t€     ?   D€€€    P€€€    X€€€    x€€€    А€€€    Ь€€€              и÷ы€€    ,          †€√   §€€€   
*® ∞€€€Ш€€€§€€€#   
!   
!#    '*ђ ∞€€€ Ф   %М€€€h'      
§€€€*®  Ь      (t ~   >   ∞€€€ ®   %М€€€h    ∞      (t O       Љ    ƒ    A3    А      М€€€  'AМ€€€ ∞      (t 	      †€     -   М€€€    Ш€€€    §€€€    ∞€€€              и|ъ€€    H        К  Ь€A  †€€€   
*§ Ф€€€,$0 а   %И€€€hB   ∞€€€А€€€   
†€€€$   
!   
!#    '*ђ =   ∞€€€Ф€€€   
†€€€$   
!   
!#    '*ђ ∞€€€ Ф   %И€€€h<      
p€€€†€€€   
 Yp€€€*§  Ь      (t ~   >   ∞€€€ ®   %И€€€h    ∞      (t O       Љ    ƒ    A3    А      И€€€  'AИ€€€ ∞      (t 	      Ь€     ?   p€€€    А€€€    И€€€    ∞€€€    Ф€€€    †€€€              иТш€€    |       
 y  М€0  Р€€€d€€€   
А€€€ и    р    ш    А€€€%t€€€§ d€€€*§ †€€€d€€€   
А€€€ и    р    ш    А€€€%t€€€§ d€€€*§ \€€€,$0 а   %P€€€hK   ∞€€€H€€€†€€€$Р€€€$   
!   
!   
!#    '*ђ F   ∞€€€\€€€†€€€$Р€€€$   
!   
!   
!#    '*ђ ∞€€€ Ф   %P€€€h†      
А€€€Р€€€ А€€€t€€€ и    р    ш    t€€€%<€€€,*Ь    
А€€€†€€€ А€€€t€€€ и    р    ш    t€€€%<€€€,*Ь  Ь       (t ~   >   ∞€€€ ®   %P€€€h    ∞       (t O       Љ    ƒ    A3    А      P€€€  'AP€€€ ∞       (t 	      М€    
 c   <€€€    H€€€    P€€€    \€€€    d€€€    t€€€    А€€€    Р€€€    †€€€    ∞€€€              иХх€€    l       	 Ћ  Ь€В  †€€€t€€€   
Р€€€ и    р    ш    Р€€€%Д€€€§ t€€€*§ l€€€,$0 а   %`€€€h8   ∞€€€X€€€†€€€$   
!   
!#    '*ђ 3   ∞€€€l€€€†€€€$   
!   
!#    '*ђ ∞€€€ Ф   %`€€€h\      
Р€€€†€€€ Р€€€Д€€€ и    р    ш    Д€€€%L€€€,*Ь  Ь      (t ~   >   ∞€€€ ®   %`€€€h    ∞      (t O       Љ    ƒ    A3    А      `€€€  'A`€€€ ∞      (t 	      Ь€    	 Z   L€€€    X€€€    `€€€    l€€€    t€€€    Д€€€    Р€€€    †€€€    ∞€€€              иOу€€    (        л   ђ€€€   
*® §€€€Ь€€€ђ€€€##    '*ђ §€€€ Ф   %Р€€€h'      
ђ€€€*®  Ь      (t x   s   §€€€ ®   %Р€€€h    ∞      (t I   D    А   '    Љ    ƒ    A ∞      (t        ∞      (t          -   Р€€€    Ь€€€    §€€€    ђ€€€              ит€€    †       
 —  А€€€   
*Р Ь€€€8€€€ М    8€€€*Р t€€€   
*® \€€€,€€€   
  ,€€€*® h€€€,€€€   
  ,€€€*® T€€€$€€€h€€€#t€€€#\€€€#Ь€€€!А€€€!#    '*ђ T€€€ Ф   %€€€hБ      
8€€€Ь€€€ 8€€€*Р    
$€€€\€€€ $€€€*ђ    
t€€€*®    
$€€€h€€€ $€€€*ђ  Ь      (t x   s   T€€€ ®   %€€€h    ∞      (t I   D    А   '    Љ        A ∞      (t        ∞      (t         
 c   Ь€€€    €€€    $€€€    ,€€€    8€€€    T€€€    \€€€    h€€€    t€€€    А€€€              иЅп€€     ф       х  L€ђ  P€€€ Ф   *ђ А€€€€€€  €€€*t Ь€€€€€€  €€€*t t€€€ ®   *® €€€   
 €€€ћю€€(t t€€€ћю€€" O№   А€€€А€€€∞ю€€t€€€ 	∞ю€€%Фю€€(xю€€    !xю€€%\ю€€(@ю€€    !@ю€€%$ю€€(*Р Ь€€€Ь€€€∞ю€€   
t€€€, 	∞ю€€%Фю€€(xю€€    !xю€€%\ю€€(@ю€€    !@ю€€%$ю€€(*Р t€€€'» €€€X€€€∞ю€€ М    ∞ю€€*Р дэ€€№э€€P€€€X€€€!   
!   
!Ь€€€!А€€€!   
!   
!#    '*t дэ€€ Ф   %–э€€HE      
ƒэ€€∞ю€€X€€€ ∞ю€€  ƒэ€€*®  Ь   $   (t ≥   s   дэ€€ ®   %–э€€H    ∞   $   (t Д   D    А   '    Љ    ƒ    A ∞   $   (t S       ∞   $   (t ;   3    А      –э€€  'A–э€€ ∞   $   (t 	      L€     Ґ   ƒэ€€    –э€€    №э€€    дэ€€    $ю€€    @ю€€    \ю€€    xю€€    Ь€€€    Фю€€    ∞ю€€    ћю€€    €€€    P€€€    X€€€    t€€€    А€€€              и	м€€            '   ђ€€€#    +   (®             ђ€€€              иѓл€€     Ў       Ѕ  <€x  @€€€ Ф   *ђ А€€€ью€€  ью€€*t Ь€€€ью€€  ью€€*t №ю€€   
  B№ю€€d€€€" B”   А€€€А€€€јю€€d€€€ 	јю€€%§ю€€(Ию€€    !Ию€€%lю€€(Pю€€    !Pю€€%4ю€€(*Р Ь€€€Ь€€€јю€€   
d€€€р 	јю€€%§ю€€(Ию€€    !Ию€€%lю€€(Pю€€    !Pю€€%4ю€€(*Р €€€H€€€јю€€ М    јю€€*Р фэ€€мэ€€@€€€H€€€!   
!   
!Ь€€€!А€€€!   
!   
!#    '*t фэ€€ Ф   %аэ€€H6      
јю€€H€€€ јю€€*Р  Ь   $   (t ≥   s   фэ€€ ®   %аэ€€H    ∞   $   (t Д   D    А   '    Љ    ƒ    A ∞   $   (t S       ∞   $   (t ;   3    А      аэ€€  'Aаэ€€ ∞   $   (t 	      <€     Щ   аэ€€    мэ€€    фэ€€    4ю€€    Pю€€    lю€€    Ию€€    §ю€€    јю€€    №ю€€B    ью€€    @€€€    H€€€    d€€€    А€€€    Ь€€€              и4и€€            l  €#  H€€€‘ю€€  ‘ю€€*t d€€€‘ю€€  ‘ю€€*t А€€€Єю€€ $   Єю€€*Р Ь€€€Єю€€ $   Єю€€*Р <€€€ ®   *® ‘ю€€   
 ‘ю€€xю€€(t <€€€xю€€" Oz   H€€€H€€€Єю€€   
<€€€, 	Єю€€%\ю€€(@ю€€    !@ю€€%$ю€€(ю€€    !ю€€%мэ€€(*Р <€€€'» s€€€<€€€ ®   *® ‘ю€€   
 ‘ю€€xю€€(t <€€€xю€€" Oz   d€€€d€€€Єю€€   
<€€€, 	Єю€€%\ю€€(@ю€€    !@ю€€%$ю€€(ю€€    !ю€€%мэ€€(*Р <€€€'» s€€€ђэ€€§э€€Ь€€€!А€€€!d€€€!H€€€!   
!   
!   
!#    '*t ђэ€€ Ф   %Шэ€€H`   А€€€   
Єю€€    !Єю€€ Ь€€€   
Єю€€    !Єю€€  Ь       (t ≥   s   ђэ€€ ®   %Шэ€€H    ∞       (t Д   D    А   '    Љ    ƒ    A ∞       (t S       ∞       (t ;   3    А      Шэ€€  'AШэ€€ ∞       (t 	      €     Ђ   Шэ€€    §э€€    ђэ€€    мэ€€    ю€€    $ю€€    @ю€€    \ю€€    xю€€    Єю€€    Ь€€€    ‘ю€€    €€€     €€€    <€€€    H€€€    d€€€    А€€€              иьг€€    x        c   Ь€€€H€€€  CAH€€€*Р Ь€€€d€€€ ,   @€€€d€€€ ®   ( @€€€   (ђ          2   @€€€    Ь€€€    H€€€    d€€€                 иFг€€              и*г€€          Є   ,  Л   $  Ж           x   ш   s   р   l   и   e   а   ^   ƒ   W   Љ   R   ∞   K   ®   F   Ь   ?   Ф   :   М   3   А          '    k      з          €      0Error call PAD.DLL Error call PAD.DLL.     