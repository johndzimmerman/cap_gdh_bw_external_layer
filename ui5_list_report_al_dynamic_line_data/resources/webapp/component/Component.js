sap.ui.define(["sap/ui/core/UIComponent", "sap/suite/ui/generic/template/extensionAPI/ReuseComponentSupport"],
	function (UIComponent, ReuseComponentSupport) {
		"use strict";

		return UIComponent.extend("com.kostal.ui5_list_report_al_dynamic_line_data.component.Component", {
			metadata: {
				manifest: "json",
				library: "com.kostal.ui5_list_report_al_dynamic_line_data.component",
				properties: {
					/** Properties for reuse component */
					uiMode: {
						type: "string",
						group: "standard"
					},
					semanticObject: {
						type: "string",
						group: "standard"
					},
					stIsAreaVisible: {
						type: "boolean",
						group: "standard"
					},
					"currentRouteName": {} // default type == "string"
				}
			},
			init: function () {
				console.log("==> component.Component");

				ReuseComponentSupport.mixInto(this, "component");
				(UIComponent.prototype.init || jQuery.noop).apply(this, arguments);

				// For https://stackoverflow.com/a/60152360/5846045
				//this.getRouter().attachBeforeRouteMatched(this.onBeforeRouteMatched, this);

			},
			destroy: function () {
				console.log("==> component.Component.destroy");
				UIComponent.prototype.destroy.apply(this, arguments);
			},
			stStart: function (oModel, oBindingContext, oExtensionAPI) {

				console.log("==> component.Component.stStart");

				//var oGraph = this.getView().byId("networkGraph");

				var oComponentModel = this.getComponentModel();
				this.getRootControl().setModel(oModel);
				oModel.setSizeLimit("20000");
				oComponentModel.setSizeLimit("20000");

				oComponentModel.setProperty("/navigationController", oExtensionAPI.getNavigationController());
				oComponentModel.setProperty("/LINE_KEY", oExtensionAPI.getNavigationController().getCurrentKeys()[1]);
				this.extensionAPI = oExtensionAPI;
				//console.log(oExtensionAPI.getNavigationController().getCurrentKeys()[1]);
			},
			stRefresh: function (oModel, oBindingContext) {
				console.log("==> component.Component.stRefresh");

				var oComponentModel = this.getComponentModel();
				var oNavigationController = oComponentModel.getProperty("/navigationController");
				//oComponentModel.setProperty("/selectedNode", oNavigationController.getCurrentKeys()[1]);
				//this.getRootControl().getController().updateSelection();
				var oGraph = this.getRootControl().getController().getView().byId("networkGraph");

				var sLineKey =  oNavigationController.getCurrentKeys()[1];
				//var sLineKey = 'PCB_LAS_BOT_TOP_FLH_12086090_1';
				console.log(sLineKey);

				var oBindingInfo = oGraph.getBindingInfo("nodes");
				console.log(oBindingInfo); // note ==> templateShareable: 1
				var oNodesTemplate = oBindingInfo.template;
				console.log(oNodesTemplate);

				oBindingInfo = oGraph.getBindingInfo("lines");
				console.log(oBindingInfo); // note ==> templateShareable: 1
				var oLinesTemplate = oBindingInfo.template;
				console.log(oLinesTemplate);

				//debugger;

				//var onodesBinding = oGraph.getBinding("nodes");
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

			}
		});
	});