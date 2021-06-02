
//*********************************************************************
//* Redefine VERTICES AND EDGES table for use in CAP SRV

	@cds.persistence.exists
		entity AL_DYNAMIC_LINE_DATA_VERTICES {
				 KEY NODE_ID : String(500);
				 LINE_KEY : String(100);
				 RESRCE : String(36);
				 OPERATION : String(36);
				 SFC_VOLUME : Integer;
				 SEQUENCE : Integer;
	};
	
	@cds.persistence.exists
		entity AL_DYNAMIC_LINE_DATA_EDGES {
				 KEY EDGE_ID : String(500);
				 LINE_KEY : String(100);
				 START_NODE : String(500);
				 END_NODE : String(500);
				 DS_MAX : Integer;
				 DS_MIN : Integer;
				 DS_AVG : Double;
				 DS_MEDIAN : Double;
				 DS_STTDEV : Double;
				 DS_VAR : Double;
	};	
	
	@cds.persistence.exists
		entity AL_DYNAMIC_LINE_DATA_V2_VERTICES {
				 KEY NODE_ID : String(500);
				 LINE_KEY : String(100);
				 RESRCE : String(36);
				 OPERATION : String(36);
				 SFC_VOLUME : Integer;
				 SEQUENCE : Integer;
				 "DS_START_2_COMPLETE_MAX" : Integer64;
				 "DS_START_2_COMPLETE_MIN" : Integer64;
				 "DS_START_2_COMPLETE_AVG" : Integer64;
				 "DS_START_2_COMPLETE_MEDIAN" : Decimal(36,6);
		         "DS_START_2_COMPLETE_STDEV" : Decimal(36,6);
				 "DS_START_2_COMPLETE_VAR" : Decimal(36,6);
				 "DS_COMPLETE_2_START_MAX" : Integer64;
				 "DS_COMPLETE_2_START_MIN" : Integer64;
				 "DS_COMPLETE_2_START_AVG" : Integer64;
				 "DS_COMPLETE_2_START_MEDIAN" : Decimal(36,6);
				 "DS_COMPLETE_2_START_STDEV" : Decimal(36,6);
				 "DS_COMPLETE_2_START_VAR" : Decimal(36,6);
				 "DS_START_2_START_MAX" : Integer64;
				 "DS_START_2_START_MIN" : Integer64;
				 "DS_START_2_START_AVG" : Integer64;
				 "DS_START_2_START_MEDIAN" : Decimal(36,6);
				 "DS_START_2_START_STDEV" : Decimal(36,6);
				 "DS_START_2_START_VAR" : Decimal(36,6);					 
	};
	
	@cds.persistence.exists
		entity AL_DYNAMIC_LINE_DATA_V2_EDGES {
				 KEY EDGE_ID : String(500);
				 LINE_KEY : String(100);
				 START_NODE : String(500);
				 END_NODE : String(500);
	};		

//* Vertices table used by sapui5 networkgraph
VIEW LINES  as select from AL_DYNAMIC_LINE_DATA_V2_VERTICES {
		 KEY LINE_KEY,
		 MAX(SFC_VOLUME) AS SFC_VOLUME : Integer 
} group by LINE_KEY;