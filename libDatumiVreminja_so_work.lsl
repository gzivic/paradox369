MZP      џџ  И       @                                      К Д	Э!ИLЭ!This program must be run under Microsoft Windows.
$            NE

     	                @ P ь Ќ                P   q        А0         Я 0         а0          ы 0         ѓ8 0    	     +`0          0    	 0      libDatumiVreminja  LIBENTRY  WEP            И ЫИ Ы                                        ўBorland Standard File           ў         @   |              ў ~ ў      @       	ў               ў              ў               ў               ў               ў F Library   Form   UIManager   UIContainer   UIObject   	ў Ј  ЂџџџџџџАf-                                             open+ close+ canArrive2 arrive2 setFocus+ canDepart2 removeFocus+ depart2 mouseEnter, mouseExit, mouseMove, mouseDown, mouseUp, mouseDouble, mouseRightDown, mouseRightUp, mouseRightDouble, keyPhysical- keyChar- action. menuAction/ timer4 pushButton+ changeValue0 calcField+ run+ newValue+ proc+ error3 status1 mouseClick, init+ stringListChange+ Uses Type Var Const Proc ImeNaDenotVoNedelata TipNaDenot BrNaDenoviVoPeriod BrNaPrazniciVoPeriod createTmpTblRange	 daliPostoiObjektot BrNaVikendiVoPeriod ў 8 џ 2џџ                   Ј  a    (  џџ	 С  Var
	_Datum, _DatumOd, _DatumDo Date
	_Vreme, _VremeOd, _VremeDo Time
	_tcPraznici TCursor
	_periodBrNaDenovi,_periodBrNaVikendi,_periodBrNaPraznici longInt
	_ImeNaFormata String
endVar
 Var $ method ImeNaDenotVoNedelata(Datum Date) AnyType
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













									 
 BrNaDenoviVoPeriod 'щ method BrNaPrazniciVoPeriod(odDatum Date, doDatum Date)longint
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
 daliPostoiObjektot   Љ  method open(var eventInfo Event)
_ImeNaFormata=getTitle()
try
	_tcPraznici.open(":work:Praznici.db")
onfail
   errorshow()
endTry
endMethod


															
 open+ *о method BrNaVikendiVoPeriod(odDatum Date, doDatum Date)longint
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
 BrNaVikendiVoPeriod    |        Љ  b    ]                                                                           Я .    4 A C:\Program Files (x86)\Paradox\Paradox\PDOXHome\winstyles.ft B  #Library1 POST >  џџџџ         ў 
     ў    ў                                    І  V   Б       Э  џџџџ                  К            Щ                   d                       џџџџ    Є                                                                  Щ   С           	CONTAINER     ђ   С      џџџџЯ               џџџџ            d  \  b  ACTIVE     >       џџџџЯ               џџџџ            К  В      LASTMOUSECLICKED       \     џџџџЯ               џџџџ              џ      SUBJECT     с  В     џџџџЯ               џџџџ            b  Z      LASTMOUSERIGHTCLICKED     <  џ     џџџџЯ               џџџџ                        SELF       Z     џџџџЯ               џџџџ                	#LIBRARY1     Э  Є     џџџџЯ  ?             џџџџ[   х          {                          п                                  у              /  K	                          Г
                                    a          Д  _                        y                                      Л      _DATUM      я      _DATUMOD      я  ћ  _DATUMDO      я      _VREME   М         _VREMEOD   А     G  _VREMEDO   Є         _TCPRAZNICI   Ш   j      _PERIODBRNADENOVI   (  "      _PERIODBRNAVIKENDI     "      _PERIODBRNAPRAZNICI     "      _IMENAFORMATA   4  е               џџџџЭ                                                                      IMENADENOTVONEDELATA      а  $     а   METHOD_SELFя   DATUM             џџџџ#                          Ѓ          ?  "                          METHOD_SELF    а      DATUM    я                       џџџџЭ                                                                      
TIPNADENOT      а  %     а   METHOD_SELFя   DATUM             џџџџ^                          И          p  S              Э          METHOD_SELF    а      DATUM    я  y  V               џџџџЭ                                                                    BRNADENOVIVOPERIOD      "  &     а   METHOD_SELFя   ODDATUMя   DODATUM             џџџџ                                                                д  METHOD_SELF    а      ODDATUM    я  Л  DODATUM    я  Д                 џџџџЭ                                                                      BRNAPRAZNICIVOPERIOD      "  '     а   METHOD_SELFя   ODDATUMя   DODATUM             џџџџѕ                  ц                      
                      <
  METHOD_SELF    а      ODDATUM    я  #
  DODATUM    я  х  э               џџџџЭ                                                                      CREATETMPTBLRANGE      а  (  $   	а   METHOD_SELFе   IMENATABELAя   ODDATUMя   DODATUM"   POSX"   POSY"   DOLZINA"   SIRINA"   BROJNAPRAZNICI             џџџџ]
            ў          ;  Q  ь  g  Я                    "  METHOD_SELF (   а      IMENATABELA $   е    ODDATUM     я  	  DODATUM    я      POSX    "      POSY    "      DOLZINA    "      SIRINA    "      BROJNAPRAZNICI    "  K	  U
               џџџџЭ                                                                      DALIPOSTOIOBJEKTOT      ы  )     а   METHOD_SELFе   IMENAOBJEKTOT             џџџџР                  H      z              Х      т          -      METHOD_SELF    а      IMENAOBJEKTOT    е  Г
  И               џџџџЭ                                                                      OPEN                  а   METHOD_SELFю   	EVENTINFO             џџџџ	                                        ќ                          METHOD_SELF    а      	EVENTINFO    ю                   џџџџЭ                                                                      BRNAVIKENDIVOPERIOD      "  *     а   METHOD_SELFя   ODDATUMя   DODATUM             џџџџ<                                        L                        METHOD_SELF    а      ODDATUM    я  i  DODATUM    я  _  4      DEN  џџџе      DEN  џџџе      _TIPDEN  0џџџа      _DATUM  Ќџџџя      TBL  Xџџџ      UITMPTBL  єўџџЯ      	_VOFORMOT  8џџџч      _AROBJNAMES   џџџ e     8       е          _I  єўџџ"      _DATUM  Ќџџџя            r  џ                                                                                                                  |  r    џ    ё  z     
   2   Њ  І                                                                                                                                                                                             u    r              #  #                                     $        X                 
                     	   
         %  d  d  d                                	   
                        -   &  Ш  Ш                                        
   '  U  U                                     	                  (  i	  i	  b                                                            %   &   '   (   ,   .   )  Ы  Ы  X                       	                  *  :  :  ;                                      	                         ё  щ        шђџџџ     $   Ь   D           $   Ь   џџџџџџ   
 џџџ*  $   Ь   џџџ P  %tџџџP'    $   Ь    l     (t t  o  џџџ   %tџџџP'    $   Ь    Є     (t 6  1  џџџ Р  %tџџџP'    $   Ь    м     (t ј   ѓ   џџџ ј  %tџџџP'    $   Ь         (t К   Е   џџџ 0  %tџџџP'    $	   Ь    L     (t |   w   џџџ h  %tџџџP'    $
   Ь         (t >   9   џџџ    %tџџџP"    $   Ь    М     (t      $   Ь        $   џџџ    tџџџ    џџџ              ш§џџ     %   §              %   §   џџџџџџ   
 џџџ*  %   §   |џ   %   §   pџџџ Ш    и     
   -! 5    %   §   0џџџ є  *t 0џџџ   (t E     %	   §   џџџ P  %pџџџP5    %
   §   0џџџ   *t 0џџџ   (t ъ  У  џџџ   %pџџџP5    %   §   0џџџ   *t 0џџџ   (t   w  џџџ Р  %pџџџP5    %   §   0џџџ   *t 0џџџ   (t R  +  џџџ ј  %pџџџP5    %   §   0џџџ   *t 0џџџ   (t   п   џџџ 0  %pџџџP5    %   §   0џџџ   *t 0џџџ   (t К      џџџ h  %pџџџP5    %   §   0џџџ ,  *t 0џџџ   (t n   G   џџџ    %pџџџP0    %   §   0џџџ ,  *t 0џџџ   (t "       %   §     A   |џ %-   §        -   pџџџ    џџџ    џџџ    0џџџ              ш6њџџ     &   H   $        9   &   H    (   H  *Ј  &   H      
   
%Ќџџџ4o    &   H    (  џџџ   
   
% џџџЄ  џџџ*Ј  &   H    (   P  %џџџd   (Ј o   j    &   H    (  џџџ   
   
% џџџЄ  џџџ*Ј  &   H    (   P  %џџџd   (Ј      &
   H        $   Ќџџџ    џџџ     џџџ              шЉјџџ     '   А	   <        Ў   '   А	       H  *Ј  '   А	   Ќџџџ   
*  '   А	    џџџ Ш    X    џџџ&џџџ№2    '   А	    t      MA '   А	     WA '	   А	   Ќџџџ   
*    
џџџ( Ќџџџџџџ" Lk    '   А	    џџџ Ш    и  Ќџџџ   -! *    '   А	          P  %|џџџd*Ј Ќџџџ'Ш џџџ '   А	    џџџ Ш     џџџ '   А	         (Ј      '   А	        6   |џџџ    џџџ     џџџ    Ќџџџ    џџџ              шіџџ(   $  (   y   8      
 Я   (   y   №ўn   (   y      
 H  %фўџџh   =   (   y   иўџџXџџџ$   
 $иўџџ (   y   фўџџXџџџ Ќ   Ш  %Мўџџ( $фўџџ (   y   фўџџєўџџ Ќ   Ш  %Мўџџ( iфўџџ (   y      
 P  %фўџџh:    (   y   єўџџ ф     
   
   
 ь   ^     
 є  %фўџџh   
 ќ  %иўџџh%Аўџџ$:    (   y   єўџџ ф     
   
   
    ^     
   %фўџџh   
   %иўџџh%Аўџџ$   
   %Єўџџh%ўџџ$   
 $  %ўџџh%ўџџ$:    (   y   єўџџ ф     
   
   
 ,   ^p    (   y   єўџџ ф     
   
   
 4   ^ (   y   єўџџ:    <  )8 (   y   єўџџ  (    y   єўџџ    Ќ   Ш  %Мўџџ()8 (%   y   єўџџ    <  )8 (&   y   фўџџєўџџ    
   
   к!  ('   y   єўџџ2    <  )8 ((   y   єўџџ,   (t 5   -    (,   y     $A H  ,   (t 	      №ў (.   y       
 c   иўџџ    фўџџ    Мўџџ    Аўџџ    ўџџ    ўџџ    Xџџџ$    ўџџ    Єўџџ    єўџџ             $ ш3ђџџ     )   o   а        і    )   o   єўџџ P  *Ј  )	   o   шўџџ8џџџ 4   Vшўџџ )   o   8џџџ џџџ Д )   o   шўџџ џџџ   
 шўџџ'    )   o    <     (t '   "    )   o    H     (t      )   o        2   шўџџ    єўџџ     џџџ   8џџџ                  шл№џџ          І   8        И   Ќџџџ       І    4  џџџ  &џџџ*       І   џ.         І   џџџ Ш    T   џџџ%         І   џџџ  'Aџџџ   џ      І        $   џџџ    Ќџџџ    џџџ                
  + шФяџџ     *   і           У   *   і       H  *Ј  *   і   Ќџџџ   
*  *   і      
   
% џџџ   *   і   Ќџџџ   
*    
џџџ( Ќџџџџџџ" LЯ    *   і   Hџџџ,Ќџџџ&џџџ $$   %<џџџH/    *   і          P  %0џџџd*Ј Y   Hџџџ,Ќџџџ&џџџ $$ М  % џџџH/    *	   і          P  %0џџџd*Ј     Ќџџџ'Ш џџџ   *   і   Ќџџџ   
*    
џџџ( Ќџџџџџџ" LЯ    *   і   Hџџџ,Ќџџџ&џџџ $$   % џџџH/    *   і          P  %0џџџd*Ј Y   Hџџџ,Ќџџџ&џџџ $$ М  % џџџH/    *   і          P  %0џџџd*Ј     Ќџџџ'Ш џџџ *   і         (Ј      *   і        H   0џџџ    <џџџ    Hџџџ    џџџ    џџџ     џџџ    Ќџџџ              шьџџ         2     шmьџџ         2 D  T  Н  H  И  <  Г  4  Ў  ,  Ї  $                     ќ  }  є  v  ь  o  ф  h  Ш  a  Ќ  \    W  t  R  X  M  P  H  H  A  ,  :    5  є  0  и  +  М  &     !      h    L    0        ј    м  ў   Р  љ   Є  є     я   l  ъ   P  х   4      (                  Ш       М   
    А   
    Є   
                                   p	       H	                                           
   	                                       0Mon
PonedelnikTueVtornikWedSredaThu^etvrtokFriPetokSatSabotaSunNedela
PraznikDen PraznikRabotenVikend:Work:Praznici.dbGreska:Nemozam da ja otvoram tabelata

        :priv:zaOtsatni.dbTmpImeNaTabela:work:Praznici.db   