MZP      ˙˙  ¸       @                                      ş ´	Í!¸LÍ!This program must be run under Microsoft Windows.
$            NE
X
     	                @ P 4XXň     N         P  P Q  q       S 0    T0    UŞ0         ˙ 0          q 0          q 0         y 0    	     č0    F     u*. 0    Ł*, 0    Ď* 0    î*( 0    + 0    3+ 0    N+% 0    s+, 0    +( 0	    Ç+" 0
    é+$ 0    ,, 0    9,! 0    Z,% 0    ,2 0    ą,) 0    Ú,$ 0    ţ,! 0    -0 0    O-" 0    q- 0    - 0    Ź- 0    Ć-  0    ć-! 0    ." 0    ).$ 0    M.: 0    .9 0    Á.+ 0    ě.! 0    /! 0     //# 0!    R/% 0"    w/) 0#     /( 0$    Č/" 0%    ę/ 0&    0( 0'    )0/ 0(    X0. 0)    0* 0*    °0# 0+    Ó05 0,    1% 0-    .10 0.    ^1- 0/    1# 00    Ž1* 01    Ř1% 02    ý1$ 03    !2( 04    I20 05    y2$ 06    2( 07    Ć2$ 08    ę2% 09    3" 0:    13+ 0;    \3" 0<    ~3 0=    3 0>    Ş3 0?    š3 0@    Ë3 0A    Ü3 0B    ę3 0C    ö3 0D    4 0E    4 0F      libLookupErrors  LIBENTRY  WEP                      ¸ Ë¸ Ë                                        ˙Borland Standard File           ţ         @   |              ţ ~ ţ      @       	ţ               ţ              ţ               ţ               ţ               ţ F Library   Form   UIManager   UIContainer   UIObject   	ţ   ˙˙˙˙˙˙°f(                                             open+ close+ canArrive2 arrive2 setFocus+ canDepart2 removeFocus+ depart2 mouseEnter, mouseExit, mouseMove, mouseDown, mouseUp, mouseDouble, mouseRightDown, mouseRightUp, mouseRightDouble, keyPhysical- keyChar- action. menuAction/ timer4 pushButton+ changeValue0 calcField+ run+ newValue+ proc+ error3 status1 mouseClick, init+ stringListChange+ Uses Type Var Const Proc lookupErrors lookupEvent ţ_g ˙Yg˙˙                       a  ? Of  ˙˙ $ ç= ;|BeginMethod|#Library1|lookupErrors|
const
	s_Self = "lookupErrors"
   sRet_NotAvail= "nepoznat error"
endConst

method lookupErrors
               ( si SmallInt                                   ; var out - error string
                ) String                                       ; return - success flag
