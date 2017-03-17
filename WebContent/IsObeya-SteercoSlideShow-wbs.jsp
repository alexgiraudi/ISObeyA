<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<title>IsObeya</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<!-- Le styles -->

<link type="text/css" href="./Librairies/bootstrap/css/bootstrap.css"	rel="stylesheet" />
<link type="text/css" href="./Librairies/jquery/css/custom-theme/jquery-ui-1.10.0.custom.css"	rel="stylesheet" />
<link type="text/css" href="./Librairies/BasicPrimitivesDemo/demo/css/primitives.latest.css?3600" media="screen" rel="stylesheet" />
 <link type="text/css" href="./Librairies/iobeya/Obeya.css"	rel="stylesheet" />
<script src="./Librairies/bootstrap/js/bootstrap.js"	type="text/javascript"></script>
<script type="text/javascript" src="./Librairies/BasicPrimitivesDemo/demo/js/jquery/jquery-1.9.1.js"></script>
<script type="text/javascript" src="./Librairies/BasicPrimitivesDemo/demo/js/jquery/jquery-ui-1.10.2.custom.min.js"></script>
<script type="text/javascript" src="./Librairies/BasicPrimitivesDemo/demo/js/primitives.min.js?3600"></script>

<style type="text/css">
        .bp-item2 {
            position: absolute;
            overflow: visible;/* redefine this atttribute in bp-item class in order to place items outside of boudaries*/
            font-family: Trebuchet MS, Tahoma, Verdana, Arial, sans-serif;
            -webkit-tap-highlight-color: rgba(0,0,0,0);
            -webkit-user-select: none;
            -webkit-touch-callout: none;
            -khtml-user-select: none;
            -moz-user-select: none;
            -ms-user-select: none;
            user-select: none;
            box-sizing:content-box;
        }

        .bp-badge2 {
            -moz-border-radius: 16px;
            -webkit-border-radius: 16px;
            -khtml-border-radius: 16px;
            border-radius: 16px;
            font-size: 18px;
            line-height: 18px;
            text-align: center;
            text-decoration: none;
            vertical-align: middle;
            font-weight: bold;
            font-family: Arial;
            padding: 4px;
            float: left;
            width:16px; 
            height:16px;
        }
        
    </style>  
