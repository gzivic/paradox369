MZP      ��  �       @                                   �   � �	�!�L�!��This program must be run under Microsoft Windows.
$            NE

     	�                @ P � �     	           P   q  �      $0�    �     C 0�    �     D>0�     �     � 0�    �     �B 0�    	�     ��0�    �     � 0�    � 0�    � 0�      libDatumiVreminja  LIBENTRY  WEP                � ˸ �                                        9"Borland Standard File           �         @   |              � �~ �      @       	�               �              �               �               �               � �F Library   Form   UIManager   UIContainer   UIObject   	� ��  ���������f-                                             open+ close+ canArrive2 arrive2 setFocus+ canDepart2 removeFocus+ depart2 mouseEnter, mouseExit, mouseMove, mouseDown, mouseUp, mouseDouble, mouseRightDown, mouseRightUp, mouseRightDouble, keyPhysical- keyChar- action. menuAction/ timer4 pushButton+ changeValue0 calcField+ run+ newValue+ proc+ error3 status1 mouseClick, init+ stringListChange+ Uses Type Var Const Proc ImeNaDenotVoNedelata TipNaDenot BrNaDenoviVoPeriod BrNaPrazniciVoPeriod createTmpTblRange	 daliPostoiObjektot BrNaVikendiVoPeriod � �s � �m��                   �  a    �c  ��
 �T Var
   origEnrvDatabase,tmpEnrvDatabase Database
	_Datum, _DatumOd, _DatumDo Date
	_Vreme, _VremeOd, _VremeDo Time
	_tcPrazniciSource,_PrazniciDest TCursor
	_fs FileSystem
	_periodBrNaDenovi,_periodBrNaVikendi,_periodBrNaPraznici longInt
	_ImeNaFormata,_stImeNaTabelaSource,_stImeNaTabelaDest,_stDestPat,_stSourcePat String
endVar
 Var $� method ImeNaDenotVoNedelata(Datum Date) AnyType
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
 ImeNaDenotVoNedelata %X method TipNaDenot(Datum Date) AnyType
var den string endVar
den=dow(Datum)
try 

	if _PrazniciDest.locate("PraznikDen", Datum) then
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













									 
 BrNaDenoviVoPeriod '� method BrNaPrazniciVoPeriod(odDatum Date, doDatum Date)longint
var _Datum Date endVar
_periodBrNaPraznici=0
_Datum=odDatum
;if not _tcPraznici.open(":Work:Praznici.db") then
;		msgInfo("Greska","Nemozam da ja otvoram tabelata\n\n        :priv:zaOtsatni.db")
;		close()
;endIf
for  _Datum from odDatum to doDatum

if _PrazniciDest.locate("PraznikDen", _Datum) then 
	_periodBrNaPraznici=_periodBrNaPraznici+1
endIf
endFor
_PrazniciDest.close()
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
 daliPostoiObjektot   � method open(var eventInfo Event)

 _stSourcePat="C:\\RealityLogic\\origEnrvDatabase"
_stImeNaTabelaSource="Praznici.db"
  _stDestPat="C:\\RealityLogic\\tmpEnrvDatabase"
