using LINES as LINES_Alias from '../db/data-model';
using AL_DYNAMIC_LINE_DATA_EDGES as EDGES_Alias from '../db/data-model';
using AL_DYNAMIC_LINE_DATA_VERTICES as VERTICES_Alias from '../db/data-model';
using AL_DYNAMIC_LINE_DATA_V2_EDGES as EDGES_V2_Alias from '../db/data-model';
using AL_DYNAMIC_LINE_DATA_V2_VERTICES as VERTICES_V2_Alias from '../db/data-model';

service GDHMEALDYNAMICLINEService {
entity  LINES_SRV @(
							title:'LINES',
							Capabilities : {
								InsertRestrictions : { Insertable: false },
								UpdateRestrictions : { Updatable: false },
								DeleteRestrictions : { Deletable: false }
							}
					) as projection on   LINES_Alias;


entity  EDGES_SRV @(
							title:'EDGES',
							Capabilities : {
								InsertRestrictions : { Insertable: false },
								UpdateRestrictions : { Updatable: false },
								DeleteRestrictions : { Deletable: false }
							}
					) as projection on   EDGES_V2_Alias;

entity  VERTICES_SRV @(
							title:'VERTICES',
							Capabilities : {
								InsertRestrictions : { Insertable: false },
								UpdateRestrictions : { Updatable: false },
								DeleteRestrictions : { Deletable: false }
							}
					) as projection on   VERTICES_V2_Alias;
}		