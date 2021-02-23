using GDHMEService as service from '../../srv/me-services';

////////////////////////////////////////////////////////////////////////////
//
//	T_ACTIVITY_LOG List Report Page
//
annotate service.ACTIVITY_LOG_SRV with @UI : { 
    HeaderInfo  : {
        $Type : 'UI.HeaderInfoType',
        TypeName : 'xxxx',
        TypeNamePlural : 'yyyy',
    },
    SelectionFields  : [ PLANT, SFC, OPERATION, RESRCE, MATERIAL, ACTION_CODE ], 
    LineItem  : [
          {Value : PLANT},
          {Value : GMASITE},
          {Value : SFC},
          {Value : OPERATION},
          {Value : RESRCE}, 
          {Value : PARTITION_DATE}, 
          {Value : ACTION_CODE},  
          {Value : MATERIAL},   
          {Value : STEP_ID},  
          {Value : DATE_TIME},    
          {Value : CALDAY},    
          {Value : CALWEEK},     
          {Value : CALMONTH}, 
          {Value : CALYEAR}                
    ],
 };