<script type='text/javascript'>

           
          
           
           
           
		$(window).load(function () {
			var options = new primitives.orgdiagram.Config();

			var items = [
				new primitives.orgdiagram.ItemConfig({
					id: 0,
					parent: null,
					title: "Durer",
					description: "Owner : J.Argemi",
					itemTitleColor: "#F8E0E0"
				}),
				new primitives.orgdiagram.ItemConfig({ id: 1, parent: 0,hasNoSelectorCheckbox: false, templateName: "DepartmentTitleTemplate", title: "ISOP", itemTitleColor: "Green"}),
				new primitives.orgdiagram.ItemConfig({ id: 2, parent: 0, hasSelectorCheckbox: false, templateName: "DepartmentTitleTemplate", title: "ISOC", itemTitleColor: "Blue" }),
				new primitives.orgdiagram.ItemConfig({ id: 3, parent: 0, hasSelectorCheckbox: false, templateName: "DepartmentTitleTemplate", title: "ISOI", itemTitleColor: "Navy" }),
				new primitives.orgdiagram.ItemConfig({ id: 4, parent: 0, hasSelectorCheckbox: false, templateName: "DepartmentTitleTemplate", title: "ISOA", itemTitleColor: "Magenta" }),
				new primitives.orgdiagram.ItemConfig({ id: 5, parent: 0, hasSelectorCheckbox: false, templateName: "DepartmentTitleTemplate", title: "ISOT", itemTitleColor: "Orange" }),
				new primitives.orgdiagram.ItemConfig({ id: 6, parent: 0, hasSelectorCheckbox: false, templateName: "DepartmentTitleTemplate", title: "ISO", itemTitleColor: "Brown" }),
				new primitives.orgdiagram.ItemConfig({ id: 7, parent: 0, hasSelectorCheckbox: false, templateName: "DepartmentTitleTemplate", title: "DEC", itemTitleColor: "#848484" }),
				new primitives.orgdiagram.ItemConfig({ id: 8, parent: 0, hasSelectorCheckbox: false, templateName: "DepartmentTitleTemplate", title: "SFR", itemTitleColor: "#8904B1" }),
				new primitives.orgdiagram.ItemConfig({ id: 9, parent: 0, hasSelectorCheckbox: false, templateName: "DepartmentTitleTemplate", title: "GFI", itemTitleColor: "#AEB404" }),
				new primitives.orgdiagram.ItemConfig({ id: 10, parent: 0, hasSelectorCheckbox: false, templateName: "DepartmentTitleTemplate", title: "TS", itemTitleColor: "#8181F7" }),
				
				new primitives.orgdiagram.ItemConfig({ id: 201, parent: 2, title: "Audit ", childrenPlacementType: primitives.common.ChildrenPlacementType.Vertical, itemTitleColor: "Blue" }),
				new primitives.orgdiagram.ItemConfig({ id: 202, parent: 2, title: "Audit Network", childrenPlacementType: primitives.common.ChildrenPlacementType.Vertical, itemTitleColor: "Blue" }),
				new primitives.orgdiagram.ItemConfig({ id: 203, parent: 201, title: "Audit 1", childrenPlacementType: primitives.common.ChildrenPlacementType.Vertical, itemTitleColor: "Blue" }),
				new primitives.orgdiagram.ItemConfig({ id: 204, parent: 201, title: "Audit 2", childrenPlacementType: primitives.common.ChildrenPlacementType.Vertical , itemTitleColor: "Blue"}),
				new primitives.orgdiagram.ItemConfig({ id: 205, parent: 201, title: "Audit 3", childrenPlacementType: primitives.common.ChildrenPlacementType.Vertical, itemTitleColor: "Blue" }),
				new primitives.orgdiagram.ItemConfig({ id: 206, parent: 204, title: "Audit 4", childrenPlacementType: primitives.common.ChildrenPlacementType.Vertical , itemTitleColor: "Blue"}),
				new primitives.orgdiagram.ItemConfig({ id: 207, parent: 204, title: "Audit 5", childrenPlacementType: primitives.common.ChildrenPlacementType.Vertical, itemTitleColor: "Blue" }),
				
				new primitives.orgdiagram.ItemConfig({ id: 101, parent: 1, title: "PRJ Network1", childrenPlacementType: primitives.common.ChildrenPlacementType.Vertical, itemTitleColor: "Green" }),
				new primitives.orgdiagram.ItemConfig({ id: 101, parent: 1, title: "PRJ Network1", childrenPlacementType: primitives.common.ChildrenPlacementType.Vertical, itemTitleColor: "Green" }),
				new primitives.orgdiagram.ItemConfig({ id: 103, parent: 101, title: "asset 1", childrenPlacementType: primitives.common.ChildrenPlacementType.Vertical , itemTitleColor: "Green"}),
				new primitives.orgdiagram.ItemConfig({ id: 104, parent: 101, title: "asset 2", childrenPlacementType: primitives.common.ChildrenPlacementType.Vertical , itemTitleColor: "Green"}),
				new primitives.orgdiagram.ItemConfig({ id: 105, parent: 101, title: "asset 3", childrenPlacementType: primitives.common.ChildrenPlacementType.Vertical , itemTitleColor: "Green"}),
				new primitives.orgdiagram.ItemConfig({ id: 106, parent: 104, title: "asset 4", childrenPlacementType: primitives.common.ChildrenPlacementType.Vertical , itemTitleColor: "Green"}),
				new primitives.orgdiagram.ItemConfig({ id: 107, parent: 104, title: "asset 5", childrenPlacementType: primitives.common.ChildrenPlacementType.Vertical, itemTitleColor: "Green" })
				
				
			];

			options.items = items;
			options.cursorItem = 0;
			options.templates = [getDepartmentTitleTemplate()];
			options.onItemRender = onTemplateRender;
			options.hasSelectorCheckbox = primitives.common.Enabled.False;
			options.normalLevelShift = 20;
			options.dotLevelShift = 20;
			options.lineLevelShift = 10;
			options.normalItemsInterval = 10;
			options.dotItemsInterval = 10;
			options.lineItemsInterval = 4;
			options.pageFitMode = 10;
			options.arrowsDirection = primitives.common.GroupByType.Children;
			options.selectionPathMode = primitives.orgdiagram.SelectionPathMode.None;
			options.selectedItems = [1];
			
			jQuery("#wbsdiagram").orgDiagram(options);
			
			$("#btn5").button().click(function () { onScale(0.5); });
			$("#btn6").button().click(function () { onScale(0.6); });
			$("#btn7").button().click(function () { onScale(0.7); });
			$("#btn8").button().click(function () { onScale(0.8); });
			$("#btn9").button().click(function () { onScale(0.9); });
			$("#btn10").button().click(function () { onScale(1.0); });
			$("#btn11").button().click(function () { onScale(1.1); });
			$("#btn12").button().click(function () { onScale(1.2); });
			$("#btn13").button().click(function () { onScale(1.3); });
			$("#btn14").button().click(function () { onScale(1.4); });
			$("#btn15").button().click(function () { onScale(1.5); });
			
			$("#slider").slider({
				value: 3,
				min: 0,
				max: 4,
				step: 1,
				slide: function (event, ui) {
					jQuery("#wbsdiagram").orgDiagram({
						defaultTemplateName: "Zoom" + ui.value
					});
					jQuery("#wbsdiagram").orgDiagram("update", primitives.orgdiagram.UpdateMode.Refresh);
				}
			});
		});
		
		

		function onScale(scale) {
			if (scale != null) {
				jQuery("#wbsdiagram").orgDiagram({ scale: scale });
			}
			jQuery("#wbsdiagram").orgDiagram("update", primitives.orgdiagram.UpdateMode.Refresh);
		};

		function onTemplateRender(event, data) {
			switch (data.renderingMode) {
				case primitives.common.RenderingMode.Create:
					/* Initialize widgets here */
					break;
				case primitives.common.RenderingMode.Update:
					/* Update widgets here */
					break;
			}

			var itemConfig = data.context;

			if (data.templateName == "DepartmentTitleTemplate") {
				data.element.find("[name=titleBackground]").css({ "background": itemConfig.itemTitleColor });

				var fields = ["title"];
				for (var index = 0; index < fields.length; index++) {
					var field = fields[index];

					var element = data.element.find("[name=" + field + "]");
					if (element.text() != itemConfig[field]) {
						element.text(itemConfig[field]);
					}
				}
			}
		};
		
		

		function getDepartmentTitleTemplate() {
			var result = new primitives.orgdiagram.TemplateConfig();
			result.name = "DepartmentTitleTemplate";
			result.isActive = false;

			var buttons = [];
			buttons.push(new primitives.orgdiagram.ButtonConfig("delete", "ui-icon-close", "Delete"));
			buttons.push(new primitives.orgdiagram.ButtonConfig("properties", "ui-icon-gear", "Info"));
			buttons.push(new primitives.orgdiagram.ButtonConfig("add", "ui-icon-person", "Add"));
			buttons.push(new primitives.orgdiagram.ButtonConfig("notice", "ui-icon-notice", "Notice"));
			result.buttons = buttons;

			result.itemSize = new primitives.common.Size(200, 30);
			result.minimizedItemSize = new primitives.common.Size(3, 3);
			result.highlightPadding = new primitives.common.Thickness(2, 2, 2, 2);


			var itemTemplate = jQuery(
			  '<div class="bp-item bp-corner-all bt-item-frame">'
				+ '<div name="titleBackground" class="bp-item bp-corner-all bp-title-frame" style="top: 2px; left: 2px; width: 196px; height: 25px;">'
					+ '<div name="title" class="bp-item bp-title" style="top: 3px; left: 6px; width: 188px; height: 23px; text-align:center;">'
					+ '</div>'
				+ '</div>'
			+ '</div>'
			).css({
				width: result.itemSize.width + "px",
				height: result.itemSize.height + "px"
			}).addClass("bp-item");
			result.itemTemplate = itemTemplate.wrap('<div>').parent().html();

			return result;
		}
	</script>
	
