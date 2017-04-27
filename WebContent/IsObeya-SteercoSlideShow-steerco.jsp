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
<link type="text/css" href="./Librairies/jquery/css/custom-theme/dashboard.css"	rel="stylesheet" />
<link type="text/css" href="./Librairies/jquery/assets/css/font-awesome.min.css"	rel="stylesheet" />
<link type="text/css" href="./Librairies/jquery/assets/css/docs.css"	rel="stylesheet" />
<link type="text/css" href="./Librairies/lobibox/dist/css/lobibox.css"	rel="stylesheet" />
<link type="text/css" href="./Librairies/perso/isobeya.css"	rel="Stylesheet" />
<link type="text/css" href="./Librairies/iobeya/Obeya.css"	rel="stylesheet" />


<!-- Script -->
<script src="./Librairies/jquery/assets/js/jquery-3.1.0.min.js"></script>
<script src="./Librairies/bootstrap/js/bootstrap.js"	type="text/javascript"></script>
<script	src="./Librairies/jquery/assets/js/jquery-ui-1.10.0.custom.min.js"></script>
<script	src="./Librairies/jquery/assets/js/google-code-prettify/prettify.js"	type="text/javascript"></script>
<script src="./Librairies/jquery/assets/js/docs.js"	type="text/javascript"></script>
<script src="./Librairies/lobibox/js/lobibox.js"></script>
<script src="./Librairies/lobibox/js/actions.js"></script>


