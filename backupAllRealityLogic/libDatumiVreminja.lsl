MZP      €€  Є       @                                   Р   Ї і	Ќ!ЄLЌ!РРThis program must be run under Microsoft Windows.
$            NE

     	Г                @ P м ђ                P   q  Б      ∞0А    Б     ѕ 0А    Б     –0А     Б     л 0А    Б     у  0А    	Б     0А    А      0А    !	 0А      libDatumiVreminja  LIBENTRY  WEP            Є ЋЄ Ћ                                        юBorland Standard File           ю         @   |              ю А~ ю      @       	ю               ю              ю               ю               ю               ю АF Library   Form   UIManager   UIContainer   UIObject   	ю А®  АҐ€€€€€€∞f-                                             open+ close+ canArrive2 arrive2 setFocus+ canDepart2 removeFocus+ depart2 mouseEnter, mouseExit, mouseMove, mouseDown, mouseUp, mouseDouble, mouseRightDown, mouseRightUp, mouseRightDouble, keyPhysical- keyChar- action. menuAction/ timer4 pushButton+ changeValue0 calcField+ run+ newValue+ proc+ error3 status1 mouseClick, init+ stringListChange+ Uses Type Var Const Proc ImeNaDenotVoNedelata TipNaDenot BrNaDenoviVoPeriod BrNaPrazniciVoPeriod createTmpTblRange	 daliPostoiObjektot BrNaVikendiVoPeriod ю А8 € А2€€                   ®  a    А(  €€	 АЅ  Var
	_Datum, _DatumOd, _DatumDo Date
	_Vreme, _VremeOd, _VremeDo Time
	_tcPraznici TCursor
	_periodBrNaDenovi,_periodBrNaVikendi,_periodBrNaPraznici longInt
	_ImeNaFormata String
endVar
 Var $Ы method ImeNaDenotVoNedelata(Datum Date) AnyType
var den string endVar
den=dow(Datum)
				switch
						case den="Mon": return("Ponedelnik")
						case den="Tue": return("Vtornik")
						case den="Wed": return("Sreda")
						case den="Thu": return("^etvrtok")
						case den="Fri": return("Petok")
						case den="Sat": return("Sabota")
						case den="Sun": return("Nedela")
				endSwitch
endMethod
 ImeNaDenotVoNedelata %V method TipNaDenot(Datum Date) AnyType
var den string endVar
den=dow(Datum)
try 

	if _tcPraznici.locate("PraznikDen", Datum) then
		_TipDen="Praznik" return(_TipDen)
	else
		switch
			case den="Mon": _TipDen="Raboten" return(_TipDen)
			case den="Tue": _TipDen="Raboten" return(_TipDen)
			case den="Wed": _TipDen="Raboten" return(_TipDen)
			case den="Thu": _TipDen="Raboten" return(_TipDen)
			case den="Fri": _TipDen="Raboten" return(_TipDen)
			case den="Sat": _TipDen="Vikend"  return(_TipDen)
			case den="Sun": _TipDen="Vikend"  return(_TipDen)
		endSwitch
	endIf
 
onfail
	fail()
endtry				

;if not _tcPraznici.open(":origEnrvDatabase:Praznici.db") then
;		msgInfo("Greska","Nemozam da ja otvoram tabelata\n\n        :origEnrvDatabase:Praznici.db")
;		close()
;else 
;	if _tcPraznici.locate("PraznikDen", Datum) then
;		_TipDen="Praznik" return(_TipDen)
;	else
;		switch
;			case den="Mon": _TipDen="Raboten" return(_TipDen)
;;			case den="Tue": _TipDen="Raboten" return(_TipDen)
;			case den="Wed": _TipDen="Raboten" return(_TipDen)
;			case den="Thu": _TipDen="Raboten" return(_TipDen)
;			case den="Fri": _TipDen="Raboten" return(_TipDen)
;			case den="Sat": _TipDen="Vikend"  return(_TipDen)
;			case den="Sun": _TipDen="Vikend"  return(_TipDen)
;		endSwitch


 ;	endif
;endif
;_tcPraznici.close()
endMethod
 TipNaDenot &I method BrNaDenoviVoPeriod(odDatum Date, doDatum Date) longInt
_periodBrNaDenovi=0
if doDatum > odDatum then
	_periodBrNaDenovi=longInt (doDatum-odDatum)
	return (_periodBrNaDenovi+1) 
else
	_periodBrNaDenovi=longInt (odDatum-doDatum)
	return (_periodBrNaDenovi+1) 
endIf
endMethod













									 
 BrNaDenoviVoPeriod 'й method BrNaPrazniciVoPeriod(odDatum Date, doDatum Date)longint
var _Datum Date endVar
_periodBrNaPraznici=0
_Datum=odDatum
if not _tcPraznici.open(":Work:Praznici.db") then
		msgInfo("Greska","Nemozam da ja otvoram tabelata\n\n        :priv:zaOtsatni.db")
	close()
endIf
for  _Datum from odDatum to doDatum

if _tcPraznici.locate("PraznikDen", _Datum) then 
	_periodBrNaPraznici=_periodBrNaPraznici+1
endIf
endFor
_tcPraznici.close()
return(_periodBrNaPraznici)
endMethod
 BrNaPrazniciVoPeriod (W# ; create 14.10.2018
method createTmpTblRange(var ImeNaTabela string,var odDatum Date, doDatum Date, 

								var posx longInt, var posy longInt,var dolzina LongInt, var sirina longInt,

									 var BrojNaPraznici longInt) AnyType
var
tbl Table
uiTmpTBL uiObject
endVar

try

if BrojNaPraznici=0 then

else

tbl.attach(ImeNaTabela)
tbl.copy("Tmp"+"ImeNaTabela") ; Copy Orders to TmpOrder.
uiTmpTBL.attach("Tmp"+"ImeNaTabela")
switch
 case BrojNaPraznici=1:uiTmpTBL.create(TableFrameTool, posx, posy, dolzina, 840)
 case BrojNaPraznici=2 or BrojNaPraznici=3 : uiTmpTBL.create(TableFrameTool, posx, posy, dolzina, 1440)
 case BrojNaPraznici=4 or BrojNaPraznici=5 or BrojNaPraznici=6 or BrojNaPraznici=7:

			uiTmpTBL.create(TableFrameTool, posx, posy, dolzina, 2440) ; Create a TableFrame.

otherwise: uiTmpTBL.create(TableFrameTool, posx, posy, dolzina, 3440)
				uiTmpTBL.VerticalScrollBar=True
				uiTmpTBL.sendToBack()
endSwitch
uiTmpTBL.TableName = "Tmp"+"ImeNaTabela" ; This also adds table to data model.
;uiTmpTBL.PraznikDen.font.color=Gray
;uiTmpTBL.PraznikIme.font.color=Gray
;uiTmpTBL.VidPraznik.font.color=Gray
;uiTmpTBL.PraznikotVaziZa.font.color=Gray
uiTmpTBL.Touched=True
uiTmpTBL.setRange(odDatum,doDatum)
uiTmpTBL.Visible = True
return(uiTmpTBL)
endif

onFail
errorClear() return(False)
endTry
endMethod
 createTmpTblRange	 )^ method daliPostoiObjektot(imeNaObjektot String) logical
var
_voFormot Form
_arObjNames Array[] String
_i longInt
endVar
_i=1

_voFormot.attach(_ImeNaFormata) ; Get a handle to the current form.

_voFormot.enumObjectNames(_arObjNames)

if _arObjNames.contains(imeNaObjektot) then
	return(True)
else
	return(False)
endIf
 
endMethod
 daliPostoiObjektot   ©  method open(var eventInfo Event)
_ImeNaFormata=getTitle()
try
	_tcPraznici.open(":work:Praznici.db")
onfail
   errorshow()
endTry
endMethod


															
 open+ *ё method BrNaVikendiVoPeriod(odDatum Date, doDatum Date)longint
var _Datum Date endVar
_periodBrNaVikendi=0
_Datum=odDatum
if odDatum<=doDatum then
	for  _Datum from odDatum to doDatum
		switch
		  case imeNaDenotVoNedelata(_Datum)="Sabota":	_periodBrNaVikendi=_periodBrNaVikendi+1
		  case imeNaDenotVoNedelata(_Datum)="Nedela":	_periodBrNaVikendi=_periodBrNaVikendi+1
		otherwise:
		endSwitch
	endFor
else
   for  _Datum from doDatum to odDatum 
		switch
		  case imeNaDenotVoNedelata(_Datum)="Sabota":	_periodBrNaVikendi=_periodBrNaVikendi+1
		  case imeNaDenotVoNedelata(_Datum)="Nedela":	_periodBrNaVikendi=_periodBrNaVikendi+1
		otherwise:
		endSwitch
	endFor

endIf

return(_periodBrNaVikendi)
endMethod
 BrNaVikendiVoPeriod    |        ©  b    ]                                               ААА †  †    УФ                   ѕ .    4 A C:\Program Files (x86)\Paradox\Paradox\PDOXHome\winstyles.ft B  #Library1 POST >  €€€€        А ю А
     ю А   ю А                                   ¶  V   ±       Ќ  €€€€                  Ї            …                   d                       €€€€    §                                                              Т  Ы  …   Ѕ           	CONTAINER     т   Ѕ      €€€€ѕ               €€€€            d  \  b  ACTIVE     >       €€€€ѕ               €€€€            Ї  ≤      LASTMOUSECLICKED     Ф  \     €€€€ѕ               €€€€              €      SUBJECT     б  ≤     €€€€ѕ               €€€€            b  Z      LASTMOUSERIGHTCLICKED     <  €     €€€€ѕ               €€€€                        SELF     Ж  Z     €€€€ѕ               €€€€                	#LIBRARY1     Ќ  §     €€€€ѕ  ?             €€€€[   е          {                          я                                  г              /  K	                          ≥
                                    a          і  _              Ш          y                                      ї      _DATUM   Ш   п      _DATUMOD   М   п  ы  _DATUMDO   А   п      _VREME   Љ         _VREMEOD   ∞     G  _VREMEDO   §         _TCPRAZNICI   »   j      _PERIODBRNADENOVI   (  "      _PERIODBRNAVIKENDI     "      _PERIODBRNAPRAZNICI     "      _IMENAFORMATA   4  ’               €€€€Ќ                                                                      IMENADENOTVONEDELATA      –  $     –   METHOD_SELFп   DATUM             €€€€#                          £          ?  "                          METHOD_SELF    –      DATUM    п                       €€€€Ќ                                                                      
TIPNADENOT      –  %     –   METHOD_SELFп   DATUM             €€€€^                          Є          p  S              Ќ          METHOD_SELF    –      DATUM    п  y  V               €€€€Ќ                                                                  Т  BRNADENOVIVOPERIOD      "  &     –   METHOD_SELFп   ODDATUMп   DODATUM             €€€€П                                          Ю                      ‘  METHOD_SELF    –      ODDATUM    п  ї  DODATUM    п  і  З               €€€€Ќ                                                                      BRNAPRAZNICIVOPERIOD      "  '     –   METHOD_SELFп   ODDATUMп   DODATUM             €€€€х                  ж                      
                      <
  METHOD_SELF    –      ODDATUM    п  #
  DODATUM    п  е  н               €€€€Ќ                                                                      CREATETMPTBLRANGE      –  (  $   	–   METHOD_SELF’   IMENATABELAп   ODDATUMп   DODATUM"   POSX"   POSY"   DOLZINA"   SIRINA"   BROJNAPRAZNICI             €€€€]
  А          ю          ;  Q  м  g  ѕ                  Ш  "  METHOD_SELF (   –      IMENATABELA $   ’    ODDATUM     п  	  DODATUM    п      POSX    "      POSY    "      DOLZINA    "      SIRINA    "      BROJNAPRAZNICI    "  K	  U
               €€€€Ќ                                                                      DALIPOSTOIOBJEKTOT      л  )     –   METHOD_SELF’   IMENAOBJEKTOT             €€€€ј                  H      z              ≈      в          -      METHOD_SELF    –      IMENAOBJEKTOT    ’  ≥
  Є               €€€€Ќ                                                                      OPEN                  –   METHOD_SELFо   	EVENTINFO             €€€€	                                        ь                          METHOD_SELF    –      	EVENTINFO    о                   €€€€Ќ                                                                      BRNAVIKENDIVOPERIOD      "  *     –   METHOD_SELFп   ODDATUMп   DODATUM             €€€€<                  О                      L                      В  METHOD_SELF    –      ODDATUM    п  i  DODATUM    п  _  4      DEN  Ь€€€’      DEN  Ь€€€’      _TIPDEN  0€€€–      _DATUM  ђ€€€п      TBL  X€€€Ь      UITMPTBL  фю€€ѕ      	_VOFORMOT  8€€€з      _AROBJNAMES   €€€ e     8       ’          _I  фю€€"      _DATUM  ђ€€€п            rВ  €                                                                                                                  ъ  rВ    €    o  z      
   2   (  ¶                                                                                                                                                                                     у    rВ              Ќ
  Ќ
  љ                   $        ≥                  %  њ  њ  Г                  &  B  B                    '  W  W  `                  (  Ј  Ј  6                  )  н	  н	  а                   *  К  К  i                        o  РРРй        ит€€€    D        n  Ь€€€А€€€   
 А€€€*Р Ь€€€ P  %t€€€P    l     (t     Ь€€€ И  %t€€€P    §     (t л   ж   Ь€€€ ј  %t€€€P    №     (t Љ   Ј   Ь€€€ ш  %t€€€P         (t Н   И   Ь€€€ 0  %t€€€P    L     (t ^   Y   Ь€€€ h  %t€€€P    Д     (t /   *   Ь€€€ †  %t€€€P    Љ     (t          $   А€€€    t€€€    Ь€€€              и?ю€€    И        5  Ь€€€А€€€   
 А€€€*Р |€ц  p€€€ »    Ў     
   -! &   0€€€ ф  *t 0€€€   (t Њ  ¶  Ь€€€ P  %p€€€P&   0€€€   *t 0€€€   (t Б  i  Ь€€€ И  %p€€€P&   0€€€   *t 0€€€   (t D  ,  Ь€€€ ј  %p€€€P&   0€€€   *t 0€€€   (t   п   Ь€€€ ш  %p€€€P&   0€€€   *t 0€€€   (t     ≤   Ь€€€ 0  %p€€€P&   0€€€   *t 0€€€   (t Н   u   Ь€€€ h  %p€€€P&   0€€€ ,  *t 0€€€   (t P   8   Ь€€€ †  %p€€€P!   0€€€ ,  *t 0€€€   (t         A   |€     -   p€€€    Ь€€€    А€€€    0€€€              иЉы€€    $        –    (   H  *®    
   
%ђ€€€4Q    (  Ф€€€   
   
%†€€€§  Ф€€€*®  (   P  %Ф€€€d   (® Q   L    (  Ф€€€   
   
%†€€€§  Ф€€€*®  (   P  %Ф€€€d   (®          $   ђ€€€    Ф€€€    †€€€              иІъ€€    <        	      H  *® ђ€€€   
*Ь †€€€ »    X   †€€€&Ф€€€р    t   Р   MA  WAђ€€€   
*Ь    
И€€€(Ь ђ€€€И€€€" LM   †€€€ »    Ў  ђ€€€   -!           P  %|€€€d*® ђ€€€'» †€€€†€€€ »    †€€€      (®          6   |€€€    И€€€    †€€€    ђ€€€    Ф€€€              иGщ€€(   $ 8      
 ≤  рю~     
 H  %дю€€h   \  Ўю€€X€€€$   
 $Ўю€€дю€€X€€€ ђ   »  %Љю€€( $дю€€дю€€фю€€ ђ   »  %Љю€€( iдю€€   
 P  %дю€€h+   фю€€ д     
   
   
 м   ^5     
 ф  %дю€€h   
 ь  %Ўю€€h%∞ю€€$+   фю€€ д     
   
   
    ^„      
   %дю€€h   
   %Ўю€€h%∞ю€€$   
   %§ю€€h%Шю€€$   
 $  %Мю€€h%Аю€€$+   фю€€ д     
   
   
 ,   ^C   фю€€ д     
   
   
 4   ^фю€€:    <  )8фю€€ Ффю€€Ж    ђ   »  %Љю€€()8фю€€Ч    <  )8дю€€фю€€    
   
   Џ! фю€€2    <  )8фю€€,   (t &        $A H  ,   (t 	      рю    
 c   Ўю€€    дю€€    Љю€€    ∞ю€€    Аю€€    Мю€€    X€€€$    Шю€€    §ю€€    фю€€             $ иц€€    –        Н   фю€€ P  *® ию€€8€€€ 4   Vию€€8€€€ €€€ іию€€ €€€   
 ию€€    <     (t        H     (t          2   ию€€    фю€€     €€€   8€€€                  и1х€€    8        m   ђ€€€  4  Р€€€  &Р€€€*Р М€   А€€€ »    T   А€€€   А€€€  'AА€€€   М€     $   А€€€    ђ€€€    Р€€€                
  + иtф€€    И               H  *® ђ€€€   
*Ь    
   
%†€€€Ў   ђ€€€   
*Ь    
Ф€€€(Ь ђ€€€Ф€€€" LҐ   H€€€,ђ€€€&И€€€Ь $$ Д  %<€€€H           P  %0€€€d*® J   H€€€,ђ€€€&И€€€Ь $$ Љ  %†€€€H           P  %0€€€d*®     ђ€€€'» K€€€”   ђ€€€   
*Ь    
Ф€€€(Ь ђ€€€Ф€€€" LҐ   H€€€,ђ€€€&И€€€Ь $$ Д  %†€€€H           P  %0€€€d*® J   H€€€,ђ€€€&И€€€Ь $$ Љ  %†€€€H           P  %0€€€d*®     ђ€€€'» K€€€      (®          H   0€€€    <€€€    H€€€    И€€€    Ф€€€    †€€€    ђ€€€              ит€€         2     ипс€€         2 D  T  љ  H  Є  <  ≥  4  Ѓ  ,  І  $  †    Щ    Т    Л    Д  ь  }  ф  v  м  o  д  h  »  a  ђ  \  Р  W  t  R  X  M  P  H  H  A  ,  :    5  ф  0  Ў  +  Љ  &  †  !  Д    h    L    0        ш    №  ю   ј  щ   §  ф   И  п   l  к   P  е   4      (                  »       Љ   
    ∞   
    §   
    Ш       М       А                 pИ	    †  H	                                           
   	                                         0Mon
PonedelnikTueVtornikWedSredaThu^etvrtokFriPetokSatSabotaSunNedela
PraznikDen PraznikRabotenVikend:Work:Praznici.dbGreska:Nemozam da ja otvoram tabelata

        :priv:zaOtsatni.dbTmpImeNaTabela:work:Praznici.db   