_stImeNaTabelaDest="tmpPraznici.db"
_ImeNaFormata=getTitle()
try
	if not isAssigned(origEnrvDatabase) then
		addAlias("origEnrvDatabase", "Standard", _stSourcePat)
		origEnrvDatabase.open("origEnrvDatabase")
		try
			origEnrvDatabase.isTable(_stImeNaTabelaSource) 
			
		onFail
				msgInfo("Greska","Tabelata "+ _stImeNaTabelaSource+" ne se naoga vo \n\n :origEnrvDatabase: (libDatumVreminja)")	
				message(_stImeNaTabelaSource, " is not a table!")  
		endTry
	else
		errorShow()
	endif

	if not isAssigned(tmpEnrvDatabase) then
		addAlias("tmpEnrvDatabase", "Standard", "C:\\RealityLogic\\origEnrvDatabase")
		tmpEnrvDatabase.open("tmpEnrvDatabase")
		try
			;tmpEnrvDatabase.isTable(_stImeNaTabelaDest) 
			 if _fs.findFirst(_stSourcePat) then
					if _fs.copy(_stImeNaTabelaSource, _stImeNaTabelaDest) then
						_stDestPat = _fs.fullName()
						message(_stImeNaTabelaSource + " copied to " + _stImeNaTabelaDest)
					else
						message("Copy failed...")
					endif
				else
					msgInfo(_stImeNaTabelaSource, "File not found.")
				endIf
		onFail
				retry
				msgInfo("Greska","Tabelata "+ _stImeNaTabelaDest+" ne se naoga vo \n\n :origEnrvDatabase: (libDatumVreminja)")	
				message(_stImeNaTabelaSource, " is not a table!")  
		endTry
	else
		errorShow()
	endif
	try
		_stImeNaTabelaSource.copy(_stImeNaTabelaDest)
		_PrazniciDest.open(_stImeNaTabelaDest, tmpEnrvDatabase)
	onFail
		errorShow()
      
	endTry
onFail
	errorShow()
endTry
endMethod


		 
 open+ *� method BrNaVikendiVoPeriod(odDatum Date, doDatum Date)longint
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
 BrNaVikendiVoPeriod  �  method close(var eventInfo Event)
if not _tcPrazniciSource.isAssigned() then
	_tcPrazniciSource.close()