<script>
/* Set the width of the side navigation to 250px and the left margin of the page content to 250px */
	function openNav() {
		 $("#EditProgress").val($("#today").progressbar("value"));
		 if($("#ProjectName").html()!="" && $("#ProjectName").html()!="0" && $("#ProjectName").html()!="null"){
			 document.getElementById("mySidenavLeft").style.width = "280px";
			 document.getElementById("mySidenavRight").style.width = "280px";
			 document.getElementById("mySidenavRight").style.marginLeft = "280px";
			 document.getElementById("TailSteerco").style.marginLeft = "560px";
		 }
		 else{
			 Lobibox.notify('error', {
                	icon: false,
                	size: 'mini',
                    rounded: false,
                    delayIndicator: true,
                    position: 'right bottom',
                    title: 'Error...',
                    pauseDelayOnHover: true,
                    continueDelayOnInactiveTab: false,
                    msg: 'Please Select project before...'
                });
		 }
	    
	}
	
	/* Set the width of the side navigation to 0 and the left margin of the page content to 0 */
	function closeNav() {
	    document.getElementById("mySidenavLeft").style.width = "0";
	    document.getElementById("mySidenavRight").style.width = "0";
	    document.getElementById("TailSteerco").style.marginLeft = "0";
	    document.getElementById("mySidenavRight").style.marginLeft = "0";
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
				<li class="nav-item active "><a id="openProjectByUser" class="nav-link"  href="./IsObeya-SteercoSlideShow-steerco.jsp?ProjectName=<%=request.getParameter("ProjectName")%>">Dashboard</a></li>
				<li class="nav-item active "><a id="openProjectByUser" class="nav-link"  href="./IsObeya-SteercoSlideShow-UserHumor.jsp?ProjectName=<%=request.getParameter("ProjectName")%>">Obeya [User]</a></li>
				<li class="nav-item active "><a id="openProjectByUser" class="nav-link"  href="./IsObeya-SteercoSlideShow-Obeya.jsp?ProjectName=<%=request.getParameter("ProjectName")%>">Obeya [Kanban]</a></li>
				<li class="nav-item active "><a id="openProjectByUser" class="nav-link"  href="./IsObeya-SteercoSlideShow-ObeyaWip.jsp?ProjectName=<%=request.getParameter("ProjectName")%>">Obeya [Plan]</a></li>
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" href=""
				id="responsiveNavbarDropdown" data-toggle="dropdown"
				aria-haspopup="true" aria-expanded="false">Projects</a>
				<div class="dropdown-menu"
					aria-labelledby="responsiveNavbarDropdown">
					<%
// 							java.util.List<String> listProjects = new java.util.ArrayList<String>() ;
// 							listProjects=myBeanProjects.GetProjects("Kanban");
// 							for (int i=0;i<listProjects.size();i++){
// 								out.println(listProjects.get(i).toString());
// 							}
						%> 
				</div></li>
		</ul>
		<ul class="form-inline float-lg-right">
		
			<li class="nav-item " id="ProjectName" >No Project</li>
		</ul>
		
	</div>
	</nav>
	<!-- End Of Navbar ================================================== -->

	<!-- Sticky Bar ================================================== -->
	<!-- Mettre la solution bootstrap -->
	<!-- End Sticky Bar ================================================== -->
	<div id="mySidenavLeft" class="sidenav">
		  <a href="javascript:void(0)" class="Slideclosebtn" onclick="closeNav()"><i class="glyphicon glyphicon-off"></i></a>
		  <br></br>
		<div style="margin-left: 4px;" class="form-group">
			<label for="usr">Project Description</label> <input type="text" class="form-control input-sm" id="EditProjectDescription" />
			<label for="usr">Key Point 1</label> <input type="text"	class="form-control input-sm" id="EditKeyPoint1" />
			<label for="usr">Key Point 2</label> <input type="text"	class="form-control input-sm" id="EditKeyPoint2" />
 			<label for="usr">Key Point 3</label> <input type="text"	class="form-control input-sm" id="EditKeyPoint3" /> 
 			<label for="usr">Note 1</label> <input type="text"	class="form-control input-sm" id="EditNote1" /> 
			<label for="usr">Note 2</label> <input type="text"  class="form-control input-sm" id="EditNote2" />	
			<label for="usr">Note 3</label> <input type="text"	class="form-control input-sm" id="EditNote3" /> 
			<label for="usr">Step 1</label> <input type="text"  class="form-control input-sm" id="EditStep1" />			
			<label for="usr">Step 2</label> <input type="text"	class="form-control input-sm" id="EditStep2" /> 
			<label for="usr">Kickoff</label> <input type="text" class="form-control input-sm" id="EditKickoff" /> 
			<label for="usr">Design</label> <input type="text"	class="form-control input-sm" id="EditDesign" /> 
			<label for="usr">RFP</label> <input type="text" class="form-control input-sm" id="EditRFP" /> 
			<label for="usr">Purchasing</label> <input type="text"	class="form-control input-sm" id="EditPurchasing" /> 
			<label for="usr">Provisioning</label> <input type="text" class="form-control input-sm" id="EditProvisioning" /> 
			<label for="usr">Build</label> <input type="text" class="form-control input-sm" id="EditBuild" /> 
			<label for="usr">Rollout</label> <input type="text" class="form-control input-sm" id="EditRollout" />
			<label for="usr">Progress</label> <input  type="text"  class="form-control input-sm" id="EditProgress" />
		</div>
	</div>
	
		<div id="mySidenavRight" class="sidenav">
		  <a href="javascript:void(0)" class="Slideclosebtn" onclick="closeNav()"><i class="glyphicon glyphicon-off"></i></a>
		  <br></br>
		<div style="margin-left: 4px;" class="form-group">
			
			<label for="usr">Total CAPEX</label> <input type="text"	class="form-control input-sm" id="EditTotalCapex" />
			<label for="usr">Official</label> <input type="text"	class="form-control input-sm" id="EditOfficialCapex" />
 			<label for="usr">Outlook</label> <input type="text"	class="form-control input-sm" id="EditOutlookCapex" /> 
 			<label for="usr">Ordered</label> <input type="text"	class="form-control input-sm" id="EditOrderedCapex" /> 
			
			<label for="usr">Total OPEX</label> <input type="text"	class="form-control input-sm" id="EditTotalOpex" />
			<label for="usr">Official</label> <input type="text"	class="form-control input-sm" id="EditOfficialOpex" />
 			<label for="usr">Outlook</label> <input type="text"	class="form-control input-sm" id="EditOutlookOpex" /> 
 			<label for="usr">Ordered</label> <input type="text"	class="form-control input-sm" id="EditOrderedOpex" /> 
			
			<label for="usr">Actor1</label> <input type="text"  class="form-control input-sm" id="EditActor1" />	
			<label for="usr">Actor2</label> <input type="text"  class="form-control input-sm" id="EditActor2" />	
			<label for="usr">Actor3</label> <input type="text"  class="form-control input-sm" id="EditActor3" />	
			<label for="usr">Actor4</label> <input type="text"  class="form-control input-sm" id="EditActor4" />	
			<label for="usr">Actor5</label> <input type="text"  class="form-control input-sm" id="EditActor5" />	
			
			<label for="usr">ActorName1</label> <input type="text"  class="form-control input-sm" id="EditActorName1" />	
			<label for="usr">ActorName2</label> <input type="text"  class="form-control input-sm" id="EditActorName2" />	
			<label for="usr">ActorName3</label> <input type="text"  class="form-control input-sm" id="EditActorName3" />	
			<label for="usr">ActorName4</label> <input type="text"  class="form-control input-sm" id="EditActorName4" />	
			<label for="usr">ActorName5</label> <input type="text"  class="form-control input-sm" id="EditActorName5" />	
			
		</div>
	</div>
	<!-- Contents ================================================== -->
	<div id="TailSteerco">
		
 
					<!-- Steerco Slide -->
					<!--************************************************************************* -->

					<div id="ProjectName">
					    <a onclick="openNav()" id="OpenNav" style="display: inline; float: left; margin-right: 5px;" href="" data-toggle="modal"><i class="glyphicon glyphicon-pencil"></i></a>
						<h4>Security For Business<img align="right" src="./Librairies/images/TAS.png"></img></h4>
					</div>

					<div class="Steerco">
						<!--*****************Steerco Left***** -->
						<div style="margin-top: 30px;" id="SteercoLeft">
							<div id="ProjectDescription" >
								<h4>Project Description</h4>
								 
									<b>Securing business networks of Thales Alenia Space [JV]</b>
									 
								 
							</div>

							<div id="KeyPoints">
								<h4>Key Points</h4>
								<p id="KeyPoint1" class="pMiddle">
									<b>Key Point 1 - </b>JV architecture workshop in progress
								</p>
								<p id="KeyPoint2" class="pMiddle">
									<b>Key Point 2 - </b>Building archtitecture from existing Italian secure functional blocks [Internet]
								</p>
								<p id="KeyPoint3" class="pMiddle">
									<b>Key Point 3 - </b>Purchasing organization not defined, PVET 1 unplanned, TAS purchasing leader uniditentified
								</p>
							</div>

							<div  id="ProgressStatus">
								<H4>Progress Status</H4>
								<div id="Progress">

									<table align="center" id="Status">
										<tr>
											<td class="LabelPhase">
												<p>Planning</p>
											</td>
											<td></td>
											<td class="LabelPhase">
												<p>Design</p>
											</td>
											<td></td>
											<td class="LabelPhase">
												<p>Purchasing</p>
											</td>
											<td></td>
											<td class="LabelPhase">
												<p>Build</p>
											</td>
											<td></td>
											<td class="LabelPhase">
												<p>Rollout</p>
											</td>
										</tr>
										<tr>
											<!-- A remplacer par la recuperation des infos Dashboard -->
											<td class="PhaseProject" target="red">
												 
											</td>
											<td></td>
											<td class="PhaseProject" target="green">
												 
											</td>
											<td></td>
											<td class="PhaseProject" target="red">
												 
											</td>
											<td></td>
											<td class="PhaseProject" target="blue">
												 
											</td>
											<td></td>
											<td class="PhaseProject" target="blue">
												 
											</td>
										</tr>
										<tr>
										    <!-- A remplacer par la recuperation des infos Dashboard -->
											<td valign='middle' class='Tendance 'style='width:50px;' ><span Title='Tendance' class='glyphicon-arrow-right Orange glyphicon'></span></td>
											<td></td>
											<td valign='middle' class='Tendance 'style='width:50px;' ><span Title='Tendance' class='glyphicon-arrow-up Green glyphicon'></span></td>
											<td></td>
											<td valign='middle' class='Tendance 'style='width:50px;' ><span Title='Tendance' class='glyphicon-arrow-down Rouge glyphicon'></span></td>
											<td></td>
											<td valign='middle' class='Tendance 'style='width:50px;' ><span Title='Tendance' class='glyphicon-arrow-right glyphicon'></span></td>
											<td></td>
											<td valign='middle' class='Tendance 'style='width:50px;' ><span Title='Tendance' class='glyphicon-arrow-right glyphicon'></span></td>
										</tr>
									</table>

								</div>
								<p id="Remark1" class="pMiddle">
									<b>Note: </b>The Gate 2 will be postponed due to purchaising organization & PVET 1 planification
								</p>
								<p id="Remark2"class="pMiddle">
									<b>Note: </b>Awaiting PVET date.
								</p>
								<p  id="Remark3" class="pMiddle">
									<b>Note: </b>Purchaising workpackages : 1 WP COTS Soft - 1 WP COTS hard - 1 WP Investigate Services - 1 WP Services
									
								</p>


							</div>

							<div id="NextStep">
								<H4>Next Step</H4>
								<p id="NextStep1" class="pMiddle">
									<b>Step 1 : </b>PVET 1
								</p>
								<p id="NextStep2" class="pMiddle">
									<b>Step 2: </b>Gate 2 with JV architecture validated
								</p>

							</div>

							<div style="align: center;" id="Orchestration">
								<H4>Orchestration</H4>


								<div id="today"></div>

								<table align="center" class="OrchestrationTable">

									<tr class="OrchestrationTableTitre">
										<td class="OrchestrationTableTitre">Design</td>
										<td class="OrchestrationTableTitre">RFP</td>
										<td class="OrchestrationTableTitre">Purchasing</td>
										<td class="OrchestrationTableTitre">Provisioning</td>
										<td class="OrchestrationTableTitre">Build</td>
										<td class="OrchestrationTableTitre">Rollout</td>
										<td class="OrchestrationTableTitre"></td>

									</tr>
									<tr class="OrchestrationTable">

										<td class="OrchestrationTable"><img id="orchesdiagram"
											src="./Librairies/perso/a1.PNG" /></td>
										<td class="OrchestrationTable"><img id="orchesdiagram"
											src="./Librairies/perso/a2.PNG" /></td>
										<td class="OrchestrationTable"><img id="orchesdiagram"
											src="./Librairies/perso/a3.PNG" /></td>
										<td class="OrchestrationTable"><img id="orchesdiagram"
											src="./Librairies/perso/a4.PNG" /></td>
										<td class="OrchestrationTable"><img id="orchesdiagram"
											src="./Librairies/perso/a5.PNG" /></td>
										<td class="OrchestrationTable"><img id="orchesdiagram"
											src="./Librairies/perso/a6.PNG" /></td>
										<td class="OrchestrationTable"><img id="orchesdiagram"
											src="./Librairies/perso/a7.PNG" /></td>

									</tr>
									<tr class="OrchestrationTableDate">

										<td id="NextMilestoneDesign"  class="OrchestrationTableDate">30-04-2017</td>
										<td id="NextMilestoneRFP" class="OrchestrationTableDate">02-05-2017</td>
										<td id="NextMilestonePurchasing" class="OrchestrationTableDate">tbd</td>
										<td id="NextMilestoneProvisioning" class="OrchestrationTableDate">tbd</td>
										<td id="NextMilestoneBuild" class="OrchestrationTableDate">tbd</td>
										<td id="NextMilestoneRollout" class="OrchestrationTableDate">tbd</td>
										<td id="NextMilestoneGoLive" class="OrchestrationTableDate">tbd</td>

									</tr>
								</table>

							</div>
						</div>


						<!--*****************Steerco Right***** -->
						
						<div  style="margin-top: 30px;" id="SteercoRight">
							<div style="align: center;" id="Budget">
								<h4>Budget [k&euro;]</h4>

								<table align="center" class="ClassBudget">
									<tr class="ClassBudgetHigh">
										<td class="ClassBudgetHigh" colspan="5">TOTAL</td>
										<td class="tdwhite">-------------</td>
										<td class="ClassBudgetHigh" colspan="5">CAPEX</td>
										<td class="tdwhite">-------------</td>
										<td class="ClassBudgetHigh" colspan="5">OPEX</td>
									</tr>
									<tr />
									<tr class="ClassBudgetMiddle">
										<td id="GlobalBudget" class="ClassBudgetMiddle" colspan="5">6 000</td>
										<td class="tdwhite">-------------</td>
										<td id="CapexBudget" class="ClassBudgetMiddle" colspan="5">6 000</td>
										<td class="tdwhite">-------------</td>
										<td id="OpexBudget" class="ClassBudgetMiddle" colspan="5">0</td>


									</tr>
									<tr />
									<tr class="ClassBudgetTitle">
										<td class="ClassBudgetTitle">Official</td>
										<td class="tdwhite">---</td>
										<td class="ClassBudgetTitle">Outlook</td>
										<td class="tdwhite">---</td>
										<td class="ClassBudgetTitle">Ordered</td>
										<td class="tdwhite">-------------</td>
										<td class="ClassBudgetTitle">Official</td>
										<td class="tdwhite">---</td>
										<td class="ClassBudgetTitle">Outlook</td>
										<td class="tdwhite">---</td>
										<td class="ClassBudgetTitle">Ordered</td>
										<td class="tdwhite">-------------</td>
										<td class="ClassBudgetTitle">Official</td>
										<td class="tdwhite">---</td>
										<td class="ClassBudgetTitle">Outlook</td>
										<td class="tdwhite">---</td>
										<td class="ClassBudgetTitle">Ordered</td>

									</tr>
									<tr class="ClassBudgetLow">
										<td id="GlobalOfficial" class="ClassBudgetLow">6 000</td>
										<td class="tdwhite">---</td>
										<td id="GlobalOutlook" class="ClassBudgetLow">6 000</td>
										<td class="tdwhite">---</td>
										<td id="GlobalOrdered" class="ClassBudgetLow">215</td>
										<td class="tdwhite">-------------</td>
										<td id="CapexOfficial" class="ClassBudgetLow">6 000</td>
										<td class="tdwhite">---</td>
										<td id="CapexOutlook" class="ClassBudgetLow">6 000</td>
										<td class="tdwhite">---</td>
										<td id="CapexOrdered" class="ClassBudgetLow">215</td>
										<td class="tdwhite">-------------</td>
										<td id="OpexOfficial" class="ClassBudgetLow">0</td>
										<td class="tdwhite">---</td>
										<td id="OpexOutlook" class="ClassBudgetLow">0</td>
										<td class="tdwhite">---</td>
										<td id="OpexOrdered" class="ClassBudgetLow">0</td>
									</tr>
								</table>

							</div>


							<div style="align: center;" id="OBS">
								<h4>Simplified OBS</h4>

								<table align="center" class="TeamProjectTable">
									<tr>
										<td class="IconTeam"><center> <img
												src="./Librairies/perso/CDP.png" /></center></td>
										<td class="tdwhite">---</td>
										<td class="IconTeam"><center> <img
												src="./Librairies/perso/CDP.png" /></center></td>
										<td class="tdwhite">---</td>
										<td class="IconTeam"><center> <img
												src="./Librairies/perso/CDP.png" /></center></td>
										<td class="tdwhite">---</td>
										<td class="IconTeam"><center> <img
												src="./Librairies/perso/CDP.png" /></center></td>
										<td class="tdwhite">---</td>
										<td class="IconTeam"><center> <img
												src="./Librairies/perso/CDP.png" /></center></td>
									</tr>
									<tr class="TeamProject">
										<td class="TeamProject">
											<p id="Actor1">Project Sponsor</p>
										</td>
										<td class="tdwhite">---</td>
										<td class="TeamProject">
											<p id="Actor2">Project Leader</p>
										</td>
										<td class="tdwhite">---</td>
										<td class="TeamProject">
											<p id="Actor3">Design Authority</p>
										</td>
										<td class="tdwhite">---</td>
										<td class="TeamProject">
											<p id="Actor4">Purchase TAS</p>
										</td>
										<td class="tdwhite">---</td>
										<td class="TeamProject">
											<p id="Actor5">Purchase TGS</p>
										</td>
									</tr>
									<tr class="tdwhite">
										<td class="tdwhite">---</td>
									</tr>
									<tr>
										<td class="People">
											<p id="TeamCDP">B.Wiart</p>
										</td>
										<td class="tdwhite">---</td>
										<td class="People">
											<p id="TeamDA">A.Giraudi</p>
										</td>
										<td class="tdwhite">---</td>
										<td class="People">
											<p id="TeamArchi">JV D.A</p>
										</td>
										<td class="tdwhite">---</td>
										<td class="People">
											<p id="TeamIntegrator">T.Lorenzi</p>
										</td>
										<td class="tdwhite">---</td>
										<td class="People">
											<p id="TeamRollout">S.Sereys</p>
										</td>
									</tr>
								</table>


							</div>
							<div style="align: center;" id="KPI">
								<h4>KPI</h4>
									<p>The KPI will be defined when the orchestration at the JV Level will be identified.</p>
<!-- 								<div style="display: middle;" id="chartContainer" /> -->


							</div>
						</div>
					</div>
				</div>
	<!-- Tab Navigation Contents ================================================== -->	
	<script type="text/javascript">
// 	 dataPoints: [
// 	              {  y: 27.3, indexLabel:"label1", exploded: true },
// 	              {  y: 16.8, indexLabel:"label2" },
 
// 			window.onload = function () {
// 						var dataPoints = [];
// 					    $.getJSON("http://canvasjs.com/services/data/datapoints.php?xstart=1&ystart=10&length=100&type=json", function(data) {  
// 						$.each(data, function(key, value){
// 							dataPoints.push({x: value[0], y: parseInt(value[1])});
// 						});
// 						var chart = new CanvasJS.Chart("chartContainer",{
// 							title: {
// 									text: "KPI OBSO 2003",
// 									fontSize: 14,
// 									fontFamily: "Calibri",
								
// 								},
// 								animationEnabled: true,
// 								theme: "theme1",
// 								data: [
// 								{
// 									type: "doughnut",
// 									indexLabelFontFamily: "Calibri",
// 									indexLabelFontSize: 14,
// 									startAngle: 0,
// 									indexLabelFontColor: "dimgrey",
// 									indexLabelLineColor: "darkgrey",
// 								dataPoints : dataPoints,
// 							}]
// 						});
// 						chart.render();
// 					});
			
// 					
// 			}
			$(document).ready(function(){
				$(function() {
					$("#today").progressbar({
						value: 0.1
					});
					$("#today > .ui-progressbar-value").animate({
						width: "10%"
					}, 2000);
				  });
				
				$("#EditProjectDescription").val($("#ProjectDescription").find("b").html());
				$("#EditKeyPoint1").val($("#KeyPoint1").text().trim());
				$("#EditKeyPoint2").val($("#KeyPoint2").text().trim());
				$("#EditKeyPoint3").val($("#KeyPoint3").text().trim());
				$("#EditNote1").val($("#Remark1").text().trim());
				$("#EditNote2").val($("#Remark2").text().trim());
				$("#EditNote3").val($("#Remark3").text().trim());
				$("#EditStep1").val($("#NextStep1").text().trim());
				$("#EditStep2").val($("#NextStep2").text().trim());
				$("#EditKickoff").val($("#NextMilestoneDesign").text());
				$("#EditDesign").val($("#NextMilestoneRFP").text());
				$("#EditRFP").val($("#NextMilestonePurchasing").text());
				$("#EditPurchasing").val($("#NextMilestoneProvisioning").text());
				$("#EditProvisioning").val($("#NextMilestoneBuild").text());
				$("#EditBuild").val($("#NextMilestoneRollout").text());
				$("#EditRollout").val($("#NextMilestoneGoLive").text());
				$("#EditProgress").val($("#today").progressbar("value").text());
				$("#EditTotalCapex").val($("#CapexBudget").text());
				$("#EditOfficialCapex").val($("#CapexOfficial").text());
				$("#EditOutlookCapex").val($("#CapexOutlook").text());
				$("#EditOrderedCapex").val($("#CapexOrdered").text());
				$("#EditTotalOpex").val($("#OpexBudget").text());
				$("#EditOfficialOpex").val($("#OpexOfficial").text());
				$("#EditOutlookOpex").val($("#OpexOutlook").text());
				$("#EditOrderedOpex").val($("#OpexOrdered").text());
				
				$("#EditActor1").val
				$("#EditActor2").val
				$("#EditActor1").val
				$("#EditActor1").val
				$("#EditActor1").val
				
				$( "body" ).on( "click","span[title='Tendance']", function(e) {
					
					
					$(this).removeClass("glyphicon"); 
					$(this).removeClass("Green");
					$(this).removeClass("Rouge");
					$(this).removeClass("Orange");
					
						var myClass = $(this).attr("class");
						
 				 
						
					if (myClass =="glyphicon-arrow-up"){
						 $(this).switchClass(myClass,"glyphicon-arrow-down",5,"easeInOutQuad");
						 $(this).addClass("Rouge");
						 //alert("switch");
						 }
					 else if (myClass =="glyphicon-arrow-down"){
						 $(this).switchClass(myClass,"glyphicon-arrow-right",5,"easeInOutQuad");
						 $(this).addClass("Orange");
						 //alert("switch");
						 }
					 else if (myClass =="glyphicon-arrow-right"){
						 $(this).switchClass(myClass,"glyphicon-arrow-up",5,"easeInOutQuad");
						 $(this).addClass("Green");
						 //alert("switch");
						 }
						 
						 
				    
					 $(this).addClass( "glyphicon" );
	
				});
				$( "body" ).on( "click","td[class='PhaseProject']", function(e) {
					
					
					 var myTarget=$(this).attr('target');
	
					 if (myTarget =="red"){
						 $(this).attr('target',"orange");
					 }
					 else  if (myTarget =="orange"){
						 $(this).attr('target',"blue");
					 }
					 else  if (myTarget =="blue"){
						 $(this).attr('target',"green");
					 }
					 else  if (myTarget =="green"){
						 $(this).attr('target',"red");
					 }
					
	
				});
 
			});
				
	</script>
	
</body>
</html>