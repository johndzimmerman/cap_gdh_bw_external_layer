
//*******************************************************************************************
	@cds.persistence.exists
		entity ACTIVITY_LOG {
				 KEY PLANT : String(000004);
				 KEY GMASITE : String(000010);
				 KEY CALMONTH : String(000006);
				 KEY CALWEEK : String(000006);
				 KEY SFC : String(000013);
				 KEY MATERIAL_PADDED : String(000018);
				 KEY MATERIAL_REV : String(000005);
				 KEY RESRCE : String(000036);
				 KEY OPERATION : String(000060);
				 KEY OPERATION_REVISION : String(000002);
				 KEY ACTION_CODE : String(000020);
				 KEY ACTION_DETAIL : String(000050);
				 KEY ACTION_DETAIL_1 : String(000030);
				 KEY ACTION_DETAIL_2 : String(000030);
				 KEY ACTION_DETAIL_3 : String(000030);
				 KEY ACTION_DETAIL_HANDLE : String(000050);
				 KEY ACTION_DETAIL_HANDLE_1 : String(000030);
				 KEY ACTION_DETAIL_HANDLE_2 : String(000030);
				 KEY ACTION_DETAIL_HANDLE_3 : String(000030);
				 KEY ACTION_DETAIL_HANDLE_4 : String(000030);
				 KEY ACTION_DETAIL_HANDLE_5 : String(000030);
				 KEY USER_ID : String(000036);
				 KEY MATERIAL : String(000018);
				 KEY ROUTER : String(000040);
				 KEY ROUTER_REV : String(000002);
				 KEY ROUTER_TYPE : String(000001);
				 KEY PROCESS_LOT : String(000128);
				 KEY STEP_ID : String(000006);
				 KEY PRODUCTION_ORDER : String(000036);
				 KEY WORK_CENTER : String(000050);
				 KEY REWORK : String(000001);
				 KEY PREV_SITE : String(000006);
				 KEY PARTITION_DATE : String(000014);
				 KEY DATE_TIME : String(000014);
				 KEY CALYEAR : String(000004);
				 KEY HALFYEAR1 : String(000001);
				 KEY CALMONTH2 : String(000002);
				 KEY CALDAY : String(000008);
				UNIT : String(000003);
				QTY : Decimal(000031,000006)
	}

//*******************************************************************************************
	@cds.persistence.exists
		entity CONTAINER_DATA {
				 KEY PLANT : String(000004);
				 KEY GMASITE : String(000010);
				 KEY CALMONTH : String(000006);
				 KEY CALWEEK : String(000006);
				 KEY CONTAINER_NAME : String(000040);
				 KEY CONTAINER_NUMBER : String(000128);
				RECORDMODE : String(000001);
				STATE : String(000010);
				OPERATION : String(000060);
				OPERATION_REVISION : String(000002);
				RESRCE : String(000036);
				USER_ID : String(000036);
				CREATED_DATE_TIME : String(000014);
				MODIFIED_DATE_TIME : String(000014);
				CALYEAR : String(000004);
				HALFYEAR1 : String(000001);
				CALMONTH2 : String(000002);
				CALDAY : String(000008)
	}

