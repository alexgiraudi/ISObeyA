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
<link type="text/css" href="./Librairies/perso/vis/dist/vis.css"	rel="stylesheet" />
<link type="text/css" href="./Librairies/iobeya/Obeya.css"	rel="stylesheet" />


<!-- Script -->
<script src="./Librairies/jquery/assets/js/jquery-3.1.0.min.js"></script>
<script src="./Librairies/bootstrap/js/bootstrap.js"	type="text/javascript"></script>
<script	src="./Librairies/jquery/assets/js/jquery-ui-1.10.0.custom.min.js"></script>
<script	src="./Librairies/jquery/assets/js/google-code-prettify/prettify.js"	type="text/javascript"></script>
<script src="./Librairies/jquery/assets/js/docs.js"	type="text/javascript"></script>
<script src="./Librairies/lobibox/js/lobibox.js"></script>
<script src="./Librairies/lobibox/js/actions.js"></script>
<script src="./Librairies/perso/canvasjs.min.js"></script>
<script src="./Librairies/perso/vis/dist/vis.js"></script>






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
			<li class="nav-item active"><a class="nav-link"  href="./IsObeya-SteercoSlideShow-steerco.jsp">Steerco</a></li>
			<li class="nav-item "><a class="nav-link"  href="./IsObeya-SteercoSlideShow-timeline.jsp">Timline</a></li>
			<li class="nav-item "><a class="nav-link"  href="./IsObeya-SteercoSlideShow-wbs.jsp">WBS</a></li>
			<li class="nav-item "><a class="nav-link"  href="./IsObeya-SteercoSlideShow-actions.jsp">Actions List</a></li>
			<li class="nav-item "><a class="nav-link"  href="./IsObeya-SteercoSlideShow-Obeya.jsp">Obeya</a></li>
			
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" href="http://example.com"
				id="responsiveNavbarDropdown" data-toggle="dropdown"
				aria-haspopup="true" aria-expanded="false">Projects</a>
				<div class="dropdown-menu"
					aria-labelledby="responsiveNavbarDropdown">
					<a class="dropdown-item" href="#">Project 1</a> <a
						class="dropdown-item" href="#">Project 2</a> <a
						class="dropdown-item" href="#">Project n</a>
				</div></li>
		</ul>
		<form class="form-inline float-lg-right">
			<input class="form-control" type="text" placeholder="Search" />
			<button class="btn btn-outline-success" type="submit">Search</button>
		</form>
	</div>
	</nav>
	<!-- End Of Navbar ================================================== -->

	<!-- Sticky Bar ================================================== -->
	<!-- Mettre la solution bootstrap -->
	<!-- End Sticky Bar ================================================== -->

	<!-- Contents ================================================== -->

	<div id="TailSteerco">
		

					<!-- Steerco Slide -->
					<!--************************************************************************* -->

					<div id="ProjectName">
						<h4>Security For Business</h4>
					</div>

					<div class="Steerco">
						<!--*****************Steerco Left***** -->
						<div style="margin-top: 30px;" id="SteercoLeft">
							<div id="ProjectDescription" >
								<h4>Project Description</h4>
								 
									<b>Securing business networks of Thales Alenia Space [JV]</b>
									 
								 
							</div>

							<div id="KeyPoints">
								<H4>Key Points</H4>
								<p id="KeyPoint1" class="pMiddle">
									<b>Key Point 1 - </b>JV architecture workshop in progress
								</p>
								<p id="KeyPoint2" class="pMiddle">
									<b>Key Point 2 - </b>Building archtitecture from existing Italian secure functional blocks [Internet]
								</p>
								<p id="KeyPoint3" class="pMiddle">
									<b>Key Point 3 - </b>Purchasing organization in progress : PVET 1
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
											<td class="Tendance"><center> <img
													src="./Librairies/perso/fblue.png" /></center></td>
											<td></td>
											<td class="Tendance"><center> <img
													src="./Librairies/perso/fgreen.png" /></center></td>
											<td></td>
											<td class="Tendance"><center> <img
													src="./Librairies/perso/fgreen.png" /></center></td>
											<td></td>
											<td class="Tendance"><center> <img
													src="./Librairies/perso/fblue.png" /></center></td>
											<td></td>
											<td class="Tendance"><center> <img
													src="./Librairies/perso/fblue.png" /></center></td>
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
								<H4>Budget [k&euro;]</H4>

								<table align="center" class="ClassBudget">
									<tr class="ClassBudgetHigh">
										<td class="ClassBudgetHigh" colspan="5">Total</td>
										<td class="tdwhite">-------------</td>
										<td class="ClassBudgetHigh" colspan="5">Capex</td>
										<td class="tdwhite">-------------</td>
										<td class="ClassBudgetHigh" colspan="5">Opex</td>
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
								<H4>Simplified OBS</H4>

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
											<p>Project Sponsor</p>
										</td>
										<td class="tdwhite">---</td>
										<td class="TeamProject">
											<p>Project Leader</p>
										</td>
										<td class="tdwhite">---</td>
										<td class="TeamProject">
											<p>Design Authority</p>
										</td>
										<td class="tdwhite">---</td>
										<td class="TeamProject">
											<p>Purchase TAS</p>
										</td>
										<td class="tdwhite">---</td>
										<td class="TeamProject">
											<p>Purchase TGS</p>
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
									<P>The KPI will be defined when the orchestration at the JV Level will be identified.</P>
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
 
			window.onload = function () {
						var dataPoints = [];
					    $.getJSON("http://canvasjs.com/services/data/datapoints.php?xstart=1&ystart=10&length=100&type=json", function(data) {  
						$.each(data, function(key, value){
							dataPoints.push({x: value[0], y: parseInt(value[1])});
						});
						var chart = new CanvasJS.Chart("chartContainer",{
							title: {
									text: "KPI OBSO 2003",
									fontSize: 14,
									fontFamily: "Calibri",
								
								},
								animationEnabled: true,
								theme: "theme1",
								data: [
								{
									type: "doughnut",
									indexLabelFontFamily: "Calibri",
									indexLabelFontSize: 14,
									startAngle: 0,
									indexLabelFontColor: "dimgrey",
									indexLabelLineColor: "darkgrey",
								dataPoints : dataPoints,
							}]
						});
						chart.render();
					});
			
					$(function() {
							$("#today").progressbar({
								value: 0.1
							});
							$("#today > .ui-progressbar-value").animate({
								width: "10%"
							}, 2000);
						  });
			}
 
 
 
				
				
	</script>
	
</body>
</html>