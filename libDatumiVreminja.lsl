MZP      €€  Є       @                                   Р   Ї і	Ќ!ЄLЌ!РРThis program must be run under Microsoft Windows.
$            NE

     	Г                @ P м ђ                P   q  Б      Ѕ0А    Б     я 0А    Б     а0А     Б     € 0А    Б       0А    	Б     '0А    А     6 0А    < 0А      libDatumiVreminja  LIBENTRY  WEP            Є ЋЄ Ћ                                        Borland Standard File           ю         @   |              ю А~ ю      @       	ю               ю              ю               ю               ю               ю АF Library   Form   UIManager   UIContainer   UIObject   	ю А®  АҐ€€€€€€∞f-                                             open+ close+ canArrive2 arrive2 setFocus+ canDepart2 removeFocus+ depart2 mouseEnter, mouseExit, mouseMove, mouseDown, mouseUp, mouseDouble, mouseRightDown, mouseRightUp, mouseRightDouble, keyPhysical- keyChar- action. menuAction/ timer4 pushButton+ changeValue0 calcField+ run+ newValue+ proc+ error3 status1 mouseClick, init+ stringListChange+ Uses Type Var Const Proc ImeNaDenotVoNedelata TipNaDenot BrNaDenoviVoPeriod BrNaPrazniciVoPeriod createTmpTblRange	 daliPostoiObjektot BrNaVikendiVoPeriod ю АF € А@€€                   ®  a    А6  €€	 Ал  Var
   _db Database
	_Datum, _DatumOd, _DatumDo Date
	_Vreme, _VremeOd, _VremeDo Time
	_tcPraznici TCursor
	_periodBrNaDenovi,_periodBrNaVikendi,_periodBrNaPraznici longInt
	_ImeNaFormata, _strPatotDoEnrvDatabase String
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













									 
 BrNaDenoviVoPeriod 'N method BrNaPrazniciVoPeriod(odDatum Date, doDatum Date)longint
var _Datum Date endVar
_periodBrNaPraznici=0
_Datum=odDatum
;if not _tcPraznici.open(":Work:Praznici.db") then
;		msgInfo("Greska","Nemozam da ja otvoram tabelata\n\n        :priv:zaOtsatni.db")
;	close()
;endIf
try
	_db.open("enrv_DB")
	_tcPraznici.open("Praznici.db",_db)
onfail
   errorshow()