//*******************************************************************************************
	@cds.persistence.exists
		entity SFC_STEP {
				 KEY PLANT : String(000004);
				 KEY GMASITE : String(000010);
				 KEY CALMONTH : String(000006);
				 KEY CALWEEK : String(000006);
				 KEY SFC : String(000013);
				 KEY ROUTER : String(000040);
				 KEY ROUTER_TYPE : String(000002);
				 KEY ROUTER_REV : String(000001);
				 KEY OPERATION : String(000060);
				 KEY OPERATION_REVISION : String(000002);
				 KEY STEP_ID : String(000006);
				RECORDMODE : String(000001);
				STEP_SEQUENCE : String(000031);
				DONE : String(000001);
				BYPASSED : String(000001);
				USE_AS_REWORK : String(000001);
				PREVIOUSLY_STARTED : String(000001);
				LAST_WORK_CENTER_BO : String(000206);
				LAST_WORK_CENTER_BO2 : String(000206);
				PREVIOUS_STEP_ID : String(000006);
				REPORTING_STEP : String(000036);
				RESOURCE_OR_CENTER_GBO : String(000206);
				RESOURCE_OR_CENTER_GBO2 : String(000206);
				STATE : String(000010);
				REPORTING_CENTER_BO : String(000206);
				REPORTING_CENTER_BO2 : String(000206);
				PREVIOUS_RESOURCE_BO : String(000206);
				PREVIOUS_RESOURCE_BO2 : String(000206);
				MULTI_Q_SIGNOFF_NEEDED : String(000005);
				STEP_PULLED_INTO : String(000006);
				LOCAL_REWORK : String(000001);
				SPECIAL_INSTRUCTION : String(000128);
				ERP_SENT : String(000005);
				SCRAP_REPORTING_STEP : String(000036);
				DATE_QUEUED : String(000014);
				ERP_TB_SENT : String(000005);
				EWM_TB_SENT : String(000005);
				DATE_TIME : String(000014);
				CALYEAR : String(000004);
				HALFYEAR1 : String(000001);
				CALMONTH2 : String(000002);
				CALDAY : String(000008);
				UNIT : String(000003);
				PROC_TIME_UNIT : String(000003);
				QTY_IN_QUEUE : Decimal(000017,000003);
				QTY_IN_WORK : Decimal(000017,000003);
				QTY_COMPLETED : Decimal(000017,000003);
				TIMES_PROCESSED : Decimal(000017,000003);
				MAX_LOOP : Decimal(000017,000003);
				FUTURE_HOLD_COUNT : Decimal(000017,000003);
				QTY_COMPLETE_PENDING : Decimal(000017,000003);
				QTY_REJECTED : Decimal(000017,000003);
				PARTITION_DATE : Integer
	}

//*******************************************************************************************
	@cds.persistence.exists
		entity CONTAINER_MEMBER {
				 KEY PLANT : String(000004);
				 KEY GMASITE : String(000010);
				 KEY CALMONTH : String(000006);
				 KEY CALWEEK : String(000006);
				 KEY CONTAINER_NUMBER : String(000030);
				 KEY SUB_ID : String(000034);
				RECORDMODE : String(000001);
				SFC : String(000013);
				STATE : String(000010);
				ARCHIVED : String(000001);
				CREATED_DATE_TIME : String(000014);
				MODIFIED_DATE_TIME : String(000014);
				PACKING_LEVEL : String(000128);
				PACKING_LEVEL_DETAIL : String(000005);
				UNIT : String(000003);
				CALYEAR : String(000004);
				HALFYEAR1 : String(000001);
				CALMONTH2 : String(000002);
				CALDAY : String(000008);
				QTY : Decimal(000031,000006)
	}

//*******************************************************************************************
	@cds.persistence.exists
		entity CUSTOM_FIELDS {
				 KEY PLANT : String(000004);
				 KEY GMASITE : String(000010);
				 KEY CALMONTH : String(000006);
				 KEY CALWEEK : String(000006);
				 KEY IDENTIFIER_NAME : String(000050);
				 KEY IDENTIFIER_1 : String(000030);
				 KEY IDENTIFIER_2 : String(000030);
				 KEY IDENTIFIER_3 : String(000030);
				 KEY IDENTIFIER_4 : String(000030);
				 KEY IDENTIFIER_5 : String(000030);
				RECORDMODE : String(000001);
				ATTRIBUTE : String(000060);
				VALUE : String(000250);
				CREATED_DATE_TIME : String(000014);
				MODIFIED_DATE_TIME : String(000014);
				CALYEAR : String(000004);
				HALFYEAR1 : String(000001);
				CALMONTH2 : String(000002);
				CALDAY : String(000008)
	}