; copyright    : (C) 2008 by Norbert C. Maier, Germany
; version      : # 20070807.2007 # 20080123.1234
; function     : Return error description
; note         : This is implemented as well via an temporary error table.
;                 Possibly this might supplement or replace the table version,
;                 which builds a table in the Mytemp Directory.
; called       : From
;                -

   var
      s
                               String
   endVar


   ; () get text for number
   s = sRet_NotAvail
   switch
      case si = ValCheckMayNotBeEnforced : s = "Validity check will not be enforced."
      case si = peARYFixedSizeArray : s = "The '%0ds' operation is not allowed on fixed-size arrays."
      case si = peARYIndexOutOfBounds : s = "The specified array index is out of bounds. The index is %0dl, and the array limit is %1dl."

      case si = peARYNoMemory : s = "Not enough memory to allocate or grow the array."

      case si = peARYRangeTooLarge : s = "The starting and ending indexes are not valid for this array. The starting index is %0dl, ending index is %1dl, and the array size is %2dl."

      case si = peARYTooLarge : s = "You cannot allocate an array with a size larger than 64k."
      case si = peAccessDisabled : s = "Access to table disabled because of previous error."
      case si = peAccessError : s = "Invalid file access."
      case si = peActionNotSupported : s = "Action not supported for this object"
      case si = peActiveIndex : s = "Index is being used to order table."
      case si = peActiveTrans : s = "A Transaction is currently active."
      case si = peActiveTransaction : s = "A user transaction is already in progress."

      case si = peAliasInUse : s = "The alias '%0ds' is in use."
      case si = peAliasIsServer : s = "Alias is a server."
      case si = peAliasMismatch : s = "The destination table of the rename has a conflicting alias."
      case si = peAliasNotDefined : s = "The alias '%0ds' has not been defined."
      case si = peAliasNotOpen : s = "Alias is not currently opened."
      case si = peAliasPathNonExistent : s = "The path for the alias '%0ds' does not exist."
      case si = peAliasProjectConflict : s = "The Public Alias being added '%0ds' is already a Project Alias."

      case si = peAliasPublicConflict : s = "The Project Alias being added '%0ds' is already a Public Alias."
      case si = peAlias_X_Db : s = "The alias '%0ds' and the Database '%1ds' do not match."
      case si = peAllFieldsReadOnly : s = "All fields are read only."
      case si = peAlreadyLocked : s = "Record already locked by this session."
      case si = peArgumentNumber : s = "'%0ds' failed because it has the wrong number of arguments supplied."
      case si = peArgumentTypeInvalid : s = "A method which takes an indeterminate number of arguments has an argument which is not a valid type."

      case si = peBOF : s = "At beginning of table."
      case si = peBad1Sep : s = "Bad Date Separator" 
      case si = peBad1TSep : s = "Bad Time Separator" 
      case si = peBad2Sep : s = "Bad Date Separator" 
      case si = peBad2TSep : s = "Bad Time Separator" 
      case si = peBad3Sep : s = "Bad Date Separator" 
      case si = peBad3TSep : s = "Bad Time Separator" 
      case si = peBad4Sep : s = "Bad Date Separator" 
      case si = peBad4TSep : s = "Bad Time Separator" 
      case si = peBad5Sep : s = "Bad Date Separator" 
      case si = peBad5TSep : s = "Bad Time Separator" 
      case si = peBad6TSep : s = "Bad Time Separator" 

      case si = peBadAMPM : s = "Bad AM-PM Specification"
      case si = peBadAlias : s = "Unknown alias."
      case si = peBadArgument : s = "'%0ds' failed because argument %1di was not legal."
      case si = peBadArrayResize : s = "Could not resize a dynamic array."
      case si = peBadBlobHeader : s = "Blob has invalid header."
      case si = peBadCharsInAlias : s = "Illegal characters in alias"
      case si = peBadConstantGroup : s = "The constant group '%0ds' was not found."
      case si = peBadDate : s = "Bad Date Specification"
      case si = peBadDay : s = "Bad Day Specification"

      case si = peBadDriverType : s = "Invalid driver name."
      case si = peBadField : s = "Invalid field."
      case si = peBadFieldType : s = "Field '%0ds' has a badly formed type '%1ds'."
      case si = peBadFileFormat : s = " Cannot interpret file. It could be corrupt."
      case si = peBadHour : s = "Bad Hour Specification"
      case si = peBadLinkIndex : s = "Index used to join tables is no longer valid"
      case si = peBadLogical : s = "Bad Logical Specification"
      case si = peBadMinutes : s = "Bad Minute Specification"
      case si = peBadMonth : s = "Bad Month Specification"

      case si = peBadObject : s = "The method, '%0ds', is not allowed on a '%1ds' object."
      case si = peBadSeconds : s = "Bad Seconds Specification"
      case si = peBadTable : s = "Invalid table."
      case si = peBadTime : s = "Bad Time Specification"
      case si = peBadTypeArray : s = "Trying to do a copyToArray or copyFromArray with an array that does not correspond, has unassigned elements or is empty."
      case si = peBadVersion : s = "The ObjectPAL version used in this form is incompatible with this version of Paradox. You must recompile from source."

      case si = peBadWeekday : s = "Bad Day of Week Specification"
      case si = peBadXtabAction : s = "Action is not supported in a crosstab"
      case si = peBadYear : s = "Bad Year Specification"
      case si = peBigXtab : s = "Crosstab or Query contains too many fields."
      case si = peBlankField : s = "The field is blank."
      case si = peBlankTableName : s = "A blank table name was provided."
      case si = peBlankValue : s = "Value is illegal or blank."
      case si = peBlobFileMissing : s = "BLOB file is missing."
      case si = peBlobModified : s = "BLOB has been modified."

      case si = peBlobNotOpened : s = "BLOB not opened."
      case si = peBlobOpened : s = "BLOB already opened."
      case si = peBlobReaderror : s = "Problem reading data from .MB file on disk."
      case si = peBlobVersion : s = "BLOB file version is too old."
      case si = peBracketMismatch : s = "Mismatched brackets."
      case si = peBreak : s = "Stopped program at your request."
      case si = peBufferSizeError : s = "Buffer size error ??"
      case si = peBufferTooSmall : s = "Buffer is too small."
      case si = peCFunction : s = "Found problem in a CFunction operation."

      case si = peCancel : s = "User selected Cancel."
      case si = peCancelDatabaseOpen : s = "Canceled open database operation."
      case si = peCancelPassword : s = "Cancelled password entry"
      case si = peCannotClose : s = "Cannot close index."
      case si = peCannotCloseAlias : s = "Alias currently in use."
      case si = peCannotCopy : s = "Cannot copy selection to Clipboard."
      case si = peCannotCopyTo : s = "Unable to copy to file."
      case si = peCannotCut : s = "Cannot cut selection to Clipboard."
      case si = peCannotCutTo : s = "Unable to cut to file."

      case si = peCannotDelete : s = "Unable to delete."
      case si = peCannotDeleteLine : s = "Unable to delete line."
      case si = peCannotDitto : s = "Cannot duplicate field."
      case si = peCannotEdit : s = "You cannot modify this field."
      case si = peCannotEditField : s = "This field cannot be edited."
      case si = peCannotEditRefresh : s = "Operation not valid during refresh."
      case si = peCannotExitField : s = "Unable to exit field."
      case si = peCannotExitRecord : s = " Unable to exit record."
      case si = peCannotInsert : s = "Cannot insert record here."

      case si = peCannotInsertText : s = "Unable to insert text."
      case si = peCannotLoadDriver : s = "Cannot load driver."
      case si = peCannotLoadLanguageDriver : s = "Cannot load language driver."
      case si = peCannotLock : s = "Cannot lock record."
      case si = peCannotLockServerDependent : s = "Cannot lock record dependent on server."
      case si = peCannotLookupFill : s = "Unable to fill field from lookup table."
      case si = peCannotLookupFillCorr : s = "Unable to fill corresponding fields from lookup table."
      case si = peCannotLookupMove : s = "Unable to fill field from master table."

      case si = peCannotMakeQuery : s = "Cannot create query from the selected file."
      case si = peCannotMove : s = "Cannot move in that direction."
      case si = peCannotOpenClip : s = "Could not open Clipboard."
      case si = peCannotOpenTable : s = "Unable to open table."
      case si = peCannotOrderRange : s = "Unable to set Order/Range."
      case si = peCannotPaste : s = "Cannot paste from Clipboard into the selected object."
      case si = peCannotPasteFrom : s = "Unable to paste from file."
      case si = peCannotPasteLink : s = "Unable to paste link."

      case si = peCannotPerformAction : s = "Unable to perform action."
      case si = peCannotPutField : s = "The value is not legal in this field."
      case si = peCannotPutRecord : s = "Record contains illegal field values."
      case si = peCannotRotate : s = "Cannot rotate columns."
      case si = peCannotUndelete : s = "Cannot undelete record."
      case si = peCantDropPrimary : s = "The Primary Index can not be dropped since another index is maintained on the table."
      case si = peCantLoadLibrary : s = "Cannot load an IDAPI service library."

      case si = peCantOpenTable : s = "Could not open table '%0ds'. Engine error %1dx."
      case si = peCantSearchField : s = "Unable to search in this field."
      case si = peCantSetFilter : s = "A %0ds cannot be done on %1ds %2ds because it is an expression index."
      case si = peCantShowDeleted : s = "Table does not show deleted records."
      case si = peCantToggleToTable : s = "Cannot toggle to table view."
      case si = peCfgCannotWrite : s = "Cannot write to Engine configuration file."
      case si = peCfgMultiFile : s = "Cannot initialize with different configuration file."

      case si = peClientsLimit : s = "Too many clients."
      case si = peCompatErr : s = "An error was triggered in the '%0ds' procedure."
      case si = peConstantNotFound : s = "The constant name was not found."
      case si = peConversion : s = "Could not convert data of type '%0cc' to type %1cc'. The types are mismatched or the values are incompatible."
      case si = peCopyLinkedTables : s = "Copy linked tables?"
      case si = peCopyOverSelf : s = "Cannot copy a file over itself. Use rename instead."
      case si = peCorruptLockFile : s = "Corrupt lock file."

      case si = peCreateErr : s = "An error was triggered in a Create operation."
      case si = peCreateWarningRange : s = "The %0ds of field %1ds is outside range %2di - %3di. Setting it to %4di."
      case si = peCursorLimit : s = "Too many open cursors."
      case si = peDBLimit : s = "Too many open databases."
      case si = peDDEAllocate : s = "DDE: Buffer allocation failed."
      case si = peDDEExecute : s = "DDE: Execute server command failed."
      case si = peDDEInitiate : s = "DDE: Specified DDE server is not responding."
      case si = peDDENoLock : s = "DDE: Could not lock memory."

      case si = peDDENotOpened : s = "DDE: Session not opened. Use Open."
      case si = peDDEPoke : s = "DDE: Send data (poke) request failed."
      case si = peDDERequest : s = "DDE: Could not receive data."
      case si = peDDETimeOut : s = "DDE: Time out while waiting for data."
      case si = peDDEUnassigned : s = "DDE: Server and Topic were not assigned. Use Open."
      case si = peDataLoss : s = "Character(s) not supported by Table Language."
      case si = peDataTooLong : s = "Data is too long for field."
      case si = peDatabaseErr : s = "An error was triggered in the '%0ds' method on an object of Database type."

      case si = peDeadlock : s = "A deadlock was detected."
      case si = peDeliveredDocument : s = "Cannot modify this document."
      case si = peDependentMustBeEmpty : s = "Cannot make this master a detail of another table if its details are not empty."
      case si = peDestMustBeIndexed : s = "Destination must be indexed."
      case si = peDetailRecExistsEmpty : s = "Master has detail records. Cannot empty it."
      case si = peDetailRecordsExist : s = "Master has detail records. Cannot delete or modify."
      case si = peDetailTableExists : s = "Detail table(s) exist."

      case si = peDetailTableOpen : s = "Detail table is open."
      case si = peDiffSortOrder : s = "Different sort order."
      case si = peDifferentPath : s = "Tables in different directories"
      case si = peDifferentTables : s = "Cannot set cursor of one table to another."
      case si = peDirBusy : s = "Directory is busy."
      case si = peDirInUseByOldVer : s = "Directory in use by earlier version of Paradox."
      case si = peDirLocked : s = "Directory is locked."
      case si = peDirNoAccess : s = "Cannot access directory."
      case si = peDirNotPrivate : s = "Directory is not private."

      case si = peDiskError : s = "A disk error occurred: %0rs"
      case si = peDivideByZero : s = "Cannot divide by zero."
      case si = peDriveNotFound : s = "The drive, '%0ds', either is invalid or not ready."
      case si = peDriverLimit : s = "Too many active drivers."
      case si = peDriverNotLoaded : s = "Driver not loaded."
      case si = peDriverUnknown : s = "The driver type '%0ds' is unknown."
      case si = peDuplicateAlias : s = "Duplicate alias name."
      case si = peDuplicateMoniker : s = "Table alias is already in use."
      case si = peDynamicBind : s = "The data type %00cc does not support dynamic binding."

      case si = peEOF : s = "At end of table."
      case si = peEditObjRequired : s = "Method requires an edit object."
      case si = peEmbedDataProblem : s = "Object to be embedded violates data constraints when placed in container."
      case si = peEmbedNotAllowed : s = "Chosen container cannot embed or disembed other objects."
      case si = peEmbedWontFit : s = "Object to be embedded falls outside edges of container."
      case si = peEmptyClipboard : s = "Cannot paste -- Clipboard is empty."
      case si = peEmptyTable : s = "The table is empty."

      case si = peEndOfBlob : s = "End of BLOB."
      case si = peEngineQueryMismatch : s = "Query and Engine DLLs are mismatched."
      case si = peEnumErr : s = "An error was triggered in an Enum."
      case si = peExpressionIllegal : s = "Cannot use an expression for linking in this data model."
      case si = peExtInvalid : s = "The destination table of the rename has an extension mismatch."
      case si = peFS_CREATEERR : s = "Could not create file. Protection or access error."
      case si = peFS_WRITEOPENERR : s = "Could not open output file.  Protection or access error."

      case si = peFailNoError : s = "You have called fail() without any error code or error message."
      case si = peFailedDatabaseOpen : s = "Could not open database."
      case si = peFailedMethod : s = "The method '%0ds' failed."
      case si = peFailedStdDB : s = "Could not open standard database. Engine error %0dx."
      case si = peFamFileInvalid : s = "Corrupt family file."
      case si = peFieldIsBlank : s = "Field is blank."
      case si = peFieldLimit : s = "Too many fields in Table Create."
      case si = peFieldMultiLinked : s = "Field(s) linked to more than one master."

      case si = peFieldMustBeTrimmed : s = "Field will be trimmed, cannot put master records into PROBLEM table."
      case si = peFieldNotCurrent : s = "The specified field is not the current field."
      case si = peFieldNotInEdit : s = "Must be in Field View to search."
      case si = peFieldNotInLookupTable : s = "Field value out of lookup table range."
      case si = peFieldValueErr : s = "Could not get a field's value."
      case si = peFileBusy : s = "Table is busy."
      case si = peFileCorrupt : s = "Corrupt file - other than header."
      case si = peFileCreate : s = "%00ds:%02ds=>The file, '%3ds', could not be created.	%4rs"

      case si = peFileDeleteFail : s = "File Delete operation failed."
      case si = peFileExists : s = "File already exists."
      case si = peFileIsDirectory : s = "File name is a directory name."
      case si = peFileLocked : s = "File is locked."
      case si = peFileNoAccess : s = "Cannot access file."
      case si = peFileNotFound : s = "The file, '%0ds', does not exist."
      case si = peFilterErrAt : s = "The filter has an error in field '%0di' at position '%1di'."
      case si = peFixedType : s = "You cannot change the type of a typed variable."
      case si = peFmlMemberNotFound : s = "Could not find family member."

      case si = peForeignKeyErr : s = "Master record missing."
      case si = peFormClosed : s = "You have tried to access a document that is not open."
      case si = peFormCompileError : s = "Form has PAL syntax errors. Reopening in design window."
      case si = peFormCompileErrors : s = "The design object has compile errors and will not run."
      case si = peFormInvalidName : s = "%01ds is not a valid name for a %0ds."
      case si = peFormInvalidOptions : s = "Invalid WinStyle combination for opening the design object."
      case si = peFormNotAttached : s = "You have tried to access a document that is not open."

      case si = peFormOpenFailed : s = "The design object, '%0ds', could not be opened."
      case si = peFormQueryOpen : s = "Cannot open query"
      case si = peFormQueryViewMismatch : s = "Query needs to be saved and/or re-executed"
      case si = peFormTableOpen : s = "Cannot open table"
      case si = peFormTableReadonly : s = "This table is read-only"
      case si = peFormWriteError : s = "Could not write to file."
      case si = peFunctionNotFound : s = "Function not found in service library."
      case si = peGeneralErr : s = "Unknown error."
      case si = peGeneralSQL : s = "General SQL error."

      case si = peGroupLocked : s = "Key group is locked."
      case si = peHasOpenCursors : s = "Table(s) open. Cannot perform this operation."
      case si = peHeaderCorrupt : s = "Corrupt table/index header."
      case si = peIXBadExponent : s = "Invalid or missing exponent"
      case si = peIXBadSign : s = "Invalid numeric sign"
      case si = peIXCantParseText : s = "Cannot parse the input file: either a line is too long or has no end of line character, or no fields were found."
      case si = peIXExportNoFields : s = "No fields can be written to the destination table."

      case si = peIXExtraCharacters : s = "Number has extra characters at end"
      case si = peIXFieldNotInTable : s = "Fixed length specification references a field not contained in the export table"
      case si = peIXFieldPostError : s = "Unknown problem with posting field"
      case si = peIXForeignKeyError : s = "Foreign key violation"
      case si = peIXInvDelFields : s = "DelimitFields must be either DTDelimJustText or DTDelimAllFields."
      case si = peIXInvDelimiter : s = "A delimiter must be either a single character or an empty string (for none)."

      case si = peIXInvExtension : s = "Extension not valid for this file type."
      case si = peIXInvSeparator : s = "A separator must be a single character."
      case si = peIXInvalidCharSet : s = "Character set must be either DTOEM or DTANSI."
      case si = peIXInvalidDBFFieldType : s = "Field type is invalid, expecting an exportable dBase field type: C, F, N, D, or L"
      case si = peIXInvalidFieldSpec : s = "Field specification is invalid"
      case si = peIXInvalidPDXFieldType : s = "Field type is invalid, expecting an exportable Paradox field type: A, #, N, D, S, $, I, L, @, or T"

      case si = peIXLookupTableError : s = "Value does not reside in the lookup table"
      case si = peIXMaxValueError : s = "Value too large"
      case si = peIXMinMaxValueError : s = "Value out of range (too large or too small)"
      case si = peIXMinValueError : s = "Value too small"
      case si = peIXMultipleSigns : s = "Numbers cannot contain multiple signs"
      case si = peIXNeedDiffFile : s = "Cannot export a table to itself."
      case si = peIXNoDigits : s = "Number does not contain any digits"
      case si = peIXNotASpreadsheet : s = "Operation invalid, Source file is not a spreadsheet."

      case si = peIXNotExportable : s = "Don't know how to Export to this file type."
      case si = peIXNotImportable : s = "Don't know how to Import from this file type."
      case si = peIXPBlockRange : s = "Selected range of cells is too wide to import."
      case si = peIXPConversion : s = "String conversion error on line %ld."
      case si = peIXPDataTooSparse : s = "Data in the selected block is too sparse to import."
      case si = peIXPDbClose : s = "Unable to close database."
      case si = peIXPDbOpen : s = "Unable to open database."
      case si = peIXPExcelFileType : s = "Not a supported Excel file version."

      case si = peIXPExcelIndexRecord : s = "Excel Index record not found."
      case si = peIXPExportTable : s = "Table selected to load is not a valid Export Specification table."
      case si = peIXPFieldCount : s = "An error occured while parsing the specification table."
      case si = peIXPFieldDesc : s = "Unable to get table field descriptions."
      case si = peIXPFileClose : s = "Could not close the file."
      case si = peIXPFileCreate : s = "Could not create the file."
      case si = peIXPFileName : s = "Not a valid file name."
      case si = peIXPFileOpen : s = "Could not open the file."

      case si = peIXPFileRead : s = "Could not read from file."
      case si = peIXPFileWrite : s = "Could not write to file."
      case si = peIXPGetField : s = "Unable to get table field."
      case si = peIXPGetProp : s = "Unable to get table properties."
      case si = peIXPHome : s = "Unable to set table cursor to top."
      case si = peIXPImportTable : s = "Table selected to load is not a valid Import Specification table."
      case si = peIXPInputFile : s = "Input file is incorrect."
      case si = peIXPInsertRecord : s = "Unable to insert table record."

      case si = peIXPNextRecord : s = "Unable to get next table record."
      case si = peIXPPageName : s = "Invalid page name."
      case si = peIXPPassword : s = "The input file is password protected."
      case si = peIXPPutField : s = "Unable to put table field."
      case si = peIXPRange : s = "Invalid cell range."
      case si = peIXPRecordCount : s = "Unable to get table record count."
      case si = peIXPRecordInit : s = "Unable to initialize table record."
      case si = peIXPRecordLength : s = "Invalid record length."
      case si = peIXPRecordSize : s = "Record size is limited to 32000 characters."

      case si = peIXPSkip : s = "Errors encountered during import, records were skipped."
      case si = peIXPTableName : s = "Not a valid table name."
      case si = peIXPTblClose : s = "Unable to close database table."
      case si = peIXPTblCreate : s = "Unable to create database table."
      case si = peIXPTblLock : s = "Unable to lock database table."
      case si = peIXPTblOpen : s = "Unable to open database table."
      case si = peIXRecordPostError : s = "Unknown problem with posting record"
      case si = peIXRequiredFldError : s = "Required value has not been provided"

      case si = peIXSigDigitLoss : s = "Probably losing significant digits"
      case si = peIXSignLoss : s = "Possible loss of correct sign"
      case si = peIXTooManyFields : s = "Cannot export a table with more than 255 fields."
      case si = peIXTypeMismatch : s = "Source field doesn't match destination field type"
      case si = peIXUnexpectedType : s = "Source field was an unexpected type which can't be translated"
      case si = peIXUnsupportedTransfer : s = "Unsupported transfer: Source or Destination must be a table."
      case si = peIXUserCancel : s = "Operation canceled by user."

      case si = peIllFormedCalcField : s = "Incorrect expression syntax."
      case si = peIllegalAliasProperty : s = "The property '%0ds' is not associated with the alias '%1ds'."
      case si = peIllegalCharacter : s = "Illegal character."
      case si = peIllegalConversion : s = "Cannot convert data of type '%0cn' to %1cc."
      case si = peIllegalIndexName : s = "Trying to create a Paradox index '%0ds' which must be named the same as the field '%1ds'."
      case si = peIllegalIndexName1 : s = "Trying to create a Paradox index '%0ds' which can't be named the same as a field."

      case si = peIllegalOpForInMem : s = "Can't perform an '%0ds' on an InMemory TCursor."
      case si = peIllegalOperator : s = "An illegal PAL operator was found."
      case si = peIllegalTableName : s = "'%0ds' is not a valid table name."
      case si = peIllegalXtabSpec : s = "Crosstab specification is not allowed."
      case si = peInUse : s = "Cannot delete object(s) that are in use."
      case si = peInappropriateFieldType : s = "The specified field type is invalid."
      case si = peInappropriateSubType : s = "The specified field subtype is invalid."

      case si = peIncompatibleDataType : s = "Trying to store incompatible data type."
      case si = peIncompatibleDataTypes : s = "Data types are different when compared."
      case si = peIncompatibleRecStructs : s = "Incompatible record structures."
      case si = peIncompleteExponent : s = "Incomplete exponent."
      case si = peIncompletePictureMatch : s = "Field is not complete."
      case si = peIncompleteSymbol : s = "Incomplete symbol."
      case si = peIncompleteXtab : s = "Incomplete crosstab specification."
      case si = peIncorrectParmFormat : s = "The parameter is not formatted correctly: %0ds."

      case si = peIndexCorrupt : s = "Corrupt index."
      case si = peIndexDoesntExist : s = "Index does not exist."
      case si = peIndexErr : s = "An error was triggered in an Index operation."
      case si = peIndexExists : s = "Index already exists."
      case si = peIndexFailed : s = "Index could not be created."
      case si = peIndexLimit : s = "Too many indexes on table."
      case si = peIndexNameRequired : s = "Index name required."
      case si = peIndexOpen : s = "Index is open."
      case si = peIndexOutOfdate : s = "Index is out of date."
      case si = peIndexReadOnly : s = "Index is read only."

      case si = peIndexStartFailed : s = "Could not start Index."
      case si = peInfiniteInsert : s = "Infinite record insertion attempted"
      case si = peInterfaceVer : s = "Interface mismatch. Engine version different."
      case si = peInternal : s = "An unexpected error occurred."
      case si = peInternalLimit : s = "Some internal limit (see context)."
      case si = peInvalidAttribute : s = "Invalid File Attributes: %0ds"
      case si = peInvalidBlobHandle : s = "Invalid BLOB handle in record buffer."
      case si = peInvalidBlobLen : s = "Invalid BLOB length."

      case si = peInvalidBlobOffset : s = "Invalid offset into the BLOB."
      case si = peInvalidBookmark : s = "Bookmarks do not match table."
      case si = peInvalidCallbackBuflen : s = "Invalid callback buffer length."
      case si = peInvalidCfgParam : s = "Invalid configuration parameter."
      case si = peInvalidChar : s = "Invalid character."
      case si = peInvalidColumn : s = "The specified column number is invalid."
      case si = peInvalidDBSpec : s = "Invalid database alias specification."
      case si = peInvalidDataBase : s = "Database not opened."

      case si = peInvalidDataTypeCompare : s = "Cannot compare data types - Memo, Bitmap, OLE."
      case si = peInvalidDate : s = "Invalid Date."
      case si = peInvalidDesc : s = "Invalid descriptor."
      case si = peInvalidDescNum : s = "Invalid descriptor number."
      case si = peInvalidDir : s = "Invalid directory."
      case si = peInvalidDrive : s = "Could not access drive."
      case si = peInvalidExpression : s = "The filter expression is not valid"
      case si = peInvalidExpressionInFld : s = "The filter expression in field %s is not valid."
      case si = peInvalidExpressionWStr : s = "The filter expression is not valid, %s"

      case si = peInvalidFieldDesc : s = "Invalid field descriptor."
      case si = peInvalidFieldName : s = "Invalid field name."
      case si = peInvalidFieldType : s = "Invalid field type."
      case si = peInvalidFieldXform : s = "Invalid field transformation."
      case si = peInvalidFileExt : s = "Invalid file extension."
      case si = peInvalidFileExtension : s = "Invalid file extension for this operation: %0ds"
      case si = peInvalidFileName : s = "Invalid file name."
      case si = peInvalidFilter : s = "Invalid Filter"
      case si = peInvalidFormat : s = "Invalid format."

      case si = peInvalidHandle : s = "Invalid handle to the function."
      case si = peInvalidIndexCreate : s = "Invalid index create request"
      case si = peInvalidIndexDelete : s = "Invalid index delete request"
      case si = peInvalidIndexDesc : s = "Invalid index descriptor."
      case si = peInvalidIndexName : s = "Invalid index/tag name."
      case si = peInvalidIndexStruct : s = "Invalid array of index descriptors."
      case si = peInvalidIndexType : s = "Invalid index type"
      case si = peInvalidIsolationLevel : s = "'%0ds' is not a valid isolation level."

      case si = peInvalidKey : s = "Cannot evaluate Key or Key does not pass filter condition."
      case si = peInvalidKeyword : s = "Invalid use of keyword."
      case si = peInvalidLanguageDriver : s = "Invalid language Driver."
      case si = peInvalidLinkExpr : s = "Invalid linked cursor expression."
      case si = peInvalidMasterTableLevel : s = "Master table level is incorrect."
      case si = peInvalidMode : s = "Invalid mode."
      case si = peInvalidModifyRequest : s = "Invalid modify request."
      case si = peInvalidOperationForTableType : s = "Can't perform %0ds for table of type %1ds."

      case si = peInvalidOptParam : s = "Invalid optional parameter."
      case si = peInvalidOption : s = "Invalid option."
      case si = peInvalidParam : s = "Invalid parameter."
      case si = peInvalidParameter : s = "%00ds:%01ds:%02ds: The value of the parameter, '%3ds', is not legal. %4rs"
      case si = peInvalidPassword : s = "Invalid password given."
      case si = peInvalidPath : s = "Invalid path."
      case si = peInvalidPrefferedFile : s = "The specified file name is invalid."
      case si = peInvalidProperty : s = "The specified property is invalid."

      case si = peInvalidQuery : s = "Query not opened."
      case si = peInvalidRecStruct : s = "Invalid record structure."
      case si = peInvalidRecordNumber : s = "Invalid number of records."
      case si = peInvalidRefIntgDesc : s = "Cannot change this RINTDesc."
      case si = peInvalidRefIntgStruct : s = "Invalid array of referential integrity descriptors               ˙."
      case si = peInvalidRestrTableOrder : s = "Invalid ordering of tables during restructure."
      case si = peInvalidRestructureOperation : s = "invalid restructure operation."
      case si = peInvalidRow : s = "The specified row is invalid."

      case si = peInvalidSQL : s = "SQL object not opened."
      case si = peInvalidSession : s = "The first argument is not a session or the session is not open."
      case si = peInvalidSessionHandle : s = "Invalid session handle."
      case si = peInvalidSysData : s = "Corrupt system configuration file."
      case si = peInvalidTCursor : s = "TCursor not opened."
      case si = peInvalidTable : s = "Invalid table."
      case si = peInvalidTableCreate : s = "Invalid table create request"
      case si = peInvalidTableDelete : s = "Invalid table delete request"

      case si = peInvalidTableLock : s = "'%0ds' is not a valid Table lock."
      case si = peInvalidTableName : s = "Invalid table name."
      case si = peInvalidTableVar : s = "Table variable not attached."
      case si = peInvalidTime : s = "Invalid Time."
      case si = peInvalidTimeStamp : s = "Invalid Datetime"
      case si = peInvalidTranslation : s = "Translate Error. Value out of bounds."
      case si = peInvalidUserPassword : s = "Unknown user name or password."
      case si = peInvalidValChkStruct : s = "Invalid array of validity check descriptors."

      case si = peKeyFieldTypeMismatch : s = "Foreign and primary key do not match."
      case si = peKeyOrRecDeleted : s = "Record/Key deleted."
      case si = peKeyViol : s = "Key violation."
      case si = peLDNotFound : s = "Could not find language driver."
      case si = peLanguageDriveMisMatch : s = "Language Drivers of Table and Index do not match"
      case si = peLinkWontFit : s = "Link information will not fit in field."
      case si = peLinkedTableProtected : s = "A table linked by referential integrity requires password to open."
      case si = peListTooBig : s = "Maximum number of items in a list is 2500."

      case si = peLiveQueryDead : s = "Live answer set forced to disk for this operation"
      case si = peLocateErr : s = "An error was triggered in a Locate operation."
      case si = peLocateFailed : s = "Could not perform locate operation."
      case si = peLockFileLimit : s = "Lock file has grown too large."
      case si = peLockInvalid : s = "Trying to '%0ds' (un)lock table '%1ds' by name which can't be done in PAL."
      case si = peLockTimeout : s = "Lock time out."
      case si = peLocked : s = "Record locked by another user."
      case si = peLookupSrchFailed : s = "Unable to find lookup value."

      case si = peLostExclusiveAccess : s = "Exclusive access was lost."
      case si = peLostTableLock : s = "Table lock was lost."
      case si = peMailAddressFail : s = "Unable to display the address book."
      case si = peMailBadAddressIndex : s = "Invalid address index: %d."
      case si = peMailBadFileIndex : s = "Invalid attachment index: %d"
      case si = peMailFileClose : s = "Error closing attachment %s."
      case si = peMailFileOpen : s = "Unable to open the attachment file %s."
      case si = peMailFileWrite : s = "Unable to write the temporary attachment file %s."

      case si = peMailInvalidEditFields : s = "Invalid specification of address list to edit: %d."
      case si = peMailLogoffFail : s = "Unable to complete the mail system logoff."
      case si = peMailLogonFail : s = "Unable to complete the mail system logon."
      case si = peMailMAPI_AccessDenied : s = "MAPI: Access to mail system denied"
      case si = peMailMAPI_AmbigRecip : s = "MAPI: Mail recipient information is ambiguous"
      case si = peMailMAPI_AmbiguousRecipient : s = "MAPI: Mail recipient information is ambiguous"
      case si = peMailMAPI_AttachmentNotFound : s = "MAPI: The specified attachment was not found."

      case si = peMailMAPI_AttachmentOpenFailure : s = "MAPI: One or more attachments could not be located."
      case si = peMailMAPI_AttachmentWriteFailure : s = "MAPI: An attachment could not be written to a temporary file. Check directory permissions."
      case si = peMailMAPI_BadRecip : s = "MAPI: One or more recipients were unknown. No dialog box was displayed."
      case si = peMailMAPI_BadReciptype : s = "MAPI: The type of a recipient was not MAIL_ADDRTO, MAIL_ADDRCC, or MAIL_ADDRBC."
      case si = peMailMAPI_DiskFull : s = "MAPI: The disk was full."

      case si = peMailMAPI_Failure : s = "MAPI returned an unspecified error.  Check your addresses, attachments, and/or your MAPI configuration."
      case si = peMailMAPI_InsufficientMemory : s = "MAPI: There was insufficient memory to proceed."
      case si = peMailMAPI_InvalidEditfields : s = "MAPI: The value of the numberOfLists parameter was outside the range of 0 to 4."
      case si = peMailMAPI_InvalidMessage : s = "MAPI: An invalid message ID was provided."
      case si = peMailMAPI_InvalidRecipients : s = "MAPI: One or more of the recipients in the address list was not valid."

      case si = peMailMAPI_InvalidRecips : s = "MAPI: One or more of the recipients in the address list was not valid."
      case si = peMailMAPI_InvalidSession : s = "MAPI: Invalid session handle - only one logon allowed per MAIL variable."
      case si = peMailMAPI_LoginFailure : s = "MAPI: There was no default sign-in, and the user failed to sign in successfully when the sign-in dialog box was displayed."
      case si = peMailMAPI_MessageInUse : s = "MAPI: Can not modify this message, it's in use."
      case si = peMailMAPI_NetworkFailure : s = "MAPI: encountered a Network failure."

      case si = peMailMAPI_NoMessages : s = "MAPI: Couldnt find a matching message."
      case si = peMailMAPI_NoRecip : s = "MAPI: No name specified for an address."
      case si = peMailMAPI_NotSupported : s = "MAPI: The operation was not supported by the underlying messaging system."
      case si = peMailMAPI_TextTooLarge : s = "MAPI: The text in the message was too large to be sent."
      case si = peMailMAPI_TooManyFiles : s = "MAPI: Too many file attachments were contained in the message. No mail was read."
      case si = peMailMAPI_TooManyRecipients : s = "MAPI: There were too many recipients of the message. No mail was read."

      case si = peMailMAPI_TooManySessions : s = "MAPI: Too many sessions open at once."
      case si = peMailMAPI_TypeNotSupported : s = "MAPI: undocumented error occurred."
      case si = peMailMAPI_UnknownRecipient : s = "MAPI: The recipient did not appear in the address list."
      case si = peMailNoMAPI : s = "Unable to load the MAPI subsystem (MAPI32.DLL)."
      case si = peMailNoMAPIFunction : s = "Unable to load the MAPI function %s."
      case si = peMailNoMemory : s = "Insufficient memory to complete this operation."
      case si = peMailResolveFail : s = "Unable to resolve the specified mail addresses."

      case si = peMailSendFail : s = "Mail send operation failed."
      case si = peMailUserCancel : s = "The user cancelled this operation."
      case si = peMasterExists : s = "Link to master table already defined."
      case si = peMasterReferenceErr : s = "Self referencing referential integrity must be entered one at a time with no other changes to the table"
      case si = peMasterTableOpen : s = "Master table is open."
      case si = peMatchNotFound : s = "\"%s\" was not found."
      case si = peMathError : s = "An arithmetic error occurred during '%0ds' execution. Reason: '%1rs'."

      case si = peMaxValErr : s = "Maximum validity check failed."
      case si = peMemoCorrupt : s = "Corrupt Memo/BLOB file."
      case si = peMethodNotFound : s = "The method, '%0mn' is not visible from the object, '%01un'."
      case si = peMethodNotValid : s = "The method is not valid for the object."
      case si = peMinValErr : s = "Minimum validity check failed."
      case si = peMisMatchedOperands : s = "Cannot perform '%0ds' between %1cc and %2cc."
      case si = peMismatchArgs : s = "Mismatch in the number of arguments"
      case si = peModifiedSinceOpen : s = "The disk file has been modified since it was loaded"

      case si = peMultiLevelCascade : s = "Multi-level cascade is not supported."
      case si = peMultipleInit : s = "Attempt to re-initialize Engine."
      case si = peMultiplePoints : s = "Only one decimal point is allowed."
      case si = peMultipleSigns : s = "Only one sign is allowed."
      case si = peMultipleUniqRecs : s = "Multiple records found, but only one was expected."
      case si = peMustUseBaseOrder : s = "Must use baseorder for this operation."
      case si = peNA : s = "Operation not applicable."
      case si = peNameNotUnique : s = "Name not unique in this context."

      case si = peNameReserved : s = "Name is reserved."
      case si = peNan : s = "Cannot format a NAN."
      case si = peNeedExclusiveAccess : s = "Table cannot be opened for exclusive use."
      case si = peNeedRestructure : s = "Need to do (hard) restructure."
      case si = peNetFileLocked : s = "Cannot lock network file."
      case si = peNetFileVersion : s = "Wrong .NET file version."
      case si = peNetInitErr : s = "Network initialization failed."
      case si = peNetMultiple : s = "Directory is controlled by other .NET file."
      case si = peNetUnknown : s = "Unknown network error."

      case si = peNetUserLimit : s = "Network user limit exceeded."
      case si = peNo1Sep : s = "Date Separator  missing."
      case si = peNo1TSep : s = "Time Separator  missing."
      case si = peNo2Sep : s = "Date Separator  missing."
      case si = peNo2TSep : s = "Time Separator  missing."
      case si = peNo3Sep : s = "Date Separator  missing."
      case si = peNo3TSep : s = "Time Separator  missing."
      case si = peNo4Sep : s = "Date Separator  missing."
      case si = peNo4TSep : s = "Time Separator  missing."
      case si = peNo5Sep : s = "Date Separator  missing."
      case si = peNo5TSep : s = "Time Separator  missing."

      case si = peNo6TSep : s = "Time Separator  missing."
      case si = peNoAMPM : s = "AM-PM Specification missing."
      case si = peNoActiveTransaction : s = "No active transaction to commit or rollback."
      case si = peNoArguments : s = "'%0ds' failed because it has no arguments supplied."
      case si = peNoAssocIndex : s = "No associated index."
      case si = peNoCallback : s = "No callback function."
      case si = peNoConfigFile : s = "Cannot find Engine configuration file."
      case si = peNoCurrRec : s = "No current record."
      case si = peNoDMChangeInRun : s = "Cannot modify the Data Model in Run Mode."

      case si = peNoDay : s = "Day Specification missing."
      case si = peNoDayOrMonthSpec : s = "Format is display only. Need day or month."
      case si = peNoDestRecord : s = "Trying to store into a nonexistent record."
      case si = peNoDetailRoom : s = "Insufficient room for detail records of %s."
      case si = peNoDiskSpace : s = "Insufficient disk space."
      case si = peNoFamilyRights : s = "Insufficient family rights for operation."
      case si = peNoFieldRights : s = "Insufficient field rights for operation."
      case si = peNoFieldRoom : s = "Could not fit field %s in layout."

      case si = peNoFileHandles : s = "Not enough file handles."
      case si = peNoHour : s = "Hour Specification missing."
      case si = peNoHourSpec : s = "Format is display only. Need hour."
      case si = peNoKeyField : s = "No key field in this table."
      case si = peNoLock : s = "The table(tcursor) is not '%0ds' locked."
      case si = peNoLockedRecord : s = "The record is not locked"
      case si = peNoLogical : s = "Logical Specification missing."
      case si = peNoLookup : s = "Lookup not available on this field."
      case si = peNoLookupMove : s = "No master lookup available for this field."

      case si = peNoMemoView : s = "Memo editing is not allowed on this field."
      case si = peNoMemory : s = "Insufficient memory for this operation."
      case si = peNoMinutes : s = "Minute Specification missing."
      case si = peNoMonth : s = "Month Specification missing."
      case si = peNoMultConnect : s = "Multiple connections not supported."
      case si = peNoNumber : s = "Missing number."
      case si = peNoPage : s = "Invalid page."
      case si = peNoPictureMatch : s = "Invalid character(s) in this field."
      case si = peNoProperty : s = "The property is not valid for the given object."

      case si = peNoRecordNos : s = "The table does not support record numbers."
      case si = peNoRecords : s = "Table is empty."
      case si = peNoSearchField : s = "Active object is not a field or has a value that cannot be searched."
      case si = peNoSeconds : s = "Seconds Specification missing."
      case si = peNoSelect : s = "Must be in Field View (F2) to select."
      case si = peNoSelection : s = "There is no object selected to cut or copy."
      case si = peNoSeqnums : s = "Table does not support sequence numbers."
      case si = peNoServerAnsTable : s = "The answer table cannot be on a server."

      case si = peNoSession : s = "Database information is missing from Desktop."
      case si = peNoSoftDeletes : s = "The table does not support soft deletes."
      case si = peNoSortField : s = "No field identified on Sort from table '%0ds'."
      case si = peNoSrcRecord : s = "Trying to read from a nonexistent record."
      case si = peNoSuchFile : s = "File does not exist."
      case si = peNoSuchFilter : s = "Filter handle is invalid"
      case si = peNoSuchIndex : s = "Index does not exist."
      case si = peNoSuchTable : s = "Table does not exist."
      case si = peNoTableName : s = "Specify the table to be associated for TCursor."

      case si = peNoTableRights : s = "Insufficient table rights for operation. Password required."
      case si = peNoTableSupport : s = "Table does not support this operation."
      case si = peNoTempFile : s = "Could not create temporary table."
      case si = peNoTempTableSpace : s = "Temporary table resource limit."
      case si = peNoTextTable : s = "Unrecognized table type"
      case si = peNoTransaction : s = "No user transaction is currently in progress."
      case si = peNoUniqueRecs : s = "Table does not support this operation because it is not uniquely indexed."

      case si = peNoWeekday : s = "Day of Week Specification missing."
      case si = peNoWorkPrivAlias : s = "Cannot change the path of the default working or private directories."
      case si = peNoYear : s = "Year Specification missing."
      case si = peNonExistentAlias : s = "Invalid alias."
      case si = peNotABlob : s = "Field is not a BLOB."
      case si = peNotAValidField : s = "The field number or name is not in the table."
      case si = peNotAllowedFieldType : s = "Field '%0ds' of type '%1ds' is not a valid type for a sort or index operation."

      case si = peNotAllowedInPlace : s = "This operation is not allowed while in place."
      case si = peNotCoEdit : s = "Table needs to be in Edit mode to perform operation."
      case si = peNotCurSession : s = "Operation must be performed on the current session."
      case si = peNotEnoughRights : s = "Cannot perform operation '%0ds' on '%1ds' because of insufficient rights."
      case si = peNotField : s = "Field '%0ds' is not a field in table '%1ds'."
      case si = peNotFieldNum : s = "Field '%0di' is not a field in table '%1ds'."

      case si = peNotImplemented : s = "Not implemented yet."
      case si = peNotInEditMode : s = "Not in Edit mode. Press F9 to edit data."
      case si = peNotInRunMode : s = "Document is not in run mode."
      case si = peNotIndexed : s = "Table is not indexed."
      case si = peNotInitialized : s = "Engine not initialized."
      case si = peNotLiveView : s = "Not a live query view."
      case si = peNotLocked : s = "Object not locked."
      case si = peNotNumericField : s = "'%0ds' is not a numeric field in '%1tn'."
      case si = peNotOleField : s = "This field is not an OLE field."

      case si = peNotOnANetwork : s = "Not on a network. Not logged in or wrong network driver."
      case si = peNotOnThatNet : s = "Not on the network."
      case si = peNotOpenIndex : s = "'%0ds' requires that the table '%1ds' be opened on an index."
      case si = peNotSameSession : s = "Attempt to mix objects from different sessions."
      case si = peNotSuffSQLRights : s = "Insufficient SQL rights for operation."
      case si = peNotSupported : s = "Capability not supported."
      case si = peNotSupportedFiltered : s = "Operation not supported on filtered record set"

      case si = peNotValidSearchField : s = "Illegal field type for '%0ds' in '%1ds' for locate."
      case si = peNullFieldName : s = "Field has no name."
      case si = peOSAccessDenied : s = "Permission denied."
      case si = peOSArgListTooLong : s = "Argument list is too long."
      case si = peOSBadFileNo : s = "Bad file number."
      case si = peOSCrossDevLink : s = "Cross-device link."
      case si = peOSDriveNotReady : s = "Drive not ready."
      case si = peOSExecFmt : s = "Execution format error."
      case si = peOSFileExist : s = "File already exists."
      case si = peOSInt24Fail : s = "Critical DOS Error."

      case si = peOSInvalidAccCode : s = "Invalid access code."
      case si = peOSInvalidArg : s = "Invalid argument."
      case si = peOSInvalidData : s = "Invalid data."
      case si = peOSInvalidEnviron : s = "Invalid environment."
      case si = peOSInvalidFormat : s = "Invalid format."
      case si = peOSInvalidFunc : s = "Invalid function number."
      case si = peOSInvalidMemAddr : s = "Invalid memory block address."
      case si = peOSLockViol : s = "Lock violation."
      case si = peOSMathArg : s = "Math argument."
      case si = peOSMemBlocksDestroyed : s = "Memory blocks destroyed."

      case si = peOSNetErr : s = "Operating system network error."
      case si = peOSNoDevice : s = "Device does not exist."
      case si = peOSNoFATEntry : s = "File or directory does not exist."
      case si = peOSNoMemory : s = "Not enough memory."
      case si = peOSNoMoreFiles : s = "No more files."
      case si = peOSNoPath : s = "Path not found."
      case si = peOSNotSameDev : s = "Not same device."
      case si = peOSOutOfRange : s = "Result is too large."
      case si = peOSRemoveCurDir : s = "Attempt to remove current directory."
      case si = peOSShareViol : s = "Share violation."

      case si = peOSTooManyOpenFiles : s = "Too many open files. You may need to increase MAXFILEHANDLE limit in IDAPI configuration."
      case si = peOSUnknown : s = "Unknown internal operating system error."
      case si = peObjImplicitlyDropped : s = "Object implicitly dropped."
      case si = peObjImplicitlyModified : s = "Object implicitly modified."
      case si = peObjMayBeTruncated : s = "Object may be truncated."
      case si = peObjNotFound : s = "Could not find object."
      case si = peObjectDisabled : s = "Object disabled."
      case si = peObjectImplicityTruncated : s = "Object implicitly truncated."

      case si = peObjectNotFound : s = "You have tried to reference the object named '%0ds' from the object named '%1un'. The referenced object could not be found. The name is either incorrect or the object is not visible from '%2ds'."
      case si = peObjectTreeTooBig : s = "Too many objects for object tree."
      case si = peOldVersion : s = "Older version (see context)."
      case si = peOle2AccessMethod : s = "Error accessing the method '%0ds'."
      case si = peOle2AccessProperty : s = "Error accessing the property '%0ds'."

      case si = peOle2BadConnection : s = "The OLE connection is no longer valid. Perhaps the server application was closed."
      case si = peOle2BadParameterCount : s = "An OLE method was called with wrong parameter count."
      case si = peOle2BadPropertyIndex : s = "Bad Index used to access the OLE property '%0ds'."
      case si = peOle2NoInterface : s = "Server '%0ds' has no programmable interface."
      case si = peOle2NoOLEType : s = "Cannot convert '%0cc' to an OLE type."
      case si = peOle2NoObjectPalType : s = "Error converting OLE type to ObjectPAL type."

      case si = peOle2NoReturnValue : s = "The OLE method '%0ds' has no return value."
      case si = peOle2NoTypeInformation : s = "OLE server has no type information."
      case si = peOle2NoTypeLibrary : s = "Server '%0ds' does not have a registered type library."
      case si = peOle2NoValueByReference : s = "Cannot pass value property by reference."
      case si = peOle2NotAServer : s = "OleAuto only bound to type information, no actual server is activated."
      case si = peOle2NotCollection : s = "OLE object is not a collection object."

      case si = peOle2NotImplemented : s = "OLE functionality is not implemented."
      case si = peOle2OcxUnavailable : s = "OCX is unavailable for access."
      case si = peOle2OpenServer : s = "Error opening server '%0ds'."
      case si = peOle2OpenTypeLibrary : s = "Failed to open OLE type library."
      case si = peOle2ParameterOverflow : s = "Overflow during conversion of argument %0di of OLE method '%1ds'."
      case si = peOle2PropertyMismatch : s = "Type mismatch in access of OLE property '%0ds'."
      case si = peOle2PropertyOverflow : s = "Overflow during conversion of OLE property '%0ds'."

      case si = peOle2ReturnValueOverflow : s = "Overflow during conversion of return value of OLE method '%0ds'."
      case si = peOle2TypeLibraryNotExist : s = "OLE server has no type library."
      case si = peOle2TypeMismatch : s = "Type mismatch in argument %0di, in call of the OLE method '%1ds'."
      case si = peOle2TypeRegistryErr : s = "Incorrect type library registration for server '%0ds'."
      case si = peOle2UnknownException : s = "Unknown exception fault in OLE server."
      case si = peOle2UnknownMethod : s = "Attempt to call a Method '%0ds' unknown to OLE server."

      case si = peOle2UnknownProperty : s = "Attempt to access a Property '%0ds' unknown to OLE server."
      case si = peOle2UnknownServerName : s = "Attempt to open unknown server '%0ds'."
      case si = peOpenBlobLimit : s = "Too many open BLOBs."
      case si = peOpenDetailFailed : s = "Detail Table Open operation failed."
      case si = peOpenErr : s = "Cannot open file"
      case si = peOpenLookupFailed : s = "Lookup Table Open operation failed."
      case si = peOpenMasterFailed : s = "Master Table Open operation failed."
      case si = peOpenTableLimit : s = "Too many open tables."

      case si = peOpenedByPal : s = "This table view was opened by ObjectPal."
      case si = peOperatorNotAllowed : s = "Operation '%0ds' is not allowed on the data type %1cc."
      case si = peOptRecLockFailed : s = "Couldn't perform the edit because another user changed the record."
      case si = peOptRecLockRecDel : s = "Couldn't perform the edit because another user deleted or moved the record."
      case si = peOsAlreadyLocked : s = "Record already locked by this workstation."
      case si = peOsNotLocked : s = "Record not locked."

      case si = peOsUnknownSrvErr : s = "Error from NOVELL file server."
      case si = peOutOfHandles : s = "Out of internal file handles ??"
      case si = peOutOfRange : s = "Number is out of range."
      case si = peOverFlow : s = "Overflow. The source data is numerically too large (positive or negative) to store in the destination."
      case si = pePart1Sep : s = "Incomplete Date Separator ."
      case si = pePart1TSep : s = "Incomplete Time Separator ."
      case si = pePart2Sep : s = "Incomplete Date Separator ."
      case si = pePart2TSep : s = "Incomplete Time Separator ."

      case si = pePart3Sep : s = "Incomplete Date Separator ."
      case si = pePart3TSep : s = "Incomplete Time Separator ."
      case si = pePart4Sep : s = "Incomplete Date Separator ."
      case si = pePart4TSep : s = "Incomplete Time Separator ."
      case si = pePart5Sep : s = "Incomplete Date Separator ."
      case si = pePart5TSep : s = "Incomplete Time Separator ."
      case si = pePart6TSep : s = "Incomplete Time Separator ."
      case si = pePartAMPM : s = "Incomplete AM-PM Specification."
      case si = pePartDay : s = "Incomplete Day Specification."
      case si = pePartHour : s = "Incomplete Hour Specification."

      case si = pePartLogical : s = "Incomplete Logical Specification."
      case si = pePartMinutes : s = "Incomplete Minute Specification."
      case si = pePartMonth : s = "Incomplete Month Specification."
      case si = pePartSeconds : s = "Incomplete Seconds Specification."
      case si = pePartWeekday : s = "Incomplete Day of Week Specification."
      case si = pePartYear : s = "Incomplete Year Specification."
      case si = pePasswordLimit : s = "Too many passwords."
      case si = pePasswordRequired : s = "Password required"
      case si = pePasteNeedPage : s = "You can paste page only from Clipboard before a selected page."

      case si = pePastePage : s = "Clipboard object can be pasted only into a Form."
      case si = pePathNonExistent : s = "The path '%0ds' does not exist."
      case si = pePathNotFound : s = "The path, '%0ds', does not exist."
      case si = pePdx10Table : s = "Paradox 1.0 tables are not supported."
      case si = pePdx35ldDriver : s = "Needs Paradox 3.5-compatible language driver."
      case si = pePdxDriverNotActive : s = "Paradox driver not active."
      case si = pePictureErr : s = "The field value fails picture validity check."
      case si = pePrecisionExceeded : s = "Number is out of range for the given type."

      case si = pePrimaryKeyRedefine : s = "Cannot redefine primary key."
      case si = pePrnInvalidDriver : s = "Invalid printer driver."
      case si = pePrnNoDriver : s = "Cannot find printer driver."
      case si = pePrnNoMemory : s = "Insufficient memory."
      case si = pePrnNoPrinter : s = "No printer installed or Windows cannot print."
      case si = pePropertyAccess : s = "Cannot access property."
      case si = pePropertyBadValue : s = "Attempted to assign an illegal value to the property."
      case si = pePropertyGet : s = "An error occurred when trying to get the property named '%0ds' of the object named '%1un' of type '%2uc'."

      case si = pePropertyNotFound : s = "You have tried to access the property named '%0up' which does not belong to the object named '%1un' of type '%2uc'."
      case si = pePropertySet : s = "An error occurred when setting the property named '%0ds' of the object named '%1un' of type '%2uc'."
      case si = pePublicAliasExists : s = "Alias(es) already defined -- discarding new ones."
      case si = peQBETerminated : s = "QBE terminated by user.peQBEbadFileName	SmallInt	File '%0ds' does not exist."
      case si = peQryAmbOutPr : s = "obsolete"

      case si = peQryAmbSymAs : s = "obsolete"
      case si = peQryAmbigJoAsy : s = "obsolete"
      case si = peQryAmbigJoSym : s = "obsolete"
      case si = peQryAmbigOutEx : s = "Ambiguous use of ! (inclusion operator)."
      case si = peQryAseToPer : s = "A SET operation cannot be included in its own grouping."
      case si = peQryAveNumDa : s = "Only numeric and date/time fields can be averaged."
      case si = peQryBadExpr1 : s = "Invalid expression."
      case si = peQryBadFieldOr : s = "Invalid OR expression."
      case si = peQryBadFormat : s = "Query format is not supported."

      case si = peQryBadVName : s = "obsolete"
      case si = peQryBitmapErr : s = "bitmap"
      case si = peQryBlobErr : s = "General BLOB error."
      case si = peQryBlobTerm : s = "Operation is not supported on BLOB fields."
      case si = peQryBuffTooSmall : s = "Buffer too small to contain query string."
      case si = peQryCalcBadR : s = "CALC expression cannot be used in INSERT, DELETE, CHANGETO and SET rows."
      case si = peQryCalcType : s = "Type error in CALC expression."
      case si = peQryCancExcept : s = "Query canceled."
      case si = peQryChNamBig : s = "Cannot perform operation on CHANGED table together with a CHANGETO query."

      case si = peQryChgTo1ti : s = "CHANGETO can be used in only one query form at a time."
      case si = peQryChgToChg : s = "Cannot modify CHANGED table."
      case si = peQryChgToExp : s = "A field can contain only one CHANGETO expression."
      case si = peQryChgToIns : s = "A field cannot contain more than one expression to be inserted."
      case si = peQryChgToNew : s = "obsolete"
      case si = peQryChgToVal : s = "CHANGETO must be followed by the new value for the field."
      case si = peQryChkmrkFi : s = "Checkmark or CALC expressions cannot be used in FIND queries."

      case si = peQryChunkErr : s = "chunk"
      case si = peQryColum255 : s = "More than 255 fields in ANSWER table."
      case si = peQryConAftAs : s = "AS must be followed by the name for the field in the ANSWER table."
      case si = peQryDBExcept : s = "Unexpected Database Engine error."
      case si = peQryDel1time : s = "DELETE can be used in only one query form at a time."
      case si = peQryDelAmbig : s = "Cannot perform operation on DELETED table together with a DELETE query."
      case si = peQryDelFrDel : s = "Cannot delete from the DELETED table."

      case si = peQryEgFieldTyp : s = "Example element is used in two fields with incompatible types or with a BLOB."
      case si = peQryEmpty : s = "Query string is empty."
      case si = peQryExaminOr : s = "Cannot use example elements in an OR expression."
      case si = peQryExprTyps : s = "Expression in this field has the wrong type."
      case si = peQryExtraCom : s = "Extra comma found."
      case si = peQryExtraOro : s = "Extra OR found."
      case si = peQryExtraQro : s = "One or more query rows do not contribute to the ANSWER."
      case si = peQryFatalExcept : s = "Unexpected exception."

      case si = peQryFind1Att : s = "FIND can be used in only one query form at a time."
      case si = peQryFindAnsT : s = "FIND cannot be used with the ANSWER table."
      case si = peQryGrpNoSet : s = "A row with GROUPBY must contain SET operations."
      case si = peQryGrpStRow : s = "GROUPBY can be used only in SET rows."
      case si = peQryIdfPerli : s = "Use only one INSERT, DELETE, SET or FIND per line."
      case si = peQryIdfinlco : s = "Use only INSERT, DELETE, SET or FIND in leftmost column."
      case si = peQryInAnExpr : s = "Syntax error in expression."

      case si = peQryIns1Time : s = "INSERT can be used in only one query form at a time."
      case si = peQryInsAmbig : s = "Cannot perform operation on INSERTED table together with an INSERT query."
      case si = peQryInsDelCh : s = "INSERT, DELETE, CHANGETO and SET rows may not be checked."
      case si = peQryInsExprR : s = "Field must contain an expression to insert (or be blank)."
      case si = peQryInsToIns : s = "Cannot insert into the INSERTED table."
      case si = peQryIsArray : s = "Variable is an array and cannot be accessed."

      case si = peQryLabelErr : s = "Label"
      case si = peQryLinkCalc : s = "Rows of example elements in CALC expression must be linked."
      case si = peQryLngvName : s = "Variable name is too long."
      case si = peQryLongExpr : s = "Expression is too long."
      case si = peQryLongQury : s = "Query may take a long time to process."
      case si = peQryMemExcept : s = "Not enough memory to finish operation."
      case si = peQryMemVProc : s = "Reserved word or one that can't be used as a variable name."
      case si = peQryMisSrtQu : s = "Missing right quote."

      case si = peQryMisngCom : s = "Missing comma."
      case si = peQryMisngRpa : s = "Missing )."
      case si = peQryNIY : s = "Feature not implemented yet in query."
      case si = peQryNamTwice : s = "Cannot specify duplicate column names."
      case si = peQryNoAnswer : s = "This DELETE, CHANGE or INSERT query has no ANSWER."
      case si = peQryNoChkmar : s = "Query has no checked fields."
      case si = peQryNoDefOcc : s = "Example element has no defining occurrence."
      case si = peQryNoGroups : s = "No gro               juping is defined for SET operation."
      case si = peQryNoPatter : s = "Cannot use patterns in this context."

      case si = peQryNoQryToPrep : s = "Attempted to prepare an empty query."
      case si = peQryNoSuchDa : s = "Date does not exist."
      case si = peQryNoValue : s = "Variable has not been assigned a value."
      case si = peQryNonsense : s = "Query makes no sense."
      case si = peQryNotHandle : s = "Function called with bad query handle."
      case si = peQryNotParse : s = "Query was not previously parsed or prepared."
      case si = peQryNotPrep : s = "Query is not prepared. Properties unknown."
      case si = peQryOnlyCons : s = "Invalid use of example element in summary expression."

      case si = peQryOnlySetR : s = "Incomplete query statement. Query only contains a SET definition."
      case si = peQryOutSens1 : s = "Example element with ! makes no sense in expression."
      case si = peQryOutTwic1 : s = "Example element cannot be used more than twice with a ! query."
      case si = peQryPaRowCnt : s = "Row cannot contain expression."
      case si = peQryPersePar : s = "obsolete"
      case si = peQryProcPlsw : s = "obsolete"
      case si = peQryPwInsrts : s = "No permission to insert or delete records."
      case si = peQryPwModrts : s = "No permission to modify field."

      case si = peQryQbeFieldFound : s = "Field not found in table."
      case si = peQryQbeNoFence : s = "Expecting a column separator in table header."
      case si = peQryQbeNoFenceT : s = "Expecting a column separator in table."
      case si = peQryQbeNoHeaderT : s = "Expecting column name in table."
      case si = peQryQbeNoTab : s = "Expecting table name."
      case si = peQryQbeNumCols : s = "Expecting consistent number of columns in all rows of table."
      case si = peQryQbeOpentab : s = "Cannot open table."
      case si = peQryQbeTwice : s = "Field appears more than once in table."

      case si = peQryQuaInDel : s = "DELETE rows cannot contain quantifier expression."
      case si = peQryQuaInIns : s = "Invalid expression in INSERT row."
      case si = peQryQxFieldCount : s = "Query extended syntax field count error."
      case si = peQryQxFieldSymNotFound : s = "Field name in sort or field clause not found."
      case si = peQryQxTableSymNotFound : s = "Table name in sort or field clause not found."
      case si = peQryRagInIns : s = "Invalid expression in INSERT row."
      case si = peQryRagInSet : s = "Invalid expression in SET definition."

      case si = peQryRefresh : s = "Refresh exception during query."
      case si = peQryRegister : s = "Lock failure."
      case si = peQryRestartQry : s = "Query must be restarted."
      case si = peQryRowUsErr : s = "row use"
      case si = peQrySetExpec : s = "SET keyword expected."
      case si = peQrySetVAmb1 : s = "Ambiguous use of example element."
      case si = peQrySetVBad1 : s = "obsolete"
      case si = peQrySetVDef1 : s = "obsolete"
      case si = peQrySumNumbe : s = "Only numeric fields can be summed."
      case si = peQrySyntErr : s = "QBE syntax error."
      case si = peQryTableIsWP3 : s = "Table is write protected."

      case si = peQryTokenNot : s = "Token not found."
      case si = peQryTwoOutr1 : s = "Cannot use example element with ! more than once in a single row."
      case si = peQryTypeMIsM : s = "Type mismatch in expression."
      case si = peQryUnknownAnsType : s = "Unknown answer table type."
      case si = peQryUnrelQ1 : s = "Query appears to ask two unrelated questions."
      case si = peQryUnusedSt : s = "Unused SET row."
      case si = peQryUseInsDe : s = "INSERT, DELETE, FIND, and SET can be used only in the leftmost column."
      case si = peQryUseOfChg : s = "CHANGETO cannot be used with INSERT, DELETE, SET or FIND."

      case si = peQryVarMustF : s = "Expression must be followed by an example element defined in a SET."
      case si = peQueryErr : s = "An error was triggered in the '%0ds' method on an object of Query type."
      case si = peQueryView : s = "This table view is a query view."
      case si = peREGExpressionTooLarge : s = "Matching error: Expression is too big."
      case si = peREGInvalidBracketRange : s = "Matching error: Invalid bracket range."
      case si = peREGNestedSQP : s = "Matching error: Nested operand."
      case si = peREGOperandEmpty : s = "Matching error: Operand is empty."

      case si = peREGSPQFollowsNothing : s = "Matching error: *, +, ? must follow an expression."
      case si = peREGTooManyParens : s = "Matching error: Too many parentheses."
      case si = peREGTrailingBackSlash : s = "Matching error: Trailing back slash."
      case si = peREGUnmatchedBrackets : s = "Matching error: Unmatched brackets."
      case si = peREGUnmatchedParens : s = "Matching error: Unmatched parentheses."
      case si = peReadErr : s = "Read failure."
      case si = peReadOnlyDB : s = "Database is read only."
      case si = peReadOnlyDir : s = "This directory is read only."

      case si = peReadOnlyField : s = "Trying to modify read-only field."
      case si = peReadOnlyProperty : s = "You do not have write access to this property. It is read only. It cannot be modified."
      case si = peRecAlreadyLocked : s = "This record is already locked by another module in this session."
      case si = peRecLockFailed : s = "Cannot post record out of range."
      case si = peRecLockLimit : s = "Too many record locks on table."
      case si = peRecMoved : s = "Record moved because key value changed."
      case si = peRecNotFound : s = "Could not find record."

      case si = peRecTooBig : s = "Record size is too big for table."
      case si = peRecordAlreadyLocked : s = "Warning: Record already locked in this session."
      case si = peRecordGroupConflict : s = "Conflicting record lock in this session."
      case si = peRecordIsDeleted : s = "Record is deleted."
      case si = peRecordIsNotDeleted : s = "Record is not deleted."
      case si = peRecordNotLocked : s = "This record is not locked so the operation is invalid."
      case si = peRefIntgReqIndex : s = "Referential integrity fields must be indexed."

      case si = peReqOptParamMissing : s = "Optional parameter is required."
      case si = peReqSameTableTypes : s = "Operation requires the same table types."
      case si = peReq_WLock_TC : s = "The operation you are trying to perform requires write-lock access to the table which could not be achieved."
      case si = peReq_XLock_TC : s = "The operation you are trying to perform requires exclusive-lock access to the table which could not be achieved."
      case si = peReqdErr : s = "Field value required."
      case si = peRequiredField : s = "This field cannot be blank."

      case si = peRequiresPDOXtable : s = "The table created must be a Paradox table type."
      case si = peReservedOsName : s = "Name is reserved by DOS."
      case si = peSKCantInstallHook : s = "Cannot do sendKeys() while another sendKeys() is already playing."
      case si = peSKInvalidCount : s = "The repeat count is not correct."
      case si = peSKInvalidKey : s = "The key name is not correct."
      case si = peSKMissingCloseBrace : s = "Missing closing brace."
      case si = peSKMissingCloseParen : s = "Missing closing parenthesis."
      case si = peSKStringTooLong : s = "The keys string is too long."

      case si = peSQL : s = "An error was triggered in the '%0ds' method on an object of SQL type."
      case si = peSQLCommLost : s = "Lost communication with SQL server."
      case si = peSameTable : s = "Table Names the same."
      case si = peSearchColReqd : s = "Non-blob column in table required to perform operation."
      case si = peSerNumLimit : s = "Serial number limit (Paradox)."
      case si = peServerNoMemory : s = "NOVELL server out of memory."
      case si = peServerPathIllegal : s = "A server alias does not have a path."
      case si = peSessionErr : s = "An error was triggered in the '%0ds' method on an object of Session type."

      case si = peSessionsLimit : s = "Too many sessions."
      case si = peShareNotLoaded : s = "SHARE not loaded. It is required to share local files."
      case si = peSharedFileAccess : s = "Not initialized for accessing network files."
      case si = peSortErr : s = "An error was triggered in a Sort operation."
      case si = peSortFailed : s = "Sort from '%0ds' to '%1ds' could not be performed."
      case si = peSortStartFailed : s = "Could not start Sort."
      case si = peSrvAccessDenied : s = "Access to requested file denied."
      case si = peSrvCannotGetLock : s = "Unable to acquire lock."

      case si = peSrvCapacityLimit : s = "Internal catalog size exceeded."
      case si = peSrvCopyFailed : s = "Could not copy to the specified file."
      case si = peSrvDeleteFailed : s = "Could not delete the specified file."
      case si = peSrvDiskError : s = "Error occurred while accessing file from disk."
      case si = peSrvFileDoesNotExist : s = "Could not find requested file."
      case si = peSrvFormat : s = "Error writing file. Record not tagged."
      case si = peSrvGraphicPasteFailed : s = "Unable to paste graphic."
      case si = peSrvInvalidCount : s = "File is corrupt. Record tag error."

      case si = peSrvInvalidExtension : s = "Invalid file extension for this file type."
      case si = peSrvInvalidHandle : s = "Internal invalid handle."
      case si = peSrvInvalidName : s = "File name is invalid."
      case si = peSrvMemoryAllocation : s = "Out of memory."
      case si = peSrvNameTooLong : s = "File name is too long."
      case si = peSrvNoReadRights : s = "No read access to file."
      case si = peSrvNoWriteRights : s = "File does not exist or is write protected."
      case si = peSrvNotSameDevice : s = "Rename not allowed to a different device."

      case si = peSrvOCXControlCreateError : s = "Error creating ActiveX control.  Please check installation."
      case si = peSrvOCXControlNotFound : s = "Specified ActiveX control not found in registry or in registered location.  Please check installation."
      case si = peSrvOleActivateFailed : s = "Cannot activate OLE server."
      case si = peSrvOleCantUpdateNow : s = "Unable to update OLE object."
      case si = peSrvOleInsertObjectFailed : s = "Unable to insert OLE object."
      case si = peSrvOlePasteFailed : s = "Unable to paste OLE object."

      case si = peSrvOlePasteLinkFailed : s = "Unable to paste link OLE object."
      case si = peSrvOpen : s = "File does not exist or is read protected."
      case si = peSrvPathNotFound : s = "Could not find requested path."
      case si = peSrvRead : s = "Disk error occurred while reading file."
      case si = peSrvRenameFailed : s = "Could not rename the specified file."
      case si = peSrvTextPasteFailed : s = "Unable to paste text."
      case si = peSrvUnknowError : s = "Internal error."
      case si = peSrvUseCountLimit : s = "Internal catalog usecount error."

      case si = peSrvWrite : s = "Error occurred while writing to file. Check disk space."
      case si = peStackOverflow : s = "Stack overflow. Your method or procedures are nested too deeply."
      case si = peStringTooLong : s = "String too long.  Cannot exceed %0di characters."
      case si = peSysCorrupt : s = "Data structure corruption."
      case si = peSysFileIO : s = "I/O error on a system file."
      case si = peSysFileOpen : s = "Cannot open a system file."
      case si = peSysReEntered : s = "System has been illegally re-entered."
      case si = peTCursorAttach : s = "Could not attach TCursor to another object."

      case si = peTCursorErr : s = "An error was triggered in the '%0ds' method on an object of TCursor type."
      case si = peTableCursorLimit : s = "Too many cursors per table."
      case si = peTableEncrypted : s = "Encrypted dBASE tables not supported."
      case si = peTableErr : s = "An error was triggered in the '%0ds' method of an object of Table type."
      case si = peTableExists : s = "Table already exists."
      case si = peTableFull : s = "Table is full."
      case si = peTableInUse : s = "Table is in use."
      case si = peTableLevelChanged : s = "Table level changed."

      case si = peTableMismatch : s = "Tables are not equivalent."
      case si = peTableOpen : s = "Table is open."
      case si = peTableProtected : s = "'%0ds' is already protected. Did not provide password."
      case si = peTableReadOnly : s = "Table is read only."
      case si = peTableSQL : s = "SQL replicas not supported."
      case si = peTableViewTableReadOnly : s = "Table is read only."
      case si = peTablelockLimit : s = "Too many table locks."
      case si = peTblNotImplemented : s = "'%0ds' has not been implemented."
      case si = peTblUtilInUse : s = "Cannot perform utility while table is in use."

      case si = peTextWontFit : s = "Text will not fit in field."
      case si = peTooFewSeries : s = "Surface chart needs two or more series."
      case si = peTooManyTables : s = "Crosstab or Query uses too many tables."
      case si = peToolsRead : s = "Could not read the style sheet."
      case si = peToolsWrite : s = "Could not save the style sheet."
      case si = peTransactionImbalance : s = "Transaction mismatch -- cannot commit changes"
      case si = peTransactionNA : s = "Transactions are not supported by this database."
      case si = peUIObjectErr : s = "An error was triggered in the '%0ds' method on an object of UIObject type."

      case si = peUnassigned : s = "You have tried to use an unassigned variable. A variable must be assigned a value before you can use it."
      case si = peUnboundXtab : s = "Crosstab has no defining table."
      case si = peUnknownDB : s = "Unknown database."
      case si = peUnknownDBType : s = "Unknown database type."
      case si = peUnknownDataBase : s = "The database or alias supplied for opening a TCursor was not known."
      case si = peUnknownDriver : s = "Driver not known to system."
      case si = peUnknownExtension : s = "Cannot recognize file extension."

      case si = peUnknownFieldName : s = "The specified field name is invalid."
      case si = peUnknownFieldNum : s = "The specified field number is invalid."
      case si = peUnknownFile : s = "Cannot open file."
      case si = peUnknownIndex : s = "%0ds %1ds is an unknown index."
      case si = peUnknownNetType : s = "Network type unknown."
      case si = peUnknownTableType : s = "Unknown table type."
      case si = peUnknownVersion : s = "Cannot read file -- version is too high."
      case si = peUnlockFailed : s = "Unlock failed."
      case si = peUnsupportedOption : s = "This printer does not support the setting: %0ds."

      case si = peUntranslatableCharacters : s = "Character(s) not supported by Table Language."
      case si = peUpdateNoIndex : s = "The Add or Sub routines require an indexed destination table in order to do updates."
      case si = peUseCount : s = "Table has too many users."
      case si = peValFieldModified : s = "Validity check field modified."
      case si = peValFileCorrupt : s = "Corrupt or missing .VAL file."
      case si = peValFileInvalid : s = ".VAL file is out of date."
      case si = peValidateData : s = "Should field constraints be checked?"

      case si = peVendInitFail : s = "Vendor initialization failed."
      case si = peWorkStationSessionLimit : s = "Too many sessions from this workstation."
      case si = peWriteErr : s = "Write failure."
      case si = peWriteOnlyProperty : s = "You do not have read access to this property. It is write only. It cannot be read."
      case si = peWrongDriverName : s = "Wrong driver name."
      case si = peWrongDriverType : s = "Wrong driver type."
      case si = peWrongDriverVer : s = "Wrong driver version."
      case si = peWrongObjectVersion : s = "Object could not be read. Continuing read."

      case si = peWrongSysVer : s = "Wrong system version."
      case si = peWrongTable : s = "Preferred report is not for this table. Generating a default report."
      case si = peXtabAnswerError : s = "Error in crosstab ANSWER table."
      case si = peXtabNotRunning : s = "Cannot save the table while the crosstab is not running."
      otherwise :
         s = "Error"  + string(si)  + "(unknown)"
   endSwitch



   ; ready
   return s