endTry
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
 daliPostoiObjektot   ( method open(var eventInfo Event)
_ImeNaFormata=getTitle()
_strPatotDoEnrvDatabase=":work:enrvDatabase"
addAlias("enrv_DB", "Standard",_strPatotDoEnrvDatabase ) 

try
	_db.open("enrv_DB")
	_tcPraznici.open("Praznici.db",_db)
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
     ю А   ю А                     д  V   ±       Ќ  €€€€                  Ї            …                   d                       €€€€    §                                                              –  ў  …   Ѕ           	CONTAINER     т   Ѕ      €€€€ѕ               €€€€            d  \  b  ACTIVE     >       €€€€ѕ               €€€€            Ї  ≤      LASTMOUSECLICKED     Ф  \     €€€€ѕ               €€€€              €      SUBJECT     б  ≤     €€€€ѕ               €€€€            b  Z      LASTMOUSERIGHTCLICKED     <  €     €€€€ѕ               €€€€                        SELF     Ж  Z     €€€€ѕ               €€€€                	#LIBRARY1     Ќ  §     €€€€ѕ  ?             €€€€[   #          Р                        8  ф                                  ш              D  Й	                          г                      *              v          т  Э              ≠          Ј                                      –  с
  _DB   А   O      _DATUM   Ў   п      _DATUMOD   ћ   п    _DATUMDO   ј   п      _VREME   ь         _VREMEOD   р     \  _VREMEDO   д         _TCPRAZNICI     j      _PERIODBRNADENOVI   h  "      _PERIODBRNAVIKENDI   \  "      _PERIODBRNAPRAZNICI   P  "      _IMENAFORMATA   Р  ’  T  _STRPATOTDOENRVDATABASE   t  ’               €€€€Ќ                                                                      IMENADENOTVONEDELATA      –  $     –   METHOD_SELFп   DATUM             €€€€a                          б          }  `                          METHOD_SELF    –      DATUM    п                       €€€€Ќ                                                                      
TIPNADENOT      –  %     –   METHOD_SELFп   DATUM             €€€€Ь                          ц          Ѓ  С                        METHOD_SELF    –      DATUM    п  Ј  Ф               €€€€Ќ                                                                  –  BRNADENOVIVOPERIOD      "  &     –   METHOD_SELFп   ODDATUMп   DODATUM             €€€€Ќ                                          №                      	  METHOD_SELF    –      ODDATUM    п  щ  DODATUM    п  т  ≈               €€€€Ќ                                                                      BRNAPRAZNICIVOPERIOD      "  '     –   METHOD_SELFп   ODDATUMп   DODATUM             €€€€3	                  $                      D
                      z
  METHOD_SELF    –      ODDATUM    п  a
  DODATUM    п  #  +	               €€€€Ќ                                                                      CREATETMPTBLRANGE      –  (  $   	–   METHOD_SELF’   IMENATABELAп   ODDATUMп   DODATUM"   POSX"   POSY"   DOLZINA"   SIRINA"   BROJNAPRAZNICI             €€€€Ы
  Њ          <          y  П  *  •                    ÷  `  METHOD_SELF (   –      IMENATABELA $   ’  Q  ODDATUM     п  G  DODATUM    п      POSX    "      POSY    "      DOLZINA    "      SIRINA    "      BROJNAPRAZNICI    "  Й	  У
               €€€€Ќ                                                                      DALIPOSTOIOBJEKTOT      л  )     –   METHOD_SELF’   IMENAOBJEKTOT             €€€€ю                  Ж      Є                               k      METHOD_SELF    –      IMENAOBJEKTOT    ’  с
  ц               €€€€Ќ                                                                      OPEN                  –   METHOD_SELFо   	EVENTINFO             €€€€G                              W          :                          METHOD_SELF    –      	EVENTINFO    о  T  ?               €€€€Ќ                                                                      BRNAVIKENDIVOPERIOD      "  *     –   METHOD_SELFп   ODDATUMп   DODATUM             €€€€z                  ћ                      К                      ј  METHOD_SELF    –      ODDATUM    п  І  DODATUM    п  Э  r      DEN  Ь€€€’      DEN  Ь€€€’      _TIPDEN  0€€€–      _DATUM  ђ€€€п      TBL  X€€€Ь      UITMPTBL  фю€€ѕ      	_VOFORMOT  8€€€з      _AROBJNAMES   €€€ £     8       ’          _I  фю€€"      _DATUM  ђ€€€п              rВ  €                                                                                                                  ъ  rВ    €    и  ÷      
   4   П  д                                                                                                                                                                                     Z  v  rВ              и
  и
  	                  $        ≥                  %  њ  њ  Г                  &  B  B                    '  W  W  {                  (  “  “  6                  )  
  
  а                   *  с  с  i                        и  РРРй        ит€€€    D        n  Ь€€€А€€€   
 А€€€*Р Ь€€€ ђ  %t€€€P    »     (t     Ь€€€ д  %t€€€P          (t л   ж   Ь€€€   %t€€€P    8     (t Љ   Ј   Ь€€€ T  %t€€€P    p     (t Н   И   Ь€€€ М  %t€€€P    ®     (t ^   Y   Ь€€€ ƒ  %t€€€P    а     (t /   *   Ь€€€ ь  %t€€€P         (t          $   А€€€    t€€€    Ь€€€              и?ю€€    И        5  Ь€€€А€€€   
 А€€€*Р |€ц  p€€€    4     
   -! &   0€€€ P  *t 0€€€   (t Њ  ¶  Ь€€€ ђ  %p€€€P&   0€€€ l  *t 0€€€   (t Б  i  Ь€€€ д  %p€€€P&   0€€€ l  *t 0€€€   (t D  ,  Ь€€€   %p€€€P&   0€€€ l  *t 0€€€   (t   п   Ь€€€ T  %p€€€P&   0€€€ l  *t 0€€€   (t     ≤   Ь€€€ М  %p€€€P&   0€€€ l  *t 0€€€   (t Н   u   Ь€€€ ƒ  %p€€€P&   0€€€ И  *t 0€€€   (t P   8   Ь€€€ ь  %p€€€P!   0€€€ И  *t 0€€€   (t         A   |€     -   p€€€    Ь€€€    А€€€    0€€€              иЉы€€    $        –    h   §  *®    
   
%ђ€€€4Q    h  Ф€€€   
   
%†€€€§  Ф€€€*®  h   ђ  %Ф€€€d   (® Q   L    h  Ф€€€   
   
%†€€€§  Ф€€€*®  h   ђ  %Ф€€€d   (®          $   ђ€€€    Ф€€€    †€€€              иІъ€€    4        -   P   §  *® ђ€€€   
*Ь ®€>   Ь€€€ А    і    Ь€€€Ь€€€    –   А    Ь€€€   Ь€€€  'AЬ€€€   ®€ђ€€€   
*Ь    
Р€€€(Ь ђ€€€Р€€€" LM   Ь€€€    4  ђ€€€   -!     P   P   ђ  %Д€€€d*® ђ€€€'» †€€€Ь€€€    Ь€€€ P     (®          -   Д€€€    Р€€€    ђ€€€    Ь€€€              и,щ€€(   $ 8      
 ≤  рю~     
 §  %дю€€h   \  Ўю€€X€€€$   
 $Ўю€€дю€€X€€€ м     %Љю€€( $дю€€дю€€фю€€ м     %Љю€€( iдю€€   
 ђ  %дю€€h+   фю€€ $     
   
   
 ,   ^5     
 4  %дю€€h   
 <  %Ўю€€h%∞ю€€$+   фю€€ $     
   
   
 D   ^„      
 L  %дю€€h   
 T  %Ўю€€h%∞ю€€$   
 \  %§ю€€h%Шю€€$   
 d  %Мю€€h%Аю€€$+   фю€€ $     
   
   
 l   ^C   фю€€ $     
   
   
 t   ^фю€€:    |  )8фю€€ Ффю€€Ж    м     %Љю€€()8фю€€Ч    |  )8дю€€фю€€    
   
   Џ! фю€€2    |  )8фю€€,   (t &        $A И  ,   (t 	      рю    
 c   Ўю€€    дю€€    Љю€€    ∞ю€€    Аю€€    Мю€€    X€€€$    Шю€€    §ю€€    фю€€             $ ицх€€    –        Н   фю€€ ђ  *® ию€€8€€€ Р   Vию€€8€€€ €€€ іию€€ €€€   
 ию€€    |     (t        И     (t          2   ию€€    фю€€     €€€   8€€€                  их€€    8        є   ђ€€€  Р  Р€€€  &Р€€€*Р  t   Ф  *Р Д€€€ і   ∞   t   &Д€€€А€>   Д€€€ А    і    Д€€€Д€€€    –   А    Д€€€   Д€€€  'AД€€€   А€     $   Д€€€    Р€€€    ђ€€€                
  + иф€€    И            \   §  *® ђ€€€   
*Ь    
   
%†€€€Ў   ђ€€€   
*Ь    
Ф€€€(Ь ђ€€€Ф€€€" LҐ   H€€€,ђ€€€&И€€€Ь $$ а  %<€€€H     \   \   ђ  %0€€€d*® J   H€€€,ђ€€€&И€€€Ь $$   %†€€€H     \   \   ђ  %0€€€d*®     ђ€€€'» K€€€”   ђ€€€   
*Ь    
Ф€€€(Ь ђ€€€Ф€€€" LҐ   H€€€,ђ€€€&И€€€Ь $$ а  %†€€€H     \   \   ђ  %0€€€d*® J   H€€€,ђ€€€&И€€€Ь $$   %†€€€H     \   \   ђ  %0€€€d*®     ђ€€€'» K€€€ \     (®          H   0€€€    <€€€    H€€€    И€€€    Ф€€€    †€€€    ђ€€€              и§с€€         4     иИс€€         4 V  ∞  ѕ  Ф     И  ≈  |  ј  t  ї  l  і  d  ≠  \  ¶  T  Я  L  Ш  D  С  <  К  4  Г  ,  |  $  u    n  м  i  –  d  і  _  ђ  Z  §  S  И  L  l  G  P  B  4  =    8  ь  3  а  .  ƒ  )  ®  $  М    p    T    8             д    »  ь   ђ  ч   Р      t      h      \      P            ь   
    р   
    д   
    Ў       ћ       ј       А                     pИ	    †  H	                                        
   	                                0Mon
PonedelnikTueVtornikWedSredaThu^etvrtokFriPetokSatSabotaSunNedela
PraznikDen PraznikRabotenVikendenrv_DBPraznici.dbTmpImeNaTabela:work:enrvDatabaseStandard         