//*******************************************************************************************
	@cds.persistence.exists
		entity INVENTORY_DATA {
				 KEY PLANT : String(000004);
				 KEY GMASITE : String(000010);
				 KEY CALMONTH : String(000006);
				 KEY CALWEEK : String(000006);
				 KEY INVENTORY_ID : String(000128);
				RECORDMODE : String(000001);
				MATERIAL_PADDED : String(000018);
				MATERIAL : String(000018);
				MATERIAL_REV : String(000005);
				DESCRIPTION : String(000080);
				USAGE_COUNT : String(000031);
				STATUS : String(000020);
				ORIGINAL_USER : String(000036);
				HAS_BEEN_USED : String(000001);
				ERP_INVENTORY : String(000001);
				PARTITION_DATE : String(000014);
				RECEIVE_DATE_TIME : String(000014);
				CREATED_DATE_TIME : String(000014);
				MODIFIED_DATE_TIME : String(000014);
				PARENT_INVENTORY : String(000250);
				UNIT : String(000003);
				CALYEAR : String(000004);
				HALFYEAR1 : String(000001);
				CALMONTH2 : String(000002);
				CALDAY : String(000008);
				QTY_ON_HAND : Decimal(000031,000006);
				ORGINAL_QTY : Decimal(000031,000006)
	}

//*******************************************************************************************
	@cds.persistence.exists
		entity NC_CUSTOM_DATA {
				 KEY PLANT : String(000004);
				 KEY GMASITE : String(000010);
				 KEY CALMONTH : String(000006);
				 KEY CALWEEK : String(000006);
				 KEY SFC : String(000013);
				 KEY USER_ID : String(000036);
				 KEY SEQUENCE : String(000031);
				 KEY DATE_TIME : String(000014);
				 KEY DATA_FIELD : String(000060);
				RECORDMODE : String(000001);
				DATA_ATTRIBUTE : String(000250);
				CALYEAR : String(000004);
				HALFYEAR1 : String(000001);
				CALMONTH2 : String(000002);
				CALDAY : String(000008)
	}

//*******************************************************************************************
	@cds.persistence.exists
		entity NC_DATA {
				 KEY PLANT : String(000004);
				 KEY GMASITE : String(000010);
				 KEY CALMONTH : String(000006);
				 KEY CALWEEK : String(000006);
				 KEY SFC : String(000013);
				 KEY USER_ID : String(000036);
				 KEY SEQUENCE : String(000031);
				 KEY INCIDENT_DATE_TIME : String(000014);
				RECORDMODE : String(000001);
				MATERIAL_PADDED : String(000018);
				MATERIAL_REVISION : String(000005);
				MATERIAL : String(000018);
				RESRCE : String(000036);
				DATE_TIME : String(000014);
				PARENT_SFC : String(000013);
				PARENT_USER : String(000012);
				CUSTOM_SEQUENCE : String(000031);
				NC_STATE : String(000001);
				NC_CODE : String(000016);
				COMPONENT : String(000020);
				COMPONENT_REVISION : String(000005);
				COMPONENT_CONTEXT : String(000250);
				REF_DES : String(000036);
				COMMENTS : String(000250);
				STEP_ID : String(000006);
				OPERATION : String(000060);
				OPERATION_REVISION : String(000002);
				TIMES_PROCESSED : String(000034);
				CLOSED_USER : String(000012);
				CLOSED_DATE_TIME : String(000014);
				FAILURE_ID : String(000040);
				VERIFIED_STATE : String(000001);
				PARTITION_DATE : String(000014);
				CREATED_DATE_TIME : String(000014);
				MODIFIED_DATE_TIME : String(000014);
				NC_CATEGORY : String(000020);
				VERIFIED_DATE_TIME : String(000014);
				LOCATION : String(000002);
				UNIT : String(000003);
				CALYEAR : String(000004);
				HALFYEAR1 : String(000001);
				CALMONTH2 : String(000002);
				CALDAY : String(000008);
				QUANT : Decimal(000031,000006);
				DEFECT_COUNT : Decimal(000017,000003)
	}

