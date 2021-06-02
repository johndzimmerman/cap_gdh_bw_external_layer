using ACTIVITY_LOG as ACTIVITY_LOG_Alias from '../db/data-model';
using CVC_ACTIVITY_LOG as CVC_ACTIVITY_LOG_Alias from '../db/data-model';
using CONTAINER_DATA as CONTAINER_DATA_Alias from '../db/data-model';
using SFC_STEP as SFC_STEP_Alias from '../db/data-model';
using CONTAINER_MEMBER as CONTAINER_MEMBER_Alias from '../db/data-model';
using CUSTOM_FIELDS as CUSTOM_FIELDS_Alias from '../db/data-model';
using INVENTORY_DATA as INVENTORY_DATA_Alias from '../db/data-model';
using NC_CUSTOM_DATA as NC_CUSTOM_DATA_Alias from '../db/data-model';
using NC_DATA as NC_DATA_Alias from '../db/data-model';
using NC_DATA_REF_DES as NC_DATA_REF_DES_Alias from '../db/data-model';
using PARAMETRIC as PARAMETRIC_Alias from '../db/data-model';
using PARAMETRIC_MEASURE as PARAMETRIC_MEASURE_Alias from '../db/data-model';
using PARAMETRIC_MEASURE_CUSTOM as PARAMETRIC_MEASURE_CUSTOM_Alias from '../db/data-model';
using SFC as SFC_Alias from '../db/data-model';
using SFC_ASSY as SFC_ASSY_Alias from '../db/data-model';
using SFC_ASSY_DATA as SFC_ASSY_DATA_Alias from '../db/data-model';
using SFC_DATA as SFC_DATA_Alias from '../db/data-model';
using SFC_LOCATION as SFC_LOCATION_Alias from '../db/data-model';
using SHOP_ORDER as SHOP_ORDER_Alias from '../db/data-model';

