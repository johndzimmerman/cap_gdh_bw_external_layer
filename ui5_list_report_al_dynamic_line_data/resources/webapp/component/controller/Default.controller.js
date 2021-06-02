sap.ui.define([
	"sap/suite/ui/generic/template/extensionAPI/extensionAPI",
	"sap/ui/core/routing/History",
	"sap/suite/ui/microchart/ComparisonMicroChart",
	"sap/suite/ui/microchart/ComparisonMicroChartData"
], function (extensionAPI, History, ComparisonMicroChart, ComparisonMicroChartData) {
	"use strict";

	return sap.ui.controller("com.kostal.ui5_list_report_al_dynamic_line_data.component.controller.Default", {

		onInit: function () {
			console.log("=> Default.controller onInit");

			var oGraph = this.getView().byId("networkGraph");
			var oRouter = sap.ui.core.UIComponent.getRouterFor(this);
			var oOwnerComponent = this.getOwnerComponent();

			this.getOwnerComponent().getService("ShellUIService").then(function (oShellService) {
				oShellService.setBackNavigation(function () {
					//either do nothing to disable it, or add your own nav back logic for having the navigation
					//oOwnerComponent.destroy();
					//oGraph.destroy();
					window.history.go(-1);
				});
			});

			var sLineKey = location.hash.match(/\((.*?)\)/)[1];
			console.log(sLineKey);

			var oBindingInfo = oGraph.getBindingInfo("nodes");
			console.log(oBindingInfo); // note ==> templateShareable: 1
			var oNodesTemplate = oBindingInfo.template;
			console.log(oNodesTemplate);

			oBindingInfo = oGraph.getBindingInfo("lines");
			console.log(oBindingInfo); // note ==> templateShareable: 1
			var oLinesTemplate = oBindingInfo.template;
			console.log(oLinesTemplate);

			var oFilter = new sap.ui.model.Filter("LINE_KEY", sap.ui.model.FilterOperator.EQ, sLineKey);
			var aFilters = [];
			aFilters.push(oFilter);
			oGraph.bindAggregation("nodes", {
				path: '/VERTICES_SRV',
				template: oNodesTemplate,
				filters: aFilters
			});

			oGraph.bindAggregation("lines", {
				path: '/EDGES_SRV',
				template: oLinesTemplate,
				filters: aFilters
			});

			//this.getModel().setSizeLimit("20000");
			oGraph.attachBeforeLayouting(function () {
				console.log("=> Default.controller attachBeforeLayouting");
				this.bGraphReady = false;

			}.bind(this));
			this.getView().byId("networkGraph").attachGraphReady(function () {
				console.log("=> Default.controller attachGraphReady");

				this.bGraphReady = true;

				var fnSetContent = function (oNode,oData,Type) {
					oNode.setContent(new ComparisonMicroChart({
						size: "S",
						scale: "s",
						data: [
							new ComparisonMicroChartData({
								title: "S2C "+Type,
								value: Number(oData["DS_START_2_COMPLETE_"+Type]),
								color: "Good"
							}),
							new ComparisonMicroChartData({
								title: "C2S "+Type,
								value: Number(oData["DS_COMPLETE_2_START_"+Type]),
								color: "Good"
							}),
							new ComparisonMicroChartData({
								title: "S2S "+Type,
								value: Number(oData["DS_START_2_START_"+Type]),
								color: "Good"
							})
						]
					}).addStyleClass("sapUiSmallMargin"));

				};

				//NODE_ID
				//DS_START_2_COMPLETE_MAX -> 214853
				//DS_START_2_COMPLETE_MIN -> 15
				//DS_START_2_COMPLETE_AVG -> 36
				//DS_START_2_COMPLETE_MEDIAN -> 17.000000
				//DS_START_2_COMPLETE_STDEV -> 1800.067547
				//DS_START_2_COMPLETE_VAR -> 3240243.172047
				//DS_COMPLETE_2_START_MAX -> null
				//DS_COMPLETE_2_START_MIN -> null
				//DS_COMPLETE_2_START_AVG -> null
				//DS_COMPLETE_2_START_MEDIAN -> null
				//DS_COMPLETE_2_START_STDEV -> null
				//DS_COMPLETE_2_START_VAR -> null
				//DS_START_2_START_MAX -> null
				//DS_START_2_START_MIN -> null
				//DS_START_2_START_AVG -> null
				//DS_START_2_START_MEDIAN -> null
				//DS_START_2_START_STDEV -> null
				//DS_START_2_START_VAR -> null

				var oData = this.getView().byId("networkGraph").getModel().oData;
				//for (var key in oData) {

				//	if (oData.hasOwnProperty(key) & key.substr(0, 12) == 'VERTICES_SRV') {

						this.getView().byId("networkGraph").getNodes().forEach(function (oNode) {
							
								//oNode.mProperties.key = "PCB_LAS_BOT_TOP_FLH_12086090_146290_SMT_B_1_4"
								var key = "VERTICES_SRV('"+oNode.mProperties.key+"')";
								
								fnSetContent(oNode,oData[key],"MEDIAN");

						});
						//for (var key2 in oData[key]) {
						//	console.log(key2 + " -> " + oData[key][key2]);
						//}

					//}
				//}

				//this.selectNode();
			}.bind(this));
		},
		onBeforeRendering: function () {
			console.log("=> Default.controller onBeforeRendering");
		},
		onAfterRendering: function () {
			console.log("=> Default.controller onAfterRendering");
		},
		onExit: function () {
			console.log("=> Default.controller onExit");
		},
		destroy: function () {
			console.log("==> Default.controller destroy");
			//extensionAPI.prototype.destroy.apply(this, arguments);
		},
		selectNode: function () {
			var oComponent = this.getOwnerComponent();
			var oComponentModel = oComponent.getComponentModel();
			var sSelectedNode = oComponentModel.getProperty("/selectedNode");
			var oGraph = this.getView().byId("networkGraph");
			var oNode = oGraph.getNodeByKey(sSelectedNode);
			if (oNode) {
				oGraph.getNodes().forEach(function (oN) {
					oN.setSelected(false);
				});
				oNode.setSelected(true);
				oGraph.scrollToElement(oNode);
			}
		},
		updateSelection: function () {
			if (this.bGraphReady) {
				//this.selectNode();
			}
		}
	});
});