//*******************************************************************************************
	@cds.persistence.exists
		entity NC_DATA_REF_DES {
				 KEY PLANT : String(000004);
				 KEY GMASITE : String(000010);
				 KEY CALMONTH : String(000006);
				 KEY CALWEEK : String(000006);
				 KEY SFC : String(000013);
				 KEY USER_ID : String(000036);
				 KEY SEQUENCE : String(000031);
				 KEY REF_DES : String(000036);
				 KEY COMPONENT : String(000020);
				 KEY COMPONENT_REVISION : String(000005);
				 KEY DATE_TIME : String(000014);
				RECORDMODE : String(000001);
				ASSEMBLY_ID : String(000004);
				CALYEAR : String(000004);
				HALFYEAR1 : String(000001);
				CALMONTH2 : String(000002);
				CALDAY : String(000008)
	}

//*******************************************************************************************
	@cds.persistence.exists
		entity PARAMETRIC {
				 KEY PLANT : String(000004);
				 KEY GMASITE : String(000010);
				 KEY CALMONTH : String(000006);
				 KEY CALWEEK : String(000006);
				 KEY TRANSACTION_ID : String(000038);
				SFC : String(000013);
				RESRCE : String(000036);
				ELAPSED_TIME : String(000014);
				ROUTER_SEQUENCE : String(000031);
				TYPE : String(000010);
				START_TIME : String(000014);
				STOP_TIME : String(000014);
				WORK_CENTER : String(000050);
				USER_ID    : String(000036);
				CUSTOMER_ID : String(000050);
				MATERIAL_PADDED : String(000018);
				MATERIAL_REV : String(000005);
				MATERIAL : String(000018);
				OPERATION : String(000060);
				OPERATION_REV : String(000002);
				ROUTER : String(000040);
				ROUTER_REV : String(000002);
				ROUTER_TYPE : String(000001);
				LOT_ID : String(000032);
				PROGRAM_ID : String(000032);
				PROGRAM_REV : String(000010);
				TEST_STATUS : String(000010);
				TEST_PASSED : String(000001);
				PRODUCTION_ORDER : String(000036);
				DC_GROUP : String(000020);
				ORIGINAL_SFC : String(000250);
				ORIGINAL_TRANSFER_KEY : String(000250);
				CALYEAR : String(000004);
				HALFYEAR1 : String(000001);
				CALMONTH2 : String(000002);
				CALDAY : String(000008)
	}

//*******************************************************************************************
	@cds.persistence.exists
		entity PARAMETRIC_MEASURE {
				 KEY PLANT : String(000004);
				 KEY GMASITE : String(000010);
				 KEY CALMONTH : String(000006);
				 KEY CALWEEK : String(000006);
				 KEY TRANSACTION_ID : String(000038);
				 KEY SEQUENCE : String(000031);
				RECORDMODE : String(000001);
				MEASURE_NAME : String(000030);
				MEASURE_GROUP : String(000025);
				MEASURE_GROUP_REVISION : String(000002);
				DESCRIPTION : String(000080);
				MEASURE_STATUS : String(000010);
				MEMO : String(000001);
				MEASURE_TYPE : String(000020);
				UNIT_OF_MEAS : String(000003);
				DATA_TYPE : String(000020);
				HIGH_LIMIT : String(000100);
				LOW_LIMIT : String(000100);
				EXPECTED : String(000100);
				ACTUAL : String(000250);
				DC_COMMENT : String(000020);
				DC_PARAMETER : String(000030);
				TEST_DATE_TIME : String(000014);
				CALYEAR : String(000004);
				HALFYEAR1 : String(000001);
				CALMONTH2 : String(000002);
				CALDAY : String(000008)
	}

