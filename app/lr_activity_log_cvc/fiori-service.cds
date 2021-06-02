using GDHMEService as service from '../../srv/me-services';

////////////////////////////////////////////////////////////////////////////
//
//	T_ACTIVITY_LOG List Report Page
//

//sap:semantics to aggregate 

annotate service.CVC_ACTIVITY_LOG_SRV with @sap.semantics: 'aggregate';

annotate service.CVC_ACTIVITY_LOG_SRV with @UI : { 
    HeaderInfo  : {
        $Type : 'UI.HeaderInfoType',
        TypeName : 'ACTIVITY',
        TypeNamePlural : 'ACTIVITYS',
    },
    SelectionFields  : [ PLANT, SFC, OPERATION, RESRCE, MATERIAL, ACTION_CODE ], 
    LineItem  : [
          {Value : PLANT},
          {Value : GMASITE},
          {Value : OPERATION},
          {Value : CALWEEK},     
          {Value : COUNTER}
    ],
 };