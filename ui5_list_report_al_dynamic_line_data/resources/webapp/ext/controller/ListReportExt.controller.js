sap.ui.define([
	"sap/suite/ui/generic/template/extensionAPI/extensionAPI"
], function (extensionAPI) {
	"use strict";

	return sap.ui.controller("com.kostal.ui5_list_report_al_dynamic_line_data.ext.controller.ListReportExt", {
		onInit: function () {
			console.log("==> ListReportExt onInit");
		},
		onBeforeRendering: function () {
			console.log("=> ListReportExt onBeforeRendering");
		},
		onAfterRendering: function () {
			console.log("=> ListReportExt onAfterRendering");
		},
		onExit: function () {
			console.log("=> ListReportExt onExit");
		},
		onListNavigationExtension: function (oEvent) {
			console.log("==> ListReportExt.onListNavigationExtension");
			var oExtensionAPI = this.extensionAPI;
			var oNavigationController = oExtensionAPI.getNavigationController();
			var oItem = oEvent.getSource();
			var oBindingContext = oItem.getBindingContext();
			var oObject = oBindingContext.getObject();
			// oObject = Odata from listreport.
			oNavigationController.navigateInternal(oObject.LINE_KEY, {
				routeName: "VERTICES_SRV"
			});
			return true;
		}
	});
});