service GDHMEService {
entity  ACTIVITY_LOG_SRV @(
							title:'ACTIVITY_LOG',
							Capabilities : {
								InsertRestrictions : { Insertable: false },
								UpdateRestrictions : { Updatable: false },
								DeleteRestrictions : { Deletable: false }
							}
					) as projection on   ACTIVITY_LOG_Alias;
					
entity  CVC_ACTIVITY_LOG_SRV @(
							title:'ACTIVITY_LOG',
							Capabilities : {
								InsertRestrictions : { Insertable: false },
								UpdateRestrictions : { Updatable: false },
								DeleteRestrictions : { Deletable: false }
							}
					) as projection on   CVC_ACTIVITY_LOG_Alias;					

entity  CONTAINER_DATA_SRV @(
							title:'CONTAINER_DATA',
							Capabilities : {
								InsertRestrictions : { Insertable: false },
								UpdateRestrictions : { Updatable: false },
								DeleteRestrictions : { Deletable: false }
							}
					) as projection on   CONTAINER_DATA_Alias;

entity  SFC_STEP_SRV @(
							title:'SFC_STEP',
							Capabilities : {
								InsertRestrictions : { Insertable: false },
								UpdateRestrictions : { Updatable: false },
								DeleteRestrictions : { Deletable: false }
							}
					) as projection on   SFC_STEP_Alias;

entity  CONTAINER_MEMBER_SRV @(
							title:'CONTAINER_MEMBER',
							Capabilities : {
								InsertRestrictions : { Insertable: false },
								UpdateRestrictions : { Updatable: false },
								DeleteRestrictions : { Deletable: false }
							}
					) as projection on   CONTAINER_MEMBER_Alias;

entity  CUSTOM_FIELDS_SRV @(
							title:'CUSTOM_FIELDS',
							Capabilities : {
								InsertRestrictions : { Insertable: false },
								UpdateRestrictions : { Updatable: false },
								DeleteRestrictions : { Deletable: false }
							}
					) as projection on   CUSTOM_FIELDS_Alias;

entity  INVENTORY_DATA_SRV @(
							title:'INVENTORY_DATA',
							Capabilities : {
								InsertRestrictions : { Insertable: false },
								UpdateRestrictions : { Updatable: false },
								DeleteRestrictions : { Deletable: false }
							}
					) as projection on   INVENTORY_DATA_Alias;

entity  NC_CUSTOM_DATA_SRV @(
							title:'NC_CUSTOM_DATA',
							Capabilities : {
								InsertRestrictions : { Insertable: false },
								UpdateRestrictions : { Updatable: false },
								DeleteRestrictions : { Deletable: false }
							}
					) as projection on   NC_CUSTOM_DATA_Alias;

entity  NC_DATA_SRV @(
							title:'NC_DATA',
							Capabilities : {
								InsertRestrictions : { Insertable: false },
								UpdateRestrictions : { Updatable: false },
								DeleteRestrictions : { Deletable: false }
							}
					) as projection on   NC_DATA_Alias;

entity  NC_DATA_REF_DES_SRV @(
							title:'NC_DATA_REF_DES',
							Capabilities : {
								InsertRestrictions : { Insertable: false },
								UpdateRestrictions : { Updatable: false },
								DeleteRestrictions : { Deletable: false }
							}
					) as projection on   NC_DATA_REF_DES_Alias;

entity  PARAMETRIC_SRV @(
							title:'PARAMETRIC',
							Capabilities : {
								InsertRestrictions : { Insertable: false },
								UpdateRestrictions : { Updatable: false },
								DeleteRestrictions : { Deletable: false }
							}
					) as projection on   PARAMETRIC_Alias;

entity  PARAMETRIC_MEASURE_SRV @(
							title:'PARAMETRIC_MEASURE',
							Capabilities : {
								InsertRestrictions : { Insertable: false },
								UpdateRestrictions : { Updatable: false },
								DeleteRestrictions : { Deletable: false }
							}
					) as projection on   PARAMETRIC_MEASURE_Alias;

entity  PARAMETRIC_MEASURE_CUSTOM_SRV @(
							title:'PARAMETRIC_MEASURE_CUSTOM',
							Capabilities : {
								InsertRestrictions : { Insertable: false },
								UpdateRestrictions : { Updatable: false },
								DeleteRestrictions : { Deletable: false }
							}
					) as projection on   PARAMETRIC_MEASURE_CUSTOM_Alias;

entity  SFC_SRV @(
							title:'SFC',
							Capabilities : {
								InsertRestrictions : { Insertable: false },
								UpdateRestrictions : { Updatable: false },
								DeleteRestrictions : { Deletable: false }
							}
					) as projection on   SFC_Alias;

entity  SFC_ASSY_SRV @(
							title:'SFC_ASSY',
							Capabilities : {
								InsertRestrictions : { Insertable: false },
								UpdateRestrictions : { Updatable: false },
								DeleteRestrictions : { Deletable: false }
							}
					) as projection on   SFC_ASSY_Alias;

entity  SFC_ASSY_DATA_SRV @(
							title:'SFC_ASSY_DATA',
							Capabilities : {
								InsertRestrictions : { Insertable: false },
								UpdateRestrictions : { Updatable: false },
								DeleteRestrictions : { Deletable: false }
							}
					) as projection on   SFC_ASSY_DATA_Alias;

entity  SFC_DATA_SRV @(
							title:'SFC_DATA',
							Capabilities : {
								InsertRestrictions : { Insertable: false },
								UpdateRestrictions : { Updatable: false },
								DeleteRestrictions : { Deletable: false }
							}
					) as projection on   SFC_DATA_Alias;

entity  SFC_LOCATION_SRV @(
							title:'SFC_LOCATION',
							Capabilities : {
								InsertRestrictions : { Insertable: false },
								UpdateRestrictions : { Updatable: false },
								DeleteRestrictions : { Deletable: false }
							}
					) as projection on   SFC_LOCATION_Alias;

entity  SHOP_ORDER_SRV @(
							title:'SHOP_ORDER',
							Capabilities : {
								InsertRestrictions : { Insertable: false },
								UpdateRestrictions : { Updatable: false },
								DeleteRestrictions : { Deletable: false }
							}
					) as projection on   SHOP_ORDER_Alias;
}