//*******************************************************************************************
	@cds.persistence.exists
		entity PARAMETRIC_MEASURE_CUSTOM {
				 KEY PLANT : String(000004);
				 KEY GMASITE : String(000010);
				 KEY CALMONTH : String(000006);
				 KEY CALWEEK : String(000006);
				 KEY TRANSACTION_ID : String(000038);
				 KEY SEQUENCE : String(000031);
				 KEY CUSTOM_SEQUENCE : String(000031);
				RECORDMODE : String(000001);
				PROPERTY_NAME : String(000025);
				PROPERTY_VALUE : String(000025);
				PROPERTY_TYPE : String(000010);
				PROPERTY_STATUS : String(000010);
				DATE_TIME : String(000014);
				UNIT_OF_MEAS : String(000003);
				CALYEAR : String(000004);
				HALFYEAR1 : String(000001);
				CALMONTH2 : String(000002);
				CALDAY : String(000008)
	}

//*******************************************************************************************
	@cds.persistence.exists
		entity SFC {
				 KEY PLANT : String(000004);
				 KEY GMASITE : String(000010);
				 KEY CALMONTH : String(000006);
				 KEY CALWEEK : String(000006);
				 KEY SFC : String(000013);
				RECORDMODE : String(000001);
				PRODUCTION_ORDER_PADDED : String(000012);
				PRODUCTION_ORDER : String(000036);
				STATUS : String(000020);
				MATERIAL_PADDED : String(000018);
				MATERIAL : String(000018);
				MATERIAL_REVISION : String(000005);
				LOCATION : String(000002);
				ACTUAL_COMP_DATE : String(000014);
				CREATED_DATE_TIME : String(000014);
				MODIFIED_DATE_TIME : String(000014);
				UNIT : String(000003);
				CALYEAR : String(000004);
				HALFYEAR1 : String(000001);
				CALMONTH2 : String(000002);
				CALDAY : String(000008);
				QTY : Decimal(000031,000006);
				QTY_DONE : Decimal(000031,000006);
				QTY_SCRAPPED : Decimal(000031,000006)
	}

//*******************************************************************************************
	@cds.persistence.exists
		entity SFC_ASSY {
				 KEY PLANT : String(000004);
				 KEY GMASITE : String(000010);
				 KEY CALMONTH : String(000006);
				 KEY CALWEEK : String(000006);
				 KEY SFC : String(000013);
				 KEY COMPONENT : String(000020);
				 KEY COMPONENT_REVISION : String(000005);
				 KEY ASSY_ID : String(000004);
				RECORDMODE : String(000001);
				MATERIAL_PADDED : String(000018);
				MATERIAL : String(000018);
				MATERIAL_REVISION : String(000005);
				QTY : Decimal(000031,000006);
				UNIT : String(000003);
				INVENTORY_ID : String(000128);
				OPERATION : String(000060);
				OPERATION_REVISION : String(000002);
				RESRCE : String(000036);
				REF_DES : String(000036);
				LOCATION : String(000002);
				MODIFIED_DATE_TIME : String(000014);
				BOM : String(000040);
				BOM_TYPE : String(000001);
				BOM_REVISION : String(000005);
				BOM_COMPONENT_GBO : String(000005);
				ASSEMBLED_BY : String(000012);
				ASSEMBLED_DATE : String(000014);
				REMOVED : String(000001);
				REMOVED_DATE : String(000014);
				REMOVED_BY : String(000012);
				REMOVED_OPERATION : String(000060);
				REMOVED_OPERATION_REV : String(000002);
				REMOVED_RESOURCE : String(000030);
				CALYEAR : String(000004);
				HALFYEAR1 : String(000001);
				CALMONTH2 : String(000002);
				CALDAY : String(000008)
	}

//*******************************************************************************************
	@cds.persistence.exists
		entity SFC_ASSY_DATA {
				 KEY PLANT : String(000004);
				 KEY GMASITE : String(000010);
				 KEY CALMONTH : String(000006);
				 KEY CALWEEK : String(000006);
				 KEY SFC : String(000013);
				 KEY ASSEMBLY_ID : String(000004);
				 KEY COMPONENT : String(000020);
				 KEY COMPONENT_REVISION : String(000005);
				 KEY SEQUENCE : String(000031);
				RECORDMODE : String(000001);
				DATA_FIELD : String(000060);
				DATA_ATTR : String(000250);
				ASSEMBLED_DATE : String(000014);
				CALYEAR : String(000004);
				HALFYEAR1 : String(000001);
				CALMONTH2 : String(000002);
				CALDAY : String(000008)
	}