endMethod


;|EndMethod|#Library1|lookupErrors|

 lookupErrors % )(  ;|BeginMethod|#Library1|lookupEvent|
const
	s_Self = "lookupEvent"
   sRet_NotAvail= "nepoznat event"
endConst

method lookupEvent
               ( si SmallInt                                   ; var out - error string
                ) String                                       ; return - success flag
; copyright    : (C) 2008 by Norbert C. Maier, Germany
; version      : # 20070807.2006 # 20080123.1234
; function     : Return Event description
; note         : Useful for debug purposes
; called       : From
;                -

   var
      s
                               String
   endVar


   ; () translate
   s = sRet_NotAvail
   switch

      ; () ActionDataCommands constants
      case si = DataArriveRecord       : s = "DataArriveRecord"
      case si = DataBegin              : s = "DataBegin"
      case si = DataBeginEdit          : s = "DataBeginEdit"
      case si = DataBeginFirstField    : s = "DataBeginFirstField"
      case si = DataCancelRecord       : s = "DataCancelRecord"
      case si = DataDeleteRecord       : s = "DataDeleteRecord"
      case si = DataDesign             : s = "DataDesign"
      case si = DataDitto              : s = "DataDitto"
      case si = DataEnd                : s = "DataEnd"
      case si = DataEndEdit            : s = "DataEndEdit"
      case si = DataEndLastField       : s = "DataEndLastField"
      case si = DataFastBackward       : s = "DataFastBackward"
      case si = DataFastForward        : s = "DataFastForward"
      case si = DataHideDeleted        : s = "DataHideDeleted"
      case si = DataInsertRecord       : s = "DataInsertRecord"
      case si = DataLockRecord         : s = "DataLockRecord"
      case si = DataLookup             : s = "DataLookup"
      case si = DataLookupMove         : s = "DataLookupMove"
      case si = DataNextRecord         : s = "DataNextRecord"
      case si = DataNextSet            : s = "DataNextSet"
      case si = DataPostRecord         : s = "DataPostRecord"
      case si = DataPrint              : s = "DataPrint"
      case si = DataPriorRecord        : s = "DataPriorRecord"
      case si = DataPriorSet           : s = "DataPriorSet"
      case si = DataRecalc             : s = "DataRecalc"
      case si = DataRefresh            : s = "DataRefresh"
      case si = DataRefreshOutside     : s = "DataRefreshOutside"
      case si = DataSaveCrosstab       : s = "DataSaveCrosstab"
      case si = DataSearch             : s = "DataSearch"
      case si = DataSearchNext         : s = "DataSearchNext"
      case si = DataSearchRecord       : s = "DataSearchRecord"
      case si = DataSearchReplace      : s = "DataSearchReplace"
      case si = DataShowDeleted        : s = "DataShowDeleted"
      case si = DataTableView          : s = "DataTableView"
      case si = DataToggleDeleted      : s = "DataToggleDeleted"
      case si = DataToggleDeleteRecord : s = "DataToggleDeleteRecord"
      case si = DataToggleEdit         : s = "DataToggleEdit"
      case si = DataToggleLockRecord   : s = "DataToggleLockRecord"
      case si = DataUnDeleteRecord     : s = "DataUnDeleteRecord"
      case si = DataUnlockRecord       : s = "DataUnlockRecord"

      ; () ActionEditCommands constants
      case si = EditCommitField        : s = "EditCommitField"
      case si = EditCopySelection      : s = "EditCopySelection"
      case si = EditCopyToFile         : s = "EditCopyToFile"
      case si = EditCutSelection       : s = "EditCutSelection"
      case si = EditDeleteBeginLine    : s = "EditDeleteBeginLine"
      case si = EditDeleteEndLine      : s = "EditDeleteEndLine"
      case si = EditDeleteLeft         : s = "EditDeleteLeft"
      case si = EditDeleteLeftWord     : s = "EditDeleteLeftWord"
      case si = EditDeleteLine         : s = "EditDeleteLine"
      case si = EditDeleteRight        : s = "EditDeleteRight"
      case si = EditDeleteRightWord    : s = "EditDeleteRightWord"
      case si = EditDeleteSelection    : s = "EditDeleteSelection"
      case si = EditDeleteWord         : s = "EditDeleteWord"
      case si = EditDropDownList       : s = "EditDropDownList"
      case si = EditEnterFieldView     : s = "EditEnterFieldView"
      case si = EditEnterMemoView      : s = "EditEnterMemoView"
      case si = EditEnterPersistFieldView : s = "EditEnterPersistFieldView"
      ;case si = EditExitFieldView     : s = "EditExitFieldView"
      ;case si = EditExitMemoView      : s = "EditExitMemoView"
      ;case si = EditExitPersistField View : s = "View"
      case si = EditHelp               : s = "EditHelp"
      case si = EditInsertBlank        : s = "EditInsertBlank"
      case si = EditInsertLine         : s = "EditInsertLine"
      case si = EditInsertObject       : s = "EditInsertObject" ; (5.0)
      case si = EditLaunchServer       : s = "EditLaunchServer"
      case si = EditPaste              : s = "EditPaste"
      case si = EditPasteFromFile      : s = "EditPasteFromFile"
      case si = EditPasteLink          : s = "EditPasteLink" ; (5.0)
      case si = EditProperties         : s = "EditProperties"
      case si = EditReplace            : s = "EditReplace"
      case si = EditSaveCrosstab       : s = "EditSaveCrosstab" ; (5.0)
      case si = EditTextSearch         : s = "EditTextSearch"
      case si = EditToggleFieldView    : s = "EditToggleFieldView"
      case si = EditUndoField          : s = "EditUndoField"

      ; () ActionFieldCommands constants
      case si = FieldBackward          : s = "FieldBackward"
      case si = FieldDown              : s = "FieldDown"
      case si = FieldEnter             : s = "FieldEnter"
      case si = FieldFirst             : s = "FieldFirst"
      case si = FieldForward           : s = "FieldForward"
      case si = FieldGroupBackward     : s = "FieldGroupBackward"
      case si = FieldGroupForward      : s = "FieldGroupForward"
      case si = FieldLast              : s = "FieldLast"
      case si = FieldLeft              : s = "FieldLeft"
      case si = FieldNextPage          : s = "FieldNextPage"
      case si = FieldPriorPage         : s = "FieldPriorPage"
      case si = FieldRight             : s = "FieldRight"
      case si = FieldRotate            : s = "FieldRotate"
      case si = FieldUp                : s = "FieldUp"

      ; () ActionMoveCommands constants
      case si = MoveBegin              : s = "MoveBegin"
      case si = MoveBeginLine          : s = "MoveBeginLine"
      case si = MoveBottom             : s = "MoveBottom"
      case si = MoveBottomLeft         : s = "MoveBottomLeft"
      case si = MoveBottomRight        : s = "MoveBottomRight"
      case si = MoveDown               : s = "MoveDown"
      case si = MoveEnd                : s = "MoveEnd"
      case si = MoveEndLine            : s = "MoveEndLine"
      case si = MoveLeft               : s = "MoveLeft"
      case si = MoveLeftWord           : s = "MoveLeftWord"
      case si = MoveRight              : s = "MoveRight"
      case si = MoveRightWord          : s = "MoveRightWord"
      case si = MoveScrollDown         : s = "MoveScrollDown"
      case si = MoveScrollLeft         : s = "MoveScrollLeft"
      case si = MoveScrollPageDown     : s = "MoveScrollPageDown"
      case si = MoveScrollPageLeft     : s = "MoveScrollPageLeft"
      case si = MoveScrollPageRight    : s = "MoveScrollPageRight"
      case si = MoveScrollPageUp       : s = "MoveScrollPageUp"
      case si = MoveScrollRight        : s = "MoveScrollRight"
      case si = MoveScrollScreenDown   : s = "MoveScrollScreenDown"
      case si = MoveScrollScreenLeft   : s = "MoveScrollScreenLeft"
      case si = MoveScrollScreenRight  : s = "MoveScrollScreenRight"
      case si = MoveScrollScreenUp     : s = "MoveScrollScreenUp"
      case si = MoveScrollUp           : s = "MoveScrollUp"
      case si = MoveTop                : s = "MoveTop"
      case si = MoveTopLeft            : s = "MoveTopLeft"
      case si = MoveTopRight           : s = "MoveTopRight"
      case si = MoveUp                 : s = "MoveUp"

      ; () ActionSelectCommands constants
      case si = SelectBegin            : s = "SelectBegin"
      case si = SelectBeginLine        : s = "SelectBeginLine"
      case si = SelectBottom           : s = "SelectBottom"
      case si = SelectBottomLeft       : s = "SelectBottomLeft"
      case si = SelectBottomRight      : s = "SelectBottomRight"
      case si = SelectDown             : s = "SelectDown"
      case si = SelectEnd              : s = "SelectEnd"
      case si = SelectEndLine          : s = "SelectEndLine"
      case si = SelectLeft             : s = "SelectLeft"
      case si = SelectLeftWord         : s = "SelectLeftWord"
      case si = SelectRight            : s = "SelectRight"
      case si = SelectRightWord        : s = "SelectRightWord"
      case si = SelectScrollDown       : s = "SelectScrollDown"
      case si = SelectScrollLeft       : s = "SelectScrollLeft"
      case si = SelectScrollPageDown   : s = "SelectScrollPageDown"
      case si = SelectScrollPageLeft   : s = "SelectScrollPageLeft"
      case si = SelectScrollPageRight  : s = "SelectScrollPageRight"
      case si = SelectScrollPageUp     : s = "SelectScrollPageUp"
      case si = SelectScrollRight      : s = "SelectScrollRight"
      case si = SelectScrollScreenDown : s = "SelectScrollScreenDown"
      case si = SelectScrollScreenLeft : s = "SelectScrollScreenLeft"
      case si = SelectScrollScreenRight : s = "SelectScrollScreenRight"
      case si = SelectScrollScreenUp   : s = "SelectScrollScreenUp"
      case si = SelectScrollUp         : s = "SelectScrollUp"
      case si = SelectSelectAll        : s = "SelectSelectAll"
      case si = SelectTop              : s = "SelectTop"
      case si = SelectTopLeft          : s = "SelectTopLeft"
      case si = SelectTopRight         : s = "SelectTopRight"
      case si = SelectUp               : s = "SelectUp"


      ; () unknown
      otherwise :
         s = "Event"  + string(si)  + "unknown"

   endSwitch



   ; ready
   return s


endMethod


;|EndMethod|#Library1|lookupEvent|
 lookupEvent    |          b    ]                                                                           Ď .    4 A C:\Program Files (x86)\Paradox\Paradox\PDOXHome\winstyles.ft B  #Library1 POST >  ˙˙˙˙         ţ 
     ţ    ţ                           ˙  V   ą       Í  ˙˙˙˙                  ş            É                   d                       ˙˙˙˙    ¤                                                                Ń  É   Á           	CONTAINER     ň   Á      ˙˙˙˙Ď               ˙˙˙˙            d  \  b  ACTIVE     >       ˙˙˙˙Ď               ˙˙˙˙            ş  ˛      LASTMOUSECLICKED       \     ˙˙˙˙Ď               ˙˙˙˙              ˙      SUBJECT     á  ˛     ˙˙˙˙Ď               ˙˙˙˙            b  Z      LASTMOUSERIGHTCLICKED     <  ˙     ˙˙˙˙Ď               ˙˙˙˙                        SELF       Z     ˙˙˙˙Ď               ˙˙˙˙                	#LIBRARY1     Í  ¤     ˙˙˙˙Ď  ?             ˙˙˙˙[                                                                                                                                                                                                                                                                            ˙˙˙˙Í              \          9                                           S_SELF Ő  lookupErrors          SRET_NOTAVAIL Ő  nepoznat error         LOOKUPERRORS      Ő  $     Đ   METHOD_SELF   SI             ˙˙˙˙ă                                          &              Ů      C  METHOD_SELF    Đ      SI                           ˙˙˙˙Í              ×          ľ                                           S_SELF Ő  lookupEvent          SRET_NOTAVAIL Ő  nepoznat event         LOOKUPEVENT      Ő  %     Đ   METHOD_SELF   SI             ˙˙˙˙_                                                         ě      ˝  METHOD_SELF    Đ      SI        W      S  ˙˙˙Ő      S  ˙˙˙Ő                   r  ˙                                                                                                                  :  r    ˙    v. Â      
   á  Ä  ˙                                                                                                                                                                                     ŰĂ  ÷Ă  r          $        9Ť                  %  EŤ  EŤ                          v. é        čň˙˙˙    |        âŞ  ˙˙˙    *    
    %˙˙˙h   ˙˙˙ ¤   * Ş     
 Ŕ   %˙˙˙h   ˙˙˙ Č   * _Ş     
 ä   %˙˙˙h   ˙˙˙ ě   * 4Ş     
   %˙˙˙h   ˙˙˙   * 	Ş     
 ,  %˙˙˙h   ˙˙˙ 4  * ŢŠ     
 P  %˙˙˙h   ˙˙˙ X  * łŠ     
 t  %˙˙˙h   ˙˙˙ |  * Š     
   %˙˙˙h   ˙˙˙    * ]Š     
 ź  %˙˙˙h   ˙˙˙ Ä  * 2Š     
 ŕ  %˙˙˙h   ˙˙˙ č  * Š     
   %˙˙˙h   ˙˙˙   * Ü¨     
 (  %˙˙˙h   ˙˙˙ 0  * ą¨     
 L  %˙˙˙h   ˙˙˙ T  * ¨     
 p  %˙˙˙h   ˙˙˙ x  * [¨     
   %˙˙˙h   ˙˙˙   * 0¨     
 ¸  %˙˙˙h   ˙˙˙ Ŕ  * ¨     
 Ü  %˙˙˙h   ˙˙˙ ä  * Ú§     
    %˙˙˙h   ˙˙˙   * Ż§     
 $  %˙˙˙h   ˙˙˙ ,  * §     
 H  %˙˙˙h   ˙˙˙ P  * Y§     
 l  %˙˙˙h   ˙˙˙ t  * .§     
   %˙˙˙h   ˙˙˙   * §     
 ´  %˙˙˙h   ˙˙˙ ź  * ŘŚ     
 Ř  %˙˙˙h   ˙˙˙ ŕ  * ­Ś     
 ü  %˙˙˙h   ˙˙˙   * Ś     
    %˙˙˙h   ˙˙˙ (  * WŚ     
 D  %˙˙˙h   ˙˙˙ L  * ,Ś     
 h  %˙˙˙h   ˙˙˙ p  * Ś     
   %˙˙˙h   ˙˙˙ L  * ÖĽ     
   %˙˙˙h   ˙˙˙ p  * ŤĽ     
   %˙˙˙h   ˙˙˙ L  * Ľ     
 ¤  %˙˙˙h   ˙˙˙ p  * UĽ     
 Ź  %˙˙˙h   ˙˙˙ L  * *Ľ     
 ´  %˙˙˙h   ˙˙˙ p  * ˙¤     
 ź  %˙˙˙h   ˙˙˙ L  * Ô¤     
 Ä  %˙˙˙h   ˙˙˙ p  * Š¤     
 Ě  %˙˙˙h   ˙˙˙ p  * ~¤     
 Ô  %˙˙˙h   ˙˙˙ Ü  * S¤     
 ř  %˙˙˙h   ˙˙˙    * (¤     
   %˙˙˙h   ˙˙˙ $  * ýŁ     
 @  %˙˙˙h   ˙˙˙ H  * ŇŁ     
 d  %˙˙˙h   ˙˙˙ l  * §Ł     
   %˙˙˙h   ˙˙˙   * |Ł     
 Ź  %˙˙˙h   ˙˙˙ ´  * QŁ     
 Đ  %˙˙˙h   ˙˙˙ Ř  * &Ł     
 ô  %˙˙˙h   ˙˙˙ ü  * ű˘     
   %˙˙˙h   ˙˙˙    * Đ˘     
 <  %˙˙˙h   ˙˙˙ D  * Ľ˘     
 `  %˙˙˙h   ˙˙˙ h  * z˘     
   %˙˙˙h   ˙˙˙   * O˘     
 ¨  %˙˙˙h   ˙˙˙ °  * $˘     
 Ě  %˙˙˙h   ˙˙˙ Ô  * ůĄ     
 đ  %˙˙˙h   ˙˙˙ ř  * ÎĄ     
   %˙˙˙h   ˙˙˙   * ŁĄ     
 8  %˙˙˙h   ˙˙˙ @  * xĄ     
 \  %˙˙˙h   ˙˙˙ d  * MĄ     
   %˙˙˙h   ˙˙˙   * "Ą     
 ¤  %˙˙˙h   ˙˙˙ Ź  * ÷      
 Č  %˙˙˙h   ˙˙˙ Đ  * Ě      
 ě  %˙˙˙h   ˙˙˙ ô  * Ą      
   %˙˙˙h   ˙˙˙   * v      
 4  %˙˙˙h   ˙˙˙ <  * K      
 X  %˙˙˙h   ˙˙˙ `  *        
 |  %˙˙˙h   ˙˙˙   * ő     
    %˙˙˙h   ˙˙˙ ¨  * Ę     
 Ä  %˙˙˙h   ˙˙˙ Ě  *      
 č  %˙˙˙h   ˙˙˙ đ  * t     
 	  %˙˙˙h   ˙˙˙ 	  * I     
 0	  %˙˙˙h   ˙˙˙ 8	  *      
 T	  %˙˙˙h   ˙˙˙ \	  * ó     
 x	  %˙˙˙h   ˙˙˙ 	  * Č     
 	  %˙˙˙h   ˙˙˙ ¤	  *      
 Ŕ	  %˙˙˙h   ˙˙˙ Č	  * r     
 ä	  %˙˙˙h   ˙˙˙ ě	  * G     
 
  %˙˙˙h   ˙˙˙ 
  *      
 ,
  %˙˙˙h   ˙˙˙ 4
  * ń     
 P
  %˙˙˙h   ˙˙˙ X
  * Ć     
 t
  %˙˙˙h   ˙˙˙ |
  *      
 
  %˙˙˙h   ˙˙˙  
  * p     
 ź
  %˙˙˙h   ˙˙˙ Ä
  * E     
 ŕ
  %˙˙˙h   ˙˙˙ č
  *      
   %˙˙˙h   ˙˙˙   * ď     
 (  %˙˙˙h   ˙˙˙ 0  * Ä     
 L  %˙˙˙h   ˙˙˙ T  *      
 p  %˙˙˙h   ˙˙˙ x  * n     
   %˙˙˙h   ˙˙˙   * C     
 ¸  %˙˙˙h   ˙˙˙ Ŕ  *      
 Ü  %˙˙˙h   ˙˙˙ ä  * í     
    %˙˙˙h   ˙˙˙   * Â     
 $  %˙˙˙h   ˙˙˙ ,  *      
 H  %˙˙˙h   ˙˙˙ P  * l     
 l  %˙˙˙h   ˙˙˙ t  * A     
   %˙˙˙h   ˙˙˙   *      
 ´  %˙˙˙h   ˙˙˙ ź  * ë     
 Ř  %˙˙˙h   ˙˙˙ ŕ  * Ŕ     
 ü  %˙˙˙h   ˙˙˙   *      
    %˙˙˙h   ˙˙˙ (  * j     
 D  %˙˙˙h   ˙˙˙ L  * ?     
 h  %˙˙˙h   ˙˙˙ p  *      
   %˙˙˙h   ˙˙˙   * é     
 °  %˙˙˙h   ˙˙˙ ¸  * ž     
 Ô  %˙˙˙h   ˙˙˙ Ü  *      
 ř  %˙˙˙h   ˙˙˙    * h     
   %˙˙˙h   ˙˙˙ $  * =     
 @  %˙˙˙h   ˙˙˙ H  *      
 d  %˙˙˙h   ˙˙˙ l  * ç     
   %˙˙˙h   ˙˙˙   * ź     
 Ź  %˙˙˙h   ˙˙˙ ´  *      
 Đ  %˙˙˙h   ˙˙˙ Ř  * f     
 ô  %˙˙˙h   ˙˙˙ ü  * ;     
   %˙˙˙h   ˙˙˙    *      
 <  %˙˙˙h   ˙˙˙ D  * ĺ     
 `  %˙˙˙h   ˙˙˙ h  * ş     
   %˙˙˙h   ˙˙˙   *      
 ¨  %˙˙˙h   ˙˙˙ °  * d     
 Ě  %˙˙˙h   ˙˙˙ Ô  * 9     
 đ  %˙˙˙h   ˙˙˙ ř  *      
   %˙˙˙h   ˙˙˙   * ă     
 8  %˙˙˙h   ˙˙˙ @  * ¸     
 \  %˙˙˙h   ˙˙˙ d  *      
   %˙˙˙h   ˙˙˙   * b     
 ¤  %˙˙˙h   ˙˙˙ Ź  * 7     
 Č  %˙˙˙h   ˙˙˙ Đ  *      
 ě  %˙˙˙h   ˙˙˙ ô  * á     
   %˙˙˙h   ˙˙˙   * ś     
 4  %˙˙˙h   ˙˙˙ <  *      
 X  %˙˙˙h   ˙˙˙ `  * `     
 |  %˙˙˙h   ˙˙˙   * 5     
    %˙˙˙h   ˙˙˙ ¨  * 
     
 Ä  %˙˙˙h   ˙˙˙ Ě  * ß     
 č  %˙˙˙h   ˙˙˙ đ  * ´     
   %˙˙˙h   ˙˙˙   *      
 0  %˙˙˙h   ˙˙˙ 8  * ^     
 T  %˙˙˙h   ˙˙˙ \  * 3     
 x  %˙˙˙h   ˙˙˙   *      
   %˙˙˙h   ˙˙˙ ¤  * Ý     
 Ŕ  %˙˙˙h   ˙˙˙ Č  * ˛     
 ä  %˙˙˙h   ˙˙˙ ě  *      
   %˙˙˙h   ˙˙˙   * \     
 ,  %˙˙˙h   ˙˙˙ 4  * 1     
 P  %˙˙˙h   ˙˙˙ X  *      
 t  %˙˙˙h   ˙˙˙ |  * Ű     
   %˙˙˙h   ˙˙˙    * °     
 ź  %˙˙˙h   ˙˙˙ Ä  *      
 ŕ  %˙˙˙h   ˙˙˙ č  * Z     
   %˙˙˙h   ˙˙˙   * /     
 (  %˙˙˙h   ˙˙˙ 0  *      
 L  %˙˙˙h   ˙˙˙ T  * Ů     
 p  %˙˙˙h   ˙˙˙ x  * Ž     
   %˙˙˙h   ˙˙˙   *      
 ¸  %˙˙˙h   ˙˙˙ Ŕ  * X     
 Ü  %˙˙˙h   ˙˙˙ ä  * -     
    %˙˙˙h   ˙˙˙   *      
 $  %˙˙˙h   ˙˙˙ ,  * ×     
 H  %˙˙˙h   ˙˙˙ P  * Ź     
 l  %˙˙˙h   ˙˙˙ t  *      
   %˙˙˙h   ˙˙˙   * V     
 ´  %˙˙˙h   ˙˙˙ ź  * +     
 Ř  %˙˙˙h   ˙˙˙ ŕ  *       
 ü  %˙˙˙h   ˙˙˙   * Ő     
    %˙˙˙h   ˙˙˙ (  * Ş     
 D  %˙˙˙h   ˙˙˙ L  *      
 h  %˙˙˙h   ˙˙˙ p  * T     
   %˙˙˙h   ˙˙˙   * )     
 °  %˙˙˙h   ˙˙˙ ¸  * ţ     
 Ô  %˙˙˙h   ˙˙˙ Ü  * Ó     
 ř  %˙˙˙h   ˙˙˙    * ¨     
   %˙˙˙h   ˙˙˙ $  * }     
 @  %˙˙˙h   ˙˙˙ H  * R     
 d  %˙˙˙h   ˙˙˙ l  * '     
   %˙˙˙h   ˙˙˙   * ü     
 Ź  %˙˙˙h   ˙˙˙ ´  * Ń     
 Đ  %˙˙˙h   ˙˙˙ Ř  * Ś     
 ô  %˙˙˙h   ˙˙˙ ü  * {     
   %˙˙˙h   ˙˙˙    * P     
 <  %˙˙˙h   ˙˙˙ D  * %     
 `  %˙˙˙h   ˙˙˙ h  * ú     
   %˙˙˙h   ˙˙˙   * Ď     
 ¨  %˙˙˙h   ˙˙˙ °  * ¤     
 Ě  %˙˙˙h   ˙˙˙ Ô  * y     
 đ  %˙˙˙h   ˙˙˙ ř  * N     
   %˙˙˙h   ˙˙˙   * #     
 8  %˙˙˙h   ˙˙˙ @  * ř     
 \  %˙˙˙h   ˙˙˙ d  * Í     
   %˙˙˙h   ˙˙˙   * ˘     
 ¤  %˙˙˙h   ˙˙˙ Ź  * w     
 Č  %˙˙˙h   ˙˙˙ Đ  * L     
 ě  %˙˙˙h   ˙˙˙ ô  * !     
   %˙˙˙h   ˙˙˙   * ö     
 4  %˙˙˙h   ˙˙˙ <  * Ë     
 X  %˙˙˙h   ˙˙˙ `  *       
 |  %˙˙˙h   ˙˙˙   * u     
    %˙˙˙h   ˙˙˙ ¨  * J     
 Ä  %˙˙˙h   ˙˙˙ Ě  *      
 č  %˙˙˙h   ˙˙˙ đ  * ô     
   %˙˙˙h   ˙˙˙   * É     
 0  %˙˙˙h   ˙˙˙ 8  *      
 T  %˙˙˙h   ˙˙˙ \  * s     
 x  %˙˙˙h   ˙˙˙   * H     
   %˙˙˙h   ˙˙˙ ¤  *      
 Ŕ  %˙˙˙h   ˙˙˙ Č  * ň     
 ä  %˙˙˙h   ˙˙˙ ě  * Ç     
   %˙˙˙h   ˙˙˙   *      
 ,  %˙˙˙h   ˙˙˙ 4  * q     
 P  %˙˙˙h   ˙˙˙ X  * F     
 t  %˙˙˙h   ˙˙˙ |  *      
   %˙˙˙h   ˙˙˙    * đ     
 ź  %˙˙˙h   ˙˙˙ Ä  * Ĺ     
 ŕ  %˙˙˙h   ˙˙˙ č  *      
   %˙˙˙h   ˙˙˙   * o     
 (  %˙˙˙h   ˙˙˙ 0  * D     
 L  %˙˙˙h   ˙˙˙ T  *      
 p  %˙˙˙h   ˙˙˙ x  * î     
   %˙˙˙h   ˙˙˙   * Ă     
 ¸  %˙˙˙h   ˙˙˙ Ŕ  *      
 Ü  %˙˙˙h   ˙˙˙ ä  * m     
    %˙˙˙h   ˙˙˙   * B     
 $  %˙˙˙h   ˙˙˙ ,  *      
 H  %˙˙˙h   ˙˙˙ P  * ě     
 l  %˙˙˙h   ˙˙˙ t  * Á     
   %˙˙˙h   ˙˙˙ ä  *      
   %˙˙˙h   ˙˙˙    * k     
 ź  %˙˙˙h   ˙˙˙ Ä  * @     
 ŕ  %˙˙˙h   ˙˙˙ č  *      
   %˙˙˙h   ˙˙˙   * ę     
 (  %˙˙˙h   ˙˙˙ 0  * ż     
 L  %˙˙˙h   ˙˙˙ T  *      
 p  %˙˙˙h   ˙˙˙ x  * i     
   %˙˙˙h   ˙˙˙   * >     
 ¸  %˙˙˙h   ˙˙˙ Ŕ  *      
 Ü  %˙˙˙h   ˙˙˙ ä  * č     
     %˙˙˙h   ˙˙˙    * ˝     
 $   %˙˙˙h   ˙˙˙ ,   *      
 H   %˙˙˙h   ˙˙˙ P   * g     
 l   %˙˙˙h   ˙˙˙ t   * <     
    %˙˙˙h   ˙˙˙    *      
 ´   %˙˙˙h   ˙˙˙ ź   * ć     
 Ř   %˙˙˙h   ˙˙˙ ŕ   * ť     
 ü   %˙˙˙h   ˙˙˙ !  *      
  !  %˙˙˙h   ˙˙˙ (!  * e     
 D!  %˙˙˙h   ˙˙˙ L!  * :     
 h!  %˙˙˙h   ˙˙˙ p!  *      
 !  %˙˙˙h   ˙˙˙ !  * ä     
 °!  %˙˙˙h   ˙˙˙ ¸!  * š     
 Ô!  %˙˙˙h   ˙˙˙ Ü!  *      
 ř!  %˙˙˙h   ˙˙˙  "  * c     
 "  %˙˙˙h   ˙˙˙ $"  * 8     
 @"  %˙˙˙h   ˙˙˙ H"  *      
 d"  %˙˙˙h   ˙˙˙ l"  * â     
 "  %˙˙˙h   ˙˙˙ "  * ˇ     
 Ź"  %˙˙˙h   ˙˙˙ ´"  *      
 Đ"  %˙˙˙h   ˙˙˙ Ř"  * a     
 ô"  %˙˙˙h   ˙˙˙ ü"  * 6     
 #  %˙˙˙h   ˙˙˙  #  *      
 <#  %˙˙˙h   ˙˙˙ D#  * ŕ     
 `#  %˙˙˙h   ˙˙˙ h#  * ľ     
 #  %˙˙˙h   ˙˙˙ #  *      
 ¨#  %˙˙˙h   ˙˙˙ °#  * _     
 Ě#  %˙˙˙h   ˙˙˙ Ô#  * 4     
 đ#  %˙˙˙h   ˙˙˙ ř#  * 	     
 $  %˙˙˙h   ˙˙˙ $  * Ţ~     
 8$  %˙˙˙h   ˙˙˙ @$  * ł~     
 \$  %˙˙˙h   ˙˙˙ d$  * ~     
 $  %˙˙˙h   ˙˙˙ $  * ]~     
 ¤$  %˙˙˙h   ˙˙˙ Ź$  * 2~     
 Č$  %˙˙˙h   ˙˙˙ Đ$  * ~     
 ě$  %˙˙˙h   ˙˙˙ ô$  * Ü}     
 %  %˙˙˙h   ˙˙˙ %  * ą}     
 4%  %˙˙˙h   ˙˙˙ <%  * }     
 X%  %˙˙˙h   ˙˙˙ `%  * [}     
 |%  %˙˙˙h   ˙˙˙ %  * 0}     
  %  %˙˙˙h   ˙˙˙ ¨%  * }     
 Ä%  %˙˙˙h   ˙˙˙ Ě%  * Ú|     
 č%  %˙˙˙h   ˙˙˙ đ%  * Ż|     
 &  %˙˙˙h   ˙˙˙ T  * |     
 &  %˙˙˙h   ˙˙˙ &  * Y|     
 8&  %˙˙˙h   ˙˙˙ @&  * .|     
 \&  %˙˙˙h   ˙˙˙ d&  * |     
 &  %˙˙˙h   ˙˙˙ &  * Ř{     
 ¤&  %˙˙˙h   ˙˙˙ Ź&  * ­{     
 Č&  %˙˙˙h   ˙˙˙ Đ&  * {     
 ě&  %˙˙˙h   ˙˙˙ ô&  * W{     
 '  %˙˙˙h   ˙˙˙ '  * ,{     
 4'  %˙˙˙h   ˙˙˙ <'  * {     
 X'  %˙˙˙h   ˙˙˙ `'  * Öz     
 |'  %˙˙˙h   ˙˙˙ '  * Ťz     
  '  %˙˙˙h   ˙˙˙ ¨'  * z     
 Ä'  %˙˙˙h   ˙˙˙ Ě'  * Uz     
 č'  %˙˙˙h   ˙˙˙ đ'  * *z     
 (  %˙˙˙h   ˙˙˙ (  * ˙y     
 0(  %˙˙˙h   ˙˙˙ 8(  * Ôy     
 T(  %˙˙˙h   ˙˙˙ \(  * Šy     
 x(  %˙˙˙h   ˙˙˙ (  * ~y     
 (  %˙˙˙h   ˙˙˙ ¤(  * Sy     
 Ŕ(  %˙˙˙h   ˙˙˙ Č(  * (y     
 ä(  %˙˙˙h   ˙˙˙ ě(  * ýx     
 )  %˙˙˙h   ˙˙˙ )  * Ňx     
 ,)  %˙˙˙h   ˙˙˙ 4)  * §x     
 P)  %˙˙˙h   ˙˙˙ X)  * |x     
 t)  %˙˙˙h   ˙˙˙ |)  * Qx     
 )  %˙˙˙h   ˙˙˙  )  * &x     
 ź)  %˙˙˙h   ˙˙˙ Ä)  * űw     
 ŕ)  %˙˙˙h   ˙˙˙ č)  * Đw     
 *  %˙˙˙h   ˙˙˙ *  * Ľw     
 (*  %˙˙˙h   ˙˙˙ 0*  * zw     
 L*  %˙˙˙h   ˙˙˙ T*  * Ow     
 p*  %˙˙˙h   ˙˙˙ x*  * $w     
 *  %˙˙˙h   ˙˙˙ *  * ův     
 ¸*  %˙˙˙h   ˙˙˙ Ŕ*  * Îv     
 Ü*  %˙˙˙h   ˙˙˙ ä*  * Łv     
  +  %˙˙˙h   ˙˙˙ +  * xv     
 $+  %˙˙˙h   ˙˙˙ ,+  * Mv     
 H+  %˙˙˙h   ˙˙˙ P+  * "v     
 l+  %˙˙˙h   ˙˙˙ t+  * ÷u     
 +  %˙˙˙h   ˙˙˙ +  * Ěu     
 ´+  %˙˙˙h   ˙˙˙ ź+  * Ąu     
 Ř+  %˙˙˙h   ˙˙˙ ŕ+  * vu     
 ü+  %˙˙˙h   ˙˙˙ ,  * Ku     
  ,  %˙˙˙h   ˙˙˙ (,  *  u     
 D,  %˙˙˙h   ˙˙˙ L,  * őt     
 h,  %˙˙˙h   ˙˙˙ p,  * Ęt     
 ,  %˙˙˙h   ˙˙˙ ,  * t     
 °,  %˙˙˙h   ˙˙˙ ¸,  * tt     
 Ô,  %˙˙˙h   ˙˙˙ Ü,  * It     
 ř,  %˙˙˙h   ˙˙˙  -  * t     
 -  %˙˙˙h   ˙˙˙ $-  * ós     
 @-  %˙˙˙h   ˙˙˙ H-  * Čs     
 d-  %˙˙˙h   ˙˙˙ l-  * s     
 -  %˙˙˙h   ˙˙˙ -  * rs     
 Ź-  %˙˙˙h   ˙˙˙ ´-  * Gs     
 Đ-  %˙˙˙h   ˙˙˙ Ř-  * s     
 ô-  %˙˙˙h   ˙˙˙ ü-  * ńr     
 .  %˙˙˙h   ˙˙˙  .  * Ćr     
 <.  %˙˙˙h   ˙˙˙ D.  * r     
 `.  %˙˙˙h   ˙˙˙ h.  * pr     
 .  %˙˙˙h   ˙˙˙ .  * Er     
 ¨.  %˙˙˙h   ˙˙˙ °.  * r     
 Ě.  %˙˙˙h   ˙˙˙ Ô.  * ďq     
 đ.  %˙˙˙h   ˙˙˙ ř.  * Äq     
 /  %˙˙˙h   ˙˙˙ /  * q     
 8/  %˙˙˙h   ˙˙˙ @/  * nq     
 \/  %˙˙˙h   ˙˙˙ d/  * Cq     
 /  %˙˙˙h   ˙˙˙ /  * q     
 ¤/  %˙˙˙h   ˙˙˙ Ź/  * íp     
 Č/  %˙˙˙h   ˙˙˙ Đ/  * Âp     
 ě/  %˙˙˙h   ˙˙˙ ô/  * p     
 0  %˙˙˙h   ˙˙˙ 0  * lp     
 40  %˙˙˙h   ˙˙˙ <0  * Ap     
 X0  %˙˙˙h   ˙˙˙ `0  * p     
 |0  %˙˙˙h   ˙˙˙ 0  * ëo     
  0  %˙˙˙h   ˙˙˙ ¨0  * Ŕo     
 Ä0  %˙˙˙h   ˙˙˙ Ě0  * o     
 č0  %˙˙˙h   ˙˙˙ đ0  * jo     
 1  %˙˙˙h   ˙˙˙ 1  * ?o     
 01  %˙˙˙h   ˙˙˙ 81  * o     
 T1  %˙˙˙h   ˙˙˙ \1  * én     
 x1  %˙˙˙h   ˙˙˙ 1  * žn     
 1  %˙˙˙h   ˙˙˙ ¤1  * n     
 Ŕ1  %˙˙˙h   ˙˙˙ Č1  * hn     
 ä1  %˙˙˙h   ˙˙˙ ě1  * =n     
 2  %˙˙˙h   ˙˙˙ 2  * n     
 ,2  %˙˙˙h   ˙˙˙ 42  * çm     
 P2  %˙˙˙h   ˙˙˙ X2  * źm     
 t2  %˙˙˙h   ˙˙˙ |2  * m     
 2  %˙˙˙h   ˙˙˙  2  * fm     
 ź2  %˙˙˙h   ˙˙˙ Ä2  * ;m     
 ŕ2  %˙˙˙h   ˙˙˙ č2  * m     
 3  %˙˙˙h   ˙˙˙ 3  * ĺl     
 (3  %˙˙˙h   ˙˙˙ 03  * şl     
 L3  %˙˙˙h   ˙˙˙ T3  * l     
 p3  %˙˙˙h   ˙˙˙ x3  * dl     
 3  %˙˙˙h   ˙˙˙ 3  * 9l     
 ¸3  %˙˙˙h   ˙˙˙ Ŕ3  * l     
 Ü3  %˙˙˙h   ˙˙˙ ä3  * ăk     
  4  %˙˙˙h   ˙˙˙ 4  * ¸k     
 $4  %˙˙˙h   ˙˙˙ ,4  * k     
 H4  %˙˙˙h   ˙˙˙ P4  * bk     
 l4  %˙˙˙h   ˙˙˙ t4  * 7k     
 4  %˙˙˙h   ˙˙˙ 4  * k     
 ´4  %˙˙˙h   ˙˙˙ ź4  * áj     
 Ř4  %˙˙˙h   ˙˙˙ ŕ4  * śj     
 ü4  %˙˙˙h   ˙˙˙ 5  * j     
  5  %˙˙˙h   ˙˙˙ (5  * `j     
 D5  %˙˙˙h   ˙˙˙ L5  * 5j     
 h5  %˙˙˙h   ˙˙˙ p5  * 
j     
 5  %˙˙˙h   ˙˙˙ 5  * ßi     
 °5  %˙˙˙h   ˙˙˙ ¸5  * ´i     
 Ô5  %˙˙˙h   ˙˙˙ Ü5  * i     
 ř5  %˙˙˙h   ˙˙˙  6  * ^i     
 6  %˙˙˙h   ˙˙˙ $6  * 3i     
 @6  %˙˙˙h   ˙˙˙ H6  * i     
 d6  %˙˙˙h   ˙˙˙ l6  * Ýh     
 6  %˙˙˙h   ˙˙˙ 6  * ˛h     
 Ź6  %˙˙˙h   ˙˙˙ ´6  * h     
 Đ6  %˙˙˙h   ˙˙˙ Ř6  * \h     
 ô6  %˙˙˙h   ˙˙˙ ü6  * 1h     
 7  %˙˙˙h   ˙˙˙  7  * h     
 <7  %˙˙˙h   ˙˙˙ D7  * Űg     
 `7  %˙˙˙h   ˙˙˙ h7  * °g     
 7  %˙˙˙h   ˙˙˙ 7  * g     
 ¨7  %˙˙˙h   ˙˙˙ °7  * Zg     
 Ě7  %˙˙˙h   ˙˙˙ Ô7  * /g     
 đ7  %˙˙˙h   ˙˙˙ ř7  * g     
 8  %˙˙˙h   ˙˙˙ 8  * Ůf     
 88  %˙˙˙h   ˙˙˙ @8  * Žf     
 \8  %˙˙˙h   ˙˙˙ d8  * f     
 8  %˙˙˙h   ˙˙˙ 8  * Xf     
 ¤8  %˙˙˙h   ˙˙˙ Ź  * -f     
 Ź8  %˙˙˙h   ˙˙˙ ´8  * f     
 Đ8  %˙˙˙h   ˙˙˙ Ř8  * ×e     
 ô8  %˙˙˙h   ˙˙˙ ü8  * Źe     
 9  %˙˙˙h   ˙˙˙  9  * e     
 <9  %˙˙˙h   ˙˙˙ D9  * Ve     
 `9  %˙˙˙h   ˙˙˙ h9  * +e     
 9  %˙˙˙h   ˙˙˙ 9  *  e     
 ¨9  %˙˙˙h   ˙˙˙ °9  * Őd     
 Ě9  %˙˙˙h   ˙˙˙ Ô9  * Şd     
 đ9  %˙˙˙h   ˙˙˙ ř9  * d     
 :  %˙˙˙h   ˙˙˙ :  * Td     
 8:  %˙˙˙h   ˙˙˙ @:  * )d     
 \:  %˙˙˙h   ˙˙˙ d:  * ţc     
 :  %˙˙˙h   ˙˙˙ :  * Óc     
 ¤:  %˙˙˙h   ˙˙˙ Ź:  * ¨c     
 Č:  %˙˙˙h   ˙˙˙ Đ:  * }c     
 ě:  %˙˙˙h   ˙˙˙ ô:  * Rc     
 ;  %˙˙˙h   ˙˙˙ ;  * 'c     
 4;  %˙˙˙h   ˙˙˙ <;  * üb     
 X;  %˙˙˙h   ˙˙˙ `;  * Ńb     
 |;  %˙˙˙h   ˙˙˙ ;  * Śb     
  ;  %˙˙˙h   ˙˙˙ ¨;  * {b     
 Ä;  %˙˙˙h   ˙˙˙ Ě;  * Pb     
 č;  %˙˙˙h   ˙˙˙ đ;  * %b     
 <  %˙˙˙h   ˙˙˙ <  * úa     
 0<  %˙˙˙h   ˙˙˙ 8<  * Ďa     
 T<  %˙˙˙h   ˙˙˙ \<  * ¤a     
 x<  %˙˙˙h   ˙˙˙ <  * ya     
 <  %˙˙˙h   ˙˙˙ ¤<  * Na     
 Ŕ<  %˙˙˙h   ˙˙˙ Č<  * #a     
 ä<  %˙˙˙h   ˙˙˙ ě<  * ř`     
 =  %˙˙˙h   ˙˙˙ =  * Í`     
 ,=  %˙˙˙h   ˙˙˙ 4=  * ˘`     
 P=  %˙˙˙h   ˙˙˙ X=  * w`     
 t=  %˙˙˙h   ˙˙˙ |=  * L`     
 =  %˙˙˙h   ˙˙˙  =  * !`     
 ź=  %˙˙˙h   ˙˙˙ Ä=  * ö_     
 ŕ=  %˙˙˙h   ˙˙˙ č=  * Ë_     
 >  %˙˙˙h   ˙˙˙ >  *  _     
 (>  %˙˙˙h   ˙˙˙ >  * u_     
 0>  %˙˙˙h   ˙˙˙ 8>  * J_     
 T>  %˙˙˙h   ˙˙˙ \>  * _     
 x>  %˙˙˙h   ˙˙˙ >  * ô^     
 >  %˙˙˙h   ˙˙˙ ¤>  * É^     
 Ŕ>  %˙˙˙h   ˙˙˙ Č>  * ^     
 ä>  %˙˙˙h   ˙˙˙ ě>  * s^     
 ?  %˙˙˙h   ˙˙˙ ?  * H^     
 ,?  %˙˙˙h   ˙˙˙ 4?  * ^     
 P?  %˙˙˙h   ˙˙˙ X?  * ň]     
 t?  %˙˙˙h   ˙˙˙ |?  * Ç]     
 ?  %˙˙˙h   ˙˙˙  ?  * ]     
 ź?  %˙˙˙h   ˙˙˙  ?  * q]     
 Ä?  %˙˙˙h   ˙˙˙ Ě?  * F]     
 č?  %˙˙˙h   ˙˙˙ đ?  * ]     
 @  %˙˙˙h   ˙˙˙ @  * đ\     
 0@  %˙˙˙h   ˙˙˙ 8@  * Ĺ\     
 T@  %˙˙˙h   ˙˙˙ \@  * \     
 x@  %˙˙˙h   ˙˙˙ @  * o\     
 @  %˙˙˙h   ˙˙˙ ¤@  * D\     
 Ŕ@  %˙˙˙h   ˙˙˙ Č@  * \     
 ä@  %˙˙˙h   ˙˙˙ ě@  * î[     
 A  %˙˙˙h   ˙˙˙ A  * Ă[     
 ,A  %˙˙˙h   ˙˙˙ 4A  * [     
 PA  %˙˙˙h   ˙˙˙ XA  * m[     
 tA  %˙˙˙h   ˙˙˙ |A  * B[     
 A  %˙˙˙h   ˙˙˙  A  * [     
 źA  %˙˙˙h   ˙˙˙ ÄA  * ěZ     
 ŕA  %˙˙˙h   ˙˙˙ čA  * ÁZ     
 B  %˙˙˙h   ˙˙˙ B  * Z     
 (B  %˙˙˙h   ˙˙˙ 0B  * kZ     
 LB  %˙˙˙h   ˙˙˙ TB  * @Z     
 pB  %˙˙˙h   ˙˙˙ xB  * Z     
 B  %˙˙˙h   ˙˙˙ B  * ęY     
 ¸B  %˙˙˙h   ˙˙˙ ŔB  * żY     
 ÜB  %˙˙˙h   ˙˙˙ äB  * Y     
  C  %˙˙˙h   ˙˙˙ C  * iY     
 $C  %˙˙˙h   ˙˙˙ ,C  * >Y     
 HC  %˙˙˙h   ˙˙˙ PC  * Y     
 lC  %˙˙˙h   ˙˙˙ tC  * čX     
 C  %˙˙˙h   ˙˙˙ C  * ˝X     
 ´C  %˙˙˙h   ˙˙˙ źC  * X     
 ŘC  %˙˙˙h   ˙˙˙ ŕC  * gX     
 üC  %˙˙˙h   ˙˙˙ D  * <X     
  D  %˙˙˙h   ˙˙˙ (D  * X     
 DD  %˙˙˙h   ˙˙˙ LD  * ćW     
 hD  %˙˙˙h   ˙˙˙ pD  * ťW     
 D  %˙˙˙h   ˙˙˙ D  * W     
 °D  %˙˙˙h   ˙˙˙ ¸D  * eW     
 ÔD  %˙˙˙h   ˙˙˙ ÜD  * :W     
 řD  %˙˙˙h   ˙˙˙  E  * W     
 E  %˙˙˙h   ˙˙˙ $E  * äV     
 @E  %˙˙˙h   ˙˙˙ HE  * šV     
 dE  %˙˙˙h   ˙˙˙ lE  * V     
 E  %˙˙˙h   ˙˙˙ E  * cV     
 ŹE  %˙˙˙h   ˙˙˙ ´E  * 8V     
 ĐE  %˙˙˙h   ˙˙˙ ŘE  * V     
 ôE  %˙˙˙h   ˙˙˙ üE  * âU     
 F  %˙˙˙h   ˙˙˙  F  * ˇU     
 <F  %˙˙˙h   ˙˙˙ DF  * U     
 `F  %˙˙˙h   ˙˙˙ hF  * aU     
 F  %˙˙˙h   ˙˙˙ F  * 6U     
 ¨F  %˙˙˙h   ˙˙˙ °F  * U     
 ĚF  %˙˙˙h   ˙˙˙ ÔF  * ŕT     
 đF  %˙˙˙h   ˙˙˙ řF  * ľT     
 G  %˙˙˙h   ˙˙˙ ÔF  * T     
 G  %˙˙˙h   ˙˙˙ řF  * _T     
 $G  %˙˙˙h   ˙˙˙ ÔF  * 4T     
 ,G  %˙˙˙h   ˙˙˙ řF  * 	T     
 4G  %˙˙˙h   ˙˙˙ ÔF  * ŢS     
 <G  %˙˙˙h   ˙˙˙ řF  * łS     
 DG  %˙˙˙h   ˙˙˙ ÔF  * S     
 LG  %˙˙˙h   ˙˙˙ řF  * ]S     
 TG  %˙˙˙h   ˙˙˙ řF  * 2S     
 \G  %˙˙˙h   ˙˙˙ dG  * S     
 G  %˙˙˙h   ˙˙˙ G  * ÜR     
 ¤G  %˙˙˙h   ˙˙˙ ŹG  * ąR     
 ČG  %˙˙˙h   ˙˙˙ ĐG  * R     
 ěG  %˙˙˙h   ˙˙˙ ôG  * [R     
 H  %˙˙˙h   ˙˙˙ H  * 0R     
 4H  %˙˙˙h   ˙˙˙ <H  * R     
 XH  %˙˙˙h   ˙˙˙ `H  * ÚQ     
 |H  %˙˙˙h   ˙˙˙ H  * ŻQ     
  H  %˙˙˙h   ˙˙˙ ¨H  * Q     
 ÄH  %˙˙˙h   ˙˙˙ ĚH  * YQ     
 čH  %˙˙˙h   ˙˙˙ đH  * .Q     
 I  %˙˙˙h   ˙˙˙ I  * Q     
 0I  %˙˙˙h   ˙˙˙ 8I  * ŘP     
 TI  %˙˙˙h   ˙˙˙ \I  * ­P     
 xI  %˙˙˙h   ˙˙˙ I  * P     
 I  %˙˙˙h   ˙˙˙ ¤I  * WP     
 ŔI  %˙˙˙h   ˙˙˙ ČI  * ,P     
 äI  %˙˙˙h   ˙˙˙ ěI  * P     
 J  %˙˙˙h   ˙˙˙ J  * ÖO     
 ,J  %˙˙˙h   ˙˙˙ 4J  * ŤO     
 PJ  %˙˙˙h   ˙˙˙ XJ  * O     
 tJ  %˙˙˙h   ˙˙˙ |J  * UO     
 J  %˙˙˙h   ˙˙˙  J  * *O     
 źJ  %˙˙˙h   ˙˙˙ ÄJ  * ˙N     
 ŕJ  %˙˙˙h   ˙˙˙ čJ  * ÔN     
 K  %˙˙˙h   ˙˙˙ K  * ŠN     
 (K  %˙˙˙h   ˙˙˙ 0K  * ~N     
 LK  %˙˙˙h   ˙˙˙ TK  * SN     
 pK  %˙˙˙h   ˙˙˙ xK  * (N     
 K  %˙˙˙h   ˙˙˙ K  * ýM     
 ¸K  %˙˙˙h   ˙˙˙ ŔK  * ŇM     
 ÜK  %˙˙˙h   ˙˙˙ äK  * §M     
  L  %˙˙˙h   ˙˙˙ L  * |M     
 $L  %˙˙˙h   ˙˙˙ ,L  * QM     
 HL  %˙˙˙h   ˙˙˙ PL  * &M     
 lL  %˙˙˙h   ˙˙˙ tL  * űL     
 L  %˙˙˙h   ˙˙˙ L  * ĐL     
 ´L  %˙˙˙h   ˙˙˙ źL  * ĽL     
 ŘL  %˙˙˙h   ˙˙˙ ŕL  * zL     
 üL  %˙˙˙h   ˙˙˙ M  * OL     
  M  %˙˙˙h   ˙˙˙ (M  * $L     
 DM  %˙˙˙h   ˙˙˙ LM  * ůK     
 hM  %˙˙˙h   ˙˙˙ pM  * ÎK     
 M  %˙˙˙h   ˙˙˙ M  * ŁK     
 °M  %˙˙˙h   ˙˙˙ ¸M  * xK     
 ÔM  %˙˙˙h   ˙˙˙ ÜM  * MK     
 řM  %˙˙˙h   ˙˙˙  N  * "K     
 N  %˙˙˙h   ˙˙˙ l-  * ÷J     
 $N  %˙˙˙h   ˙˙˙ ,N  * ĚJ     
 HN  %˙˙˙h   ˙˙˙ PN  * ĄJ     
 lN  %˙˙˙h   ˙˙˙ tN  * vJ     
 N  %˙˙˙h   ˙˙˙ N  * KJ     
 ´N  %˙˙˙h   ˙˙˙ źN  *  J     
 ŘN  %˙˙˙h   ˙˙˙ ŕN  * őI     
 üN  %˙˙˙h   ˙˙˙ O  * ĘI     
  O  %˙˙˙h   ˙˙˙ (O  * I     
 DO  %˙˙˙h   ˙˙˙ LO  * tI     
 hO  %˙˙˙h   ˙˙˙ pO  * II     
 O  %˙˙˙h   ˙˙˙ O  * I     
 °O  %˙˙˙h   ˙˙˙ ¸O  * óH     
 ÔO  %˙˙˙h   ˙˙˙ ÜO  * ČH     
 řO  %˙˙˙h   ˙˙˙  P  * H     
 P  %˙˙˙h   ˙˙˙ $P  * rH     
 @P  %˙˙˙h   ˙˙˙ HP  * GH     
 dP  %˙˙˙h   ˙˙˙ lP  * H     
 P  %˙˙˙h   ˙˙˙ P  * ńG     
 ŹP  %˙˙˙h   ˙˙˙ ´P  * ĆG     
 ĐP  %˙˙˙h   ˙˙˙ ŘP  * G     
 ôP  %˙˙˙h   ˙˙˙ üP  * pG     
 Q  %˙˙˙h   ˙˙˙  Q  * EG     
 <Q  %˙˙˙h   ˙˙˙ DQ  * G     
 `Q  %˙˙˙h   ˙˙˙ hQ  * ďF     
 Q  %˙˙˙h   ˙˙˙ Q  * ÄF     
 ¨Q  %˙˙˙h   ˙˙˙ °Q  * F     
 ĚQ  %˙˙˙h   ˙˙˙ ÔQ  * nF     
 đQ  %˙˙˙h   ˙˙˙ řQ  * CF     
 R  %˙˙˙h   ˙˙˙ R  * F     
 8R  %˙˙˙h   ˙˙˙ @R  * íE     
 \R  %˙˙˙h   ˙˙˙ dR  * ÂE     
 R  %˙˙˙h   ˙˙˙ R  * E     
 ¤R  %˙˙˙h   ˙˙˙ ŹR  * lE     
 ČR  %˙˙˙h   ˙˙˙ ĐR  * AE     
 ěR  %˙˙˙h   ˙˙˙ ôR  * E     
 S  %˙˙˙h   ˙˙˙ S  * ëD     
 4S  %˙˙˙h   ˙˙˙ <S  * ŔD     
 XS  %˙˙˙h   ˙˙˙ `S  * D     
 |S  %˙˙˙h   ˙˙˙ S  * jD     
  S  %˙˙˙h   ˙˙˙ ¨S  * ?D     
 ÄS  %˙˙˙h   ˙˙˙ ĚS  * D     
 čS  %˙˙˙h   ˙˙˙ đS  * éC     
 T  %˙˙˙h   ˙˙˙ T  * žC     
 0T  %˙˙˙h   ˙˙˙ 8T  * C     
 TT  %˙˙˙h   ˙˙˙ \T  * hC     
 xT  %˙˙˙h   ˙˙˙ T  * =C     
 T  %˙˙˙h   ˙˙˙    * C     
 ¤T  %˙˙˙h   ˙˙˙ ŹT  * çB     
 ČT  %˙˙˙h   ˙˙˙ ĐT  * źB     
 ěT  %˙˙˙h   ˙˙˙ ôT  * B     
 U  %˙˙˙h   ˙˙˙ U  * fB     
 4U  %˙˙˙h   ˙˙˙ <U  * ;B     
 XU  %˙˙˙h   ˙˙˙ T3  * B     
 `U  %˙˙˙h   ˙˙˙ hU  * ĺA     
 U  %˙˙˙h   ˙˙˙ U  * şA     
 ¨U  %˙˙˙h   ˙˙˙ °U  * A     
 ĚU  %˙˙˙h   ˙˙˙ ÔU  * dA     
 đU  %˙˙˙h   ˙˙˙ řU  * 9A     
 V  %˙˙˙h   ˙˙˙ V  * A     
 8V  %˙˙˙h   ˙˙˙ @V  * ă@     
 \V  %˙˙˙h   ˙˙˙ dV  * ¸@     
 V  %˙˙˙h   ˙˙˙ V  * @     
 ¤V  %˙˙˙h   ˙˙˙ ŹV  * b@     
 ČV  %˙˙˙h   ˙˙˙ ĐV  * 7@     
 ěV  %˙˙˙h   ˙˙˙ ôV  * @     
 W  %˙˙˙h   ˙˙˙ W  * á?     
 4W  %˙˙˙h   ˙˙˙ <W  * ś?     
 XW  %˙˙˙h   ˙˙˙ `W  * ?     
 |W  %˙˙˙h   ˙˙˙ W  * `?     
  W  %˙˙˙h   ˙˙˙ ¨W  * 5?     
 ÄW  %˙˙˙h   ˙˙˙ ĚW  * 
?     
 čW  %˙˙˙h   ˙˙˙ đW  * ß>     
 X  %˙˙˙h   ˙˙˙ X  * ´>     
 0X  %˙˙˙h   ˙˙˙ 8X  * >     
 TX  %˙˙˙h   ˙˙˙ \X  * ^>     
 xX  %˙˙˙h   ˙˙˙ X  * 3>     
 X  %˙˙˙h   ˙˙˙ ¤X  * >     
 ŔX  %˙˙˙h   ˙˙˙ ČX  * Ý=     
 äX  %˙˙˙h   ˙˙˙ ěX  * ˛=     
 Y  %˙˙˙h   ˙˙˙ Y  * =     
 ,Y  %˙˙˙h   ˙˙˙ 4Y  * \=     
 PY  %˙˙˙h   ˙˙˙ XY  * 1=     
 tY  %˙˙˙h   ˙˙˙ |Y  * =     
 Y  %˙˙˙h   ˙˙˙  Y  * Ű<     
 źY  %˙˙˙h   ˙˙˙ ÄY  * °<     
 ŕY  %˙˙˙h   ˙˙˙ čY  * <     
 Z  %˙˙˙h   ˙˙˙ Z  * Z<     
 (Z  %˙˙˙h   ˙˙˙ 0Z  * /<     
 LZ  %˙˙˙h   ˙˙˙ TZ  * <     
 pZ  %˙˙˙h   ˙˙˙ xZ  * Ů;     
 Z  %˙˙˙h   ˙˙˙ Z  * Ž;     
 ¸Z  %˙˙˙h   ˙˙˙ ŔZ  * ;     
 ÜZ  %˙˙˙h   ˙˙˙ äZ  * X;     
  [  %˙˙˙h   ˙˙˙ [  * -;     
 $[  %˙˙˙h   ˙˙˙ ,[  * ;     
 H[  %˙˙˙h   ˙˙˙ P[  * ×:     
 l[  %˙˙˙h   ˙˙˙ t[  * Ź:     
 [  %˙˙˙h   ˙˙˙ [  * :     
 ´[  %˙˙˙h   ˙˙˙ ź[  * V:     
 Ř[  %˙˙˙h   ˙˙˙ ŕ[  * +:     
 ü[  %˙˙˙h   ˙˙˙ \  *  :     
  \  %˙˙˙h   ˙˙˙ (\  * Ő9     
 D\  %˙˙˙h   ˙˙˙ L\  * Ş9     
 h\  %˙˙˙h   ˙˙˙ p\  * 9     
 \  %˙˙˙h   ˙˙˙ \  * T9     
 °\  %˙˙˙h   ˙˙˙ ¸\  * )9     
 Ô\  %˙˙˙h   ˙˙˙ Ü\  * ţ8     
 ř\  %˙˙˙h   ˙˙˙  ]  * Ó8     
 ]  %˙˙˙h   ˙˙˙ $]  * ¨8     
 @]  %˙˙˙h   ˙˙˙ H]  * }8     
 d]  %˙˙˙h   ˙˙˙ l]  * R8     
 ]  %˙˙˙h   ˙˙˙ ]  * '8     
 Ź]  %˙˙˙h   ˙˙˙ ´]  * ü7     
 Đ]  %˙˙˙h   ˙˙˙ Ř]  * Ń7     
 ô]  %˙˙˙h   ˙˙˙ ü]  * Ś7     
 ^  %˙˙˙h   ˙˙˙  ^  * {7     
 <^  %˙˙˙h   ˙˙˙ D^  * P7     
 `^  %˙˙˙h   ˙˙˙ h^  * %7     
 ^  %˙˙˙h   ˙˙˙ ^  * ú6     
 ¨^  %˙˙˙h   ˙˙˙ °^  * Ď6     
 Ě^  %˙˙˙h   ˙˙˙ Ô^  * ¤6     
 đ^  %˙˙˙h   ˙˙˙ ř^  * y6     
 _  %˙˙˙h   ˙˙˙ _  * N6     
 8_  %˙˙˙h   ˙˙˙ @_  * #6     
 \_  %˙˙˙h   ˙˙˙ d_  * ř5     
 _  %˙˙˙h   ˙˙˙ _  * Í5     
 ¤_  %˙˙˙h   ˙˙˙ d_  * ˘5     
 Ź_  %˙˙˙h   ˙˙˙ _  * w5     
 ´_  %˙˙˙h   ˙˙˙ d_  * L5     
 ź_  %˙˙˙h   ˙˙˙ _  * !5     
 Ä_  %˙˙˙h   ˙˙˙ d_  * ö4     
 Ě_  %˙˙˙h   ˙˙˙ _  * Ë4     
 Ô_  %˙˙˙h   ˙˙˙ d_  *  4     
 Ü_  %˙˙˙h   ˙˙˙ _  * u4     
 ä_  %˙˙˙h   ˙˙˙ _  * J4     
 ě_  %˙˙˙h   ˙˙˙ ô_  * 4     
 `  %˙˙˙h   ˙˙˙ `  * ô3     
 4`  %˙˙˙h   ˙˙˙ <`  * É3     
 X`  %˙˙˙h   ˙˙˙ ``  * 3     
 |`  %˙˙˙h   ˙˙˙ `  * s3     
  `  %˙˙˙h   ˙˙˙ ¨`  * H3     
 Ä`  %˙˙˙h   ˙˙˙ Ě`  * 3     
 č`  %˙˙˙h   ˙˙˙ đ`  * ň2     
 a  %˙˙˙h   ˙˙˙ a  * Ç2     
 0a  %˙˙˙h   ˙˙˙ 8a  * 2     
 Ta  %˙˙˙h   ˙˙˙ \a  * q2     
 xa  %˙˙˙h   ˙˙˙ a  * F2     
 a  %˙˙˙h   ˙˙˙ ¤a  * 2     
 Ŕa  %˙˙˙h   ˙˙˙ Ča  * đ1     
 äa  %˙˙˙h   ˙˙˙ ěa  * Ĺ1     
 b  %˙˙˙h   ˙˙˙ b  * 1     
 ,b  %˙˙˙h   ˙˙˙ 4b  * o1     
 Pb  %˙˙˙h   ˙˙˙ Xb  * D1     
 tb  %˙˙˙h   ˙˙˙ |b  * 1     
 b  %˙˙˙h   ˙˙˙  b  * î0     
 źb  %˙˙˙h   ˙˙˙ Äb  * Ă0     
 ŕb  %˙˙˙h   ˙˙˙ čb  * 0     
 c  %˙˙˙h   ˙˙˙ c  * m0     
 (c  %˙˙˙h   ˙˙˙ 0c  * B0     
 Lc  %˙˙˙h   ˙˙˙ Tc  * 0     
 pc  %˙˙˙h   ˙˙˙ xc  * ě/     
 c  %˙˙˙h   ˙˙˙ c  * Á/     
 ¸c  %˙˙˙h   ˙˙˙ Ŕc  * /     
 Üc  %˙˙˙h   ˙˙˙ äc  * k/     
  d  %˙˙˙h   ˙˙˙ d  * @/     
 $d  %˙˙˙h   ˙˙˙ ,d  * /     
 Hd  %˙˙˙h   ˙˙˙ Pd  * ę.     
 ld  %˙˙˙h   ˙˙˙ td  * ż.     
 d  %˙˙˙h   ˙˙˙ td  * .     
 d  %˙˙˙h   ˙˙˙ td  * i.     
  d  %˙˙˙h   ˙˙˙ td  * >.     
 ¨d  %˙˙˙h   ˙˙˙ °d  * .     
 Ěd  %˙˙˙h   ˙˙˙ Ôd  * č-     
 đd  %˙˙˙h   ˙˙˙ řd  * ˝-     
 e  %˙˙˙h   ˙˙˙ e  * -     
 8e  %˙˙˙h   ˙˙˙ @e  * g-     
 \e  %˙˙˙h   ˙˙˙ de  * <-     
 e  %˙˙˙h   ˙˙˙ td  * -     
 e  %˙˙˙h   ˙˙˙ e  * ć,     
 Źe  %˙˙˙h   ˙˙˙ ´e  * ť,     
 Đe  %˙˙˙h   ˙˙˙ Ře  * ,     
 ôe  %˙˙˙h   ˙˙˙ üe  * e,     
 f  %˙˙˙h   ˙˙˙  f  * :,     
 <f  %˙˙˙h   ˙˙˙ Df  * ,     
 `f  %˙˙˙h   ˙˙˙ hf  * ä+     
 f  %˙˙˙h   ˙˙˙ f  * š+     
 ¨f  %˙˙˙h   ˙˙˙ °f  * +     
 Ěf  %˙˙˙h   ˙˙˙ Ôf  * c+     
 đf  %˙˙˙h   ˙˙˙ řf  * 8+     
 g  %˙˙˙h   ˙˙˙ g  * +     
 8g  %˙˙˙h   ˙˙˙ td  * â*     
 @g  %˙˙˙h   ˙˙˙ Hg  * ˇ*     
 dg  %˙˙˙h   ˙˙˙ lg  * *     
 g  %˙˙˙h   ˙˙˙ g  * a*     
 Źg  %˙˙˙h   ˙˙˙ ´g  * 6*     
 Đg  %˙˙˙h   ˙˙˙ Řg  * *     
 ôg  %˙˙˙h   ˙˙˙ üg  * ŕ)     
 h  %˙˙˙h   ˙˙˙  h  * ľ)     
 <h  %˙˙˙h   ˙˙˙ Dh  * )     
 `h  %˙˙˙h   ˙˙˙ hh  * _)     
 h  %˙˙˙h   ˙˙˙ h  * 4)     
 ¨h  %˙˙˙h   ˙˙˙ °h  * 	)     
 Ěh  %˙˙˙h   ˙˙˙ Ôh  * Ţ(     
 đh  %˙˙˙h   ˙˙˙ řh  * ł(     
 i  %˙˙˙h   ˙˙˙ i  * (     
 8i  %˙˙˙h   ˙˙˙ @i  * ](     
 \i  %˙˙˙h   ˙˙˙ di  * 2(     
 i  %˙˙˙h   ˙˙˙ i  * (     
 ¤i  %˙˙˙h   ˙˙˙ Źi  * Ü'     
 Či  %˙˙˙h   ˙˙˙ Đi  * ą'     
 ěi  %˙˙˙h   ˙˙˙ ôi  * '     
 j  %˙˙˙h   ˙˙˙ j  * ['     
 4j  %˙˙˙h   ˙˙˙ <j  * 0'     
 Xj  %˙˙˙h   ˙˙˙ `j  * '     
 |j  %˙˙˙h   ˙˙˙ j  * Ú&     
  j  %˙˙˙h   ˙˙˙ ¨j  * Ż&     
 Äj  %˙˙˙h   ˙˙˙ Ěj  * &     
 čj  %˙˙˙h   ˙˙˙ đj  * Y&     
 k  %˙˙˙h   ˙˙˙ k  * .&     
 0k  %˙˙˙h   ˙˙˙ 8k  * &     
 Tk  %˙˙˙h   ˙˙˙ \k  * Ř%     
 xk  %˙˙˙h   ˙˙˙ k  * ­%     
 k  %˙˙˙h   ˙˙˙ ¤k  * %     
 Ŕk  %˙˙˙h   ˙˙˙ Čk  * W%     
 äk  %˙˙˙h   ˙˙˙ ěk  * ,%     
 l  %˙˙˙h   ˙˙˙ l  * %     
 ,l  %˙˙˙h   ˙˙˙ 4l  * Ö$     
 Pl  %˙˙˙h   ˙˙˙ Xl  * Ť$     
 tl  %˙˙˙h   ˙˙˙ |l  * $     
 l  %˙˙˙h   ˙˙˙  l  * U$     
 źl  %˙˙˙h   ˙˙˙ Äl  * *$     
 ŕl  %˙˙˙h   ˙˙˙ čl  * ˙#     
 m  %˙˙˙h   ˙˙˙ m  * Ô#     
 (m  %˙˙˙h   ˙˙˙ 0m  * Š#     
 Lm  %˙˙˙h   ˙˙˙ Tm  * ~#     
 pm  %˙˙˙h   ˙˙˙ xm  * S#     
 m  %˙˙˙h   ˙˙˙ m  * (#     
 ¸m  %˙˙˙h   ˙˙˙ Ŕm  * ý"     
 Üm  %˙˙˙h   ˙˙˙ äm  * Ň"     
  n  %˙˙˙h   ˙˙˙ n  * §"     
 $n  %˙˙˙h   ˙˙˙ ,n  * |"     
 Hn  %˙˙˙h   ˙˙˙ Pn  * Q"     
 ln  %˙˙˙h   ˙˙˙ tn  * &"     
 n  %˙˙˙h   ˙˙˙ n  * ű!     
 ´n  %˙˙˙h   ˙˙˙ źn  * Đ!     
 Řn  %˙˙˙h   ˙˙˙ ŕn  * Ľ!     
 ün  %˙˙˙h   ˙˙˙ o  * z!     
  o  %˙˙˙h   ˙˙˙ (o  * O!     
 Do  %˙˙˙h   ˙˙˙ Lo  * $!     
 ho  %˙˙˙h   ˙˙˙ po  * ů      
 o  %˙˙˙h   ˙˙˙ td  * Î      
 o  %˙˙˙h   ˙˙˙ td  * Ł      
 o  %˙˙˙h   ˙˙˙ ¤o  * x      
 Ŕo  %˙˙˙h   ˙˙˙ Čo  * M      
 äo  %˙˙˙h   ˙˙˙ ěo  * "      
 p  %˙˙˙h   ˙˙˙ p  * ÷     
 ,p  %˙˙˙h   ˙˙˙ 4p  * Ě     
 Pp  %˙˙˙h   ˙˙˙ Xp  * Ą     
 tp  %˙˙˙h   ˙˙˙ |p  * v     
 p  %˙˙˙h   ˙˙˙  p  * K     
 źp  %˙˙˙h   ˙˙˙ Äp  *       
 ŕp  %˙˙˙h   ˙˙˙ čp  * ő     
 q  %˙˙˙h   ˙˙˙ q  * Ę     
 (q  %˙˙˙h   ˙˙˙ 0q  *      
 Lq  %˙˙˙h   ˙˙˙ Tq  * t     
 pq  %˙˙˙h   ˙˙˙ xq  * I     
 q  %˙˙˙h   ˙˙˙ q  *      
 ¸q  %˙˙˙h   ˙˙˙ 0q  * ó     
 Ŕq  %˙˙˙h   ˙˙˙ Čq  * Č     
 äq  %˙˙˙h   ˙˙˙ ěq  *      
 r  %˙˙˙h   ˙˙˙ r  * r     
 ,r  %˙˙˙h   ˙˙˙ 4r  * G     
 Pr  %˙˙˙h   ˙˙˙ Xr  *      
 tr  %˙˙˙h   ˙˙˙ |r  * ń     
 r  %˙˙˙h   ˙˙˙  r  * Ć     
 źr  %˙˙˙h   ˙˙˙ td  *      
 Är  %˙˙˙h   ˙˙˙ td  * p     
 Ěr  %˙˙˙h   ˙˙˙ Ôr  * E     
 đr  %˙˙˙h   ˙˙˙ řr  *      
 s  %˙˙˙h   ˙˙˙ s  * ď     
 8s  %˙˙˙h   ˙˙˙ @s  * Ä     
 \s  %˙˙˙h   ˙˙˙ ds  *      
 s  %˙˙˙h   ˙˙˙ s  * n     
 ¤s  %˙˙˙h   ˙˙˙ Źs  * C     
 Čs  %˙˙˙h   ˙˙˙ Đs  *      
 ěs  %˙˙˙h   ˙˙˙ ôs  * í     
 t  %˙˙˙h   ˙˙˙ t  * Â     
 4t  %˙˙˙h   ˙˙˙ <t  *      
 Xt  %˙˙˙h   ˙˙˙ `t  * l     
 |t  %˙˙˙h   ˙˙˙ t  * A     
  t  %˙˙˙h   ˙˙˙ ¨t  *      
 Ät  %˙˙˙h   ˙˙˙ Ět  * ë     
 čt  %˙˙˙h   ˙˙˙ đt  * Ŕ     
 u  %˙˙˙h   ˙˙˙ u  *      
 0u  %˙˙˙h   ˙˙˙ 8u  * j     
 Tu  %˙˙˙h   ˙˙˙ \u  * ?     
 xu  %˙˙˙h   ˙˙˙ u  *      
 u  %˙˙˙h   ˙˙˙ ¤u  * é     
 Ŕu  %˙˙˙h   ˙˙˙ Ču  * ž     
 äu  %˙˙˙h   ˙˙˙ ěu  *      
 v  %˙˙˙h   ˙˙˙ v  * h     
 ,v  %˙˙˙h   ˙˙˙ 4v  * =     
 Pv  %˙˙˙h   ˙˙˙ Xv  *      
 tv  %˙˙˙h   ˙˙˙ |v  * ç     
 v  %˙˙˙h   ˙˙˙  v  * ź     
 źv  %˙˙˙h   ˙˙˙ Äv  *      
 ŕv  %˙˙˙h   ˙˙˙ čv  * f     
 w  %˙˙˙h   ˙˙˙ w  * ;     
 (w  %˙˙˙h   ˙˙˙ 0w  *      
 Lw  %˙˙˙h   ˙˙˙ Tw  * ĺ     
 pw  %˙˙˙h   ˙˙˙ xw  * ş     
 w  %˙˙˙h   ˙˙˙ w  *      
 ¸w  %˙˙˙h   ˙˙˙ Ŕw  * d     
 Üw  %˙˙˙h   ˙˙˙ äw  * 9     
  x  %˙˙˙h   ˙˙˙ x  *      
 $x  %˙˙˙h   ˙˙˙ ,x  * ă     
 Hx  %˙˙˙h   ˙˙˙ Px  * ¸     
 lx  %˙˙˙h   ˙˙˙ tx  *      
 x  %˙˙˙h   ˙˙˙ x  * b     
 ´x  %˙˙˙h   ˙˙˙ źx  * 7     
 Řx  %˙˙˙h   ˙˙˙ ŕx  *      
 üx  %˙˙˙h   ˙˙˙ y  * á     
  y  %˙˙˙h   ˙˙˙ (y  * ś     
 Dy  %˙˙˙h   ˙˙˙ Ly  *      
 hy  %˙˙˙h   ˙˙˙ py  * `     
 y  %˙˙˙h   ˙˙˙ y  * 5     
 °y  %˙˙˙h   ˙˙˙ ¸y  * 
     
 Ôy  %˙˙˙h   ˙˙˙ Üy  * ß     
 řy  %˙˙˙h   ˙˙˙  z  * ´     
 z  %˙˙˙h   ˙˙˙ $z  *      
 @z  %˙˙˙h   ˙˙˙ Hz  * ^     
 dz  %˙˙˙h   ˙˙˙ lz  * 3     
 z  %˙˙˙h   ˙˙˙ z  *      
 Źz  %˙˙˙h   ˙˙˙ ´z  * Ý     
 Đz  %˙˙˙h   ˙˙˙ Řz  * ˛     
 ôz  %˙˙˙h   ˙˙˙ üz  *      
 {  %˙˙˙h   ˙˙˙  {  * \     
 <{  %˙˙˙h   ˙˙˙ D{  * 1     
 `{  %˙˙˙h   ˙˙˙ h{  *      
 {  %˙˙˙h   ˙˙˙ {  * Ű     
 ¨{  %˙˙˙h   ˙˙˙ °{  * °     
 Ě{  %˙˙˙h   ˙˙˙ Ô{  *      
 đ{  %˙˙˙h   ˙˙˙ ř{  * Z     
 |  %˙˙˙h   ˙˙˙ |  * /     
 8|  %˙˙˙h   ˙˙˙ @|  *      
 \|  %˙˙˙h   ˙˙˙ d|  * Ů     
 |  %˙˙˙h   ˙˙˙ |  * Ž     
 ¤|  %˙˙˙h   ˙˙˙ Ź|  *      
 Č|  %˙˙˙h   ˙˙˙ Đ|  * X     
 ě|  %˙˙˙h   ˙˙˙ ô|  * -     
 }  %˙˙˙h   ˙˙˙ }  *      
 4}  %˙˙˙h   ˙˙˙ <}  * ×     
 X}  %˙˙˙h   ˙˙˙ `}  * Ź     
 |}  %˙˙˙h   ˙˙˙ }  *      
  }  %˙˙˙h   ˙˙˙ ¨}  * V     
 Ä}  %˙˙˙h   ˙˙˙ Ě}  * +     
 č}  %˙˙˙h   ˙˙˙ đ}  *       
 ~  %˙˙˙h   ˙˙˙ ~  * Ő     
 0~  %˙˙˙h   ˙˙˙ 8~  * Ş     
 T~  %˙˙˙h   ˙˙˙ \~  *      
 x~  %˙˙˙h   ˙˙˙ ~  * T     
 ~  %˙˙˙h   ˙˙˙ ¤~  * )     
 Ŕ~  %˙˙˙h   ˙˙˙ Č~  * ţ     
 ä~  %˙˙˙h   ˙˙˙ ě~  * Ó     
   %˙˙˙h   ˙˙˙   * ¨     
 ,  %˙˙˙h   ˙˙˙ 4  * }     
 P  %˙˙˙h   ˙˙˙ X  * R     
 t  %˙˙˙h   ˙˙˙ |  * '     
   %˙˙˙h   ˙˙˙    * ü     
 ź  %˙˙˙h   ˙˙˙ Ä  * Ń     
 ŕ  %˙˙˙h   ˙˙˙ č  * Ś     
   %˙˙˙h   ˙˙˙   * {     
 (  %˙˙˙h   ˙˙˙ 0  * P     
 L  %˙˙˙h   ˙˙˙ T  * %     
 p  %˙˙˙h   ˙˙˙ x  * ú     
   %˙˙˙h   ˙˙˙   * Ď     
 ¸  %˙˙˙h   ˙˙˙ Ŕ  * ¤     
 Ü  %˙˙˙h   ˙˙˙ ä  * y     
    %˙˙˙h   ˙˙˙   * N     
 $  %˙˙˙h   ˙˙˙ ,  * #     
 H  %˙˙˙h   ˙˙˙ P  * ř
     
 l  %˙˙˙h   ˙˙˙ t  * Í
     
   %˙˙˙h   ˙˙˙   * ˘
     
 ´  %˙˙˙h   ˙˙˙ ź  * w
     
 Ř  %˙˙˙h   ˙˙˙ ŕ  * L
     
 ü  %˙˙˙h   ˙˙˙   * !
     
    %˙˙˙h   ˙˙˙ (  * ö	     
 D  %˙˙˙h   ˙˙˙ L  * Ë	     
 h  %˙˙˙h   ˙˙˙ p  *  	     
   %˙˙˙h   ˙˙˙   * u	     
 °  %˙˙˙h   ˙˙˙ ¸  * J	     
 Ô  %˙˙˙h   ˙˙˙ Ü  * 	     
 ř  %˙˙˙h   ˙˙˙    * ô     
   %˙˙˙h   ˙˙˙ $  * É     
 @  %˙˙˙h   ˙˙˙ H  *      
 d  %˙˙˙h   ˙˙˙ l  * s     
   %˙˙˙h   ˙˙˙   * H     
 Ź  %˙˙˙h   ˙˙˙ ´  *      
 Đ  %˙˙˙h   ˙˙˙   * ň     
 Ř  %˙˙˙h   ˙˙˙ ŕ  * Ç     
 ü  %˙˙˙h   ˙˙˙   *      
    %˙˙˙h   ˙˙˙ (  * q     
 D  %˙˙˙h   ˙˙˙ L  * F     
 h  %˙˙˙h   ˙˙˙ p  *      
   %˙˙˙h   ˙˙˙   * đ     
 °  %˙˙˙h   ˙˙˙ ¸  * Ĺ     
 Ô  %˙˙˙h   ˙˙˙ Ü  *      
 ř  %˙˙˙h   ˙˙˙    * o     
   %˙˙˙h   ˙˙˙ $  * D     
 @  %˙˙˙h   ˙˙˙ H  *      
 d  %˙˙˙h   ˙˙˙ l  * î     
   %˙˙˙h   ˙˙˙   * Ă     
 Ź  %˙˙˙h   ˙˙˙ ´  *      
 Đ  %˙˙˙h   ˙˙˙ Ř  * m     
 ô  %˙˙˙h   ˙˙˙ ü  * B     
   %˙˙˙h   ˙˙˙    *      
 <  %˙˙˙h   ˙˙˙ D  * ě     
 `  %˙˙˙h   ˙˙˙ h  * Á     
   %˙˙˙h   ˙˙˙   *      
 ¨  %˙˙˙h   ˙˙˙ °  * k     
 Ě  %˙˙˙h   ˙˙˙ Ô  * @     
 đ  %˙˙˙h   ˙˙˙ ř  *      
   %˙˙˙h   ˙˙˙   * ę     
 8  %˙˙˙h   ˙˙˙ @  * ż     
 \  %˙˙˙h   ˙˙˙ d  *      
   %˙˙˙h   ˙˙˙   * i     
 ¤  %˙˙˙h   ˙˙˙ T  * >     
 Ź  %˙˙˙h   ˙˙˙ ´  *      
 Đ  %˙˙˙h   ˙˙˙ Ř  * č     
 ô  %˙˙˙h   ˙˙˙ ü  * ˝     
   %˙˙˙h   ˙˙˙    *      
 <  %˙˙˙h   ˙˙˙ D  * g     
 `  %˙˙˙h   ˙˙˙ h  * <     
   %˙˙˙h   ˙˙˙   *      
 ¨  %˙˙˙h   ˙˙˙ °  * ć     
 Ě  %˙˙˙h   ˙˙˙ Ô  * ť     
 đ  %˙˙˙h   ˙˙˙ ř  *      
   %˙˙˙h   ˙˙˙   * e     
 8  %˙˙˙h   ˙˙˙ @  * :     
 \  %˙˙˙h   ˙˙˙ d  *      
   %˙˙˙h   ˙˙˙   * ä      
 ¤  %˙˙˙h   ˙˙˙ Ź  * š      
 Č  %˙˙˙h   ˙˙˙ Đ  *       
 ě  %˙˙˙h   ˙˙˙ ô  * c      
   %˙˙˙h   ˙˙˙   * 8   ˙˙˙ 4  t˙˙˙   
 	t˙˙˙%X˙˙˙( P  %<˙˙˙(* ˙˙˙   (          6   <˙˙˙    ˙˙˙    X˙˙˙    t˙˙˙    ˙˙˙              čšT˙˙    |        ?  ˙˙˙ l  *    
   %˙˙˙h   ˙˙˙   * ç     
 Ź  %˙˙˙h   ˙˙˙ ´  * ź     
 Đ  %˙˙˙h   ˙˙˙ Ř  *      
 ô  %˙˙˙h   ˙˙˙ ü  * f     
   %˙˙˙h   ˙˙˙    * ;     
 <  %˙˙˙h   ˙˙˙ D  *      
 `  %˙˙˙h   ˙˙˙ h  * ĺ     
   %˙˙˙h   ˙˙˙   * ş     
 ¨  %˙˙˙h   ˙˙˙ °  *      
 Ě  %˙˙˙h   ˙˙˙ Ô  * d     
 đ  %˙˙˙h   ˙˙˙ ř  * 9     
   %˙˙˙h   ˙˙˙   *      
 8  %˙˙˙h   ˙˙˙ @  * ă     
 \  %˙˙˙h   ˙˙˙ d  * ¸     
   %˙˙˙h   ˙˙˙   *      
 ¤  %˙˙˙h   ˙˙˙ Ź  * b     
 Č  %˙˙˙h   ˙˙˙ Đ  * 7     
 ě  %˙˙˙h   ˙˙˙ ô  *      
   %˙˙˙h   ˙˙˙   * á     
 4  %˙˙˙h   ˙˙˙ <  * ś     
 X  %˙˙˙h   ˙˙˙ `  *      
 |  %˙˙˙h   ˙˙˙   * `     
    %˙˙˙h   ˙˙˙ ¨  * 5     
 Ä  %˙˙˙h   ˙˙˙ Ě  * 
     
 č  %˙˙˙h   ˙˙˙ đ  * ß     
   %˙˙˙h   ˙˙˙   * ´     
 0  %˙˙˙h   ˙˙˙ 8  *      
 T  %˙˙˙h   ˙˙˙ \  * ^     
 x  %˙˙˙h   ˙˙˙   * 3     
   %˙˙˙h   ˙˙˙ ¤  *      
 Ŕ  %˙˙˙h   ˙˙˙ Č  * Ý     
 ä  %˙˙˙h   ˙˙˙ ě  * ˛     
   %˙˙˙h   ˙˙˙   *      
 ,  %˙˙˙h   ˙˙˙ 4  * \     
 P  %˙˙˙h   ˙˙˙ X  * 1     
 t  %˙˙˙h   ˙˙˙ |  *      
   %˙˙˙h   ˙˙˙    * Ű     
 ź  %˙˙˙h   ˙˙˙ Ä  * °     
 ŕ  %˙˙˙h   ˙˙˙ č  *      
   %˙˙˙h   ˙˙˙   * Z     
 (  %˙˙˙h   ˙˙˙ 0  * /     
 L  %˙˙˙h   ˙˙˙ T  *      
 p  %˙˙˙h   ˙˙˙ x  * Ů     
   %˙˙˙h   ˙˙˙   * Ž     
 ¸  %˙˙˙h   ˙˙˙ Ŕ  *      
 Ü  %˙˙˙h   ˙˙˙ ä  * X     
    %˙˙˙h   ˙˙˙   * -     
 $  %˙˙˙h   ˙˙˙ ,  *      
 H  %˙˙˙h   ˙˙˙ P  * ×     
 l  %˙˙˙h   ˙˙˙ t  * Ź     
   %˙˙˙h   ˙˙˙   *      
 ´  %˙˙˙h   ˙˙˙ ź  * V     
 Ř  %˙˙˙h   ˙˙˙ ŕ  * +     
 ü  %˙˙˙h   ˙˙˙   *       
    %˙˙˙h   ˙˙˙ (  * Ő     
 D  %˙˙˙h   ˙˙˙ L  * Ş     
 h  %˙˙˙h   ˙˙˙ p  *      
   %˙˙˙h   ˙˙˙   * T     
 °  %˙˙˙h   ˙˙˙ ¸  * )     
 Ô  %˙˙˙h   ˙˙˙ Ü  * ţ     
 ř  %˙˙˙h   ˙˙˙    * Ó     
   %˙˙˙h   ˙˙˙ $  * ¨     
 @  %˙˙˙h   ˙˙˙ H  * }     
 d  %˙˙˙h   ˙˙˙ l  * R     
   %˙˙˙h   ˙˙˙   * '     
 Ź  %˙˙˙h   ˙˙˙ ´  * ü     
 Đ  %˙˙˙h   ˙˙˙ Ř  * Ń     
 ô  %˙˙˙h   ˙˙˙ ü  * Ś     
   %˙˙˙h   ˙˙˙    * {     
 <  %˙˙˙h   ˙˙˙ D  * P     
 `  %˙˙˙h   ˙˙˙ h  * %     
   %˙˙˙h   ˙˙˙   * ú     
 ¨  %˙˙˙h   ˙˙˙ °  * Ď     
 Ě  %˙˙˙h   ˙˙˙ Ô  * ¤     
 đ  %˙˙˙h   ˙˙˙ ř  * y     
   %˙˙˙h   ˙˙˙   * N     
 8  %˙˙˙h   ˙˙˙ @  * #     
 \  %˙˙˙h   ˙˙˙ d  * ř
     
   %˙˙˙h   ˙˙˙   * Í
     
 ¤  %˙˙˙h   ˙˙˙ Ź  * ˘
     
 Č  %˙˙˙h   ˙˙˙ Đ  * w
     
 ě  %˙˙˙h   ˙˙˙ ô  * L
     
   %˙˙˙h   ˙˙˙   * !
     
 4  %˙˙˙h   ˙˙˙ <  * ö	     
 X  %˙˙˙h   ˙˙˙ `  * Ë	     
 |  %˙˙˙h   ˙˙˙   *  	     
    %˙˙˙h   ˙˙˙ ¨  * u	     
 Ä  %˙˙˙h   ˙˙˙ Ě  * J	     
 č  %˙˙˙h   ˙˙˙ đ  * 	     
   %˙˙˙h   ˙˙˙   * ô     
 0  %˙˙˙h   ˙˙˙ 8  * É     
 T  %˙˙˙h   ˙˙˙ \  *      
 x  %˙˙˙h   ˙˙˙   * s     
   %˙˙˙h   ˙˙˙ ¤  * H     
 Ŕ  %˙˙˙h   ˙˙˙ Č  *      
 ä  %˙˙˙h   ˙˙˙ ě  * ň     
   %˙˙˙h   ˙˙˙   * Ç     
 ,  %˙˙˙h   ˙˙˙ 4  *      
 P  %˙˙˙h   ˙˙˙ X  * q     
 t  %˙˙˙h   ˙˙˙ |  * F     
   %˙˙˙h   ˙˙˙    *      
 ź  %˙˙˙h   ˙˙˙ Ä  * đ     
 ŕ  %˙˙˙h   ˙˙˙ č  * Ĺ     
   %˙˙˙h   ˙˙˙   *      
 (  %˙˙˙h   ˙˙˙ 0  * o     
 L  %˙˙˙h   ˙˙˙ T  * D     
 p  %˙˙˙h   ˙˙˙ x  *      
   %˙˙˙h   ˙˙˙   * î     
 ¸  %˙˙˙h   ˙˙˙ Ŕ  * Ă     
 Ü  %˙˙˙h   ˙˙˙ ä  *      
    %˙˙˙h   ˙˙˙   * m     
 $  %˙˙˙h   ˙˙˙ ,  * B     
 H  %˙˙˙h   ˙˙˙ P  *      
 l  %˙˙˙h   ˙˙˙ t  * ě     
   %˙˙˙h   ˙˙˙   * Á     
 ´  %˙˙˙h   ˙˙˙ ź  *      
 Ř  %˙˙˙h   ˙˙˙ ŕ  * k     
 ü  %˙˙˙h   ˙˙˙   * @     
    %˙˙˙h   ˙˙˙ (  *      
 D  %˙˙˙h   ˙˙˙ L  * ę     
 h  %˙˙˙h   ˙˙˙ p  * ż     
   %˙˙˙h   ˙˙˙   *      
 °  %˙˙˙h   ˙˙˙ ¸  * i     
 Ô  %˙˙˙h   ˙˙˙ Ü  * >     
 ř  %˙˙˙h   ˙˙˙    *      
   %˙˙˙h   ˙˙˙ $  * č     
 @  %˙˙˙h   ˙˙˙ H  * ˝     
 d  %˙˙˙h   ˙˙˙ l  *      
   %˙˙˙h   ˙˙˙   * g     
 Ź  %˙˙˙h   ˙˙˙ ´  * <     
 Đ  %˙˙˙h   ˙˙˙ Ř  *      
 ô  %˙˙˙h   ˙˙˙ ü  * ć     
   %˙˙˙h   ˙˙˙    * ť     
 <  %˙˙˙h   ˙˙˙ D  *      
 `  %˙˙˙h   ˙˙˙ h  * e     
   %˙˙˙h   ˙˙˙   * :     
 ¨  %˙˙˙h   ˙˙˙ °  *      
 Ě  %˙˙˙h   ˙˙˙ Ô  * ä      
 đ  %˙˙˙h   ˙˙˙ ř  * š      
   %˙˙˙h   ˙˙˙   *       
 8  %˙˙˙h   ˙˙˙ @  * c      
 \  %˙˙˙h   ˙˙˙ d  * 8   ˙˙˙   t˙˙˙   
 	t˙˙˙%X˙˙˙(   %<˙˙˙(* ˙˙˙   (          6   <˙˙˙    ˙˙˙    X˙˙˙    t˙˙˙    ˙˙˙              č#<˙˙         á    č<˙˙         ácj    äO    ßO  d  ÚO  \  ŐO  @  ÎO  8  ÉO    ÂO    ˝O  ř  śO  đ  ąO  Ô  ŞO  Ě  ĽO  °  O  ¨  O    O    O  h  O  `  O  D  zO  <  uO     nO    iO  ü  bO  ô  ]O  Ř  VO  Đ  QO  ´  JO  Ź  EO    >O    9O  l  2O  d  -O  H  &O  @  !O  $  O    O     O  ř  	O  Ü  O  Ô  ýN  ¸  öN  °  ńN    ęN    ĺN  p  ŢN  h  ŮN  L  ŇN  D  ÍN  (  ĆN     ÁN    şN  ü  ľN  ŕ  ŽN  Ř  ŠN  ź  ˘N  ´  N    N    N  t  N  l  N  P  ~N  H  yN  ,  rN  $  mN    fN     aN  ä  ZN  Ü  UN  Ŕ  NN  ¸  IN    BN    =N  x  6N  p  1N  T  *N  L  %N  0  N  (  N    N    N  č  N  ŕ  N  Ä  úM  ź  őM     îM    éM  |  âM  t  ÝM  X  ÖM  P  ŃM  4  ĘM  ,  ĹM    žM    šM  ě  ˛M  ä  ­M  Č  ŚM  Ŕ  ĄM  ¤  M    M    M  x  M  \  M  T  }M  8  vM  0  qM    jM    eM  đ  ^M  č  YM  Ě  RM  Ä  MM  ¨  FM     AM    :M  |  5M  `  .M  X  )M  <  "M  4  M    M    M  ô  
M  ě  M  Đ  ţL  Č  ůL  Ź  ňL  ¤  íL    ćL    áL  d  ÚL  \  ŐL  @  ÎL  8  ÉL    ÂL    ˝L  ř  śL  đ  ąL  Ô  ŞL  Ě  ĽL  °  L  ¨  L    L    L  h  L  `  L  D  zL  <  uL     nL    iL  ü  bL  ô  ]L  Ř  VL  Đ  QL  ´  JL  Ź  EL    >L    9L  l  2L  d  -L  H  &L  @  !L  $  L    L     L  ř  	L  Ü  L  Ô  ýK  ¸  öK  °  ńK    ęK    ĺK  p  ŢK  h  ŮK  L  ŇK  D  ÍK  (  ĆK     ÁK    şK  ü  ľK  ŕ  ŽK  Ř  ŠK  ź  ˘K  ´  K    K    K  t  K  l  K  P  ~K  H  yK  ,  rK  $  mK    fK     aK  ä  ZK  Ü  UK  Ŕ  NK  ¸  IK    BK    =K  x  6K  p  1K  T  *K  L  %K  0  K  (  K    K    K  č  K  ŕ  K  Ä  úJ  ź  őJ     îJ    éJ  |  âJ  t  ÝJ  X  ÖJ  P  ŃJ  4  ĘJ  ,  ĹJ    žJ    šJ  ě  ˛J  ä  ­J  Č  ŚJ  Ŕ  ĄJ  ¤  J    J    J  x  J  \  J  T  }J  8  vJ  0  qJ    jJ    eJ  đ  ^J  č  YJ  Ě  RJ  Ä  MJ  ¨  FJ     AJ    :J  |  5J  `  .J  X  )J  <  "J  4  J    J    J  ô  
J  ě  J  Đ  ţI  Č  ůI  Ź  ňI  ¤  íI    ćI    áI  d  ÚI  \  ŐI  @  ÎI  8  ÉI    ÂI    ˝I  ř  śI  đ  ąI  Ô  ŞI  Ě  ĽI  °  I  ¨  I    I    I  h  I  `  I  D  zI  <  uI     nI    iI  ü  bI  ô  ]I  Ř  VI  Đ  QI  ´  JI  Ź  EI    >I    9I  l  2I  P  -I  4  (I    #I    I  ô  I  ě  I  Đ  I  Č  I  Ź  ˙H  ¤  úH    óH    îH  d  çH  \  âH  @  ŰH  8  ÖH    ĎH    ĘH  ř  ĂH  đ  žH  Ô  ˇH  Ě  ˛H  °  ŤH  ¨  ŚH    H    H  h  H  `  H  D  H  <  H     {H    vH  ü  oH  ô  jH  Ř  cH  Đ  ^H  ´  WH  Ź  RH  ¤  KH    DH    ?H  d  8H  \  3H  @  ,H  8  'H     H    H  ř  H  đ  H  Ô  H  Ě  H  °  üG  ¨  ÷G    đG    ëG  h  äG  `  ßG  D  ŘG  <  ÓG     ĚG    ÇG  ü  ŔG  ô  ťG  Ř  ´G  Đ  ŻG  ´  ¨G  Ź  ŁG    G    G  l  G  d  G  H  G  @  G  $  xG    sG     lG  ř  gG  Ü  `G  Ô  [G  ¸  TG  °  OG    HG    CG  p  <G  h  7G  L  0G  D  +G  (  $G     G    G  ü  G  ŕ  G  Ř  G  Đ   G  ´  ůF  Ź  ôF    íF    čF  l  áF  d  ÜF  H  ŐF  @  ĐF  $  ÉF    ÄF     ˝F  ř  ¸F  Ü  ąF  Ô  ŹF  ¸  ĽF  °   F    F    F  p  F  h  F  L  F  D  |F  (  uF     pF    iF  ü  dF  ŕ  ]F  Ř  XF  ź  QF  ´  LF    EF    @F  t  9F  l  4F  P  -F  H  (F  ,  !F  $  F    F     F  ä  	F  Ü  F  Ŕ  ýE  ¸  řE    ńE    ěE  x  ĺE  p  ŕE  T  ŮE  L  ÔE  0  ÍE  (  ČE    ÁE    źE  č  ľE  ŕ  °E  Ä  ŠE  ź  ¤E     E    E  |  E  t  E  X  E  P  E  4  yE  ,  tE    mE    hE  ě~  aE  ä~  \E  Č~  UE  Ŕ~  PE  ¤~  IE  ~  DE  ~  =E  x~  8E  \~  1E  T~  ,E  8~  %E  0~   E  ~  E  ~  E  đ}  E  č}  E  Ě}  E  Ä}  üD  ¨}  őD   }  đD  }  éD  |}  äD  `}  ÝD  X}  ŘD  <}  ŃD  4}  ĚD  }  ĹD  }  ŔD  ô|  šD  ě|  ´D  Đ|  ­D  Č|  ¨D  Ź|  ĄD  ¤|  D  |  D  |  D  d|  D  \|  D  @|  }D  8|  xD  |  qD  |  lD  ř{  eD  đ{  `D  Ô{  YD  Ě{  TD  °{  MD  ¨{  HD  {  AD  {  <D  h{  5D  `{  0D  D{  )D  <{  $D   {  D  {  D  üz  D  ôz  D  Řz  D  Đz   D  ´z  ůC  Źz  ôC  z  íC  z  čC  lz  áC  dz  ÜC  Hz  ŐC  @z  ĐC  $z  ÉC  z  ÄC   z  ˝C  řy  ¸C  Üy  ąC  Ôy  ŹC  ¸y  ĽC  °y   C  y  C  y  C  py  C  hy  C  Ly  C  Dy  |C  (y  uC   y  pC  y  iC  üx  dC  ŕx  ]C  Řx  XC  źx  QC  ´x  LC  x  EC  x  @C  tx  9C  lx  4C  Px  -C  Hx  (C  ,x  !C  $x  C  x  C   x  C  äw  	C  Üw  C  Ŕw  ýB  ¸w  řB  w  ńB  w  ěB  xw  ĺB  pw  ŕB  Tw  ŮB  Lw  ÔB  0w  ÍB  (w  ČB  w  ÁB  w  źB  čv  ľB  ŕv  °B  Äv  ŠB  źv  ¤B   v  B  v  B  |v  B  tv  B  Xv  B  Pv  B  4v  yB  ,v  tB  v  mB  v  hB  ěu  aB  äu  \B  Ču  UB  Ŕu  PB  ¤u  IB  u  DB  u  =B  xu  8B  \u  1B  Tu  ,B  8u  %B  0u   B  u  B  u  B  đt  B  čt  B  Ět  B  Ät  üA  ¨t  őA   t  đA  t  éA  |t  äA  `t  ÝA  Xt  ŘA  <t  ŃA  4t  ĚA  t  ĹA  t  ŔA  ôs  šA  ěs  ´A  Đs  ­A  Čs  ¨A  Źs  ĄA  ¤s  A  s  A  s  A  ds  A  \s  A  @s  }A  8s  xA  s  qA  s  lA  řr  eA  đr  `A  Ôr  YA  Ěr  TA  Är  MA  źr  FA   r  ?A  r  :A  |r  3A  tr  .A  Xr  'A  Pr  "A  4r  A  ,r  A  r  A  r  
A  ěq  A  äq  ţ@  Čq  ÷@  Ŕq  ň@  ¸q  ë@  q  ä@  q  ß@  xq  Ř@  pq  Ó@  Tq  Ě@  Lq  Ç@  0q  Ŕ@  (q  ť@  q  ´@  q  Ż@  čp  ¨@  ŕp  Ł@  Äp  @  źp  @   p  @  p  @  |p  @  tp  @  Xp  x@  Pp  s@  4p  l@  ,p  g@  p  `@  p  [@  ěo  T@  äo  O@  Čo  H@  Ŕo  C@  ¤o  <@  o  7@  o  0@  o  )@  po  "@  ho  @  Lo  @  Do  @  (o  
@   o  @  o  ţ?  ün  ů?  ŕn  ň?  Řn  í?  źn  ć?  ´n  á?  n  Ú?  n  Ő?  tn  Î?  ln  É?  Pn  Â?  Hn  ˝?  ,n  ś?  $n  ą?  n  Ş?   n  Ľ?  äm  ?  Üm  ?  Ŕm  ?  ¸m  ?  m  ?  m  ?  xm  z?  pm  u?  Tm  n?  Lm  i?  0m  b?  (m  ]?  m  V?  m  Q?  čl  J?  ŕl  E?  Äl  >?  źl  9?   l  2?  l  -?  |l  &?  tl  !?  Xl  ?  Pl  ?  4l  ?  ,l  	?  l  ?  l  ý>  ěk  ö>  äk  ń>  Čk  ę>  Ŕk  ĺ>  ¤k  Ţ>  k  Ů>  k  Ň>  xk  Í>  \k  Ć>  Tk  Á>  8k  ş>  0k  ľ>  k  Ž>  k  Š>  đj  ˘>  čj  >  Ěj  >  Äj  >  ¨j  >   j  >  j  ~>  |j  y>  `j  r>  Xj  m>  <j  f>  4j  a>  j  Z>  j  U>  ôi  N>  ěi  I>  Đi  B>  Či  =>  Źi  6>  ¤i  1>  i  *>  i  %>  di  >  \i  >  @i  >  8i  >  i  >  i  >  řh  ú=  đh  ő=  Ôh  î=  Ěh  é=  °h  â=  ¨h  Ý=  h  Ö=  h  Ń=  hh  Ę=  `h  Ĺ=  Dh  ž=  <h  š=   h  ˛=  h  ­=  üg  Ś=  ôg  Ą=  Řg  =  Đg  =  ´g  =  Źg  =  g  =  g  }=  lg  v=  dg  q=  Hg  j=  @g  e=  8g  ^=  g  W=  g  R=  řf  K=  đf  F=  Ôf  ?=  Ěf  :=  °f  3=  ¨f  .=  f  '=  f  "=  hf  =  `f  =  Df  =  <f  
=   f  =  f  ţ<  üe  ÷<  ôe  ň<  Ře  ë<  Đe  ć<  ´e  ß<  Źe  Ú<  e  Ó<  e  Î<  e  Ç<  de  Ŕ<  \e  ť<  @e  ´<  8e  Ż<  e  ¨<  e  Ł<  řd  <  đd  <  Ôd  <  Ěd  <  °d  <  ¨d  <   d  x<  d  q<  d  j<  td  c<  ld  ^<  Pd  W<  Hd  R<  ,d  K<  $d  F<  d  ?<   d  :<  äc  3<  Üc  .<  Ŕc  '<  ¸c  "<  c  <  c  <  xc  <  pc  
<  Tc  <  Lc  ţ;  0c  ÷;  (c  ň;  c  ë;  c  ć;  čb  ß;  ŕb  Ú;  Äb  Ó;  źb  Î;   b  Ç;  b  Â;  |b  ť;  tb  ś;  Xb  Ż;  Pb  Ş;  4b  Ł;  ,b  ;  b  ;  b  ;  ěa  ;  äa  ;  Ča  ;  Ŕa  z;  ¤a  s;  a  n;  a  g;  xa  b;  \a  [;  Ta  V;  8a  O;  0a  J;  a  C;  a  >;  đ`  7;  č`  2;  Ě`  +;  Ä`  &;  ¨`  ;   `  ;  `  ;  |`  ;  ``  ;  X`  ;  <`  ű:  4`  ö:  `  ď:  `  ę:  ô_  ă:  ě_  Ţ:  ä_  ×:  Ü_  Đ:  Ô_  É:  Ě_  Â:  Ä_  ť:  ź_  ´:  ´_  ­:  Ź_  Ś:  ¤_  :  _  :  _  :  d_  :  \_  :  @_  :  8_  {:  _  t:  _  o:  ř^  h:  đ^  c:  Ô^  \:  Ě^  W:  °^  P:  ¨^  K:  ^  D:  ^  ?:  h^  8:  `^  3:  D^  ,:  <^  ':   ^   :  ^  :  ü]  :  ô]  :  Ř]  :  Đ]  :  ´]  ü9  Ź]  ÷9  ]  đ9  ]  ë9  l]  ä9  d]  ß9  H]  Ř9  @]  Ó9  $]  Ě9  ]  Ç9   ]  Ŕ9  ř\  ť9  Ü\  ´9  Ô\  Ż9  ¸\  ¨9  °\  Ł9  \  9  \  9  p\  9  h\  9  L\  9  D\  9  (\  x9   \  s9  \  l9  ü[  g9  ŕ[  `9  Ř[  [9  ź[  T9  ´[  O9  [  H9  [  C9  t[  <9  l[  79  P[  09  H[  +9  ,[  $9  $[  9  [  9   [  9  äZ  9  ÜZ  9  ŔZ   9  ¸Z  ű8  Z  ô8  Z  ď8  xZ  č8  pZ  ă8  TZ  Ü8  LZ  ×8  0Z  Đ8  (Z  Ë8  Z  Ä8  Z  ż8  čY  ¸8  ŕY  ł8  ÄY  Ź8  źY  §8   Y   8  Y  8  |Y  8  tY  8  XY  8  PY  8  4Y  |8  ,Y  w8  Y  p8  Y  k8  ěX  d8  äX  _8  ČX  X8  ŔX  S8  ¤X  L8  X  G8  X  @8  xX  ;8  \X  48  TX  /8  8X  (8  0X  #8  X  8  X  8  đW  8  čW  8  ĚW  8  ÄW  ˙7  ¨W  ř7   W  ó7  W  ě7  |W  ç7  `W  ŕ7  XW  Ű7  <W  Ô7  4W  Ď7  W  Č7  W  Ă7  ôV  ź7  ěV  ˇ7  ĐV  °7  ČV  Ť7  ŹV  ¤7  ¤V  7  V  7  V  7  dV  7  \V  7  @V  7  8V  {7  V  t7  V  o7  řU  h7  đU  c7  ÔU  \7  ĚU  W7  °U  P7  ¨U  K7  U  D7  U  ?7  hU  87  `U  37  XU  ,7  <U  %7  4U   7  U  7  U  7  ôT  7  ěT  7  ĐT  7  ČT  ü6  ŹT  ő6  ¤T  đ6  T  é6  T  â6  xT  Ý6  \T  Ö6  TT  Ń6  8T  Ę6  0T  Ĺ6  T  ž6  T  š6  đS  ˛6  čS  ­6  ĚS  Ś6  ÄS  Ą6  ¨S  6   S  6  S  6  |S  6  `S  6  XS  }6  <S  v6  4S  q6  S  j6  S  e6  ôR  ^6  ěR  Y6  ĐR  R6  ČR  M6  ŹR  F6  ¤R  A6  R  :6  R  56  dR  .6  \R  )6  @R  "6  8R  6  R  6  R  6  řQ  
6  đQ  6  ÔQ  ţ5  ĚQ  ů5  °Q  ň5  ¨Q  í5  Q  ć5  Q  á5  hQ  Ú5  `Q  Ő5  DQ  Î5  <Q  É5   Q  Â5  Q  ˝5  üP  ś5  ôP  ą5  ŘP  Ş5  ĐP  Ľ5  ´P  5  ŹP  5  P  5  P  5  lP  5  dP  5  HP  z5  @P  u5  $P  n5  P  i5   P  b5  řO  ]5  ÜO  V5  ÔO  Q5  ¸O  J5  °O  E5  O  >5  O  95  pO  25  hO  -5  LO  &5  DO  !5  (O  5   O  5  O  5  üN  	5  ŕN  5  ŘN  ý4  źN  ö4  ´N  ń4  N  ę4  N  ĺ4  tN  Ţ4  lN  Ů4  PN  Ň4  HN  Í4  ,N  Ć4  $N  Á4  N  ş4   N  ł4  řM  Ž4  ÜM  §4  ÔM  ˘4  ¸M  4  °M  4  M  4  M  4  pM  4  hM  ~4  LM  w4  DM  r4  (M  k4   M  f4  M  _4  üL  Z4  ŕL  S4  ŘL  N4  źL  G4  ´L  B4  L  ;4  L  64  tL  /4  lL  *4  PL  #4  HL  4  ,L  4  $L  4  L  4   L  4  äK  ˙3  ÜK  ú3  ŔK  ó3  ¸K  î3  K  ç3  K  â3  xK  Ű3  pK  Ö3  TK  Ď3  LK  Ę3  0K  Ă3  (K  ž3  K  ˇ3  K  ˛3  čJ  Ť3  ŕJ  Ś3  ÄJ  3  źJ  3   J  3  J  3  |J  3  tJ  3  XJ  {3  PJ  v3  4J  o3  ,J  j3  J  c3  J  ^3  ěI  W3  äI  R3  ČI  K3  ŔI  F3  ¤I  ?3  I  :3  I  33  xI  .3  \I  '3  TI  "3  8I  3  0I  3  I  3  I  
3  đH  3  čH  ţ2  ĚH  ÷2  ÄH  ň2  ¨H  ë2   H  ć2  H  ß2  |H  Ú2  `H  Ó2  XH  Î2  <H  Ç2  4H  Â2  H  ť2  H  ś2  ôG  Ż2  ěG  Ş2  ĐG  Ł2  ČG  2  ŹG  2  ¤G  2  G  2  G  2  dG  2  \G  z2  TG  s2  LG  l2  DG  e2  <G  ^2  4G  W2  ,G  P2  $G  I2  G  B2  G  ;2  řF  42  đF  /2  ÔF  (2  ĚF  #2  °F  2  ¨F  2  F  2  F  2  hF  2  `F  ˙1  DF  ř1  <F  ó1   F  ě1  F  ç1  üE  ŕ1  ôE  Ű1  ŘE  Ô1  ĐE  Ď1  ´E  Č1  ŹE  Ă1  E  ź1  E  ˇ1  lE  °1  dE  Ť1  HE  ¤1  @E  1  $E  1  E  1   E  1  řD  1  ÜD  1  ÔD  {1  ¸D  t1  °D  o1  D  h1  D  c1  pD  \1  hD  W1  LD  P1  DD  K1  (D  D1   D  ?1  D  81  üC  31  ŕC  ,1  ŘC  '1  źC   1  ´C  1  C  1  C  1  tC  1  lC  1  PC  ü0  HC  ÷0  ,C  đ0  $C  ë0  C  ä0   C  ß0  äB  Ř0  ÜB  Ó0  ŔB  Ě0  ¸B  Ç0  B  Ŕ0  B  ť0  xB  ´0  pB  Ż0  TB  ¨0  LB  Ł0  0B  0  (B  0  B  0  B  0  čA  0  ŕA  0  ÄA  x0  źA  s0   A  l0  A  g0  |A  `0  tA  [0  XA  T0  PA  O0  4A  H0  ,A  C0  A  <0  A  70  ě@  00  ä@  +0  Č@  $0  Ŕ@  0  ¤@  0  @  0  @  0  x@  0  \@   0  T@  ű/  8@  ô/  0@  ď/  @  č/  @  ă/  đ?  Ü/  č?  ×/  Ě?  Đ/  Ä?  Ë/  ź?  Ä/   ?  ˝/  ?  ¸/  |?  ą/  t?  Ź/  X?  Ľ/  P?   /  4?  /  ,?  /  ?  /  ?  /  ě>  /  ä>  |/  Č>  u/  Ŕ>  p/  ¤>  i/  >  d/  >  ]/  x>  X/  \>  Q/  T>  L/  8>  E/  0>  @/  (>  9/  >  2/  >  -/  č=  &/  ŕ=  !/  Ä=  /  ź=  /   =  /  =  	/  |=  /  t=  ý.  X=  ö.  P=  ń.  4=  ę.  ,=  ĺ.  =  Ţ.  =  Ů.  ě<  Ň.  ä<  Í.  Č<  Ć.  Ŕ<  Á.  ¤<  ş.  <  ľ.  <  Ž.  x<  Š.  \<  ˘.  T<  .  8<  .  0<  .  <  .  <  .  đ;  ~.  č;  y.  Ě;  r.  Ä;  m.  ¨;  f.   ;  a.  ;  Z.  |;  U.  `;  N.  X;  I.  <;  B.  4;  =.  ;  6.  ;  1.  ô:  *.  ě:  %.  Đ:  .  Č:  .  Ź:  .  ¤:  .  :  .  :  .  d:  ú-  \:  ő-  @:  î-  8:  é-  :  â-  :  Ý-  ř9  Ö-  đ9  Ń-  Ô9  Ę-  Ě9  Ĺ-  °9  ž-  ¨9  š-  9  ˛-  9  ­-  h9  Ś-  `9  Ą-  D9  -  <9  -   9  -  9  -  ü8  -  ô8  }-  Ř8  v-  Đ8  q-  ´8  j-  Ź8  e-  ¤8  ^-  8  W-  8  R-  d8  K-  \8  F-  @8  ?-  88  :-  8  3-  8  .-  ř7  '-  đ7  "-  Ô7  -  Ě7  -  °7  -  ¨7  
-  7  -  7  ţ,  h7  ÷,  `7  ň,  D7  ë,  <7  ć,   7  ß,  7  Ú,  ü6  Ó,  ô6  Î,  Ř6  Ç,  Đ6  Â,  ´6  ť,  Ź6  ś,  6  Ż,  6  Ş,  l6  Ł,  d6  ,  H6  ,  @6  ,  $6  ,  6  ,   6  ,  ř5  z,  Ü5  s,  Ô5  n,  ¸5  g,  °5  b,  5  [,  5  V,  p5  O,  h5  J,  L5  C,  D5  >,  (5  7,   5  2,  5  +,  ü4  &,  ŕ4  ,  Ř4  ,  ź4  ,  ´4  ,  4  ,  4  ,  t4  ű+  l4  ö+  P4  ď+  H4  ę+  ,4  ă+  $4  Ţ+  4  ×+   4  Ň+  ä3  Ë+  Ü3  Ć+  Ŕ3  ż+  ¸3  ş+  3  ł+  3  Ž+  x3  §+  p3  ˘+  T3  +  L3  +  03  +  (3  +  3  +  3  ~+  č2  w+  ŕ2  r+  Ä2  k+  ź2  f+   2  _+  2  Z+  |2  S+  t2  N+  X2  G+  P2  B+  42  ;+  ,2  6+  2  /+  2  *+  ě1  #+  ä1  +  Č1  +  Ŕ1  +  ¤1  +  1  +  1  ˙*  x1  ú*  \1  ó*  T1  î*  81  ç*  01  â*  1  Ű*  1  Ö*  đ0  Ď*  č0  Ę*  Ě0  Ă*  Ä0  ž*  ¨0  ˇ*   0  ˛*  0  Ť*  |0  Ś*  `0  *  X0  *  <0  *  40  *  0  *  0  *  ô/  {*  ě/  v*  Đ/  o*  Č/  j*  Ź/  c*  ¤/  ^*  /  W*  /  R*  d/  K*  \/  F*  @/  ?*  8/  :*  /  3*  /  .*  ř.  '*  đ.  "*  Ô.  *  Ě.  *  °.  *  ¨.  
*  .  *  .  ţ)  h.  ÷)  `.  ň)  D.  ë)  <.  ć)   .  ß)  .  Ú)  ü-  Ó)  ô-  Î)  Ř-  Ç)  Đ-  Â)  ´-  ť)  Ź-  ś)  -  Ż)  -  Ş)  l-  Ł)  d-  )  H-  )  @-  )  $-  )  -  )   -  )  ř,  z)  Ü,  s)  Ô,  n)  ¸,  g)  °,  b)  ,  [)  ,  V)  p,  O)  h,  J)  L,  C)  D,  >)  (,  7)   ,  2)  ,  +)  ü+  &)  ŕ+  )  Ř+  )  ź+  )  ´+  )  +  )  +  )  t+  ű(  l+  ö(  P+  ď(  H+  ę(  ,+  ă(  $+  Ţ(  +  ×(   +  Ň(  ä*  Ë(  Ü*  Ć(  Ŕ*  ż(  ¸*  ş(  *  ł(  *  Ž(  x*  §(  p*  ˘(  T*  (  L*  (  0*  (  (*  (  *  (  *  ~(  č)  w(  ŕ)  r(  Ä)  k(  ź)  f(   )  _(  )  Z(  |)  S(  t)  N(  X)  G(  P)  B(  4)  ;(  ,)  6(  )  /(  )  *(  ě(  #(  ä(  (  Č(  (  Ŕ(  (  ¤(  (  (  (  (  ˙'  x(  ú'  \(  ó'  T(  î'  8(  ç'  0(  â'  (  Ű'  (  Ö'  đ'  Ď'  č'  Ę'  Ě'  Ă'  Ä'  ž'  ¨'  ˇ'   '  ˛'  '  Ť'  |'  Ś'  `'  '  X'  '  <'  '  4'  '  '  '  '  '  ô&  {'  ě&  v'  Đ&  o'  Č&  j'  Ź&  c'  ¤&  ^'  &  W'  &  R'  d&  K'  \&  F'  @&  ?'  8&  :'  &  3'  &  .'  &  ''  đ%   '  č%  '  Ě%  '  Ä%  '  ¨%  '   %  '  %  ü&  |%  ÷&  `%  đ&  X%  ë&  <%  ä&  4%  ß&  %  Ř&  %  Ó&  ô$  Ě&  ě$  Ç&  Đ$  Ŕ&  Č$  ť&  Ź$  ´&  ¤$  Ż&  $  ¨&  $  Ł&  d$  &  \$  &  @$  &  8$  &  $  &  $  &  ř#  x&  đ#  s&  Ô#  l&  Ě#  g&  °#  `&  ¨#  [&  #  T&  #  O&  h#  H&  `#  C&  D#  <&  <#  7&   #  0&  #  +&  ü"  $&  ô"  &  Ř"  &  Đ"  &  ´"  &  Ź"  &  "   &  "  ű%  l"  ô%  d"  ď%  H"  č%  @"  ă%  $"  Ü%  "  ×%   "  Đ%  ř!  Ë%  Ü!  Ä%  Ô!  ż%  ¸!  ¸%  °!  ł%  !  Ź%  !  §%  p!   %  h!  %  L!  %  D!  %  (!  %   !  %  !  |%  ü   w%  ŕ   p%  Ř   k%  ź   d%  ´   _%     X%     S%  t   L%  l   G%  P   @%  H   ;%  ,   4%  $   /%     (%      #%  ä  %  Ü  %  Ŕ  %  ¸  %    %    ˙$  x  ř$  p  ó$  T  ě$  L  ç$  0  ŕ$  (  Ű$    Ô$    Ď$  č  Č$  ŕ  Ă$  Ä  ź$  ź  ˇ$     °$    Ť$    ¤$  t  $  l  $  P  $  H  $  ,  $  $  $    y$     t$  ä  m$  Ü  h$  Ŕ  a$  ¸  \$    U$    P$  x  I$  p  D$  T  =$  L  8$  0  1$  (  ,$    %$     $  č  $  ŕ  $  Ä  $  ź  $     $    ü#  |  ő#  t  đ#  X  é#  P  ä#  4  Ý#  ,  Ř#    Ń#    Ě#  ě  Ĺ#  ä  Ŕ#  Č  š#  Ŕ  ´#  ¤  ­#    ¨#    Ą#  x  #  \  #  T  #  8  #  0  #    }#    x#  đ  q#  č  l#  Ě  e#  Ä  `#  ¨  Y#     T#    M#  |  H#  `  A#  X  <#  <  5#  4  0#    )#    $#  ô  #  ě  #  Đ  #  Č  #  Ź  #  ¤   #    ů"    ô"  d  í"  \  č"  @  á"  8  Ü"    Ő"    Đ"  ř  É"  đ  Ä"  Ô  ˝"  Ě  ¸"  °  ą"  ¨  Ź"    Ľ"     "  h  "  `  "  D  "  <  "     "    |"  ü  u"  ô  p"  Ř  i"  Đ  d"  ´  ]"  Ź  X"    Q"    L"  l  E"  d  @"  H  9"  @  4"  $  -"    ("     !"  ř  "  Ü  "  Ô  "  ¸  	"  °  "    ý!    ř!  p  ń!  h  ě!  L  ĺ!  D  ŕ!  (  Ů!     Ô!    Í!  ü  Č!  ŕ  Á!  Ř  ź!  ź  ľ!  ´  °!    Š!    ¤!  t  !  l  !  P  !  H  !  ,  !  $  !    y!     t!  ä  m!  Ü  h!  Ŕ  a!  ¸  \!    U!    P!  x  I!  p  D!  T  =!  L  8!  0  1!  (  ,!    %!     !  č  !  ŕ  !  Ä  !  ź  !     !    ü   |  ő   t  đ   X  é   P  ä   4  Ý   ,  Ř     Ń     Ě   ě  Ĺ   ä  Ŕ   Č  š   Ŕ  ´   ¤  ­     ¨     Ą   x     \     T     8     0       }     x   đ  q   č  l   Ě  e   Ä  `   ¨  Y      T     M   |  H   `  A   X  <   <  5   4  0     )     $   ô     ě     Đ     Č     Ź     ¤        ů    ô  d  í  \  č  @  á  8  Ü    Ő    Đ  ř  É  đ  Ä  Ô  ˝  Ě  ¸  °  ą  ¨  Ź    Ľ       h    `    D    <           |  ü  u  ô  p  Ř  i  Đ  d  ´  ]  Ź  X    Q    L  l  E  d  @  H  9  @  4  $  -    (     !  ř    Ü    Ô    ¸  	  °      ý    ř  p  ń  h  ě  L  ĺ  D  ŕ  (  Ů     Ô    Í  ü  Č  ŕ  Á  Ř  ź  ź  ľ  ´  °    Š    ¤  t    l    P    H    ,    $      y     t  ä  m  Ü  h  Ŕ  a  ¸  \    U    P  x  I  p  D  T  =  L  8  0  1  (  ,    %       č
    ŕ
    Ä
    ź
     
    
  ü  |
  ő  t
  đ  X
  é  P
  ä  4
  Ý  ,
  Ř  
  Ń  
  Ě  ě	  Ĺ  ä	  Ŕ  Č	  š  Ŕ	  ´  ¤	  ­  	  ¨  	  Ą  x	    \	    T	    8	    0	    	  }  	  x  đ  q  č  l  Ě  e  Ä  `  ¨  Y     T    M  |  H  `  A  X  <  <  5  4  0    )    $  ô    ě    Đ    Č    Ź    ¤       ů    ô  d  í  \  č  @  á  8  Ü    Ő    Đ  ř  É  đ  Ä  Ô  ˝  Ě  ¸  °  ą  ¨  Ź    Ľ       h    `    D    <           |  ü  u  ô  p  Ř  i  Đ  d  ´  ]  Ź  X    Q    L  l  E  d  @  H  9  @  4  $  -    (     !  ř    Ü    Ô    Ě  	  Ä    ź  ű  ´  ô  Ź  í  ¤  ć    ß    Ř    Ń  p  Ę  h  Ĺ  L  ž  D  š  (  ˛     ­    Ś  ü  Ą  ŕ    Ř    ź    ´          }  t  v  l  q  P  j  H  e  ,  ^  $  Y    R     M  ä  F  Ü  A  Ŕ  :  ¸  5    .    )  x  "  p    T    L    0  
  (      ţ    ů  č  ň  ŕ  í  Ä  ć  ź  á     Ú    Ő  |  Î  t  É  X  Â  P  ˝  4  ś  ,  ą    Ş    Ľ  ě     ä     Č     Ŕ     ¤             z  \  [  Z  	Y  	X  	W  	V   	U  	T  	S  	R  	Q  	P  	O  	N  	M  	L  	K  	J  	I  	H  	G  	F   	E  	D  	C  	B  	A  	@  		?  	>  
	=  <  ;  :  9  8  7  6  5  4  3  2  1  0  /  .  -  ,  +  *   )  (  '  &  %  $  	#  "  
!       
      	                   
  
  !
  "
  
  
  #
  
  

  
	  $
  
  
  
  
  
  
  
  
   
˙  
ţ  
ý  
ü  
ű   
ú  
ů  
ř  	
÷  
ö  

ő  
ô  	ó  $ň  ń  đ  %ď  î  í  ě  ë  ę  é  č  #ç  (ć   ĺ  &ä  ă  â  á  ŕ  ß   Ţ  Ý  Ü  Ű  Ú  Ů  Ř  ×  "Ö  Ő  Ô  Ó  Ň  Ń  
Đ  !Ď  Î  Í  'Ě  Ë  Ę  É  bČ  8Ç  KĆ  >Ĺ  Ä  >Ă  >Â  >Á  @Ŕ  $ż  %ž  >˝  2ź  /ť  #ş  2š  )'¸  ;
ˇ  Oś  (ľ  W´  'ł  1˛  Pą  '°  Ż  Ž  .­  'Ź  Ť  1Ş  'Š   ¨  §  pŚ  mĽ  ]¤  >Ł  =˘  "Ą  F   S    i  %-  0  *  E  /'  6  2  H  %  3    )  %    R  !  !  !  !  ú          0  &    #    -  ,~  .}  1|  {  Pz  Qy  %x  w  v  *u  t  +s  r  q  p  /o  n  m  )l  'k  (j  i   h  $g  ,f  *e  d  ,c  	,b  %a  `  f_  g+^  	%]  0\  v[  ,Z  Y  WX  UW  SV  TU  VT  XS  >'R  AQ  P  &O  |N  3M  NL  -K  &J  WI  DH  CG  (F  @E  %D  "C  "B  %A  (@  9?  ?>  )=  )<  );  $:  d9  i8  l7  c6  k5  f4  g3  h2  b1  Q0  /  d..  c.-  b.,  a.+  `.*  z.)  _.(  ^.'  ].&  \.%  s.$  [.Z.Y.#  X."  W.!  V.   y.  e.  g.  U.T.  v.  u.  t.  S.  R.  O.  N.  M.  L.  K.  J.  I.  H.  G.  F.E.D.  C.  B.  A.
  @.	  ?.  Q.  q.  r.  ;.  >.  =.  o.  <.   :.˙  9.ţ  8.ý  P.ü  7.ű  l.ú  5.ů  4.ř  6.÷  3.ö  j.ő  2.ô  f.ó  1.ň  0.ń  /.đ  ..ď  -.î  ,.í  +.ě  *.ë  ).ę  (.é  &.č  '.ç  %.ć  $.ĺ  #.ä  ".ă  k.â  !.á   .ŕ  .ß  .Ţ  .Ý  n.Ü  .Ű  .Ú  .Ů  .Ř  i.×  .Ö  .Ő  .Ô  .Ó  ..Ň  .Ń  .Đ  .Ď  .Î  .Í  h.Ě  .Ë  .Ę  p.É  w.Č  x.Ç  .
.Ć  m.Ĺ  	.Ä  .Ă  .Â  .Á  ....Ŕ  .ż  ož  ˝  Cź  Fť  Dş  Bš  C¸  ˇ  ś  ľ  ´  	'ł  ˛   ą  	*°  4Ż  3Ž  ř­  HŹ  3Ť  4Ş  Š  %¨  S§  RŚ  ]Ľ  P¤  \Ł  Z˘  [Ą  Q   ^dcYbXaW`V  _  U    '    f+  i+  h+  (  (    R  %  &  	&  a  
&  %                  	            ~  }  |  {  z  y  x  w  v  u  
t  s   r  q  p  /o  Jn  Jm  	2l  jk  "j  2i  2h  2g  '+f  +e  2+d  +c  "+b  +a  +`  +_  +^  +]  +\  e+[  +Z  !+Y  3+X  	+W  ++V  
+U  +T  +S  +R  4+#+Q  +P  5+O  +N  +M  +L  +K  #J  YI  fH  0G  )F  *E  DD  1C  
,B  0A  @  (?  N>  *=  *<  E;  F:  09  8  7  F6  *5  4  M3  K2  T1  *0   /  3.  M-  2,  *+  (*  )  %(  !'  *&  )%  "$  (''#  B'"  '!  '   /  /  >  h  )    +  =    (  )  A    *  	  0  0  <  %    2  
  :	  _  }  5    ;  %    )  )   %˙  ţ  (ý  ü  1ű  ú  "ů  !ř   '÷  *ö  ?ő  nô  >DC9B8A7@6ó  ?ň  5ń  ,đ  ,ď  ,î  ,í  ,ě  ,ë  0'ę  (é  č  9'ç  'ć  *ĺ  P'ä  2ă  â  á  *ŕ  5'ß  `Ţ  N'Ý  Ü  &Ű  Ú  Ů  #Ř  &×   Ö  Ő  &Ô  &Ó  &Ň   Ń  Đ  
Ď  Î  Í  Ě  +Ë  *Ę  )É  (Č  'Ç  &Ć  %Ĺ  $Ä  #Ă  "Â  !Á   Ŕ  ż  ž  ˝  ź  ť  ş  š  ¸  ˇ  ś  ľ  ´  ł  ˛  ą  °  Ż  Ž  ­  Ź  Ť  Ş  	Š  (¨  (§  Ś  (Ľ  	(¤  LŁ  %˘  >Ą     h  I  &  T  A'  "  &  "  '  '  4'  #'  L'  J'    7'  ~  E'  D'	    1  '  8  g    '  '  '  
'  G  '      ~  }  '|  {  'z  'y  -x  cw  'v  1'u  &t  8's  ;'r  *q  *'p  lo  @'n  'm  &'l  ''k  G'j  F'i  'h  g  C'f  'e  Äd  :'c  'b  'a  6'`  '_  =^  <]  ;\  [  "'Z  'Y  'X  K'W  %V  U  1T  S  R  1Q  !'P  %'O  'N  -'M  .'L  űK  
%J  I  /H  QG  -F  *E  /D  ,'C  'B  %A  +@  +'?  >  i=  #<  ţ;  :  9  M8  
7  ='6  $5  b4  3  2  <1  70  k/  .  x-  y,  X+  *  U)  e(  &'  8&  F%  N$  M#  9"  L!  K   Z  [          )  6  7  3  &  %    !    4  "  #    1  $  
   	      0    	      2  '   (˙   ţ   ý   5ü   ű   ú   Ců   Dř   B÷   Rö   @ő   Qô   Wó   Uň   Xń   Yđ   ^ď   ]î   _í   Eě   Gë   Ję   Hé   Ič   Vç   \ć   `ĺ   Tä   Aă   :â   Pá   Sŕ   #ß   *Ţ   
(Ý   3Ü   <Ű   O'Ú   Ů   IŘ   H×   eÖ   ?Ő   ť˛Ô   ´Ó   ľŇ   şŃ   ;Đ   łĎ   &Î   	"Í   Ě   qË   ÷Ę   $É   (Č   Ç   3Ć   $Ĺ   <Ä   #Ă   (Â   VÁ   &Ŕ   9ż   ž   2˝   &ź   %ť   &ş   #š   #¸   =ˇ   ś   ľ   "´   !ł   t˛   ^ą   °   /Ż   "Ž   	­   LŹ   YŤ   [Ş   ZŠ   :¨   "§   Ś   cĽ   ¤   `Ł   
*˘   %Ą   ů    !   ˙   ,   $   (   4   (   $'   M'   4   &   &   &   &   ?'   &   O   (         
       ¨   Ś   Ľ   Ą   ¤   ˘   §   Ł   %   %   d   	~   #}   ü|   2{   z   y   
x   %w   !v   !u   Ot   Ss   ar   (q   p   
!o   wn   Km   1l   k   j   >i   9h   =g   f   Ae   d   c   Vb   Na   `   _   ^   X]   \   >[   >Z   ?Y   X   W   V   DU   T   S   2R   5Q   :P   ;O   N   <M   L   K   2'J   I   H   CG   QF   E   D   0C   B   /A   %@   *?   *>   3=   
"<   ;   .:   9   8   7   P6   5   /4   J3   2   B1   0   Ă/   .   -   ,   9+   *   )   )(   A'   &   %   $   #   "   R!   U    C   :   $#"!          "   r   @   (   0   5   {   z   j   <'   G   s      I   (   u   3'
   \	      $                  
2          0nepoznat error$Validity check will not be enforced.9The '%0ds' operation is not allowed on fixed-size arrays.[The specified array index is out of bounds. The index is %0dl, and the array limit is %1dl.0Not enough memory to allocate or grow the array.The starting and ending indexes are not valid for this array. The starting index is %0dl, ending index is %1dl, and the array size is %2dl.9You cannot allocate an array with a size larger than 64k.3Access to table disabled because of previous error.Invalid file access.$Action not supported for this object#Index is being used to order table."A Transaction is currently active.*A user transaction is already in progress.The alias '%0ds' is in use.Alias is a server.              <The destination table of the rename has a conflicting alias.&The alias '%0ds' has not been defined.Alias is not currently opened.-The path for the alias '%0ds' does not exist.?The Public Alias being added '%0ds' is already a Project Alias.?The Project Alias being added '%0ds' is already a Public Alias.6The alias '%0ds' and the Database '%1ds' do not match.All fields are read only.&Record already locked by this session.D'%0ds' failed because it has the wrong number of arguments supplied.dA method which takes an indeterminate number of arguments has an argument which is not a valid type.At beginning of table.Bad Date SeparatorBad Time SeparatorBad AM-PM SpecificationUnknown alias.         2'%0ds' failed because argument %1di was not legal.!Could not resize a dynamic array.Blob has invalid header.Illegal characters in alias(The constant group '%0ds' was not found.Bad Date SpecificationBad Day SpecificationInvalid driver name.Invalid field.,Field '%0ds' has a badly formed type '%1ds'., Cannot interpret file. It could be corrupt.Bad Hour Specification,Index used to join tables is no longer validBad Logical SpecificationBad Minute SpecificationBad Month Specification   6The method, '%0ds', is not allowed on a '%1ds' object.Bad Seconds SpecificationInvalid table.Bad Time SpecificationxTrying to do a copyToArray or copyFromArray with an array that does not correspond, has unassigned elements or is empty.uThe ObjectPAL version used in this form is incompatible with this version of Paradox. You must recompile from source.Bad Day of Week Specification%Action is not supported in a crosstabBad Year Specification+Crosstab or Query contains too many fields.The field is blank. A blank table name was provided.Value is illegal or blank.BLOB file is missing.BLOB has been modified.BLOB not opened.    BLOB already opened.+Problem reading data from .MB file on disk.BLOB file version is too old.Mismatched brackets. Stopped program at your request.Buffer size error ??Buffer is too small.'Found problem in a CFunction operation.User selected Cancel.!Canceled open database operation.Cancelled password entryCannot close index.Alias currently in use.#Cannot copy selection to Clipboard.Unable to copy to file."Cannot cut selection to Clipboard.             Unable to cut to file.Unable to delete.Unable to delete line.Cannot duplicate field.You cannot modify this field.This field cannot be edited.#Operation not valid during refresh.Unable to exit field. Unable to exit record.Cannot insert record here.Unable to insert text.Cannot load driver.Cannot load language driver.Cannot lock record.'Cannot lock record dependent on server.'Unable to fill field from lookup table.    6Unable to fill corresponding fields from lookup table.'Unable to fill field from master table.+Cannot create query from the selected file.Cannot move in that direction.Could not open Clipboard.Unable to open table.Unable to set Order/Range.5Cannot paste from Clipboard into the selected object.Unable to paste from file.Unable to paste link.Unable to perform action.%The value is not legal in this field.%Record contains illegal field values.Cannot rotate columns.Cannot undelete record.TThe Primary Index can not be dropped since another index is maintained on the table.          %Cannot load an IDAPI service library./Could not open table '%0ds'. Engine error %1dx.Unable to search in this field.EA %0ds cannot be done on %1ds %2ds because it is an expression index.$Table does not show deleted records.Cannot toggle to table view.*Cannot write to Engine configuration file.4Cannot initialize with different configuration file.Too many clients./An error was triggered in the '%0ds' procedure. The constant name was not found.mCould not convert data of type '%0cc' to type %1cc'. The types are mismatched or the values are incompatible.Copy linked tables?3Cannot copy a file over itself. Use rename instead.Corrupt lock file.-An error was triggered in a Create operation.        HThe %0ds of field %1ds is outside range %2di - %3di. Setting it to %4di.Too many open cursors.Too many open databases.DDE: Buffer allocation failed.#DDE: Execute server command failed.,DDE: Specified DDE server is not responding.DDE: Could not lock memory."DDE: Session not opened. Use Open.%DDE: Send data (poke) request failed.DDE: Could not receive data.%DDE: Time out while waiting for data.2DDE: Server and Topic were not assigned. Use Open.-Character(s) not supported by Table Language.Data is too long for field.JAn error was triggered in the '%0ds' method on an object of Database type.A deadlock was detected.              Cannot modify this document.OCannot make this master a detail of another table if its details are not empty.Destination must be indexed.+Master has detail records. Cannot empty it.3Master has detail records. Cannot delete or modify.Detail table(s) exist.Detail table is open.Different sort order.Tables in different directories*Cannot set cursor of one table to another.Directory is busy./Directory in use by earlier version of Paradox.Directory is locked.Cannot access directory.Directory is not private.A disk error occurred: %0rs Cannot divide by zero.2The drive, '%0ds', either is invalid or not ready.Too many active drivers.Driver not loaded."The driver type '%0ds' is unknown.Duplicate alias name.Table alias is already in use.5The data type %00cc does not support dynamic binding.At end of table.Method requires an edit object.IObject to be embedded violates data constraints when placed in container.8Chosen container cannot embed or disembed other objects.7Object to be embedded falls outside edges of container.#Cannot paste -- Clipboard is empty.The table is empty.End of BLOB.           %Query and Engine DLLs are mismatched."An error was triggered in an Enum.8Cannot use an expression for linking in this data model.>The destination table of the rename has an extension mismatch.2Could not create file. Protection or access error.8Could not open output file.  Protection or access error.?You have called fail() without any error code or error message.Could not open database.The method '%0ds' failed.4Could not open standard database. Engine error %0dx.Corrupt family file.Field is blank. Too many fields in Table Create.(Field(s) linked to more than one master.DField will be trimmed, cannot put master records into PROBLEM table.-The specified field is not the current field.          Must be in Field View to search.&Field value out of lookup table range.Could not get a field's value.Table is busy.!Corrupt file - other than header.9%00ds:%02ds=>The file, '%3ds', could not be created.	%4rsFile Delete operation failed.File already exists.File name is a directory name.File is locked.Cannot access file.!The file, '%0ds', does not exist.;The filter has an error in field '%0di' at position '%1di'./You cannot change the type of a typed variable.Could not find family member.Master record missing.     5You have tried to access a document that is not open.7Form has PAL syntax errors. Reopening in design window.6The design object has compile errors and will not run.%%01ds is not a valid name for a %0ds.;Invalid WinStyle combination for opening the design object./The design object, '%0ds', could not be opened.Cannot open query*Query needs to be saved and/or re-executedCannot open tableThis table is read-onlyCould not write to file.&Function not found in service library.Unknown error.General SQL error.Key group is locked.-Table(s) open. Cannot perform this operation.             Corrupt table/index header.Invalid or missing exponentInvalid numeric signpCannot parse the input file: either a line is too long or has no end of line character, or no fields were found.2No fields can be written to the destination table."Number has extra characters at endOFixed length specification references a field not contained in the export table"Unknown problem with posting fieldForeign key violationADelimitFields must be either DTDelimJustText or DTDelimAllFields.LA delimiter must be either a single character or an empty string (for none).'Extension not valid for this file type.'A separator must be a single character.-Character set must be either DTOEM or DTANSI.QField type is invalid, expecting an exportable dBase field type: C, F, N, D, or LField specification is invalid     bField type is invalid, expecting an exportable Paradox field type: A, #, N, D, S, $, I, L, @, or T)Value does not reside in the lookup tableValue too large+Value out of range (too large or too small)Value too small%Numbers cannot contain multiple signs Cannot export a table to itself."Number does not contain any digits4Operation invalid, Source file is not a spreadsheet.+Don't know how to Export to this file type.-Don't know how to Import from this file type..Selected range of cells is too wide to import.$String conversion error on line %ld.3Data in the selected block is too sparse to import.Unable to close database.Unable to open database.   #Not a supported Excel file version.Excel Index record not found.ATable selected to load is not a valid Export Specification table.7An error occured while parsing the specification table.'Unable to get table field descriptions.Could not close the file.Could not create the file.Not a valid file name.Could not open the file.Could not read from file.Unable to get table field.Unable to get table properties."Unable to set table cursor to top.ATable selected to load is not a valid Import Specification table.Input file is incorrect.Unable to insert table record.      Unable to get next table record.Invalid page name.%The input file is password protected.Unable to put table field.Invalid cell range.!Unable to get table record count."Unable to initialize table record.Invalid record length.+Record size is limited to 32000 characters.7Errors encountered during import, records were skipped.Not a valid table name.Unable to close database table. Unable to create database table.Unable to lock database table.Unable to open database table.#Unknown problem with posting record            $Required value has not been provided"Probably losing significant digitsPossible loss of correct sign0Cannot export a table with more than 255 fields.1Source field doesn't match destination field type=Source field was an unexpected type which can't be translated<Unsupported transfer: Source or Destination must be a table.Operation canceled by user.Incorrect expression syntax.<The property '%0ds' is not associated with the alias '%1ds'.Illegal character.+Cannot convert data of type '%0cn' to %1cc.YTrying to create a Paradox index '%0ds' which must be named the same as the field '%1ds'.QTrying to create a Paradox index '%0ds' which can't be named the same as a field./Can't perform an '%0ds' on an InMemory TCursor."An illegal PAL operator was found.        !'%0ds' is not a valid table name.&Crosstab specification is not allowed.(Cannot delete object(s) that are in use.$The specified field type is invalid.'The specified field subtype is invalid.'Trying to store incompatible data type.'Data types are different when compared.Incompatible record structures.Incomplete exponent.Field is not complete.Incomplete symbol."Incomplete crosstab specification./The parameter is not formatted correctly: %0ds.Corrupt index.Index does not exist.-An error was triggered in an Index operation.            Index already exists.Index could not be created.Too many indexes on table.Index name required.Index is open.Index is out of date.Index is read only.Could not start Index.#Infinite record insertion attempted-Interface mismatch. Engine version different.An unexpected error occurred."Some internal limit (see context).Invalid File Attributes: %0ds%Invalid BLOB handle in record buffer.Invalid BLOB length.Invalid offset into the BLOB.    Bookmarks do not match table.Invalid callback buffer length. Invalid configuration parameter.Invalid character.'The specified column number is invalid.%Invalid database alias specification.Database not opened..Cannot compare data types - Memo, Bitmap, OLE.Invalid Date.Invalid descriptor.Invalid descriptor number.Invalid directory.Could not access drive."The filter expression is not valid/The filter expression in field %s is not valid.&The filter expression is not valid, %s          Invalid field descriptor.Invalid field name.Invalid field type.Invalid field transformation.Invalid file extension./Invalid file extension for this operation: %0dsInvalid file name.Invalid FilterInvalid format.Invalid handle to the function.Invalid index create requestInvalid index delete requestInvalid index descriptor.Invalid index/tag name.#Invalid array of index descriptors.Invalid index type   &'%0ds' is not a valid isolation level.:Cannot evaluate Key or Key does not pass filter condition.Invalid use of keyword.Invalid language Driver.!Invalid linked cursor expression. Master table level is incorrect.Invalid mode.Invalid modify request.*Can't perform %0ds for table of type %1ds.Invalid optional parameter.Invalid option.Invalid parameter.I%00ds:%01ds:%02ds: The value of the parameter, '%3ds', is not legal. %4rsInvalid password given.Invalid path.#The specified file name is invalid.      "The specified property is invalid.Query not opened.Invalid record structure.Invalid number of records.Cannot change this RINTDesc.3Invalid array of referential integrity descriptors..Invalid ordering of tables during restructure.invalid restructure operation.The specified row is invalid.SQL object not opened.?The first argument is not a session or the session is not open.Invalid session handle."Corrupt system configuration file.TCursor not opened.Invalid table create requestInvalid table delete request         !'%0ds' is not a valid Table lock.Invalid table name.Table variable not attached.Invalid Time.Invalid Datetime%Translate Error. Value out of bounds.Unknown user name or password.,Invalid array of validity check descriptors.%Foreign and primary key do not match.Record/Key deleted.Key violation.Could not find language driver.0Language Drivers of Table and Index do not match'Link information will not fit in field.BA table linked by referential integrity requires password to open.*Maximum number of items in a list is 2500.            1Live answer set forced to disk for this operation-An error was triggered in a Locate operation.#Could not perform locate operation.Lock file has grown too large.JTrying to '%0ds' (un)lock table '%1ds' by name which can't be done in PAL.Lock time out.Record locked by another user.Unable to find lookup value.Exclusive access was lost.Table lock was lost.#Unable to display the address book.Invalid address index: %d.Invalid attachment index: %dError closing attachment %s.&Unable to open the attachment file %s.1Unable to write the temporary attachment file %s.     2Invalid specification of address list to edit: %d.*Unable to complete the mail system logoff.)Unable to complete the mail system logon."MAPI: Access to mail system denied-MAPI: Mail recipient information is ambiguous-MAPI: The specified attachment was not found.3MAPI: One or more attachments could not be located.ZMAPI: An attachment could not be written to a temporary file. Check directory permissions.GMAPI: One or more recipients were unknown. No dialog box was displayed.OMAPI: The type of a recipient was not MAIL_ADDRTO, MAIL_ADDRCC, or MAIL_ADDRBC.MAPI: The disk was full.gMAPI returned an unspecified error.  Check your addresses, attachments, and/or your MAPI configuration./MAPI: There was insufficient memory to proceed.OMAPI: The value of the numberOfLists parameter was outside the range of 0 to 4.)MAPI: An invalid message ID was provided.FMAPI: One or more of the recipients in the address list was not valid.                HMAPI: Invalid session handle - only one logon allowed per MAIL variable.zMAPI: There was no default sign-in, and the user failed to sign in successfully when the sign-in dialog box was displayed./MAPI: Can not modify this message, it's in use.$MAPI: encountered a Network failure.'MAPI: Couldnt find a matching message.'MAPI: No name specified for an address.IMAPI: The operation was not supported by the underlying messaging system.7MAPI: The text in the message was too large to be sent.PMAPI: Too many file attachments were contained in the message. No mail was read.FMAPI: There were too many recipients of the message. No mail was read.%MAPI: Too many sessions open at once."MAPI: undocumented error occurred.7MAPI: The recipient did not appear in the address list./Unable to load the MAPI subsystem (MAPI32.DLL).$Unable to load the MAPI function %s./Insufficient memory to complete this operation.       /Unable to resolve the specified mail addresses.Mail send operation failed."The user cancelled this operation.%Link to master table already defined.gSelf referencing referential integrity must be entered one at a time with no other changes to the tableMaster table is open."%s" was not found.EAn arithmetic error occurred during '%0ds' execution. Reason: '%1rs'.Maximum validity check failed.Corrupt Memo/BLOB file.;The method, '%0mn' is not visible from the object, '%01un'.'The method is not valid for the object.Minimum validity check failed.,Cannot perform '%0ds' between %1cc and %2cc.#Mismatch in the number of arguments3The disk file has been modified since it was loaded    %Multi-level cascade is not supported. Attempt to re-initialize Engine."Only one decimal point is allowed.Only one sign is allowed.2Multiple records found, but only one was expected.&Must use baseorder for this operation.Operation not applicable. Name not unique in this context.Name is reserved.Cannot format a NAN.)Table cannot be opened for exclusive use.Need to do (hard) restructure.Cannot lock network file.Wrong .NET file version.Network initialization failed.+Directory is controlled by other .NET file.         Unknown network error.Network user limit exceeded.Date Separator  missing.Time Separator  missing.AM-PM Specification missing.,No active transaction to commit or rollback.3'%0ds' failed because it has no arguments supplied.No associated index.No callback function.&Cannot find Engine configuration file.No current record.)Cannot modify the Data Model in Run Mode.Day Specification missing.*Format is display only. Need day or month.*Trying to store into a nonexistent record.+Insufficient room for detail records of %s.                Insufficient disk space.)Insufficient family rights for operation.(Insufficient field rights for operation.!Could not fit field %s in layout.Not enough file handles.Hour Specification missing."Format is display only. Need hour.No key field in this table.(The table(tcursor) is not '%0ds' locked.The record is not lockedLogical Specification missing.#Lookup not available on this field.*No master lookup available for this field.*Memo editing is not allowed on this field.'Insufficient memory for this operation.Minute Specification missing.             Month Specification missing.#Multiple connections not supported.Missing number.Invalid page.#Invalid character(s) in this field./The property is not valid for the given object.*The table does not support record numbers.Table is empty.DActive object is not a field or has a value that cannot be searched.Seconds Specification missing.%Must be in Field View (F2) to select.+There is no object selected to cut or copy.(Table does not support sequence numbers.'The answer table cannot be on a server.-Database information is missing from Desktop.(The table does not support soft deletes.    .No field identified on Sort from table '%0ds'.)Trying to read from a nonexistent record.File does not exist.Filter handle is invalidTable does not exist./Specify the table to be associated for TCursor.;Insufficient table rights for operation. Password required.&Table does not support this operation.!Could not create temporary table.Temporary table resource limit.Unrecognized table type-No user transaction is currently in progress.ITable does not support this operation because it is not uniquely indexed."Day of Week Specification missing.ECannot change the path of the default working or private directories.Year Specification missing.         Invalid alias.Field is not a BLOB.-The field number or name is not in the table.NField '%0ds' of type '%1ds' is not a valid type for a sort or index operation.-This operation is not allowed while in place.4Table needs to be in Edit mode to perform operation.3Operation must be performed on the current session.ICannot perform operation '%0ds' on '%1ds' because of insufficient rights.,Field '%0ds' is not a field in table '%1ds'.,Field '%0di' is not a field in table '%1ds'.Not implemented yet.(Not in Edit mode. Press F9 to edit data.Document is not in run mode.Table is not indexed.Engine not initialized.Not a live query view.    Object not locked.('%0ds' is not a numeric field in '%1tn'.This field is not an OLE field.8Not on a network. Not logged in or wrong network driver.Not on the network.<'%0ds' requires that the table '%1ds' be opened on an index./Attempt to mix objects from different sessions.&Insufficient SQL rights for operation.Capability not supported..Operation not supported on filtered record set3Illegal field type for '%0ds' in '%1ds' for locate.Field has no name.Permission denied.Argument list is too long.Bad file number.Cross-device link. Drive not ready.Execution format error.Critical DOS Error.Invalid access code.Invalid argument.Invalid data.Invalid environment.Invalid function number.Invalid memory block address.Lock violation.Math argument.Memory blocks destroyed.Operating system network error.Device does not exist.!File or directory does not exist.Not enough memory.              No more files.Path not found.Not same device.Result is too large.$Attempt to remove current directory.Share violation.YToo many open files. You may need to increase MAXFILEHANDLE limit in IDAPI configuration.(Unknown internal operating system error.Object implicitly dropped.Object implicitly modified.Object may be truncated.Could not find object.Object disabled.Object implicitly truncated.ÂYou have tried to reference the object named '%0ds' from the object named '%1un'. The referenced object could not be found. The name is either incorrect or the object is not visible from '%2ds'.!Too many objects for object tree.        Older version (see context)."Error accessing the method '%0ds'.$Error accessing the property '%0ds'.QThe OLE connection is no longer valid. Perhaps the server application was closed.4An OLE method was called with wrong parameter count.1Bad Index used to access the OLE property '%0ds'.,Server '%0ds' has no programmable interface.%Cannot convert '%0cc' to an OLE type.,Error converting OLE type to ObjectPAL type.*The OLE method '%0ds' has no return value.#OLE server has no type information.6Server '%0ds' does not have a registered type library.(Cannot pass value property by reference.FOleAuto only bound to type information, no actual server is activated.&OLE object is not a collection object.%OLE functionality is not implemented.               OCX is unavailable for access.Error opening server '%0ds'. Failed to open OLE type library.AOverflow during conversion of argument %0di of OLE method '%1ds'./Type mismatch in access of OLE property '%0ds'.2Overflow during conversion of OLE property '%0ds'.@Overflow during conversion of return value of OLE method '%0ds'.OLE server has no type library.AType mismatch in argument %0di, in call of the OLE method '%1ds'.6Incorrect type library registration for server '%0ds'.&Unknown exception fault in OLE server.6Attempt to call a Method '%0ds' unknown to OLE server.:Attempt to access a Property '%0ds' unknown to OLE server.&Attempt to open unknown server '%0ds'.Too many open BLOBs.#Detail Table Open operation failed.           Cannot open file#Lookup Table Open operation failed.#Master Table Open operation failed.Too many open tables.(This table view was opened by ObjectPal.6Operation '%0ds' is not allowed on the data type %1cc.BCouldn't perform the edit because another user changed the record.KCouldn't perform the edit because another user deleted or moved the record.*Record already locked by this workstation.Record not locked.Error from NOVELL file server.Out of internal file handles ??Number is out of range.fOverflow. The source data is numerically too large (positive or negative) to store in the destination.Incomplete Date Separator .Incomplete Time Separator .              Incomplete AM-PM Specification.Incomplete Day Specification.Incomplete Hour Specification.!Incomplete Logical Specification. Incomplete Minute Specification.Incomplete Month Specification.!Incomplete Seconds Specification.%Incomplete Day of Week Specification.Incomplete Year Specification.Too many passwords.Password required>You can paste page only from Clipboard before a selected page.0Clipboard object can be pasted only into a Form.The path '%0ds' does not exist.!The path, '%0ds', does not exist.%Paradox 1.0 tables are not supported.           -Needs Paradox 3.5-compatible language driver.Paradox driver not active.-The field value fails picture validity check.*Number is out of range for the given type.Cannot redefine primary key.Invalid printer driver.Cannot find printer driver.Insufficient memory.-No printer installed or Windows cannot print.Cannot access property.5Attempted to assign an illegal value to the property.iAn error occurred when trying to get the property named '%0ds' of the object named '%1un' of type '%2uc'.sYou have tried to access the property named '%0up' which does not belong to the object named '%1un' of type '%2uc'.cAn error occurred when setting the property named '%0ds' of the object named '%1un' of type '%2uc'.1Alias(es) already defined -- discarding new ones.LQBE terminated by user.peQBEbadFileName	SmallInt	File '%0ds' does not exist.           obsolete(Ambiguous use of ! (inclusion operator).7A SET operation cannot be included in its own grouping.2Only numeric and date/time fields can be averaged.Invalid expression.Invalid OR expression.Query format is not supported.bitmapGeneral BLOB error.*Operation is not supported on BLOB fields.)Buffer too small to contain query string.HCALC expression cannot be used in INSERT, DELETE, CHANGETO and SET rows.Type error in CALC expression.Query canceled.ICannot perform operation on CHANGED table together with a CHANGETO query.6CHANGETO can be used in only one query form at a time.                Cannot modify CHANGED table.1A field can contain only one CHANGETO expression.?A field cannot contain more than one expression to be inserted.9CHANGETO must be followed by the new value for the field.=Checkmark or CALC expressions cannot be used in FIND queries.chunk%More than 255 fields in ANSWER table.BAS must be followed by the name for the field in the ANSWER table.!Unexpected Database Engine error.4DELETE can be used in only one query form at a time.GCannot perform operation on DELETED table together with a DELETE query.%Cannot delete from the DELETED table.MExample element is used in two fields with incompatible types or with a BLOB.Query string is empty.0Cannot use example elements in an OR expression.,Expression in this field has the wrong type.  Extra comma found.Extra OR found.7One or more query rows do not contribute to the ANSWER.Unexpected exception.2FIND can be used in only one query form at a time.*FIND cannot be used with the ANSWER table./A row with GROUPBY must contain SET operations.%GROUPBY can be used only in SET rows.2Use only one INSERT, DELETE, SET or FIND per line.8Use only INSERT, DELETE, SET or FIND in leftmost column.Syntax error in expression.4INSERT can be used in only one query form at a time.ICannot perform operation on INSERTED table together with an INSERT query.9INSERT, DELETE, CHANGETO and SET rows may not be checked.9Field must contain an expression to insert (or be blank).&Cannot insert into the INSERTED table.         ,Variable is an array and cannot be accessed.Label;Rows of example elements in CALC expression must be linked.Variable name is too long.Expression is too long.&Query may take a long time to process.&Not enough memory to finish operation.;Reserved word or one that can't be used as a variable name.Missing right quote.Missing comma.
Missing ).%Feature not implemented yet in query.&Cannot specify duplicate column names.2This DELETE, CHANGE or INSERT query has no ANSWER.Query has no checked fields.+Example element has no defining occurrence.            )No grouping is defined for SET operation.$Cannot use patterns in this context.$Attempted to prepare an empty query.Date does not exist.'Variable has not been assigned a value.Query makes no sense.&Function called with bad query handle.,Query was not previously parsed or prepared.*Query is not prepared. Properties unknown.5Invalid use of example element in summary expression.AIncomplete query statement. Query only contains a SET definition.4Example element with ! makes no sense in expression.>Example element cannot be used more than twice with a ! query.Row cannot contain expression.*No permission to insert or delete records.No permission to modify field.     Field not found in table.-Expecting a column separator in table header.&Expecting a column separator in table.Expecting column name in table.Expecting table name.<Expecting consistent number of columns in all rows of table.Cannot open table.&Field appears more than once in table.1DELETE rows cannot contain quantifier expression.!Invalid expression in INSERT row.(Query extended syntax field count error.-Field name in sort or field clause not found.-Table name in sort or field clause not found.%Invalid expression in SET definition.Refresh exception during query.Lock failure.       Query must be restarted.row useSET keyword expected.!Ambiguous use of example element."Only numeric fields can be summed.QBE syntax error.Table is write protected.Token not found.ACannot use example element with ! more than once in a single row.Type mismatch in expression.Unknown answer table type.-Query appears to ask two unrelated questions.Unused SET row.FINSERT, DELETE, FIND, and SET can be used only in the leftmost column.9CHANGETO cannot be used with INSERT, DELETE, SET or FIND.CExpression must be followed by an example element defined in a SET.          GAn error was triggered in the '%0ds' method on an object of Query type. This table view is a query view.&Matching error: Expression is too big.&Matching error: Invalid bracket range.Matching error: Nested operand.!Matching error: Operand is empty.2Matching error: *, +, ? must follow an expression.%Matching error: Too many parentheses.$Matching error: Trailing back slash.#Matching error: Unmatched brackets.&Matching error: Unmatched parentheses.Read failure.Database is read only.This directory is read only.!Trying to modify read-only field.VYou do not have write access to this property. It is read only. It cannot be modified.   @This record is already locked by another module in this session. Cannot post record out of range.Too many record locks on table.'Record moved because key value changed.Could not find record.!Record size is too big for table./Warning: Record already locked in this session.(Conflicting record lock in this session.Record is deleted.Record is not deleted.6This record is not locked so the operation is invalid.-Referential integrity fields must be indexed.Optional parameter is required.(Operation requires the same table types.lThe operation you are trying to perform requires write-lock access to the table which could not be achieved.pThe operation you are trying to perform requires exclusive-lock access to the table which could not be achieved.              Field value required.This field cannot be blank./The table created must be a Paradox table type.Name is reserved by DOS.ACannot do sendKeys() while another sendKeys() is already playing. The repeat count is not correct.The key name is not correct.Missing closing brace.Missing closing parenthesis.The keys string is too long.EAn error was triggered in the '%0ds' method on an object of SQL type.#Lost communication with SQL server.Table Names the same.7Non-blob column in table required to perform operation.Serial number limit (Paradox).NOVELL server out of memory.                $A server alias does not have a path.IAn error was triggered in the '%0ds' method on an object of Session type.Too many sessions.6SHARE not loaded. It is required to share local files.,Not initialized for accessing network files.+An error was triggered in a Sort operation.2Sort from '%0ds' to '%1ds' could not be performed.Could not start Sort. Access to requested file denied.Unable to acquire lock.Internal catalog size exceeded.%Could not copy to the specified file.$Could not delete the specified file..Error occurred while accessing file from disk.Could not find requested file.&Error writing file. Record not tagged.            Unable to paste graphic."File is corrupt. Record tag error.*Invalid file extension for this file type.Internal invalid handle.File name is invalid.Out of memory.File name is too long.No read access to file.*File does not exist or is write protected.)Rename not allowed to a different device.;Error creating ActiveX control.  Please check installation.fSpecified ActiveX control not found in registry or in registered location.  Please check installation.Cannot activate OLE server.Unable to update OLE object.Unable to insert OLE object.Unable to paste OLE object.   Unable to paste link OLE object.)File does not exist or is read protected.Could not find requested path.'Disk error occurred while reading file.$Could not rename the specified file.Unable to paste text.Internal error. Internal catalog usecount error.7Error occurred while writing to file. Check disk space.@Stack overflow. Your method or procedures are nested too deeply.0String too long.  Cannot exceed %0di characters.Data structure corruption.I/O error on a system file.Cannot open a system file.%System has been illegally re-entered.+Could not attach TCursor to another object.    IAn error was triggered in the '%0ds' method on an object of TCursor type.Too many cursors per table.%Encrypted dBASE tables not supported.GAn error was triggered in the '%0ds' method of an object of Table type.Table already exists.Table is full.Table is in use.Table level changed.Tables are not equivalent.Table is open.6'%0ds' is already protected. Did not provide password.Table is read only.SQL replicas not supported.Too many table locks. '%0ds' has not been implemented.-Cannot perform utility while table is in use.           Text will not fit in field.'Surface chart needs two or more series.'Crosstab or Query uses too many tables.Could not read the style sheet.Could not save the style sheet.-Transaction mismatch -- cannot commit changes0Transactions are not supported by this database.JAn error was triggered in the '%0ds' method on an object of UIObject type.hYou have tried to use an unassigned variable. A variable must be assigned a value before you can use it.Crosstab has no defining table.Unknown database.Unknown database type.CThe database or alias supplied for opening a TCursor was not known.Driver not known to system. Cannot recognize file extension.$The specified field name is invalid.  &The specified field number is invalid.Cannot open file.%0ds %1ds is an unknown index.Network type unknown.Unknown table type.(Cannot read file -- version is too high.Unlock failed.0This printer does not support the setting: %0ds.TThe Add or Sub routines require an indexed destination table in order to do updates.Table has too many users.Validity check field modified.Corrupt or missing .VAL file..VAL file is out of date.$Should field constraints be checked?Vendor initialization failed.(Too many sessions from this workstation.   Write failure.RYou do not have read access to this property. It is write only. It cannot be read.Wrong driver name.Wrong driver type.Wrong driver version.*Object could not be read. Continuing read.Wrong system version.DPreferred report is not for this table. Generating a default report.Error in crosstab ANSWER table.8Cannot save the table while the crosstab is not running.Error	(unknown)nepoznat eventDataArriveRecord	DataBeginDataBeginEdit           DataBeginFirstFieldDataCancelRecordDataDeleteRecord
DataDesign	DataDittoDataEndDataEndEditDataEndLastFieldDataFastBackwardDataFastForwardDataHideDeletedDataInsertRecordDataLockRecord
DataLookupDataLookupMoveDataNextRecord      DataNextSetDataPostRecord	DataPrintDataPriorRecordDataPriorSet
DataRecalcDataRefreshDataRefreshOutsideDataSaveCrosstab
DataSearchDataSearchNextDataSearchRecordDataSearchReplaceDataShowDeletedDataTableViewDataToggleDeleted      DataToggleDeleteRecordDataToggleEditDataToggleLockRecordDataUnDeleteRecordDataUnlockRecordEditCommitFieldEditCopySelectionEditCopyToFileEditCutSelectionEditDeleteBeginLineEditDeleteEndLineEditDeleteLeftEditDeleteLeftWordEditDeleteLineEditDeleteRightEditDeleteRightWord    EditDeleteSelectionEditDeleteWordEditDropDownListEditEnterFieldViewEditEnterMemoViewEditEnterPersistFieldViewEditHelpEditInsertBlankEditInsertLineEditInsertObjectEditLaunchServer	EditPasteEditPasteFromFileEditPasteLinkEditPropertiesEditReplace              EditSaveCrosstabEditTextSearchEditToggleFieldViewEditUndoFieldFieldBackward	FieldDown
FieldEnter
FieldFirstFieldForwardFieldGroupBackwardFieldGroupForward	FieldLast	FieldLeftFieldNextPageFieldPriorPage
FieldRight  FieldRotateFieldUp	MoveBeginMoveBeginLine
MoveBottomMoveBottomLeftMoveBottomRightMoveDownMoveEndMoveEndLineMoveLeftMoveLeftWord	MoveRightMoveRightWordMoveScrollDownMoveScrollLeft MoveScrollPageDownMoveScrollPageLeftMoveScrollPageRightMoveScrollPageUpMoveScrollRightMoveScrollScreenDownMoveScrollScreenLeftMoveScrollScreenRightMoveScrollScreenUpMoveScrollUpMoveTopMoveTopLeftMoveTopRightMoveUpSelectBeginSelectBeginLine SelectBottomSelectBottomLeftSelectBottomRight
SelectDown	SelectEndSelectEndLine
SelectLeftSelectLeftWordSelectRightSelectRightWordSelectScrollDownSelectScrollLeftSelectScrollPageDownSelectScrollPageLeftSelectScrollPageRightSelectScrollPageUp  SelectScrollRightSelectScrollScreenDownSelectScrollScreenLeftSelectScrollScreenRightSelectScrollScreenUpSelectScrollUpSelectSelectAll	SelectTopSelectTopLeftSelectTopRightSelectUpEventunknown      