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




<script type="text/javascript">
 
				window.onload = function () {
					
			
					var chart = new CanvasJS.Chart("chartContainer", {
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
							toolTipContent: "{y} %",
		
							dataPoints: [
							{ y: 51.04, indexLabel: "Android {y}%", exploded: true},
							{ y: 40.83, indexLabel: "iOS {y}%" },
							{ y: 3.20, indexLabel: "Java ME {y}%" , exploded: true},
							{ y: 1.11, indexLabel: "BlackBerry {y}%" },
							{ y: 2.29, indexLabel: "Windows {y}%" , exploded: true},
							{ y: 1.53, indexLabel: "Others {y}%" }
		
							]
						}
						]
					});
					
					chart.render();
					
					 $(function() {
						$("#today").progressbar({
							value: 0.1
						});
						$("#today > .ui-progressbar-value").animate({
							width: "68%"
						}, 2000);
					  });
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
						<h4>N&deg;17 - Internet on Desktop</h4>
					</div>

					<div class="Steerco">
						<!--*****************Steerco Left***** -->
						<div id="SteercoLeft">
							<div id="ProjectDescription">
								<H4>Project Description</H4>
								<p class="pLeftDesc">
									<b>Note: </b>When aligning using the float property, a
									<P id="Service">ISOP</P>
								</p>
							</div>

							<div id="KeyPoints">
								<H4>Key Points</H4>
								<p class="pMiddle">
									<b>Note: 1</b>property, a
								</p>
								<p class="pMiddle">
									<b>Note: 2</b>property, a
								</p>
								<p class="pMiddle">
									<b>Note: 3</b>property, a
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
											<td class="PhaseProject" target="green">
												<p>78%</p>
											</td>
											<td></td>
											<td class="PhaseProject" target="green">
												<p>0%</p>
											</td>
											<td></td>
											<td class="PhaseProject" target="green">
												<p>0%</p>
											</td>
											<td></td>
											<td class="PhaseProject" target="blue">
												<p>0%</p>
											</td>
											<td></td>
											<td class="PhaseProject" target="red">
												<p>0%</p>
											</td>
										</tr>
										<tr>
											<td class="Tendance"><center> <img
													src="./Librairies/perso/fgreen.png" /></center></td>
											<td></td>
											<td class="Tendance"><center> <img
													src="./Librairies/perso/fred.png" /></center></td>
											<td></td>
											<td class="Tendance"><center> <img
													src="./Librairies/perso/fblue.png" /></center></td>
											<td></td>
											<td class="Tendance"><center> <img
													src="./Librairies/perso/fblue.png" /></center></td>
											<td></td>
											<td class="Tendance"><center> <img
													src="./Librairies/perso/fblue.png" /></center></td>
										</tr>
									</table>

								</div>
								<p class="pMiddle">
									<b>Note: 1</b>property, a
								</p>
								<p class="pMiddle">
									<b>Note: 2</b>property, a
								</p>
								<p class="pMiddle">
									<b>Note: 3</b>property, a
								</p>


							</div>

							<div id="NextStep">
								<H4>Next Step</H4>
								<p class="pMiddle">
									<b>Note: </b>When aligning using the float property, a
								</p>
								<p class="pMiddle">
									<b>Note: </b>When aligning using the float property, a
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

										<td class="OrchestrationTableDate">01-02-2016</td>
										<td class="OrchestrationTableDate">01-02-2016</td>
										<td class="OrchestrationTableDate">01-02-2016</td>
										<td class="OrchestrationTableDate">01-02-2016</td>
										<td class="OrchestrationTableDate">01-02-2016</td>
										<td class="OrchestrationTableDate">01-02-2016</td>
										<td class="OrchestrationTableDate">01-02-2016</td>

									</tr>
								</table>

							</div>
						</div>


						<!--*****************Steerco Right***** -->
						<div id="SteercoRight">
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
										<td class="ClassBudgetMiddle" colspan="5">1 300</td>
										<td class="tdwhite">-------------</td>
										<td class="ClassBudgetMiddle" colspan="5">1 000</td>
										<td class="tdwhite">-------------</td>
										<td class="ClassBudgetMiddle" colspan="5">1 300</td>


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
										<td class="ClassBudgetLow">1 100</td>
										<td class="tdwhite">---</td>
										<td class="ClassBudgetLow">+150</td>
										<td class="tdwhite">---</td>
										<td class="ClassBudgetLow">1 794</td>
										<td class="tdwhite">-------------</td>
										<td class="ClassBudgetLow">3 100</td>
										<td class="tdwhite">---</td>
										<td class="ClassBudgetLow">+170</td>
										<td class="tdwhite">---</td>
										<td class="ClassBudgetLow">1 794</td>
										<td class="tdwhite">-------------</td>
										<td class="ClassBudgetLow">1 100</td>
										<td class="tdwhite">---</td>
										<td class="ClassBudgetLow">+150</td>
										<td class="tdwhite">---</td>
										<td class="ClassBudgetLow">1 794</td>
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
											<p>Project Leader</p>
										</td>
										<td class="tdwhite">---</td>
										<td class="TeamProject">
											<p>Design Authority</p>
										</td>
										<td class="tdwhite">---</td>
										<td class="TeamProject">
											<p>Architect</p>
										</td>
										<td class="tdwhite">---</td>
										<td class="TeamProject">
											<p>Integrator</p>
										</td>
										<td class="tdwhite">---</td>
										<td class="TeamProject">
											<p>Rollout</p>
										</td>
									</tr>
									<tr class="tdwhite">
										<td class="tdwhite">---</td>
									</tr>
									<tr>
										<td class="People">
											<p>J.Argemi</p>
										</td>
										<td class="tdwhite">---</td>
										<td class="People">
											<p>E.Mancini</p>
										</td>
										<td class="tdwhite">---</td>
										<td class="People">
											<p>M.Foraita</p>
										</td>
										<td class="tdwhite">---</td>
										<td class="People">
											<p>APX</p>
										</td>
										<td class="tdwhite">---</td>
										<td class="People">
											<p>G.F.I</p>
										</td>
									</tr>
								</table>


							</div>
							<div style="align: center;" id="KPI">
								<H4>KPI</H4>

								<div id="chartContainer" />


							</div>
						</div>
					</div>
				</div>
	<!-- Tab Navigation Contents ================================================== -->	
	
	
</body>
</html>