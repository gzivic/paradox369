MZP      џџ  И       @                                      К Д	Э!ИLЭ!This program must be run under Microsoft Windows.
$            NE
E
     	                @ P (EEп                P   q       ! 0    " 0         ( 0         )г0          ќ	 0         
& 0    	     *
R0         | 0     0     0    Б	 0    К& 0    р 0      TDOmodzz  LIBENTRY  WEP         И ЫИ Ы                                        џBorland Standard File           ў         @   |              ў ~ ў      @       	ў               ў              ў               ў               ў               ў F Library   Form   UIManager   UIContainer   UIObject   	ў   џџџџџџqT/                                             open+ close+ canArrive2 arrive2 setFocus+ canDepart2 removeFocus+ depart2 mouseEnter, mouseExit, mouseMove, mouseDown, mouseUp, mouseDouble, mouseRightDown, mouseRightUp, mouseRightDouble, keyPhysical- keyChar- action. menuAction/ timer4 pushButton+ changeValue0 calcField+ run+ newValue+ proc+ error3 status1 mouseClick, init+ Uses Type Var Const Proc twWrDiagnosticSw twRdDiagnosticSw twShowTDOsLinks twRegisterTDO twzzAfterDefault twRegisterProvider twRegisterDependent twxDataChanged templates twxValidityReq ў Є| џ |џџ                     b    ш{  џџ p Var

; table of TDO names and statuses, implemented in 5 parallel arrays
twgas_TDOs				array [] string	; list of full names of all TDOs
twgas_OldValue			array [] string	; current control value if it has one
twgal_FlagValid		array [] logical	; = TDO's Providers are all valid
twgal_DataValid		array [] logical	; = data valid for Dependent TDOs

; table of nonredundant dependency links, implemented in 2 parallel arrays
; the longint entries are TDO IDs, which are indices into the above table
twgai_PROVs				array [] longint	; Provider end of a dependency link
twgai_DEPNs				array [] longint	; Dependent end of corresponding link

; table of maximum path lengths -- the index of each entry is a 10 digit
; string, first 5 digits = provider TDO ID, last 5 digits = dependent TDO ID
; the longint value of each entry is the length of the maximum transitive
; dependency path from the dependent TDO to the provider TDO
twgdi_Rank			dynarray [] longint	; path length dictionary

; scalar switches
twgl_Diagnostics					logical	; = show trace messages
twgl_Cascading						logical	; = do not begin new cascade

endVar
 Var 1 Uses ObjectPAL

	; a TDO may respond to these events by exporting these methods

   ; TDOs are all opened -- register your dependencies
   ; Code should contain calls to twRegisterProvider($) and twRegisterDependent($)
	twSetUpLinks()
   ; default: do nothing

	; provider validity status has changed since last twReValidate
   ; Arg == providers are now all valid
	twReValidate( const al_KEY logical )
   ; default: do nothing

   ; test arg for validity
   ; return result == arg is valid for use by depndent TDOs
	twIsDataValid( const as_VAL string ) logical
   ; default: any nonblank string is valid but blank is invalid

   ; display unique custom message indicating data entry is required
	twDataNeeded()
   ; default: display msgstop( TDO full name, "Data Entry Required" )

endUses

 Uses  U( ; Check fullnames are in TDO list, then insure dependency is in link list.
proc twzzINSURELINK( const as_PROV string, const as_DEPN string )
var
	DEPNLI, PROVLI, II	longint
   CC							logical
endvar
	CC = false	; will collect errors
   ; Check for reflexivity.  Not strictly necessary.
   if as_PROV=as_DEPN then
		msginfo( "TRANSITIVE DATA DEPENDENCY REGISTRATION ERROR",
      "Attempt to register a dependency from \""+as_DEPN+
      "\" to itself.\n\nReflexivity is disallowed." )
      CC = true
   endif
   ; Check provider full name is in TDO list, and save its index.
  	PROVLI = twgas_TDOs.indexOf( as_PROV )
   if PROVLI=0 then
		msginfo( "TRANSITIVE DATA DEPENDENCY REGISTRATION ERROR",
      "Attempt to register a dependency from \""+as_DEPN+"\" to "+
      as_PROV+".\n\nThe object \""+as_PROV+"\" is not a registered TDO." )
      CC = true
   endif
   ; Check dependent full name is in TDO list, and save its index.
   DEPNLI = twgas_TDOs.indexOf( as_DEPN )
   if DEPNLI=0 then
		msginfo( "TRANSITIVE DATA DEPENDENCY REGISTRATION ERROR",
      "Attempt to register a dependency from \""+as_DEPN+"\" to "+
      as_PROV+".\n\nThe object \""+as_DEPN+"\" is not a registered TDO." )
      CC = true
   endif
   ; Bubble and blow.
	if CC then
      twgl_Cascading = true
      return
   endif
   ; Detetermine if link is already in list.
   CC = true	; means link not found
   for II from 1 to size( twgai_PROVs )
   	if (twgai_PROVs[II]=PROVLI)and(twgai_DEPNs[II]=DEPNLI) then
      	CC = false
         quitloop
      endif
   endfor
   if CC then	; not already in list -- add it
   	twgai_PROVs.addLast( PROVLI )
      twgai_DEPNs.addLast( DEPNLI )
   endif
   ; This dependent patently has a provider, so unmark its flag.
   twgal_FlagValid[DEPNLI] = false
endproc

; emulate message passing, dependent to provider
proc twzzDOPROVS( const ai_NDX longint, const ai_SKP string,
								const ai_KEY logical ) logical
var
	OO							uiobject
   al_Signers				array [] string
	PROVLI, II				longint
	CC							logical
endvar
	ai_SKP.breakApart(al_Signers,"~")
	CC = true
   for II from 1 to size( twgai_DEPNs )	; look at all the links
   	if twgai_DEPNs[II]=ai_NDX then	; found a link with depn = me
			PROVLI = twgai_PROVs[II]	; save prov
         ; al_Signers holds provs known to be valid
         if not al_Signers.contains(format("w5,ez",PROVLI)) then
		   	{|}DIAG( twgas_TDOs[ai_NDX]+" sending ValMsg("+string(ai_KEY)+
	         {|}") to "+twgas_TDOs[PROVLI] )
				if ai_KEY then
					if not(twgal_FlagValid[PROVLI] and twgal_DataValid[PROVLI]) then
						if twgal_FlagValid[PROVLI] then
		  					{|}DIAG( twgas_TDOs[PROVLI]+
		               {|}" posting twDataNeeded to control" )
							try
		               	OO.attach( twgas_TDOs[PROVLI] )
		                  OO.twDataNeeded()
		               onfail
								{|}DIAG( twgas_TDOs[PROVLI]+" control did not "+
						      {|}"respond to twDataNeeded post -- Substituting "+
						      {|}"standard message" )
								msgStop( twgas_TDOs[PROVLI], "Data Entry Required" )
			            endtry
		            else
		            	twgal_FlagValid[PROVLI] = twzzDOPROVS( PROVLI,
								"00000", ai_KEY )
			         endif
			      endif
		      endif
	         CC = twgal_FlagValid[PROVLI] and twgal_DataValid[PROVLI]
				{|}DIAG( twgas_TDOs[PROVLI]+" returning ("+string(CC)+
				{|}") from ValMsg to "+twgas_TDOs[ai_NDX] )
	      endif
      endif
      if not CC then quitloop endif
   endfor
   return CC
endproc

; emulate message passing, provider to dependent
proc twzzDODEPNS( const ai_NDX longint, const al_KEY logical )
var
	dl_Process							dynarray [] string
   al_Signers							array [] string
   TMPST, MYARG, SS					string
   DEPNLI, MYNDX, II					longint
   MSGREV, MYKEY, CC					logical
   FlagPrior, DataPrior				logical
endvar
	dl_Process.empty()
	MYNDX = ai_NDX
	MYKEY = al_KEY
   MYARG = iif(MYKEY,format("w5,ez",MYNDX),"false")
	while true
      MSGREV = true	; force message production on first iteration
	   if size(dl_Process)>0 then
      	; BGN consuming RevMsg messages sorted by relative delivery times
      	MSGREV = false
         foreach TMPST in dl_Process         ; \
            MYNDX = int(substr(TMPST,6,5))   ;  \  mechanism for extracting
            MYARG = dl_Process[TMPST]        ;   \ first entry from dynarray
         quitloop                            ;   / -- includes parsing TDO
         endforeach                          ;  /  index from sortable name
         dl_Process.removeItem(TMPST)        ; /
         if MYARG="false" then
         	MYKEY = false
            SS = ""
         else
         	MYKEY = true
            MYARG.breakApart(al_Signers,"~")
            for II from 1 to size(al_Signers)
            	if al_Signers[II]="00000" then
               	al_Signers[II] = "<ORIGIN>"
               else
               	al_Signers[II] = twgas_TDOs[int(al_Signers[II])]
               endif
            endfor
            SS = al_Signers[1]
            for II from 2 to size(al_Signers)
            	SS = SS+", "+al_Signers[II]
            endfor
         endif
			{|}DIAG( "Processing: "+TMPST+"\n\n"+
			{|}twgas_TDOs[MYNDX]+" receiving RevMsg("+string(MYKEY)+")"+
			{|}string(iif(MYKEY," from "+SS,"")) )
         ; bgn TDO behavior state transitions
			FlagPrior = twgal_FlagValid[MYNDX]
			DataPrior = twgal_DataValid[MYNDX]
			if MYKEY then	; rcvd RevMsg(true)
	         if FlagPrior then	; FlagValid was true
					MSGREV = twzzPRCMSG( MYNDX, DataPrior, true, DataPrior, true )
	         else	; FlagValid was false
					twgal_FlagValid[MYNDX] = twzzDOPROVS( MYNDX, MYARG, false )
		         if twgal_FlagValid[MYNDX] then
						MSGREV = twzzPRCMSG( MYNDX, DataPrior, true, false, true )
		         endif
	         endif
	      else	; rcvd RevMsg(false)
	         if FlagPrior then	; FlagValid was true
	         	twgal_FlagValid[MYNDX] = false
					MSGREV = twzzPRCMSG( MYNDX, DataPrior, DataPrior, DataPrior,
								DataPrior )
	         endif
	      endif
         ; end TDO behavior state transitions
	      MYKEY = twgal_FlagValid[MYNDX] and twgal_DataValid[MYNDX]
		   MYARG = iif(MYKEY,format("w5,ez",MYNDX),"false")
         ; END consuming RevMsg messages sorted by relative delivery times
		endif
      if MSGREV then
      	; BGN producing RevMsg messages sorted by relative delivery times
	   	for II from 1 to size(twgai_PROVs)	; look at all the links
	      	if twgai_PROVs[II]=MYNDX then	; found a link with prov = me
	         	DEPNLI = twgai_DEPNs[II]	; save depn
               ; insert depn (DEPNLI) into the list of TDOs to be processed
               ; -- generate a sortable name for it: a 10 digit string, first
               ; 5 digits = length of the longest path from the originating
               ; TDO (ai_NDX) to depn, last 5 digits = depn TDO index
	            TMPST = format("w5,ez",twgdi_Rank[format("w5,ez",ai_NDX)+
								format("w5,ez",DEPNLI)])+format("w5,ez",DEPNLI)
               ; update or append sortable name and message arg
               ; EXCEPT do not update false entry to true entry
					if dl_Process.contains(TMPST) then
	            	if dl_Process[TMPST]<>"false" then
		            	if MYKEY then
								{|}DIAG( "Endorsing: "+TMPST+"\n\n"+
								{|}string(iif(MYNDX=0,"<ORIGIN>",twgas_TDOs[MYNDX]))+
								{|}" co-signing RevMsg("+string(MYKEY)+") to "+
								{|}twgas_TDOs[DEPNLI] )
			            	dl_Process[TMPST] = dl_Process[TMPST]+"~"+MYARG
                     else
								{|}DIAG( "Changing: "+TMPST+"\n\n"+
								{|}string(iif(MYNDX=0,"<ORIGIN>",twgas_TDOs[MYNDX]))+
								{|}" re-sending RevMsg("+string(MYKEY)+") to "+
								{|}twgas_TDOs[DEPNLI] )
			            	dl_Process[TMPST] = MYARG
		               endif
	               endif
	            else
						{|}DIAG( "Queueing: "+TMPST+"\n\n"+
						{|}string(iif(MYNDX=0,"<ORIGIN>",twgas_TDOs[MYNDX]))+
						{|}" sending RevMsg("+string(MYKEY)+") to "+
						{|}twgas_TDOs[DEPNLI] )
	            	dl_Process[TMPST] = MYARG
	            endif
	         endif
	      endfor
         ; END producing RevMsg messages sorted by relative delivery times
		endif
   if size(dl_Process)=0 then quitloop endif	; no more messages to consume
   endwhile
endproc

; evolvement of TDO behavior state transitions -- This proc, and the three
; calls to it in twzzDODEPNS, implement a TDO's response to a RevMsg message.
proc twzzPRCMSG( const MYNDX longint, const al_1 logical, const al_2 logical,
								const al_3 logical, const al_4 logical ) logical
var OO uiobject SS string CC logical endvar
	OO.attach( twgas_TDOs[MYNDX] )
	{|}DIAG( twgas_TDOs[MYNDX]+" posting twReValidate("+
	{|}string(twgal_FlagValid[MYNDX])+") to control" )
	try
		OO.twReValidate( twgal_FlagValid[MYNDX] )
	onfail endtry
	try
      SS = OO.Value
		if SS=twgas_OldValue[MYNDX] then
			return al_1
		else
			twgas_OldValue[MYNDX] = SS
		   try
		      CC = OO.twIsDataValid( SS )
		  		{|}DIAG( twgas_TDOs[MYNDX]+" twReValidate caused data change"+
		  		{|}"\nPosted twIsDataValid( \""+SS+"\" ) to control\nControl "+
		  		{|}"returned "+string(CC)+" from twIsDataValid" )
		   onfail
		     	CC = ( SS<>blank() )
		  		{|}DIAG( twgas_TDOs[MYNDX]+" twReValidate caused data change"+
		  		{|}"\nPosted twIsDataValid( \""+SS+"\" ) to control\nControl "+
            {|}"did not respond to twIsDataValid\nStandard test yields "+
		  		{|}string(CC) )
		   endtry
         twgal_DataValid[MYNDX] = CC
         return iif(CC,al_2,al_3)
		endif
   onfail
		twgal_DataValid[MYNDX] = true
		return al_4
   endtry
endproc

; bgn cascade control
proc twzzCascadeLock() logical
	; don't start another cascade if one is already running
	if twgl_Cascading then
		return false
   else
		twgl_Cascading = true
		return true
	endif
endproc

; cascade control end
proc twzzCascadeFree()
	; cascade completed -- reset to allow a possible nother
	twgl_Cascading = false
endproc

; switch-controlled diagnostic tracing messages
proc DIAG( const as_MSG string )
	if twgl_Diagnostics then msginfo( self.FullName, as_MSG ) endif
endproc
 proc+ #  ; diagnostic tracing switch access method
method twWrDiagnosticSw( const al_KEY logical )
	twgl_Diagnostics = al_KEY
endMethod
 twWrDiagnosticSw $s  ; diagnostic tracing switch access method
method twRdDiagnosticSw() logical
	return twgl_Diagnostics
endMethod
 twRdDiagnosticSw % ; use a dynarray and view() to display current TDO model data structures
; the garbage char at the beginning of each line controls the display sequence
; in the first section, F = providers all valid, and D = this TDO's data valid
; second section shows each link twice, by index on left, by name on right
; third section is qualified transitive closure used as path length dictionary
method twShowTDOsLinks()
var las_DY dynarray [] string SS string II longint endvar
   las_DY["'   TDO  F D"] = "Full Name"
   las_DY["!   ------------------"] = "----------------------------"
	for II from 1 to size( twgas_TDOs )
   	las_DY[
         "\"   "
      	+format("w3,ez",II)+"   "
	      +iif(twgal_FlagValid[II],"F ","   ")
	      +iif(twgal_DataValid[II],"D ","   ")
      ] =
	      twgas_TDOs[II]
   endfor
   las_DY["*"] = " "
   las_DY[",  Link (Numb)"] = "Link (Full Name)"
   las_DY[".  ------------------"] = "----------------------------"
	for II from 1 to size( twgai_PROVs )
   	las_DY[
         ":  "+
      	format("w3,ez",twgai_PROVs[II])+
         " <-- "+
      	format("w3,ez",twgai_DEPNs[II])
      ] =
         iif(twgai_PROVs[II]=0,
         	"ORIGIN: ",
            twgas_TDOs[twgai_PROVs[II]]+" <-- "
         )+
         twgas_TDOs[twgai_DEPNs[II]]
   endfor
   las_DY[";"] = " "
   las_DY["^   Orgn  Term"] = "Path Length"
   las_DY["_  ------------------"] = "----------------------------"
	foreach SS in twgdi_Rank
   	las_DY[
         "~  "+
         substr(SS,3,3)+
         " => "+
         substr(SS,8,3)
      ] =
	      format("w3,ez",twgdi_Rank[SS])
   endforeach
	view( las_DY, "TDOs and Links" )
endMethod
 twShowTDOsLinks & ; When the form's open method executes its dodefault statement, it opens all
; the objects on the form.  As each TDO opens, it calls twRegisterTDO().
; A TDO cannot register a provider or dependent at this time because it needs
; to attach to the other TDO to get its full name, and the other TDO may not
; exist yet.  So, twRegisterTDO() just gathers a list of TDO full names for
; later processing by the method twzzAfterDefault().

method twRegisterTDO()
	twgas_TDOs.addLast( self.FullName )	; e verbo sum ergo
endMethod
 twRegisterTDO 'g ; Now the TDOs all exist, including those cloned as part of a record, and a
; complete list of their full names is in twgas_TDOs[].

method twzzAfterDefault()
var
   lai_PROVs, lai_DEPNs, lai_PATHs	array [] longint	; transitive closure
	OO											uiobject
   SS											string
   II, JJ									longint
   CC											logical
endvar

	; Create the required flags for each TDO.
   JJ = size(twgas_TDOs)
	twgal_FlagValid.setSize( JJ )
	twgas_OldValue.setSize( JJ )
	twgal_DataValid.setSize( JJ )
   for II from 1 to JJ
   	twgal_FlagValid[II] = true	; temporarily used to record rootitivity
   	twgas_OldValue[II] = blank()	; set to default value
   	twgal_DataValid[II] = false	; set to default value
   endfor

   ; Use the list of full names to tell each TDO to initialize itself.  A
   ; TDO's twInitialize() method may call twRegisterProvider( const string )
   ; or twRegisterDependent( const string ) -- see further comments in those
   ; two TDOmodel library methods.  The effect of the calls on these two
   ; methods is to clear some of the flags in twgal_FlagValid[] and construct
   ; a dependency link list in twgai_PROVs[] and twgai_DEPNs[].
   ; Also, any errors along the way will set twgl_Cascading = true.
   twgai_PROVs.empty()
   twgai_DEPNs.empty()
   twgl_Cascading = false	; temporarily used to record initialization errors
   for II from 1 to size( twgas_TDOs )
   	try
	     	OO.attach( twgas_TDOs[II] )
			OO.twSetUpLinks()
      onfail endtry
   endfor
   if twgl_Cascading then
   	msgStop("TRANSITIVE DEPENDENCY OBJECT MODEL FAILURE",
      "Registration errors prevent the TDO model from opening properly.\n"+
      "\nThis form cannot run without the TDO model.  The form designer "+
      "must correct the dependency links among the TDOs on this form.")
		formReturn( false ) ; like bag this bogus gig man
   endif

   ; Now the link list exists, and twgal_FlagValid[] marks TDOs with no
   ; providers.  The contents of twgas_TDOs[] will not change hereafter.

   ; Use the flag array twgal_FlagValid[] to create a dependency link to the
   ; pseudo-TDO "0" from exactly every TDO that does not have any providers.
   for II from 1 to size(twgas_TDOs)
   	if twgal_FlagValid[II] then
	   	twgai_PROVs.addLast( 0 )
	      twgai_DEPNs.addLast( II )
	      twgal_FlagValid[II] = false	; set to default value
      endif
   endfor

   ; Calculate the qualified transitive closure of the dependency link list.
	lai_PROVs = twgai_PROVs
	lai_DEPNs = twgai_DEPNs
   lai_PATHs.setSize(size(lai_PROVs))
	for II from 1 to size(lai_PATHs) lai_PATHs[II] = 1 endfor
	II = 1
   CC = true
   while CC
   if II>size(lai_PROVs) then quitloop endif	; size does matter
   	for JJ from 1 to size(twgai_PROVs)
      	if twgai_PROVs[JJ]=lai_DEPNs[II] then
         	if lai_PROVs[II]=twgai_DEPNs[JJ] then
			   	msgStop("TRANSITIVE DEPENDENCY OBJECT MODEL FAILURE",
		         "The TDO model on this form is not safe to execute because "+
		         "a dependency relationship loop was found at object \""+
               twgas_TDOs[lai_PROVs[II]]+"\".\n\nThis form cannot run "+
			      "without the TDO model.  The form designer must correct the "+
			      "dependency links among the TDOs on this form.")
					CC = false	; oop sie dood a boo boo
					formReturn( false ) ; like bag this bogus gig man
		         quitloop
            else
	         	lai_PROVs.addLast(lai_PROVs[II])
	         	lai_DEPNs.addLast(twgai_DEPNs[JJ])
	         	lai_PATHs.addLast(lai_PATHs[II]+1)
	         endif
         endif
      endfor
      II = II+1
   endwhile
   ; Create a dictionary of maximum path lengths from the transitive closure.
   for II from 1 to size(lai_PROVs)
   	twgdi_Rank[format("w5,ez",lai_PROVs[II])+format("w5,ez",lai_DEPNs[II])]
								= lai_PATHs[II]
   endfor
   ; A link is redundant if its length is one and an alternate path exists.
   II = 1
   while true
   if II>size(twgai_PROVs) then quitloop endif	; size does matter
   	SS = format("w5,ez",twgai_PROVs[II])+format("w5,ez",twgai_DEPNs[II])
      if twgdi_Rank.contains(SS) then
      	if twgdi_Rank[SS]>1 then
         	twgai_PROVs.remove(II)
            twgai_DEPNs.remove(II)
            II = II-1
         endif
      endif
      II = II+1
   endwhile

   ; The contents of twgai_PROVs[], twgai_DEPNs[], and twgdi_Rank[] will not
   ; change hereafter.

   ; Force every TDO that responds to state changes into the invalid state.
   for II from 1 to size(twgas_TDOs)
   	try
      	OO.attach(twgas_TDOs[II])
		   twzzCascadeLock()
         OO.twReValidate(false)
		   twzzCascadeFree()
      onfail endtry
   endfor
	; Send a MsgRev(true) to every TDO that does not have a provider.
   twzzCascadeLock()
   twzzDODEPNS( longint(0), true )
   twzzCascadeFree()

	; The TDO model for the calling form is now constructed and initialized.

endMethod
 twzzAfterDefault (H ; called by TDO::twSetUpLinks
method twRegisterProvider( const as_PROV string )
var
	OO							uiobject
   DEPNFN, PROVFN			string
endvar
	; Get dependent's full name (this part is easy).
	DEPNFN = self.FullName
   ; Get provider's full name.  The arg as_PROV may not (indeed, should not)
   ; be a fully qualified name.  Attach to the object to get its full name.
   if not OO.attach( as_PROV ) then
		msginfo( "TRANSITIVE DATA DEPENDENCY REGISTRATION ERROR",
      "Attempt to register \""+as_PROV+"\" as a Provider of "+
      DEPNFN+".\n\nCannot identify the object \""+as_PROV+"\"." )
      twgl_Cascading = true	; signal an error
      return
   endif
	PROVFN = OO.FullName
   ; Record the dependency link using the two full names.
	twzzINSURELINK( PROVFN, DEPNFN )	; go use common code in library::proc
endMethod
 twRegisterProvider )J ; called by TDO::twSetUpLinks
method twRegisterDependent( const as_DEPN string )
var
	OO							uiobject
   DEPNFN, PROVFN			string
endvar
	; Get provider's full name (this part is easy).
	PROVFN = self.FullName
   ; Get dependent's full name.  The arg as_DEPN may not (indeed, should not)
   ; be a fully qualified name.  Attach to the object to get its full name.
   if not OO.attach( as_DEPN ) then
		msginfo( "TRANSITIVE DATA DEPENDENCY REGISTRATION ERROR",
      "Attempt to register \""+as_DEPN+"\" as a Dependent of "+
      PROVFN+".\n\nCannot identify the object \""+as_DEPN+"\"." )
      twgl_Cascading = true	; signal an error
      return
   endif
	DEPNFN = OO.FullName
   ; Record the dependency link using the two full names.
	twzzINSURELINK( PROVFN, DEPNFN )	; go use common code in library::proc
endMethod
 twRegisterDependent *f	 ; TDO fields execute dodefault and call this from changeValue
; TDO Drop-Down Edit and List fields call this from mouseClick on the list
; TDO Radio Button and Check Box fields execute dodefault and call this from
;								pushButton on all contained buttons
; When a non-data TDO calls this, it means to assume data has changed and
;								call twIsDataValid to find out what to do
method twxDataChanged()
var OO uiobject SS string MYNDX longint PV, CC logical endvar
   if twzzCascadeLock() then
		MYNDX = twgas_TDOs.indexOf( self.FullName )
      if MYNDX<>0 then	; called from TDO control
         try
		   	SS = self.Value
         onfail
		   	SS = "~"									; this control has no value
		      twgas_OldValue[MYNDX] = blank()	; force appearance of change
         endtry
      else
	   	MYNDX = twgas_TDOs.indexOf( self.Container.FullName )
         if MYNDX<>0 then	; called from contained list or button
	         try
			      SS = self.Container.Value
	         onfail
			   	SS = "~"									; this little piggy had none
			      twgas_OldValue[MYNDX] = blank()	; force appearance of change
	         endtry
         else
			  	{|}DIAG( "Control posted a twxDataChanged but this is not a "+
			  	{|}"registered TDO" )
            return
         endif
      endif
		if SS<>twgas_OldValue[MYNDX] then	; value was apparently changed
	      twgas_OldValue[MYNDX] = SS			; record the changed value
	   	PV = twgal_DataValid[MYNDX]		; save the old data validity
			OO.attach( twgas_TDOs[MYNDX] )	; calc new data validity
		   try
		      CC = OO.twIsDataValid( SS )
		  		{|}DIAG( twgas_TDOs[MYNDX]+" got twxDataChanged from control"+
		  		{|}"\nPosted twIsDataValid( \""+SS+"\" ) to control\nControl "+
		  		{|}"returned "+string(CC)+" from twIsDataValid" )
		   onfail
		     	CC = ( SS<>blank() )
		  		{|}DIAG( twgas_TDOs[MYNDX]+" got twxDataChanged from control"+
		  		{|}"\nPosted twIsDataValid( \""+SS+"\" ) to control\nControl "+
            {|}"did not respond to twIsDataValid\nStandard test yields "+
		  		{|}string(CC) )
		   endtry
			twgal_DataValid[MYNDX] = CC
         ; notify dependents of current TDO validity
         ; UNLESS this TDO was invalid and remains invalid
		   if twgal_FlagValid[MYNDX] and (PV or CC) then
					   twzzDODEPNS( MYNDX, CC )
		   endif
	   endif
	   twzzCascadeFree()
   endif
endMethod
 twxDataChanged +
 method templates(){

MODIFICATIONS TO FORM:

form::Uses
------------------------------------------------------------------------
Uses ObjectPAL
; -=- -=- -=- -=- -=- BGN TDO MODEL -=- -=- -=- -=- -=-
	; called by form or diagnostics
	twzzAfterDefault()
	twRdDiagnosticSw() logical
	twWrDiagnosticSw( const al_KEY logical )
	twShowTDOsLinks()
   ; called by TDOs on the form
	twRegisterTDO()
	twRegisterProvider( const as_PROV string )
	twRegisterDependent( const as_DEPN string )
	twxDataChanged()
	twxValidityReq() logical
; -=- -=- -=- -=- -=- END TDO MODEL -=- -=- -=- -=- -=-
endUses
------------------------------------------------------------------------

form::Var
------------------------------------------------------------------------
Var
; -=- -=- -=- -=- -=- BGN TDO MODEL -=- -=- -=- -=- -=-
	libTDOmodel				library
; -=- -=- -=- -=- -=- END TDO MODEL -=- -=- -=- -=- -=-
endVar
------------------------------------------------------------------------

form::open
Replace ":<youralias>:" with the location of TDOmodel.LSL or TDOmodel.LDL.
------------------------------------------------------------------------
method open(var eventInfo Event)
	if eventInfo.isPreFilter() then
		;// This code executes for each object on the form
		
	else
		;// This code executes only for the form
; -=- -=- -=- -=- -=- BGN TDO MODEL -=- -=- -=- -=- -=-
		if not libTDOmodel.open( ":<youralias>:TDOmodel", PrivateToForm ) then
								errorshow() formReturn(false) endif
      ;libTDOmodel.twWrDiagnosticSw( true )	; activate to see startup messages
; -=- -=- -=- -=- -=- END TDO MODEL -=- -=- -=- -=- -=-
      dodefault
; -=- -=- -=- -=- -=- BGN TDO MODEL -=- -=- -=- -=- -=-
      libTDOmodel.twzzAfterDefault()
; -=- -=- -=- -=- -=- END TDO MODEL -=- -=- -=- -=- -=-

	endif
endMethod
------------------------------------------------------------------------

MODIFICATIONS TO CONTROLS -- EVENTS:

TDO::open
------------------------------------------------------------------------
method open(var eventInfo Event)
; -=- -=- -=- -=- -=- BGN TDO MODEL -=- -=- -=- -=- -=-
	libTDOmodel.twRegisterTDO()
; -=- -=- -=- -=- -=- END TDO MODEL -=- -=- -=- -=- -=-
endMethod
------------------------------------------------------------------------

TDO::canArrive
BUT if the control is a dropdown edit field, and you want to allow arrival
on the field but block the list from dropping down when the control is
dormant, paste this into the canArrive event of the included list INSTEAD
of the canArrive event of the control.
------------------------------------------------------------------------
method canArrive(var eventInfo MoveEvent)
; -=- -=- -=- -=- -=- BGN TDO MODEL -=- -=- -=- -=- -=-
	if not libTDOmodel.twxValidityReq() then
   	eventInfo.setErrorCode( CanNotArrive )
   endif
; -=- -=- -=- -=- -=- END TDO MODEL -=- -=- -=- -=- -=-
endMethod
------------------------------------------------------------------------

TDO::changeValue
DropdownTDO::keyPhysical
DropdownTDO.list::keyPhysical
DropdownTDO.list::mouseClick	(dodefault unnecessary in mouseClick)
ListBoxTDO.list::keyPhysical
ListBoxTDO.list::mouseClick	(dodefault unnecessary in mouseClick)
RadioButtonTDO.button::pushButton
CheckBoxTDO.button::pushButton
------------------------------------------------------------------------
method changeValue(var eventInfo ValueEvent)
	dodefault
; -=- -=- -=- -=- -=- BGN TDO MODEL -=- -=- -=- -=- -=-
   libTDOmodel.twxDataChanged()
; -=- -=- -=- -=- -=- END TDO MODEL -=- -=- -=- -=- -=-
endMethod
------------------------------------------------------------------------

MODIFICATIONS TO CONTROLS -- NEW METHODS:

General skeleton of the twReValidate event handler.
------------------------------------------------------------------------
method twReValidate( const al_KEY logical )
;//	If you do not alter this method, you should delete it for performance.
;//	Note however that if you do not include this method, then the control
;//	probably should not be a TDO in the first place.
	if al_KEY then
		; Implement what you want to happen when this control becomes ready.
	else
		; Implement what you want to happen when this control becomes dormant.
	endif
endMethod
------------------------------------------------------------------------

General skeleton of the twSetUpLinks event handler.
------------------------------------------------------------------------
method twSetUpLinks()
;//	These skeleton statements are models for dependency registration calls.
;//	If you do not alter this method, you should delete it for performance.
;	libTDOmodel.twRegisterProvider( "otherTDO" )
;	libTDOmodel.twRegisterDependent( "otherTDO" )
endMethod
------------------------------------------------------------------------

Default implementation of the twDataNeeded event handler.
------------------------------------------------------------------------
method twDataNeeded()
;//	This method duplicates the default behavior used when it is omitted.
;//	It is included in the prototype for convenience, because it is easier
;//	to remove a method than to install one.  If you do not alter this
;//	method, then you should delete it for improved performance.
	msgStop(self.FullName,"Data Entry Required")
endMethod
------------------------------------------------------------------------

Default implementation of the twIsDataValid event handler.
------------------------------------------------------------------------
method twIsDataValid( const as_VAL string ) logical
;//	This method duplicates the default behavior used when it is omitted.
;//	It is included in the prototype for convenience, because it is easier
;//	to remove a method than to install one.  If you do not alter this
;//	method, then you should delete it for improved performance.
	return( as_VAL<>blank() )
endMethod
------------------------------------------------------------------------

}endMethod
 templates    ; This method contains the processing that the TDO class
; needs to do before any of the TDOs exist or can be opened.
method open(var eventInfo Event)

	twgl_Diagnostics = false
	twgas_TDOs.empty()	; prepare to make a list of TDO full names

	; activate severally to debug unassigned-variable errors
;	twgas_TDOs.empty()			; list of full names of all TDOs
;	twgas_OldValue.empty()		; current control value if it has one
;	twgal_FlagValid.empty()		; = TDO's Providers are all valid
;	twgal_DataValid.empty()		; = data valid for Dependent TDOs
;	twgai_PROVs.empty()			; Provider end of dependency link
;	twgai_DEPNs.empty()			; Dependent end of dependency link
;	twgdi_Rank.empty()			; path length dictionary
;	twgl_Cascading = false		; = do not begin new cascade

endMethod

 open+ , ; TDOs call this to determine if all providers are valid
; This will also cause an alert message if any provider is not valid
method twxValidityReq() logical
var MYNDX longint endvar
	MYNDX = twgas_TDOs.indexOf( self.FullName )
   if MYNDX=0 then MYNDX = twgas_TDOs.indexOf( Container.FullName ) endif
   if MYNDX=0 then
	  	{|}DIAG( "Control posted a twxValidityReq but this is not a "+
	  	{|}"registered TDO" )
   else
	  	{|}DIAG( twgas_TDOs[MYNDX]+" got twxValidityReq from control" )
		if not twgal_FlagValid[MYNDX] then
	   	twgal_FlagValid[MYNDX] = twzzDOPROVS( MYNDX, "00000", true )
	   endif
	  	{|}DIAG( twgas_TDOs[MYNDX]+" returning ("+
	   {|}string(twgal_FlagValid[MYNDX])+") from twxValidityReq to control" )
	   return twgal_FlagValid[MYNDX]
	endif
endMethod
 twxValidityReq    @          b    ]                                                @               X   @                       Я .    >  џџџџ         ў 
     ў    ў                            V   Б       Э  џџџџ                  К            Щ                   d                       џџџџ    Є                                                              Ц  x  Щ   С           	CONTAINER     ђ   С      џџџџБ               џџџџ            d  \  b  ACTIVE     >       џџџџБ               џџџџ            К  В      LASTMOUSECLICKED       \     џџџџБ               џџџџ              џ      SUBJECT     с  В     џџџџБ               џџџџ            b  Z      LASTMOUSERIGHTCLICKED     <  џ     џџџџБ               џџџџ                        SELF       Z     џџџџБ               џџџџ                	#LIBRARY1     Э  Є     џџџџБ  ?             џџџџ[       *  Й          Ц        ы                      Ј              
  
      Л  ё              м          и          Z	                                  §                      у          P          #      x                          TWSETUPLINKS                 а   LIB_SELFtwSetUpLinks   TWREVALIDATE            s     а   LIB_SELFы   AL_KEYtwReValidate U  TWISDATAVALID       ы  Ъ     а   LIB_SELFV   AS_VALtwIsDataValid     TWDATANEEDED                 а   LIB_SELFtwDataNeeded     
TWGAS_TDOS       ;     8       V          TWGAS_OLDVALUE   И    p     8       V      Ш  TWGAL_FLAGVALID   №    І     8       ы        TWGAL_DATAVALID   (   м     8       ы          TWGAI_PROVS   `        8       "          TWGAI_DEPNS      @     8       "          
TWGDI_RANK   а   q     8       "      Ы  TWGL_DIAGNOSTICS     ы      TWGL_CASCADING     ы      TWZZINSURELINK                  V   AS_PROVV   AS_DEPN             џџџџЭ  А              Ф                              i              AS_PROV    V      AS_DEPN    V      TWZZDOPROVS       ы  |     "   AI_NDXV   AI_SKPы   AI_KEY             џџџџЭ  5  ^          I                            v  F  ь          AI_NDX    "      AI_SKP    V  и  AI_KEY    ы      TWZZDODEPNS            p     "   AI_NDXы   AL_KEY             џџџџЭ  0  \        ж  ]                        Ђ  *	    B	      AI_NDX    "  П  AL_KEY    ы      
TWZZPRCMSG       ы  \     "   MYNDXы   AL_1ы   AL_2ы   AL_3ы   AL_4             џџџџЭ              
  х                  0
  F
  \
  r
                  MYNDX    "      AL_1    ы      AL_2    ы      AL_3    ы  Н  AL_4    ы    TWZZCASCADELOCK       ы                      џџџџЭ                                                                      TWZZCASCADEFREE            h                    џџџџЭ                                                                      DIAG                 V   AS_MSG             џџџџЭ                                                                    AS_MSG    V               џџџџЭ                                                                      TWWRDIAGNOSTICSW           #     а   METHOD_SELFы   AL_KEY             џџџџ*                                          &                  C      METHOD_SELF    а      AL_KEY    ы                       џџџџЭ                                                                  :  TWRDDIAGNOSTICSW      ы  $     а   METHOD_SELF             џџџџc                                          P                          METHOD_SELF    а    [               џџџџЭ                                                                      TWSHOWTDOSLINKS           %     а   METHOD_SELF             џџџџu  :              &      љ              a                          METHOD_SELF    а  Й  m               џџџџЭ                                                                      TWREGISTERTDO           &     а   METHOD_SELF             џџџџ                                          p                          METHOD_SELF    а  Ы  ~               џџџџЭ                                                                      TWZZAFTERDEFAULT           '     а   METHOD_SELF             џџџџ  м      №      i                            Д                METHOD_SELF    а  м                 џџџџЭ                                                                      TWREGISTERPROVIDER           (     а   METHOD_SELFV   AS_PROV             џџџџЇ                      ,                  І        У              METHOD_SELF    а      AS_PROV    V  ы                 џџџџЭ                                                                      TWREGISTERDEPENDENT           )     а   METHOD_SELFV   AS_DEPN             џџџџф                                        ф      \                  METHOD_SELF    а  p  AS_DEPN    V  §  м               џџџџЭ                                                                      TWXDATACHANGED           *     а   METHOD_SELF             џџџџ"              Ш  ѓ                                               METHOD_SELF    а  :                 џџџџЭ                                                                      	TEMPLATES           +     а   METHOD_SELF             џџџџ2                                                                    METHOD_SELF    а  x  *               џџџџЭ                                                                      OPEN                  а   METHOD_SELFю   	EVENTINFO             џџџџ=                              M          0                          METHOD_SELF    а      	EVENTINFO    ю    5               џџџџЭ                                                                      TWXVALIDITYREQ      ы  ,     а   METHOD_SELF             џџџџp                                        [                          METHOD_SELF    а    h    DEPNLI  џџџ"      PROVLI   џџџ"      II  Ќџџџ"      CC  џџџы      OO  TџџџБ      
AL_SIGNERS  џџџ      8       V          PROVLI  џџџ"      II  џџџ"      CC  јўџџы      
DL_PROCESS  џџџ y     8       V      D  
AL_SIGNERS  Hџџџ Њ     8       V          TMPST  єўџџV  s  MYARG  џџџV      SS  ,џџџV      DEPNLI  аўџџ"      MYNDX  мўџџ"      II  шўџџ"      MSGREV  Ќўџџы      MYKEY  Иўџџы  э  CC  Фўџџы      	FLAGPRIOR  ўџџы    	DATAPRIOR   ўџџы      OO  TџџџБ      SS  8џџџV  б  CC  ,џџџы      LAS_DY  џџџ      8       V          SS  dџџџV      II  Xџџџ"    	LAI_PROVS  џџџ   N  	LAI_DEPNS  Hџџџ       	LAI_PATHS  џџџ      8       "          OO  ЌўџџБ      SS  ўџџV      II  xўџџ"      JJ  ўџџ"  Ш  CC  lўџџы      OO  TџџџБ  D  DEPNFN  џџџV      PROVFN  8џџџV      OO  TџџџБ    DEPNFN  џџџV      PROVFN  8џџџV      OO  TџџџБ      SS  8џџџV      MYNDX  ,џџџ"  Д  PV  џџџы  п  CC   џџџы      MYNDX  Ќџџџ"                    r  џ                                                                                                                   Z  r     џ    5  т      
   h   з/                                                                                                                                                                                       Ђ/  О/  r              -  -  l                   #  ћ  ћ  E                   $  @  @  I                   %                        &  (  (  i                   '                        (  #%  #%                    )  Б&  Б&                    *  ?(  ?(                    +  м,  м,  6                   ,  ~-  ~-  $                        5  щ        шђџџџ|       Ч  џџџ    *t    
   
%|џџџP8    ,   H     
%`џџџ( d  %Dџџџ( IAџџџ   *t  џџџџџџ       
 џџџ*t  џџџ   %|џџџhn    ,   H     
%`џџџ(   %Dџџџ(   
%шўџџ( А  %Ьўџџ(   
%Аўџџ( Ь  %ўџџ( IAџџџ   *t џџџџџџ       
 џџџ*t џџџ   %|џџџhn    ,   H     
%`џџџ(   %Dџџџ(   
%шўџџ( А  %Ьўџџ(   
%Аўџџ( Ь  %ўџџ( IAџџџ   *t џџџ         *t я   џџџ   *t Ќџџџ ш  *Ј џџџ `   џџџTўџџ(t ЌџџџTўџџ" Od    `  Ќџџџ, џџџ%|џџџ\   Ќџџџ,џџџ%Hўџџ\%<ўџџ   џџџ    *t    Ќџџџ'Ш џџџџџџ    `   џџџ    џџџ  №   џџџ,    *t         <ўџџ    Hўџџ    Tўџџ    џџџ    ўџџ    `џџџ    Аўџџ    Ьўџџ    џџџ    шўџџ     џџџ    |џџџ    џџџ    Ќџџџ    Dџџџ              шќџџ       F     
џџџ №   јўџџ   *t џџџ ш  *Ј Иўџџ    Иўџџxўџџ(t џџџxўџџ" OЦ     џџџ,   
%lўџџ\  џџџ `  џџџ,*Ј lўџџџџџPўџџ   џџџ )Pўџџ lўџџ&Dўџџ№/         
, (  %(ўџџ(ўџџ   
 	ўџџ%№§џџ( D  %д§џџ(    џџџ,%И§џџ(Щ     
6   №   џџџ, (  џџџ,%lўџџ&Dўџџ№   №   џџџ,Ц       џџџ, `  %Pўџџ(Z  Д§?   lўџџTџџџ    џџџ, ilўџџTџџџ+TWDATANEEDED X       џџџ, |  %Pўџџ(   %(ўџџ( Д  %ўџџ(к      џџџ, а   JA   Д§,    №   џџџ,lўџџџџџ ь     
y§џџ*t јўџџ №   џџџ, (  џџџ,%lўџџ*t     џџџ,   %Pўџџ((ўџџјўџџ 	(ўџџ%ўџџ( $  %№§џџ(       
,%д§џџ(ћ  јўџџ&lўџџ№      џџџ'Ш '§џџјўџџ   (t             Dўџџ    Pўџџ    џџџy   lўџџ    xўџџ    Иўџџ    Tџџџ    јўџџ    И§џџ    д§џџ    џџџ    №§џџ    ўџџ    (ўџџ    џџџ                  шјџџ       В	  џџџ мўџџ   
*Ј Иўџџ   
*t џџџTўџџTўџџИўџџ"   8ўџџ   мўџџ )8ўџџ*t 	    @  *t *t    ,	  Ќўџџ   *t Tўџџџџџ Tўџџ   %,ўџџ(Ї  Ќўџџ    *t ўџџџџџ  Bўџџєўџџ" BW   мўџџўџџ8ўџџєўџџ \   d   8ўџџ  ўџџ*Ј џџџџџџєўџџ№*    џџџџџџєўџџ џџџ @  %,ўџџP!   Иўџџ    *t ,џџџ l  * v  Иўџџ   *t џџџHџџџ №   шўџџ ш  *Ј TўџџHџџџ TўџџФ§џџ(t шўџџФ§џџ" O   Hџџџшўџџ, ь  %,ўџџP   Hџџџшўџџ,   * 8   Hџџџшўџџ,    ўџџHџџџшўџџ,  ўџџ(* шўџџ'Ш kџџџ,џџџHџџџ ш  (* шўџџ Є  *Ј TўџџHџџџ TўџџФ§џџ(t шўџџФ§џџ" O?   ,џџџ,џџџ Ќ  %8ўџџ(Hџџџшўџџ,%Ј§џџ(* шўџџ'Ш Ўџџџ Ш  єўџџ%8ўџџ( ф  %Ј§џџ(    мўџџ,%§џџ(    %p§џџ(T§џџИўџџ 	T§џџ%8§џџ(   %§џџ(фќџџTўџџTўџџИўџџ    8  ,џџџ% §џџ(*t 	    l  *t  	фќџџ%Шќџџ(X  ўџџ №   мўџџ,*t  ўџџ (  мўџџ,*t ИўџџЊ   ўџџ1   Ќўџџ,ўџџмўџџ ўџџ    ўџџ   Л  *t j    №   мўџџ,,ўџџмўџџџџџ    Ћїџџ*t  №   мўџџ,,   Ќўџџ,ўџџмўџџ ўџџ          L  *t M   ўџџC    №   мўџџ,    *t Ќўџџ,ўџџмўџџ ўџџ ўџџ ўџџ ўџџњ  *t Иўџџ №   мўџџ, (  мўџџ,%,ўџџ*t џџџTўџџTўџџИўџџ"   8ўџџ   мўџџ )8ўџџ*t 	    @  *t *t Ќўџџ  шўџџ ш  *Ј Tўџџ `   TўџџФ§џџ(t шўџџФ§џџ" Oй   `  шўџџ,мўџџ%,ўџџ\Ћ  аўџџ   шўџџ,*Ј єўџџp§џџ    а  8ўџџ      
 )8ўџџЈ§џџ   аўџџ )Ј§џџ%§џџ(№ )p§џџT§џџ   аўџџ )T§џџ%8§џџ(* ,ўџџџџџєўџџ ,ўџџ  џџџєўџџ№ @  %Мќџџ №  Иўџџ   T  єўџџ%8ўџџ( ф  %Ј§џџ(§џџTўџџTўџџмўџџ   %Аќџџh      *t        мўџџ,*t  	§џџ%p§џџ( p  %T§џџ(8§џџИўџџ 	8§џџ%§џџ( D  % §џџ(    аўџџ,%фќџџ(Ѓ  џџџєўџџ№џџџєўџџ№ №  %8ўџџ(џџџ%Ј§џџ(* п      єўџџ%8ўџџ( ф  %Ј§џџ(§џџTўџџTўџџмўџџ   %,ўџџh      *t        мўџџ,*t  	§џџ%p§џџ( Ј  %T§џџ(8§џџИўџџ 	8§џџ%§џџ( D  % §џџ(    аўџџ,%фќџџ(  џџџєўџџ№џџџ* п    Ф  єўџџ%8ўџџ( ф  %Ј§џџ(§џџTўџџTўџџмўџџ   %,ўџџh      *t        мўџџ,*t  	§џџ%p§џџ( р  %T§џџ(8§џџИўџџ 	8§џџ%§џџ( D  % §џџ(    аўџџ,%фќџџ(И  џџџєўџџ№џџџ* шўџџ'Ш ќџџTўџџџџџ Tўџџ   %,ўџџH      Ъіџџ     !  ўџџB    ,ўџџ    џџџ   8ўџџ    Tўџџ    Аќџџ    ўџџ    Мќџџ    Шќџџ    фќџџ     §џџ     ўџџ    §џџ    Ќўџџ    8§џџ    T§џџ    p§џџ    Иўџџ    §џџ    Фўџџ    аўџџ    Ј§џџ    мўџџ    шўџџ    єўџџ    Ф§џџ    џџџ    ўџџ    ,џџџ    Hџџџ                     шЂэџџФ          џџџTџџџ       
, i џџџ       
, ќ  %џџџ(шўџџ №      
, 	шўџџ%Ьўџџ(   %Аўџџ(Ѕ  Ќў-   Tџџџ №      
,+TWREVALIDATE       ЌўЈў  8џџџTџџџX   %hўџџD*t 8џџџ И      
,% џџџP      
   (t   Т   И      
,8џџџ* dўБ   ,џџџ џџџTџџџ8џџџ+TWISDATAVALID *t        
, 4  %џџџ( P  %шўџџ(8џџџ%Ьўџџ( l  %Аўџџ(   %Hўџџ(,ўџџ,џџџ 	,ўџџ%ўџџ( Є  %є§џџ(A     ,џџџ8џџџhўџџ  hўџџ% џџџ*t        
, 4  %џџџ( P  %шўџџ(8џџџ%Ьўџџ( l  %Аўџџ( Р  %Hўџџ(,ўџџ,џџџ 	,ўџџ%ўџџ(І     dў (     
,,џџџ*t hўџџhўџџ,џџџ      
*t 
      
*t    (t :   2    (     
,   *t    
   (t 	      Јў     ~   Ьўџџ    є§џџ    шўџџ    ўџџ    ,ўџџ    Hўџџ    џџџ    Tџџџ     џџџ    ,џџџ    hўџџ    Аўџџ    8џџџ              шђщџџ                          (t &   !         *t       (t       шщџџ                    *t   шoщџџЄ        3         Tџџџе   %џџџD   
 IA         џџџ    Tџџџ            SELF  шщџџ                       
*t       	             шОшџџ                       (t           	             шuшџџ    Д       з  џџџ м  № ј  * џџџ   № 0  * Xџџџ ш  *Ј џџџ     џџџиўџџ(t Xџџџиўџџ" Oд   џџџ L  Мўџџ h  Xџџџ )Мўџџ% ўџџ(   %ўџџ(DўџџDўџџ №   Xџџџ,       *t 	      *t %ўџџ Ф§џџФ§џџ (  Xџџџ,    М  *t 	      *t %§џџ ь    Xџџџ,* Xџџџ'Ш џџџџџџ и  № є  * џџџ   № ,  * џџџ H  № 0  * Xџџџ ш  *Ј џџџ `   џџџиўџџ(t Xџџџиўџџ" O   џџџ d  Мўџџ h   `  Xџџџ, )Мўџџ% ўџџ(   %ўџџ(h§џџ h     Xџџџ, )h§џџ%L§џџ(№DўџџDўџџ `  Xџџџ,   %@§џџh      *t (        `  Xџџџ,,   %$§џџ(*t        Xџџџ,,%ўџџ *t Xџџџ'Ш эўџџџџџ И  № є  * џџџ д  № №  * џџџ 	  № 0  * §џџ а    B§џџdџџџ" B   џџџ (	  Мўџџdџџџ D	   D	   Мўџџ% ўџџ( L	  %ўџџ(h§џџdџџџ h	   D	   h§џџ%L§џџ(№$§џџ h   а  dџџџ№ )$§џџ* [џџџџџџ p	         Ї   џџџ    ўџџ    Мўџџ    Xџџџ    dџџџ    §џџB    §џџ    иўџџ    Ф§џџ    ўџџ    $§џџ    џџџ    @§џџ    L§џџ    h§џџ    Dўџџ    ўџџ                  шжуџџ    Є        (       Tџџџе   %џџџD          џџџ    Tџџџ            SELF  шmуџџ           З  ўџџ,ўџџ     ,ўџџ*t  №   ўџџ  И   ўџџ  (  ўџџ xўџџ ш  *Ј ўџџ ўџџ(Ј xўџџ ўџџ" D]    №   xўџџ,   *t  И   xўџџ,,ўџџ  ,ўџџ*t  (  xўџџ,    *t xўџџ'Ш џџџ `              *t xўџџ ш  *Ј ,ўџџ     ,ўџџр§џџ(t xўџџр§џџ" O]   м§?   а§џџЌўџџ    xўџџ, iа§џџЌўџџ+TWSETUPLINKS       м§xўџџ'Ш џџџ   3    	   Ј	   Ф	  %Д§џџ( р	  %§џџ( JA     Wxўџџ ш  *Ј ,ўџџ     ,ўџџр§џџ(t xўџџр§џџ" OV    №   xўџџ,5    `         xўџџ  №   xўџџ,    *t xўџџ'Ш џџџџџџ `  *И Hџџџ   *И џџџ,ўџџџџџ ,ўџџ xўџџ ш  *Ј ,ўџџџџџ ,ўџџр§џџ(t xўџџр§џџ" O%   џџџxўџџ, ш  *Ј xўџџ'Ш Шџџџxўџџ ш  *Ј lўџџ   *t lўџџТ  xўџџ,ўџџџџџ ,ўџџ%а§џџ(     ўџџ ш  *Ј ,ўџџ `   ,ўџџр§џџ(t ўџџр§џџ" O9   `  ўџџ,Hџџџxўџџ,%а§џџ\  џџџxўџџ,   ўџџ,%§џџ\    	   ќ	   
  %Д§џџ(    џџџxўџџ,,%§џџ( 4
  %p§џџ( P
  %T§џџ( l
  %8§џџ( JAlўџџ    *t      Wh   U   џџџџџџxўџџ, Hџџџ   ўџџ, џџџџџџxўџџ, ш  % ўџџd ўџџ'Ш Дўџџxўџџxўџџ ш  % ўџџd*Ј 4ўџџxўџџ ш  *Ј ,ўџџџџџ ,ўџџр§џџ(t xўџџр§џџ" Ou    а  Д§џџ   џџџxўџџ, )Д§џџ§џџ   Hџџџxўџџ, )§џџ%p§џџ(№џџџxўџџ,*Ј xўџџ'Ш xџџџxўџџ ш  *Ј      xўџџ,ўџџ `   ,ўџџ%а§џџ(   ь   ўџџД§џџ    `  xўџџ, )Д§џџ§џџ      xўџџ, )§џџ%p§џџ(* а§џџ а  ўџџ а§џџY    а  ўџџ№ ш  %§џџH9    `  xўџџ    xўџџ xўџџxўџџ ш  % ўџџм*Ј xўџџxўџџ ш  % ўџџd*Ј пўџџxўџџ ш  *Ј ,ўџџ     ,ўџџр§џџ(t xўџџр§џџ" Ot   4§V   а§џџЌўџџ    xўџџ, iа§џџа§џџ ђџџЌўџџ    +TWREVALIDATE Xђџџ      4§xўџџ'Ш yџџџа§џџжёџџ ўџџ      ўџџ   уџџђџџ     К   8§џџ    ,ўџџ    T§џџ    lўџџ    p§џџ    xўџџ    ўџџ    ўџџ    §џџ    §џџ    џџџL   Д§џџ    џџџ?   Hџџџ;   Ќўџџ    а§џџ    р§џџ     ўџџ                          шлкџџ            ъ   џџџИўџџе   %xўџџD*t lўџџTџџџ   
 ilўџџ&`ўџџ№r    ,   
     
%Dўџџ( Є
  %(ўџџ(џџџ%ўџџ( Р
  %№§џџ(   
%д§џџ( м
  %И§џџ( IA      *t *   8џџџTџџџе   %xўџџD*t 8џџџџџџэйџџ        И§џџ    Tџџџ    д§џџ    №§џџ    џџџ    ўџџ    (ўџџ    8џџџ    Dўџџ    Иўџџ(   `ўџџ    lўџџ    xўџџ             SELF  шMйџџ            ъ   8џџџИўџџе   %xўџџD*t lўџџTџџџ   
 ilўџџ&`ўџџ№r    ,   
     
%Dўџџ( ј
  %(ўџџ(8џџџ%ўџџ( Р
  %№§џџ(   
%д§џџ( м
  %И§џџ( IA      *t *   џџџTџџџе   %xўџџD*t 8џџџџџџ_иџџ        И§џџ    д§џџ    №§џџ    ўџџ    (ўџџ    ИўџџL   Dўџџ    `ўџџ    lўџџ    xўџџ    Tџџџ    џџџ    8џџџ             SELF  шПзџџ    №       У  џџџЅэџџЈ  ,џџџ$ўџџ    Єўџџе   %dўџџD $ўџџ*t ,џџџ   %џџџИd    ў    8џџџЄўџџX   %dўџџD*t 5   8џџџ №  *  И   ,џџџ,dўџџ  dўџџ*t     ўр   ,џџџ$ўџџ    Єўџџ   %М§џџTе   %dўџџD $ўџџ*t ,џџџ   %џџџИq   И§-   8џџџЄўџџ   %М§џџTX   %dўџџD*t 5   8џџџ №  *  И   ,џџџ,dўџџ  dўџџ*t    И§    0   L  %§џџ(ьџџ  8џџџ И   ,џџџ,%џџџ љ   И   ,џџџ,8џџџ* џџџ (  ,џџџ,*t џџџTџџџ    ,џџџ, iџџџ§А    џџџџџџTџџџ8џџџ+TWISDATAVALID *t     ,џџџ, h  %§џџ( P  %|§џџ(8џџџ%`§џџ( l  %D§џџ(   %(§џџ(§џџ џџџ 	§џџ%№ќџџ( Є  %дќџџ(vыџџ    џџџ8џџџdўџџ  dўџџ%џџџ*t     ,џџџ, h  %§џџ( P  %|§џџ(8џџџ%`§џџ( l  %D§џџ( Р  %(§џџ(§џџ џџџ 	§џџ%№ќџџ(мъџџ   § (  ,џџџ, џџџ*t  №   ,џџџ,џџџ џџџ%џџџ$%Шќџџ   ,џџџ џџџaлџџTъџџ     Й   Шќџџ    дќџџ    №ќџџ    §џџ    (§џџ    D§џџ    `§џџ    |§џџ     џџџ    §џџ    ,џџџ    М§џџ    8џџџ    Єўџџ:   $ўџџ    dўџџ    Tџџџ    џџџ    џџџ             SELF  ш"гџџ                       	             шьвџџ            .   Ќџџџ        *t              Ќџџџ                
  + швџџ    м         ЌџџџШўџџ    Hџџџе   %џџџD Шўџџ*t Ќџџџ   %Мўџџh/   ЌџџџШўџџ    Xўџџе   %џџџD Шўџџ*t Ќџџџ   %Мўџџh       L  %<ўџџ(Pшџџд       Ќџџџ,    %<ўџџ(+шџџ №   Ќџџџ,&Мўџџ№+    №   Ќџџџ,0ўџџЌџџџ ь     ждџџ*t     Ќџџџ,   %<ўџџ(ўџџ №   Ќџџџ, 	ўџџ%ј§џџ( М  %м§џџ(чџџ №   Ќџџџ,   (t          {   м§џџ    џџџ    ј§џџ    ўџџ    0ўџџ    Ќџџџ    <ўџџ    Xўџџ(   Hџџџ)   Мўџџ    Шўџџ             CONTAINER SELF  ш\аџџ         h     ш@аџџ         h 9  М  Ѓ           h    L    0        ј
    м
  {  Р
  v  Є
  q  
  l  l
  g  P
  b  4
  ]  
  X  ќ	  S  р	  N  Ф	  I  Ј	  D  	  ?  p	  :  h	  5  L	  .  D	  )  (	  "  	    №    д    И      	      d  џ  H  њ  ,  ѕ    №  є  ы  и  ц  М  с     м    з  h  в  L  Э  0  Ш    У  ј  О  м  Й  Р  Д  Є  Џ    Њ  l  Ѕ  P     4        ќ    р    Ф    Ј      }  p  x  T  s  8  n    i     d  ф  _  Ш  Z  Ќ  U  Є  P    I  l  D  d  ?  \  8  @  1  $  ,    '  ь  "  а    Д        |    `  	  D    (  џ    њ  №  ѕ  ш  №  Ь  щ  А  ф    п    к    г  d  Ю  H  Щ  ,  Ф     П              а  Ј    Є  `     (    №     И          V   U   T   S   R   Q   P   O   N   M   L   K   J   I   H   G   F   E   D   C   B   A    @    ?   >   =   <   ;   :   9   8   7   6   5   4   3   2   1   0   /   .   -   ,   +   *   )   (   '   &   %   $   #   "   !                                                                         
   	                                                                           0-TRANSITIVE DATA DEPENDENCY REGISTRATION ERROR'Attempt to register a dependency from "(" to itself.

Reflexivity is disallowed." to .

The object "" is not a registered TDO.~w5,ez sending ValMsg() to   posting twDataNeeded to control control did not -respond to twDataNeeded post -- Substituting standard messageData Entry Required         00000 returning () from ValMsg to false <ORIGIN>, Processing: 

 receiving RevMsg() from Endorsing:  co-signing RevMsg(
Changing:  re-sending RevMsg(             
Queueing:  sending RevMsg( posting twReValidate() to control  twReValidate caused data change
Posted twIsDataValid( "" ) to control
Control 	returned  from twIsDataValid6did not respond to twIsDataValid
Standard test yields '   TDO  F D	Full Name!   ----------------------------------------------"   w3,ez      F D * ,  Link (Numb)Link (Full Name).  ------------------:   <-- ORIGIN: ;^   Orgn  TermPath Length_  ------------------~     => TDOs and Links*TRANSITIVE DEPENDENCY OBJECT MODEL FAILUREARegistration errors prevent the TDO model from opening properly.
@
This form cannot run without the TDO model.  The form designer >must correct the dependency links among the TDOs on this form.:The TDO model on this form is not safe to execute because 4a dependency relationship loop was found at object "".

This form cannot run ;without the TDO model.  The form designer must correct the -dependency links among the TDOs on this form.Attempt to register "" as a Provider of .

Cannot identify the object ""." as a Dependent of          	CONTAINER2Control posted a twxDataChanged but this is not a registered TDO  got twxDataChanged from control2Control posted a twxValidityReq but this is not a   got twxValidityReq from control ) from twxValidityReq to control              