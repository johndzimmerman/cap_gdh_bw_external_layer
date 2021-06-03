using GDHMEALDYNAMICLINEService as service from '../../srv/al_dynamic_line_data_services';

////////////////////////////////////////////////////////////////////////////
//
//	T_ACTIVITY_LOG List Report Page
//
//annotate service.LINES_SRV with @sap.semantics: 'aggregate';

annotate service.LINES_SRV with @UI : { 
    HeaderInfo  : {
        $Type : 'UI.HeaderInfoType',
        TypeName : 'LINE',
        TypeNamePlural : 'LINES',
    },
    SelectionFields  : [ LINE_KEY ], 
    LineItem  : [
          {Value : LINE_KEY},
          {Value : SFC_VOLUME}         
    ],
    PresentationVariant: { 
			SortOrder: [ {$Type: 'Common.SortOrderType', Property: SFC_VOLUME, Descending: true} ],
            Total : [ SFC_VOLUME   ]
		}
 };
 
 