endIf
endMethod











							
 close+    |        �  b    ]                                               ��� �  �    ��                   � .    4 A C:\Program Files (x86)\Paradox\Paradox\PDOXHome\winstyles.ft B  #Library1 POST >  ����        � � �
     � �   � �                        �  V   �       �  ����                  �            �                   d                       ����    �                                                              �  �  �   �           	CONTAINER     �   �      �����               ����            d  \  b  ACTIVE     >       �����               ����            �  �      LASTMOUSECLICKED     �  \     �����               ����              �      SUBJECT     �  �     �����               ����            b  Z      LASTMOUSERIGHTCLICKED     <  �     �����               ����                        SELF     �  Z     �����               ����                	#LIBRARY1     �  �     �����  ?             ����[   �                      �                \            �          �  �  &              r  L
                          �                     X              �      �  �  `                      z              �                      8  �  ORIGENRVDATABASE   �   O      TMPENRVDATABASE   �   O      _DATUM     �      _DATUMOD     �  >  _DATUMDO      �      _VREME   <        _VREMEOD   0    �  _VREMEDO   $        _TCPRAZNICISOURCE   �  j      _PRAZNICIDEST   H  j      _FS   �        _PERIODBRNADENOVI     "      _PERIODBRNAVIKENDI   �  "      _PERIODBRNAPRAZNICI   �  "      _IMENAFORMATA   �  �      _STIMENATABELASOURCE   d  �      _STIMENATABELADEST   H  �      
_STDESTPAT   ,  �      _STSOURCEPAT     �               �����                                                                      IMENADENOTVONEDELATA      �  $     �   METHOD_SELF�   DATUM             ����$                          �          @  #                          METHOD_SELF    �      DATUM    �                       �����                                                                      
TIPNADENOT      �  %     �   METHOD_SELF�   DATUM             ����_                          �          q  T                        METHOD_SELF    �      DATUM    �  z  W               �����                                                                  �  BRNADENOVIVOPERIOD      "  &     �   METHOD_SELF�   ODDATUM�   DODATUM             �����                                          �	                      �	  METHOD_SELF    �      ODDATUM    �  �	  DODATUM    �  �  �               �����                                                                  �  BRNAPRAZNICIVOPERIOD      "  '     �   METHOD_SELF�   ODDATUM�   DODATUM             �����	                                                              =  METHOD_SELF    �      ODDATUM    �  $  DODATUM    �  �  �	               �����                                                                      CREATETMPTBLRANGE      �  (  $   	�   METHOD_SELF�   IMENATABELA�   ODDATUM�   DODATUM"   POSX"   POSY"   DOLZINA"   SIRINA"   BROJNAPRAZNICI             ����^  �          3          <  R  �  h  �                  �  #  METHOD_SELF (   �      IMENATABELA $   �  H  ODDATUM     �  
  DODATUM    �      POSX    "      POSY    "      DOLZINA    "      SIRINA    "      BROJNAPRAZNICI    "  L
  V               �����                                                                      DALIPOSTOIOBJEKTOT      �  )     �   METHOD_SELF�   IMENAOBJEKTOT             �����                  }      �              �      �          b      METHOD_SELF    �      IMENAOBJEKTOT    �  �  �               �����                                                                      OPEN                  �   METHOD_SELF�   	EVENTINFO             ����
                                        �                          METHOD_SELF    �      	EVENTINFO    �                   �����                                                                      BRNAVIKENDIVOPERIOD      "  *     �   METHOD_SELF�   ODDATUM�   DODATUM             ����=                  �                      M                      �  METHOD_SELF    �      ODDATUM    �  j  DODATUM    �  `  5               �����                                                                      CLOSE                 �   METHOD_SELF�   	EVENTINFO             �����                              �          �                          METHOD_SELF    �      	EVENTINFO    �  �  �      DEN  �����      DEN  �����      _TIPDEN  0����      _DATUM  �����      TBL  X����      UITMPTBL  �����      	_VOFORMOT  8����      _AROBJNAMES   ��� �     8       �          _I  ����"      _DATUM  �����       r�  �                                                                                                                    r�    �    �  �     
   D   �  �                                                                                                                                                                                             �  �  r� 	             �  �  �                 "                     	   
                                             !   $   '   (   )   ,   .   /   0   2   6   8      �  �  �                              $        X                 
                     	   
         %  d  d  d                                	   
                        -   &  �  �  �                                      
   '  U  U  �                          	                  (  �  �  b                                                            %   &   '   (   ,   .   )  [  [  X                       	                  *  i  i  ;                                      	                                 �  ����        �����     $   �   D           $   �   ��������   
 ����*�  $   �   ���� �  %t���P'    $   �    �     (t t  o  ���� �  %t���P'    $   �    �     (t 6  1  ����   %t���P'    $   �    (     (t �   �   ���� D  %t���P'    $   �    `     (t �   �   ���� |  %t���P'    $	   �    �     (t |   w   ���� �  %t���P'    $
   �    �     (t >   9   ���� �  %t���P"    $   �         (t      $   �        $   ����    t���    ����              ����     %   �   �           %   �   ��������   
 ����*�  %   �   |��   %   �   p��� H   $     
   -! 5    %   �   0��� @  *t 0���   (t E     %	   �   ���� �  %p���P5    %
   �   0��� \  *t 0���   (t �  �  ���� �  %p���P5    %   �   0��� \  *t 0���   (t �  w  ����   %p���P5    %   �   0��� \  *t 0���   (t R  +  ���� D  %p���P5    %   �   0��� \  *t 0���   (t   �   ���� |  %p���P5    %   �   0��� \  *t 0���   (t �   �   ���� �  %p���P5    %   �   0��� x  *t 0���   (t n   G   ���� �  %p���P0    %   �   0��� x  *t 0���   (t "       %   �     A   |� %-   �        -   p���    ����    ����    0���              �6���     &   I	   $        9   &   I	       �  *�  &   I	      
   
%����4o    &   I	      ����   
   
%�����  ����*�  &   I	       �  %����d   (� o   j    &   I	      ����   
   
%�����  ����*�  &   I	       �  %����d   (�      &
   I	        $   ����    ����    ����              ����     '   �
   0        G   '   �
    �   �  *�  '   �
   ����   
*�  '	   �
   ����   
*�    
����(� ��������" Lk    '   �
   ���� H   $  ����   -! *    '   �
    �   �   �  %����d*� ����'� ���� '   �
   ���� H   ���� '   �
    �     (�      '   �
        -   ����    ����    ����    ����              ����(   $  (   z   8      
 �   (   z   ��n   (   z      
 �  %����h   =   (   z   ����X���$   
 $���� (   z   ����X��� �   �  %����( $���� (   z   �������� �   �  %����( i���� (   z      
 �  %����h:    (   z   ���� �     
   
   
 �   ^�     
 �  %����h   
 �  %����h%����$:    (   z   ���� �     
   
   
 �   ^     
   %����h   
   %����h%����$   
   %����h%����$   
   %����h%����$:    (   z   ���� �     
   
   
 $   ^p    (   z   ���� �     
   
   
 ,   ^ (   z   ����:    4  )8 (   z   ���� � (    z   �����    �   �  %����()8 (%   z   �����    4  )8 (&   z   ��������    
   
   �!  ('   z   ����2    4  )8 ((   z   ����,   (t 5   -    (,   z     $A @  ,   (t 	      �� (.   z       
 c   ����    ����    ����    ����    ����    ����    X���$    ����    ����    ����             $ ����     )   p   �        �    )   p   ���� �  *�  )	   p   ����8��� �   V���� )   p   8��� ��� � )   p   ���� ���   
 ����'    )   p    4     (t '   "    )   p    @     (t      )   p        2   ����    ����     ���   8���                  �K���          �   x        <  ����       �       L  *�       �    d   h  *�       �    ,   �  *�       �    H   �  *�       �    �  ����  &����*�       �   ��>     	   �   ���� �     ����&t����     
   �   h��� �   �      &h���      �   ���� �    �    ����      �   d�.         �   ���� �    d   
 ����b         �    �      d  %����( ,  %H���( MA      �    d   H     tA!    d�         �   ����  'A����      �   ���� �     ����&t�����        �   h��� d   �   L   &h���      �   ���� �    d    ����      �   D�        �   ���� �      =�����         �   t��� �   d   H   
=t���j         �    ,  ���� �   !=����*�       �    d   �  %����( H  %H���(   tA!       !   �    �     tA!       $   �    d   �   MAw      '   �   ����   (   �    �      H  %����( ,  %H���( MA   )   �    d   H     tA!    D�      ,   �   ����  'A����   .   �   @�\      /   �   ���� d   H   G$����   0   �   ���� H   H   �    ����%      2   �   ����  'A����   @�%      6   �   ����  'A����   ��   8   �        ?   ����    t���    ����    h���    ����    H���                
  + ����     *   �   �        �   *   �    �   �  *�  *   �   ����   
*�  *   �      
   
%����   *   �   ����   
*�    
����(� ��������" L�    *   �   H���,����&����� $$ �  %<���H/    *   �    �   �   �  %0���d*� Y   H���,����&����� $$   %����H/    *	   �    �   �   �  %0���d*�     ����'� ���   *   �   ����   
*�    
����(� ��������" L�    *   �   H���,����&����� $$ �  %����H/    *   �    �   �   �  %0���d*� Y   H���,����&����� $$   %����H/    *   �    �   �   �  %0���d*�     ����'� ��� *   �    �     (�      *   �        H   0���    <���    H���    ����    ����    ����    ����              �Z���         B   0        y   ����      B   ���� �   ~����&�����$        B   ���� �   ����     B        -   ����    ����    ����    ����                
  + �y���         D     �]���         D   �  _  �  Z  �  U  d  P  H  K  ,  F    A  �  <  �  7  �  2  �  -  �  (  h  #  L    @    4    ,    $          �    �    �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  x  �  \  �  @  �  $  �    �  �  �  �  �  �  �  �  �  |  }  `  x  D  s  (  n    i  �  d  �  _  �  Z  �  U  �      d      H      ,                  �      �      �  =    �      H      <  
    0  
    $  
                       �        �        "   !                                               p�	    �  H	                                  
   	                             0Mon
PonedelnikTueVtornikWedSredaThu^etvrtokFriPetokSatSabotaSunNedela
PraznikDen PraznikRabotenVikendTmpImeNaTabela C:\RealityLogic\origEnrvDatabasePraznici.dbC:\RealityLogic\tmpEnrvDatabasetmpPraznici.dborigEnrvDatabaseStandardGreska	Tabelata 8 ne se naoga vo 

 :origEnrvDatabase: (libDatumVreminja) is not a table!tmpEnrvDatabase         copied to Copy failed...File not found.     