//*******************************************************************************************
	@cds.persistence.exists
		entity SFC_DATA {
				 KEY PLANT : String(000004);
				 KEY GMASITE : String(000010);
				 KEY CALMONTH : String(000006);
				 KEY CALWEEK : String(000006);
				 KEY SFC : String(000013);
				 KEY DATA_FIELD : String(000060);
				 KEY DATE_TIME : String(000014);
				RECORDMODE : String(000001);
				DATA_ATTR : String(000250);
				USER_ID : String(000036);
				CREATED_DATE_TIME : String(000014);
				CALYEAR : String(000004);
				HALFYEAR1 : String(000001);
				CALMONTH2 : String(000002);
				CALDAY : String(000008)
	}

//*******************************************************************************************
	@cds.persistence.exists
		entity SFC_LOCATION {
				 KEY PLANT : String(000004);
				 KEY GMASITE : String(000010);
				 KEY CALMONTH : String(000006);
				 KEY CALWEEK : String(000006);
				 KEY SFC : String(000013);
				 KEY LOCATION : String(000002);
				RECORDMODE : String(000001);
				SERIAL_NUMBER : String(000128);
				LOCATION_STATE : String(000001);
				SEQUENCE : String(000031);
				CREATED_DATE_TIME : String(000014);
				MODIFIED_DATE_TIME : String(000014);
				CALYEAR : String(000004);
				HALFYEAR1 : String(000001);
				CALMONTH2 : String(000002);
				CALDAY : String(000008)
	}

//*******************************************************************************************
	@cds.persistence.exists
		entity SHOP_ORDER {
				 KEY PLANT : String(000004);
				 KEY GMASITE : String(000010);
				 KEY CALMONTH : String(000006);
				 KEY CALWEEK : String(000006);
				 KEY PRODUCTION_ORDER : String(000036);
				 KEY PRODUCTION_ORDER_PADDED : String(000012);
				RECORDMODE : String(000001);
				ERP_ORDER : String(000001);
				PRODUCTION_ORDER_TYPE : String(000020);
				STATUS : String(000020);
				PLANNED_ROUTER : String(000020);
				PLANNED_ROUTER_REV : String(000002);
				PLANNED_ROUTER_TYPE : String(000001);
				MATERIAL_PADDED : String(000018);
				MATERIAL : String(000018);
				MATERIAL_REV : String(000005);
				ROUTER : String(000040);
				ROUTER_REV : String(000002);
				ROUTER_TYPE : String(000001);
				BOM : String(000018);
				BOM_REV : String(000005);
				BOM_TYPE : String(000001);
				PLANNED_START_DATE : String(000014);
				PLANNED_COMPLETION_DATE : String(000014);
				ACTUAL_START_DATE : String(000014);
				ACTUAL_COMPLETION_DATE : String(000014);
				CREATED_DATE_TIME : String(000014);
				MODIFIED_DATE_TIME : String(000014);
				PLANNED_MATERIAL : String(000018);
				PLANNED_MATERIAL_REV : String(000005);
				PLANNED_BOM : String(000040);
				PLANNED_BOM_REV : String(000005);
				PLANNED_BOM_TYPE : String(000001);
				ERP_UNIT : String(000003);
				UNIT : String(000003);
				CALYEAR : String(000004);
				HALFYEAR1 : String(000001);
				CALMONTH2 : String(000002);
				CALDAY : String(000008);
				QTY_TO_BUILD : Decimal(000031,000006);
				QTY_ORDERED : Decimal(000031,000006);
				QTY_RELEASED : Decimal(000031,000006);
				QTY_DONE : Decimal(000031,000006);
				QTY_SCRAPPED : Decimal(000031,000006)
	}