</head>


<body data-spy="scroll" data-twttr-rendered="true">
	 
	 
	<!-- Navbar ================================================== -->
	<nav class="navbar navbar-dark bg-inverse navbar-fixed-top">
	<button class="navbar-toggler hidden-lg-up" type="button"
		data-toggle="collapse" data-target="#navbarResponsive"
		aria-controls="navbarResponsive" aria-expanded="false"
		aria-label="Toggle navigation"></button>
	<div class="collapse navbar-toggleable-md" id="navbarResponsive">
		<a class="navbar-brand" href="./IsObeya-MainPageContent.jsp">IsObeya</a>
		<ul class="nav navbar-nav">
			<li class="nav-item "><a class="nav-link"  href="./IsObeya-SteercoSlideShow-steerco.jsp">Steerco</a></li>
			<li class="nav-item "><a class="nav-link"  href="./IsObeya-SteercoSlideShow-timeline.jsp">Timline</a></li>
			<li class="nav-item active"><a class="nav-link"  href="./IsObeya-SteercoSlideShow-wbs.jsp">WBS</a></li>
			<li class="nav-item "><a class="nav-link"  href="./IsObeya-SteercoSlideShow-actions.jsp">Actions List</a></li>
			<li class="nav-item "><a class="nav-link"  href="./IsObeya-SteercoSlideShow-Obeya.jsp">Obeya</a></li>
			
		</ul>
	</div>
	</nav>
	<!-- End Of Navbar ================================================== -->

	<!-- Sticky Bar ================================================== -->
	<!-- Mettre la solution bootstrap -->
	<!-- End Sticky Bar ================================================== -->

	<!-- Contents ================================================== -->

	<div id="TailSteerco">
			<div style="position: absolute;top: 70px;right: 0;">
				<a id="btn5" class="  btn-sm">50%</a>
				<a id="btn6" class="  btn-sm">60%</a>
				<a id="btn7" class="  btn-sm">70%</a>
				<a id="btn8" class="  btn-sm">80%</a>
				<a id="btn9" class="  btn-sm">90%</a>
				<a id="btn10" class=" btn-sm">100%</a>
				<a id="btn11" class=" btn-sm">110%</a>
				<a id="btn12" class=" btn-sm">120%</a>
				<a id="btn13" class=" btn-sm">130%</a>
				<a id="btn14" class=" btn-sm">140%</a>
				<a id="btn15" class=" btn-sm">150%</a>
		 	</div>
				
			 
		<div style="position: absolute;margin: auto;top: 120px;right: 0;bottom: 0;left: 0;">
			<div id="wbsdiagram"   style=" display:block;margin: 0 auto;    width: 1800px; height: 900px;" />
		</div>	

	</div>
				
</body>
</html>