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
 
</head>


<body data-spy="scroll" data-twttr-rendered="true" >

	 
	<jsp:useBean id="myBeanProjects" class="database.MySqlStatmentProjects" scope="application"/>
	<jsp:useBean id="myBeanPeople" class="database.MySqlStatmentPeople" scope="application"/>
	<jsp:useBean id="myBeanCardLog" class="database.MySqlStatmentCardLog" scope="application"/>
	<jsp:useBean id="myBeanCard" class="database.MySqlStatmentCard" scope="application"/>
	

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
							java.util.List<String> listProjects = new java.util.ArrayList<String>() ;
							listProjects=myBeanProjects.GetProjects("Kanban");
							for (int i=0;i<listProjects.size();i++){
								out.println(listProjects.get(i).toString());
							}
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

	<!-- Contents ================================================== -->
	<div id="HeaderProject">
		<div style="background: none;max-height:150px;" class="board__columns-scrollable-wrapper">
			<div style="background: none;;max-height:150px;" class="column top-to-bottom" >
				<div class="column__header" >
					<h2 style="display: inline;" class="column__header-label">Project Info</h2>
				</div>
				<div id="InfoProject"  style="background: none;max-height:150px;" class="column__items-wrapper">
					<table style="overflow-y: auto;" class="zebra"  >
						<thead style="margin-bottom:10px;">
							<tr>
								<th style="width:20%;"></th>
								<th style="width:70%;"></th>
							</tr>
						</thead>
						<tbody>
							<tr style="margin-left:5px;">
								<td valign='middle'>
									<span  style='font-size: 12px;' class='glyphicon glyphicon-tag overRed'/>
								</td>
								<td  contenteditable='true' style='font-size: 14px'>infoproject</td>
							</tr>
							<tr style="margin-left:5px;">
								<td valign='middle'>
									<span  style='font-size: 12px;' class='glyphicon glyphicon-tag overRed'/>
								</td>
								<td  contenteditable='true' style='font-size: 14px'>infoproject</td>
							</tr>
							<tr style="margin-left:5px;">
								<td valign='middle'>
									<span  style='font-size: 12px;' class='glyphicon glyphicon-tag overRed'/>
								</td>
								<td  contenteditable='true' style='font-size: 14px'>infoproject</td>
							</tr>
							<tr style="margin-left:5px;">
								<td valign='middle'>
									<span  style='font-size: 12px;' class='glyphicon glyphicon-tag overRed'/>
								</td>
								<td  contenteditable='true' style='font-size: 14px'>infoproject</td>
							</tr>
							
						</tbody>
					</table>
				</div>
			</div>
			
			
			<div style="background: none;;max-height:150px;" class="column top-to-bottom" >
				<div class="column__header" >
					<h2 style="display: inline;max-height:150px;" class="column__header-label">Success</h2>
				</div>
				<div id="successProject"  style="background: none;max-height:150px;" class="column__items-wrapper">
					<table  style="overflow-y: auto;" class="zebra"  >
						<thead style="margin-bottom:10px;">
							<tr>
								<th style="width:20px;"></th>
								<th style="width:80px;"></th>
								
							</tr>
						</thead>
						<tbody>
							<tr style="margin-left:5px;">
								<td valign='middle'>
									<span  style='font-size: 12px;' class='glyphicon glyphicon-thumbs-up overRed'/>
								</td>
								<td  contenteditable='true' style='font-size: 14px;text-align: left;'>infoproject</td>
								
							</tr>
							<tr style="margin-left:5px;">
								<td valign='middle'>
									<span  style='font-size: 12px;' class='glyphicon glyphicon-thumbs-up overRed'/>
								</td>
								<td  contenteditable='true' style='font-size: 14px;text-align: left;'>infoproject</td>
								
							</tr>
							<tr style="margin-left:5px;">
								<td valign='middle'>
									<span  style='font-size: 12px;' class='glyphicon glyphicon-thumbs-up overRed'/>
								</td>
								<td  contenteditable='true' style='font-size: 14px;text-align: left;'>infoproject</td>
								
							</tr>
							
							
						</tbody>
					</table>
				</div>
			</div>
			
			<div style="background: none;;max-height:150px;" class="column top-to-bottom" >
				<div class="column__header" >
					<h2 style="display: inline;max-height:150px;" class="column__header-label">Decision</h2>
				</div>
				<div id="DecisionProject"  style="background: none;max-height:150px;" class="column__items-wrapper">
					<table  style="overflow-y: auto;" class="zebra"  >
						<thead style="margin-bottom:10px;">
							<tr>
								<th style="width:20px;"></th>
								<th style="width:80px;"></th>
								
							</tr>
						</thead>
						<tbody>
							<tr style="margin-left:5px;">
								<td valign='middle'>
									<span  style='font-size: 12px;' class='glyphicon glyphicon-king overRed'/>
								</td>
								<td  contenteditable='true' style='font-size: 14px;text-align: left;'>infoproject</td>
								
							</tr>
							<tr style="margin-left:5px;">
								<td valign='middle'>
									<span  style='font-size: 12px;' class='glyphicon glyphicon-king overRed'/>
								</td>
								<td  contenteditable='true' style='font-size: 14px;text-align: left;'>infoproject</td>
								
							</tr>
							<tr style="margin-left:5px;">
								<td valign='middle'>
									<span  style='font-size: 12px;' class='glyphicon glyphicon-king overRed'/>
								</td>
								<td  contenteditable='true' style='font-size: 14px;text-align: left;'>infoproject</td>
								
							</tr>
							
							
						</tbody>
					</table>
				</div>
			</div>
			
			<div style="background: none;;max-height:150px;" class="column top-to-bottom" >
				<div class="column__header" >
					<h2 style="display: inline;max-height:150px;" class="column__header-label">Project KPI</h2>
				</div>
				<div id="KPIProject"  style="background: none;max-height:150px;" class="column__items-wrapper">
					<center>
						<h2>245</h2><table><tr><td  contenteditable='true'><span>Number of W2003 Serveurs online</span></td></tr></table>
					</center>
				</div>
			</div>
			
			<div style="background: none;;max-height:150px;" class="column top-to-bottom" >
				<div class="column__header" >
					<h2 style="display: inline;max-height:150px;" class="column__header-label">Due Date</h2>
				</div>
				<div id="DueDateProject"  style="background: none;max-height:150px;" class="column__items-wrapper">
					<center>
						<h2>23/12/2017</h2>
					</center>
				</div>
			</div>
	</div>
		
		
		
			
	
					
								

	<div id="TailSteerco" >
		
					<div class="board__columns-scrollable-wrapper">
						<div class="column top-to-bottom" id="C1">
							<div class="column__header" id="Hearder1">
								
								<h2 style="display: inline;" class="column__header-label">BACKLOG</h2>
								<a id="OpenAddForm" style="display: inline; float: right; margin-right: 5px;"
									href="" data-toggle="modal"><i class="glyphicon glyphicon-pencil"></i></a>
							</div>
							<div id="backlogcolumn" class="column__items-wrapper " ondrop="drop(event)" ondragover="allowDrop(event)">
							<%
							java.util.List<String> listCards = new java.util.ArrayList<String>() ;
							if (request.getParameter("ProjectName")!=null){
								
								listCards=myBeanCard.GetCard("backlogcolumn",request.getParameter("ProjectName"));
								for (int i=0;i<listCards.size();i++){
									out.println(listCards.get(i).toString());
								}
							}
							%> 
								

							</div>
						</div>

						<div class="column top-to-bottom" id="C2">
							<div class="column__header">
								<h2 class="column__header-label">Description WIP</h2>
							</div>
							<div id="DescriptionWIP" class="column__items-wrapper " ondrop="drop(event)" ondragover="allowDrop(event)">
							<%
							if (request.getParameter("ProjectName")!=null){
								listCards = new java.util.ArrayList<String>() ;
								listCards=myBeanCard.GetCard("DescriptionWIP",request.getParameter("ProjectName"));
								for (int i=0;i<listCards.size();i++){
									out.println(listCards.get(i).toString());
								}
							}
							%> 
							

							</div>
						</div>

						<div class="column top-to-bottom" id="C3">
							<div class="column__header">
								<h2 class="column__header-label">Description Done</h2>
							</div>
							<div id="DescriptionDone" class="column__items-wrapper" ondrop="drop(event)" ondragover="allowDrop(event)">
							
							<%
							if (request.getParameter("ProjectName")!=null){
								listCards = new java.util.ArrayList<String>() ;
								listCards=myBeanCard.GetCard("DescriptionDone",request.getParameter("ProjectName"));
								for (int i=0;i<listCards.size();i++){
									out.println(listCards.get(i).toString());
								}
							}
							%> 
							
							</div>
						</div>

						<div class="column top-to-bottom" id="C4">
							<div class="column__header">
								<h2 class="column__header-label">Rollout WIP</h2>
							</div>
							<div id="RolloutWip" class="column__items-wrapper" ondrop="drop(event)" ondragover="allowDrop(event)">
							<%
							if (request.getParameter("ProjectName")!=null){
								listCards = new java.util.ArrayList<String>() ;
								listCards=myBeanCard.GetCard("RolloutWip",request.getParameter("ProjectName"));
								for (int i=0;i<listCards.size();i++){
									out.println(listCards.get(i).toString());
								}
							}
							%> 
							
							</div>
						</div>

						<div class="column top-to-bottom" id="C5">
							<div class="column__header">
								<h2 style="display: inline;" class="column__header-label">Rollout Done</h2>
								
							</div>
							<div id="RolloutDone" class="column__items-wrapper" ondrop="drop(event)" ondragover="allowDrop(event)">
							<%
							if (request.getParameter("ProjectName")!=null){
								listCards = new java.util.ArrayList<String>() ;
								listCards=myBeanCard.GetCard("RolloutDone",request.getParameter("ProjectName"));
								for (int i=0;i<listCards.size();i++){
									out.println(listCards.get(i).toString());
								}
							}
							%> 
								

							</div>
						</div>

					</div>
					
					
					    
					
				</div>
					
					 
					
					<!-- Form Log Card -->
					<div class="modal fade" id="FormLog" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" >
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal"
										aria-hidden="true">&times;</button>
									<h4 class="modal-title" id="myModalLabel">Log</h4>
								</div>
								<div class="modal-body">
									<div id="modal-loader" style="display: none; text-align: center;">
							           <!-- ajax loader -->
							           <img src="./Librairies/images/ajax-loader.gif"/>
							        </div>
							        <div >
										<div class="form-group">
											<table class="table table-sm table-hover">
												<thead>
													<tr>
														
														<th>CardId</th>
														<th>EventId</th>
														<th>DateEvent</th>
														<th>DescriptionEvent</th>
													
													</tr>
												</thead>
												<tbody id="dynamic-content">
											
	
												</tbody>
											</table>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

					<!-- Form Add Card -->
					<div class="modal fade" id="FormAdd" tabindex="-1" role="dialog"
						aria-labelledby="myModalLabel" aria-hidden="true">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal"
										aria-hidden="true">&times;</button>
									<h4 class="modal-title" id="myModalLabel">Create Task</h4>
								</div>
								<div class="modal-body">
									<div class="form-group" id="CardContainerTemplate">
										<div class="cardEdit" id="cardTemplate" tabindex="0" >
											<div class="card__header">
												<div class="estimator">
													<button class="estimator__estimate-button Medium"
														type="button" title="Priority">M</button>
												</div>
												<img src="./Librairies/iobeya/none.png.jpg" class="avatar" />
												<div class="assigner">
													<button class="assigner__assignee" data-toggle="dropdown" title="Owner"  id="OwnerTemplate">AGI</button>
												</div>
												<span class="blocking-indicator__indicator blocker"
													id="blokerTemplate" title="BlockerValue">Blocked</span>
												<div class="card__actions">
													<button title="Blocker">
														<i class="glyphicon glyphicon-thumbs-down"></i>
													</button>
													<button id="SelectAllAdd" href="" data-toggle="modal"
														title="Select All">
														<i class="glyphicon glyphicon-transfer"></i>
													</button>
													<button id="ClearAllAdd" href="" data-toggle="modal"
														title="Clear">
														<i class="glyphicon glyphicon-repeat"></i>
													</button>
<!-- 													<button title="Edit"> -->
<!-- 														<i class="glyphicon glyphicon-edit"></i> -->
<!-- 													</button> -->
<!-- 													<button id="deleteTemplate" title="Delete"> -->
<!-- 														<i class="glyphicon glyphicon-off"></i> -->
<!-- 													</button> -->
												</div>
											</div>
		
											<div class="card__body story" id="CardBodyTemplateAddCard">
												<div class="card__body-content">
													<div class="card__body-title" title="ContentCard" id="CardBodyValueTemplate">
														<textarea class = "textareaobeya" id="textareaAddForm" class="form-control" placeholder="Enter description task here !"></textarea>
													</div>
		
													<div class="card__body-meta">
														
															<div class="TagDueDateOK" id="DueDateDivTemplate">
																<span class="DueDateFieldValue" title="DueDateValue">No Due Date</span>													 
															</div>														 
														
														
														<div class="card__body-counts">
															<span style="color:grey;" id="ChargeTemplate" title="Charge (j)">0</span>
															<span style="color:grey;" id="ProgressTemplate" title="Raf">0</span>
														</div>
													</div>
												</div>
											</div>
		
										</div>
									</div>
									
									<div class="form-group">
										 
											<input class="DueDateInputClasse" id="DueDateObjTemplate" type="text" data-datepicker='{ "dateFormat": "MM dd, yy"}'/>
										 
									</div>
								
									<div class="form-group">
									  <label for="example-number-input" >Charge in Day</label>
									  <div id="slider">
										  <div id="custom-handle" class="ui-slider-handle"></div>
										    <script>
											  $( function() {
											    var handle = $( "#custom-handle" );
											    
											    $( "#slider" ).slider({
											      create: function() {
											        handle.text( $( this ).slider( "value" ) );
											      },
											      slide: function( event, ui ) {
											        handle.text( ui.value );
											        $( "#ChargeTemplate" ).html(ui.value)
											      }
											    });
											  } );
											  </script>
									  </div>
									</div>
									<!-- Indicates a successful or positive action -->
									<button id="SubmitAddCard" style="display: inline;" type="button" class="btn btn-sm btn-success">Add Card</button>
									
									
									<div style="margin: auto; width: 80%;" class="form-group">
										<div class="input-group-btn ">
											
										

											<div class="dropdown-menu" id="SelectOwnerAddForm">
												<%
													java.util.List<String> listPeople = new java.util.ArrayList<String>() ;
													listPeople=myBeanPeople.GetPeople();
													for (int i=0;i<listPeople.size();i++){
														out.println(listPeople.get(i).toString());
													}
												%> 

											</div>
										</div>

									</div>
									
									
									
									


								</div>
							</div>
							<!-- /.modal-content -->
						</div>
						<!-- /.modal-dialog -->
					</div>
					<!--  /.modal -->
					
					<!-- Form Edit Card -->
					<div class="modal fade" id="FormEdit" tabindex="-1" role="dialog"
						aria-labelledby="myModalLabel" aria-hidden="true">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal"
										aria-hidden="true">&times;</button>
									<h4 class="modal-title" id="myModalLabelEdit">Modify Task</h4>
								</div>
								<div class="modal-body">
									<div class="form-group" id="CardContainerTemplate">
										<div  class="cardEdit" id="cardEdit" tabindex="0">
											<div class="card__header">
												<div class="estimator">
													<button class="estimator__estimate-button Medium"
														type="button"   title="Priority">M</button>
												</div>
												<img src="./Librairies/iobeya/none.png.jpg" class="avatar" />
												<div class="assigner">
													<button class="assigner__assignee" data-toggle="dropdown" title="Owner"  id="OwnerEdit">AGI</button>
												</div>
												<span class="blocking-indicator__indicator blocker"
													id="blokerEdit" style="display:none;" title="BlockerValue">Blocked</span>
												<div class="card__actions">
													<button title="Blocker">
														<i class="glyphicon glyphicon-thumbs-down"></i>
													</button>
													<button id="SelectAllEdit" href="" data-toggle="modal"
														title="Select All">
														<i class="glyphicon glyphicon-transfer"></i>
													</button>
													<button id="ClearAllEdit" href="" data-toggle="modal"
														title="Clear">
														<i class="glyphicon glyphicon-repeat"></i>
													</button>
<!-- 													<button title="Edit"> -->
<!-- 														<i class="glyphicon glyphicon-edit"></i> -->
<!-- 													</button> -->
<!-- 													<button id="deleteEdit" title="Delete"> -->
<!-- 														<i class="glyphicon glyphicon-off"></i> -->
<!-- 													</button> -->
												</div>
											</div>
		
											<div class="card__body story" id="CardBodyEdit" title="CardBodyTheme">
												<div class="card__body-content">
													<div class="card__body-title" title="ContentCard" id="CardBodyValueEdit">
														<textarea class = "textareaobeya" id="textareaEditForm" class="form-control"></textarea>
													</div>
		
													<div class="card__body-meta">
														<div class="TagDueDateOK" id="DueDateDivEdit">
															<span class="DueDateFieldValue" title="DueDateValue">No Due Date</span>													 
														</div>
														
														<div class="card__body-counts">
															<span style="color:grey;" id="ChargeEdit" title="Charge (d)">0</span>
															<span style="color:grey;" id="ProgressEdit" title="Raf">0</span>
														</div>
													</div>
												</div>
											</div>
		
										</div>
									</div>
									<div class="form-group">
										 
											<input class="DueDateInputClasse" id="DueDateObjEdit" type="text" data-datepicker='{ "dateFormat": "MM dd, yy"}'/>
										 
									</div>
									
									<div class="form-group">
									  <label for="example-number-input" >Charge in Day</label>
									  <div id="slider2">
										  <div id="custom-handleCharge" class="ui-slider-handle"></div>
										    <script>
											  $( function() {
											    var handleCharge = $( "#custom-handleCharge" );
											    
											    $( "#slider2" ).slider({
											      create: function() {
											    	  handleCharge.text( $( this ).slider( "value" ) );
											      },
											      slide: function( event, ui ) {
											    	  handleCharge.text( ui.value );
											        $( "#ChargeEdit" ).html(ui.value)
											      }
											    });
											  } );
											  </script>
									  </div>
									</div>
									
									<div class="form-group">
									  <label for="example-number-input" >Raf</label>
									  <div id="slider3">
										  <div id="custom-handleRaf" class="ui-slider-handle"></div>
										    <script>
											  $( function() {
											    var handleRaf = $( "#custom-handleRaf" );
											    
											    $( "#slider3" ).slider({
											      create: function() {
											    	  handleRaf.text( $( this ).slider( "value" ) );
											      },
											      slide: function( event, ui ) {
											    	  handleRaf.text( ui.value );
											        $( "#ProgressEdit" ).html(ui.value)
											      }
											    });
											  } );
											  </script>
									  </div>
									</div>
									<!-- Indicates a successful or positive action -->
									<button id="SubmitEditCard" style="display: inline;" type="button" class="btn btn-sm btn-success">Update Card</button>
									
									
									<div style="margin: auto; width: 80%;" class="form-group">
										<div class="input-group-btn ">
											
										

											<div class="dropdown-menu" id="SelectOwnerEditForm">
												<%
													//listPeople = new java.util.ArrayList<String>() ;
													//listPeople=myBeanPeople.GetPeople();
													for (int i=0;i<listPeople.size();i++){
														out.println(listPeople.get(i).toString());
													}
												%> 

											</div>
										</div>

									</div>
									
									
									
									


								</div>
							</div>
							<!-- /.modal-content -->
						</div>
						<!-- /.modal-dialog -->
					</div>
					<!--  /.modal -->
					
								
	</div>
	
	
			

	<!-- Tab Navigation Contents ================================================== -->	
	<script type="text/javascript">
 				
				String.prototype.replaceAll = function (find, replace) {
				    var str = this;
				    return str.replace(new RegExp(find, 'g'), replace);
				};
	
				function generateUUID() {
				    var d = new Date().getTime();
				    if(window.performance && typeof window.performance.now === "function"){
				        d += performance.now();; //use high-precision timer if available
				    }
				    var uuid = 'xxxxx'.replace(/[xy]/g, function(c) {
				        var r = (d + Math.random()*16)%16 | 0;
				        d = Math.floor(d/16);
				        return (c=='x' ? r : (r&0x3|0x8)).toString(16);
				    });
				    return uuid;
				};
					
				function allowDrop(ev) {
				    ev.preventDefault();
				
				};

				function drag(ev) {
				    ev.dataTransfer.setData("text", ev.target.id);
				};

				function drop(ev) {
				    ev.preventDefault();
				    
				   
					    var data = ev.dataTransfer.getData("text");
					    ev.target.appendChild(document.getElementById(data));
					    
					    updateExistingCard(data,ev.target.id,"Move card in " + ev.target.id);
					   
				
				    
				};
				
				function deleteCard(pId){
					var DataCard={
	 				    	"Id": pId
						  };
	 				    
	 				   seen = []

	 				  var serializedCard  = JSON.stringify(DataCard, function(key, val) {
	 				     if (typeof val == "object") {
	 				          if (seen.indexOf(val) >= 0)
	 				              return
	 				          seen.push(val)
	 				      }
	 				      return val
	 				  })

	 				 
   
	 				  $.ajax({
	 					    type: 'get', // it's easier to read GET request parameters
	 					    url: 'CardManagment',
	 					    dataType: 'JSON',
	 					    data: { 
	 					      EventId: generateUUID(),
	 					      SqlMode:"delete",
	 					      EventDescription: "Card deleted on project !",
	 					      NewCard: serializedCard // look here!
	 					    },
	 					    success: function(data) {
	 					    	 Lobibox.notify('success', {
	 			                	icon: false,
	 			                	size: 'mini',
	 			                    rounded: false,
	 			                    delayIndicator: true,
	 			                    position: 'right bottom',
	 			                    title: 'Success...',
	 			                    pauseDelayOnHover: true,
	 			                    continueDelayOnInactiveTab: false,
	 			                    msg: 'Card deleted...'
	 			                });
	 					    },
	 					    error: function(jqXHR, textStatus, errorThrown){ 
	 					    	Lobibox.notify('error', {
	 			                	icon: false,
	 			                	size: 'mini',
	 			                    rounded: false,
	 			                    delayIndicator: true,
	 			                    position: 'right bottom',
	 			                    title: 'Error...',
	 			                    pauseDelayOnHover: true,
	 			                    continueDelayOnInactiveTab: false,
	 			                    msg: jqXHR.responseText
	 			                });
	 					    	
	 					    }
	 					}); 
				};
				
				function updateExistingCard(pId, Layer, UpdateDescription){
					 
                     var card = $("#"+pId)
                     
                     var Priority = $(card).find("button[title='Priority']").html();
                     var PriorityClass = $(card).find("button[title='Priority']").attr("class");
                     var Owner = $(card).find("button[title='Owner']").html();
                     var Blocker = $(card).find("span[title='BlockerValue']").html();
                     var StyleBlocker = $(card).find("span[title='BlockerValue']").css("display");
                     
                     var ContentCard =      $(card).find("div[title='ContentCard']").html();
                     var ContentCardClass = $(card).find("div[title='ContentCard']").parent().parent().attr("class");
                     var Date= $(card).find("span[title='DueDateValue']").html();
                     var DateClass = $(card).find("span[title='DueDateValue']").parent().attr('class');
                     var Charge= $(card).find("span[title='Charge (d)']").html();
                     var Progress= $(card).find("span[title='Raf']").html();
                      
                     //alert (ContentCardClass);
                     
					
					
					 //Storing
 				    var DataCard={
 				    		"ProjectName":unescape($.urlParam('ProjectName')),
	 				    	"Id": pId,
						    "Priority":Priority,
						    "PriorityClass":PriorityClass,
						    "Owner":Owner,
						    "Blocked":StyleBlocker,
						    "BlockedStyle":StyleBlocker,
						    "Description": ContentCard,
						    "DueDate": Date,
						    "Duration":Charge,
						    "Raf":Progress,
						    "OwnerClass":ContentCardClass,
						    "Layer": Layer
					  };
 				    
 				   seen = []

 				  var serializedCard  = JSON.stringify(DataCard, function(key, val) {
 				     if (typeof val == "object") {
 				          if (seen.indexOf(val) >= 0)
 				              return
 				          seen.push(val)
 				      }
 				      return val
 				  })

 				  //////alert(serializedCard);

 				  $.ajax({
 					    type: 'get', // it's easier to read GET request parameters
 					    url: 'CardManagment',
 					    dataType: 'JSON',
 					    data: { 
 					      EventId: generateUUID(),
 					      SqlMode:"Update",
 					      EventDescription: UpdateDescription,
 					      NewCard: serializedCard // look here!
 					    },
 					    success: function(data) {
 					    	 Lobibox.notify('success', {
 			                	icon: false,
 			                	size: 'mini',
 			                    rounded: false,
 			                    delayIndicator: true,
 			                    position: 'right bottom',
 			                    title: 'Success...',
 			                    pauseDelayOnHover: true,
 			                    continueDelayOnInactiveTab: false,
 			                    msg: 'New Card updated...'
 			                });
 					    },
 					    error: function(jqXHR, textStatus, errorThrown){ 
 					    	Lobibox.notify('error', {
 			                	icon: false,
 			                	size: 'mini',
 			                    rounded: false,
 			                    delayIndicator: true,
 			                    position: 'right bottom',
 			                    title: 'Error...',
 			                    pauseDelayOnHover: true,
 			                    continueDelayOnInactiveTab: false,
 			                    msg: jqXHR.responseText
 			                });
 					    	
 					    }
 					}); 
 				 
					
				};
				
				 
				
				$( "#OpenAddForm" ).click(function() {
					 if($("#ProjectName").html()!="" && $("#ProjectName").html()!="0" && $("#ProjectName").html()!="null"){
						 $("#FormAdd").modal();
						 $("#FormAdd").find($("textarea[id='textareaAddForm']")).val("");
						 var bloker = $("#FormAdd").find("span.blocking-indicator__indicator");
						 $(bloker).hide();
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
					
				});
				
				var card=null;
				var carEdit=null;
				
				 //Update Card
				$( "#SubmitEditCard" ).click(function() {
				  
					
                    $(card).find("button[title='Priority']").html( $(carEdit).find("button[title='Priority']").html());
                    var myClassList=$(carEdit).find("button[title='Priority']").attr('Class');
                    $(card).find("button[title='Priority']").removeClass("Low");
                    $(card).find("button[title='Priority']").removeClass("Medium");  
                    $(card).find("button[title='Priority']").removeClass("High");  
					  $.each( $(myClassList), function( key, element ) {
						    if(element!="estimator__estimate-button"){
						  $(card).find("button[title='Priority']").addClass(element);
						    }
				    	
				    });
                    $(card).find("button[title='Priority']").removeClass().addClass($(carEdit).find("button[title='Priority']").attr('Class'));
                    $(card).find("button[title='Owner']").html( $(carEdit).find("button[title='Owner']").html());
                 
                    $(card).find("[title='ContentCard']").html( $(carEdit).find($("textarea[id='textareaEditForm']")).val());
                   
                   
                    myClassList =$(card).find("div[class='card__body-content']").parent().prop("classList");
                    
                    $.each(  $(myClassList), function( key, element ) {
                    	$(card).find("div[class='card__body-content']").parent().removeClass(element);
			    	});
                    myClassList =$("#CardBodyEdit").prop("classList");
                   
                    $.each(  $(myClassList), function( key, element ) {
                    	$(card).find("div[class='card__body-content']").parent().addClass(element);
			    	});
                    
                    
                                       
                     $(card).find("button[title='Priority']").attr('Style',$(carEdit).find("button[title='Priority']").attr('Style'));
                     var StyleBlocker = $(carEdit).find("span[title='BlockerValue']").css("display");
                     $(card).find("span[title='BlockerValue']").css("display", StyleBlocker);
                    $(card).find("span[title='DueDateValue']").html(  $(carEdit).find("span[title='DueDateValue']").html());
                    $(card).find("span[title='DueDateValue']").parent().removeClass().addClass( $(carEdit).find("span[title='DueDateValue']").parent().attr('Class'));
                    $(card).find("span[title='Charge (d)']").html( $(carEdit).find("span[title='Charge (d)']").html());
                    $(card).find("span[title='Raf']").html( $(carEdit).find("span[title='Raf']").html());
                     
    				
					$("#FormEdit .close").click()
					
					
					 updateExistingCard($(card).attr("id"),"N/A", "Card has been updated !");
					carEdit=null;
   				 IdCard=null;
   				 card=null;
				});
				
				$( "#SubmitAddCard" ).click(function() {
					
					var ReferenceCard ="<div draggable='true' class='cardEdit' id='cardTemplate' tabindex='0' draggable='true' ondragstart='drag(event)'><div class='card__header'><div class='estimator'><button class='%Priority%' type='button' title='Priority'>ValPriority</button></div><img src='./Librairies/iobeya/none.png.jpg' class='avatar' /><div class='assigner'><button class='assigner__assignee' data-toggle='dropdown' title='Owner'  id='OwnerTemplate'>ValUser</button></div><span class='blocking-indicator__indicator blocker' style='%BlockedStyle%' id='blokerTemplate' title='BlockerValue'>Blocked</span><div class='card__actions'> <button title='Blocker'><i class='glyphicon glyphicon-thumbs-down'></i></button><button id='logTemplate' href='' data-toggle='modal' title='Log'> <i class='glyphicon glyphicon-pushpin'></i> </button> <button title='Edit'> <i class='glyphicon glyphicon-edit'></i> </button> <button id='deleteTemplate' title='Delete'><i class='glyphicon glyphicon-off'></i></button></div></div><div class='%ClassContent%' id='CardBodyTemplateAddCard'><div class='card__body-content'><div class='card__body-title' title='ContentCard' id='CardBodyValueTemplate'>ValAction</div> <div class='card__body-meta'><div class='TagDueDateOK' id='DueDateDivTemplate'><span class='DueDateFieldValue' title='DueDateValue'>ValDate</span></div><div class='card__body-counts'><span style='color:grey;' id='ChargeTemplate' title='Charge (d)'>ValCharge</span><span style='color:grey;' id='ProgressTemplate' title='Raf'>ValRaf</span></div></div></div></div></div>";
					var checksuccess=true;
		
					 var ddate=$("#FormAdd").find("span[title='DueDateValue']");
					 
					 if ($(ddate).html().indexOf("No Due Date")!==-1){
						 Lobibox.notify('error', {
			                	icon: false,
			                	size: 'mini',
			                    rounded: false,
			                    delayIndicator: true,
			                    position: 'right bottom',
			                    title: 'Error...',
			                    pauseDelayOnHover: true,
			                    continueDelayOnInactiveTab: false,
			                    msg: 'A due date is mandatory...'
			                });
						 	checksuccess=false;
					 }
					 
					 
					 
					 if (checksuccess) {
					
						var NewCard = ReferenceCard;
						
						var actiontext =$("#cardTemplate").find($("textarea[id='textareaAddForm']")).val();
						NewCard=NewCard.replace("ValAction",actiontext);
												
						var UID = generateUUID();
						NewCard=NewCard.replaceAll("Template", UID);						
					     
	 				   NewCard=NewCard.replace("ValDate",$(ddate).html());	
	 				   var v1 = $("#FormAdd").find("button[title='Priority']").html();
	 				   var ClassePriority = $("#FormAdd").find("button[title='Priority']").attr("class");
	 				   NewCard=NewCard.replace("%Priority%",ClassePriority);	 
	 				   NewCard= NewCard.replace("ValPriority",v1);
	 				   var v2 = $("#FormAdd").find("button[title='Owner']").html();
	 				   NewCard= NewCard.replace("ValUser",v2);
	 				   
	 				   
	 				   var contentClass= $("#FormAdd").find("div[id='CardBodyTemplateAddCard']").attr('class');
	 				   NewCard=NewCard.replace("%ClassContent%", contentClass);
	 				   
	 				   
	 				   var v3=$("#FormAdd").find("span[title='BlockerValue']").css("display");
	 				  
	 				   NewCard= NewCard.replace("%BlockedStyle%","display:"+v3+";");
	 				   
	 				   
	 				   var v4 =actiontext;
	 				   var v5 = $("#FormAdd").find("span[title='Charge (j)']").html();
	 				   NewCard= NewCard.replace("ValCharge",v5);
	 				   var v6 = $("#FormAdd").find("span[title='Raf']").html();
	 				   NewCard= NewCard.replace("ValRaf",v5);
	 				   //alert(ClassePriority);
	 				   $("#backlogcolumn").append(NewCard);
	 				    //alert(NewCard);
	 				    //Storing
	 				    var DataCard={
	 				    	"ProjectName":unescape($.urlParam('ProjectName')),
	 				    	"Id": 'card'+UID,
						    "Priority":v1,
						    "PriorityClass":ClassePriority,
						    "Owner":v2,
						    "Blocked":v3,
						    "BlockedStyle":v3,
						    "Description": v4,
						    "DueDate": $(ddate).html(),
						    "Duration":v5,
						    "Raf":v5,
						    "OwnerClass":contentClass,
						    "Layer": 'backlogcolumn'
						  };
	 				    
	 				   seen = []

	 				  var serializedCard  = JSON.stringify(DataCard, function(key, val) {
	 				     if (typeof val == "object") {
	 				          if (seen.indexOf(val) >= 0)
	 				              return
	 				          seen.push(val)
	 				      }
	 				      return val
	 				  })

	 				  //////alert(serializedCard);
   
	 				  $.ajax({
	 					    type: 'get', // it's easier to read GET request parameters
	 					    url: 'CardManagment',
	 					    dataType: 'JSON',
	 					    data: { 
	 					      EventId: generateUUID(),
	 					      SqlMode:"Insert",
	 					      EventDescription: "New card created on project !",
	 					      NewCard: serializedCard // look here!
	 					    },
	 					    success: function(data) {
	 					    	 Lobibox.notify('success', {
	 			                	icon: false,
	 			                	size: 'mini',
	 			                    rounded: false,
	 			                    delayIndicator: true,
	 			                    position: 'right bottom',
	 			                    title: 'Success...',
	 			                    pauseDelayOnHover: true,
	 			                    continueDelayOnInactiveTab: false,
	 			                    msg: 'New Card created...'
	 			                });
	 					    },
	 					    error: function(jqXHR, textStatus, errorThrown){ 
	 					    	Lobibox.notify('error', {
	 			                	icon: false,
	 			                	size: 'mini',
	 			                    rounded: false,
	 			                    delayIndicator: true,
	 			                    position: 'right bottom',
	 			                    title: 'Error...',
	 			                    pauseDelayOnHover: true,
	 			                    continueDelayOnInactiveTab: false,
	 			                    msg: jqXHR.responseText
	 			                });
	 					    	
	 					    }
	 					}); 
	 				  
	 				  
	 				  
	 				  
	 				   NewCard=null;
	 				   
	 				   $("#FormAdd .close").click()
	 				 
					 }
				  
				});
				
				
				
				$(document).ready(function(){
					
					 
					$.urlParam = function(name){
					    var results = new RegExp('[\?&]' + name + '=([^&#]*)').exec(window.location.href);
					    if (results==null){
					       return null;
					    }
					    else{
					       return results[1] || 0;
					    }
					}
					
					$("#ProjectName").html(unescape($.urlParam('ProjectName')));

					$("#containerInfo").addClass("load");
					
					//-- Manage New Card Blocker ================================================== -->	
					$( "body" ).on( "click","button[title='Blocker']", function(e) {

					  var card = $(this).parent().parent().parent();
                      ////alert(card.attr("id"));
					  var bloker = $(card).find("span.blocking-indicator__indicator");
					  $(bloker).toggle();

						if($(card).attr("id")!="cardTemplate"){
							if($(card).attr("id")!="cardEdit"){
							 
							  updateExistingCard($(card).attr("id"),"N/A", "New Blocking status !");
							}
						}
					});
					
					$( "body" ).on( "click","button[id='ClearAllEdit']", function(e) {
					    $("#textareaEditForm").val("");
					  });
					
					$( "body" ).on( "click","button[id='SelectAllEdit']", function(e) {
					    $("#textareaEditForm").select();
					  });
					
					$( "body" ).on( "click","button[id='ClearAllAdd']", function(e) {
					    $("#textareaAddForm").val("");
					  });
					
					$( "body" ).on( "click","button[id='SelectAllAdd']", function(e) {
					    $("#textareaAddForm").select();
					  });
					
					//-- Manage New Card Edition ================================================== -->	
					$( "body" ).on( "click","button[title='Edit']", function(e) {

						if($(card).attr("id")!="cardTemplate"){
							if($(card).attr("id")!="cardEdit"){
                       $("#FormEdit").modal();
                       card = $(this).parent().parent().parent();
                       var IdCard = card.attr("id");
                       var Priority = $(card).find("button[title='Priority']").html();
                       var PriorityClass = $(card).find("button[title='Priority']").prop("classList");
                       var Owner = $(card).find("button[title='Owner']").html();
                       var Blocker = $(card).find("span[title='BlockerValue']").html();
                       var StyleBlocker = $(card).find("span[title='BlockerValue']").css("display");
                       
                       var ContentCard =      $(card).find("div[title='ContentCard']").html();
                       var ContentCardClass = $(card).find("div[class='card__body-content']").parent().prop("classList");
                       var Date= $(card).find("span[title='DueDateValue']").html();
                       var DateClass = $(card).find("span[title='DueDateValue']").parent().attr('class');
                       var charge= $(card).find("span[title='Charge (d)']").html();
                       var Progress= $(card).find("span[title='Raf']").html();
                        
                        //Set Card Edit
                         carEdit = $("#FormEdit").find("div[id='cardEdit']");	
                         
                        
                         
                        $(cardEdit).find("span[title='BlockerValue']").css("display", StyleBlocker);
                        $(carEdit).find("button[title='Priority']").html(Priority);
                        $(carEdit).find("button[title='Priority']").removeClass("High");
                        $(carEdit).find("button[title='Priority']").removeClass("Low");
                        $(carEdit).find("button[title='Priority']").removeClass("Medium");
                        $(carEdit).find("button[title='Priority']").removeClass("estimator__estimate-button");
                       
                        $.each( $(PriorityClass), function( key, element ) {
                        	$(carEdit).find("button[title='Priority']").addClass(element);
				    	});
                       	
					    
                       
                        $(carEdit).find("button[title='Priority']").removeClass().addClass(PriorityClass);
                        
                        
                        
                        $(carEdit).find("button[title='Owner']").html(Owner);
                     
                       
                        $(carEdit).find($("textarea[id='textareaEditForm']")).val(ContentCard);
                        myClassList =$("#CardBodyEdit").prop("classList");
                        $.each( $(myClassList), function( key, element ) {
					    		$("#CardBodyEdit").removeClass(element);
					    });
                        
                        $.each( $(ContentCardClass), function( key, element ) {
					    		$("#CardBodyEdit").addClass(element);
					    });
                        
                        $(carEdit).find("span[title='DueDateValue']").html(Date);
                        $(carEdit).find("span[title='DueDateValue']").parent().removeClass().addClass(DateClass);
                        $(carEdit).find("span[title='Charge (d)']").html(charge);
                        $(carEdit).find("span[title='Raf']").html(Progress);
                         
                         
							}}
                        
					});
					
					
					
					//-- Manage New Card Delete ================================================== -->	
					$( "body" ).on( "click","button[title='Delete']", function(e) {
						var card = $(this).parent().parent().parent();
						 /* Test if Card is CardUser ***/
						  
						  if ($(this).parent().parent().attr('Class').indexOf('cardUser')>=0){
							  //alert($(this).parent().parent().find("button[Class='assigner__assignee']").html());
							  var DataCard={
				 				    	"ProjectName":unescape($.urlParam('ProjectName')),
				 				    	"IdUser":"",
				 				    	"Owner": $(this).parent().parent().find("button[Class='assigner__assignee']").html(),
				 				    	"OwnerClasse":"",
									    "OldHumor":"",
									    "NewHumor":"",
									    "Photo":""
									  };
									 
				 					
				 				    
				 				   seen = []

				 				  var serializedCard  = JSON.stringify(DataCard, function(key, val) {
				 				     if (typeof val == "object") {
				 				          if (seen.indexOf(val) >= 0)
				 				              return
				 				          seen.push(val)
				 				      }
				 				      return val
				 				  })
									
									$.ajax({
				 					    type: 'get', // it's easier to read GET request parameters
				 					    url: 'PeopleCardManagment',
				 					    dataType: 'JSON',
				 					    data: { 
				 					      EventId: generateUUID(),
				 					      SqlMode:"Delete",
				 					      EventDescription: "Delete User on project",
				 					      NewCardPeople: serializedCard // look here!
				 					    },
				 					    success: function(data) {
				 					    	$(card).remove();
				 					    	 Lobibox.notify('success', {
				 			                	icon: false,
				 			                	size: 'mini',
				 			                    rounded: false,
				 			                    delayIndicator: true,
				 			                    position: 'right bottom',
				 			                    title: 'Success...',
				 			                    pauseDelayOnHover: true,
				 			                    continueDelayOnInactiveTab: false,
				 			                    msg: 'User deleted...'
				 			                });
				 					    },
				 					    error: function(jqXHR, textStatus, errorThrown){ 
				 					    	Lobibox.notify('error', {
				 			                	icon: false,
				 			                	size: 'mini',
				 			                    rounded: false,
				 			                    delayIndicator: true,
				 			                    position: 'right bottom',
				 			                    title: 'Error...',
				 			                    pauseDelayOnHover: true,
				 			                    continueDelayOnInactiveTab: false,
				 			                    msg: jqXHR.responseText
				 			                });
				 					    	
				 					    }
				 					}); 
						  }else{
						
								//var card = $(this).parent().parent().parent();
								//alert($(card).attr("id"));
								if($(card).attr("id")!="cardTemplate"){
								if($(card).attr("id")!="cardEdit"){
									
			                        var RAF = $(card).find("span[title='Raf']").html();
			                        //alert(RAF);
			                      	if (RAF > 0){
			                    	  Lobibox.alert('warning', {
				                    	  msg: 'Some action are availble because the task is not terminated !',
				                    	  //buttons: ['ok', 'cancel', 'yes', 'no'],
				                    	  //Or more powerfull way
				                    	  buttons: {
					                    	      ok: {
					                    	          'class': 'btn btn-warning',
					                    	          text: 'Go to Backlog Layer',
					                    	          closeOnClick: true
					                    	      },
					                    	      cancel: {
					                    	          'class': 'btn btn-info',
					                    	          text: 'Cancel',
					                    	          closeOnClick: true
					                    	      },
					                    	      yes: {
					                    	          'class': 'btn btn-error',
					                    	          text: 'Force to delete',
					                    	          closeOnClick: true
					                    	      }
					                    	  },
				                    	  callback: function(lobibox, type){
				                    	      var btnType;
				                    	      if (type === 'ok'){
				                    	    	  Lobibox.notify("warning", {
				                    	    	        size: 'mini',
				                    	    	        msg: 'This card is moved in backlogcolumn Layer ! '
				                    	    	    });
				                    	    	  //alert(RAF);
				                    	    	  updateExistingCard($(card).attr("id"),"backlogcolumn", "Card deleting : returns in Backlog layer because RAF >0 !");
				                    	    	  $("#backlogcolumn").append($(card).clone());
				                    	    	  $(card).remove();
				                    	      }else if (type === 'yes'){
				                    	    	  Lobibox.notify("warning", {
				                    	    	        size: 'mini',
				                    	    	        msg: 'This obsolete card is deleted ! '
				                    	    	    });
				                    	    	  $(card).remove();
				                    	    	  deleteCard($(card).attr("id"));
				                    	    	  //faire ici le detele en base
				                    	      }
				                    	  }
				                    	  }); 
				                      }
				                      else{
				                    	  Lobibox.alert('warning', {
					                    	  msg: 'Some action are availble because the task is terminated !',
					                    	  //buttons: ['ok', 'cancel', 'yes', 'no'],
					                    	  //Or more powerfull way
					                    	  buttons: {
					                    	      ok: {
					                    	          'class': 'btn btn-warning',
					                    	          text: 'Go to RolloutDone Layer',
					                    	          closeOnClick: true
					                    	      },
					                    	      cancel: {
					                    	          'class': 'btn btn-info',
					                    	          text: 'Cancel',
					                    	          closeOnClick: true
					                    	      },
					                    	      yes: {
					                    	          'class': 'btn btn-error',
					                    	          text: 'Force to delete',
					                    	          closeOnClick: true
					                    	      }
					                    	  },
					                    	  callback: function(lobibox, type){
					                    	      var btnType;
					                    	      
					                    	      if (type === 'ok'){
					                    	    	  updateExistingCard($(card).attr("id"),"RolloutDone", "Card Moving to RolloutDone Layer !");
					                    	    	  $("#RolloutDone").append($(card).clone());
					                    	    	  $(card).remove();
					                    	    	  Lobibox.notify("warning", {
					                    	    	        size: 'mini',
					                    	    	        msg: 'This card is moved in RolloutDone Layer ! '
					                    	    	    });
					                    	      }else if (type === 'yes'){
					                    	    	  Lobibox.notify("warning", {
					                    	    	        size: 'mini',
					                    	    	        msg: 'This obsolete card is deleted ! '
					                    	    	    });
					                    	    	  $(card).remove();
					                    	    	  deleteCard($(card).attr("id"));
					                    	      }
					                    	  }
					                    	});
				                      	}
								}
								}
						  }
	                     
						 
					});
				
							  
							  
							  
					$( "body" ).on( "click","button[title='Log']", function(e) {
						var card = $(this).parent().parent().parent();
						if($(card).attr("id")!="cardTemplate"){
						if($(card).attr("id")!="cardEdit"){
							$(this).attr("href","#FormLog");
						
							//var card = $(this).parent().parent().parent();
							$('#dynamic-content').html(''); // leave this div blank
						    $('#modal-loader').show();      // load ajax loader on button click
						    $.ajax({
							    	type: 'get', // it's easier to read GET request parameters
			 					    url: 'LogCardManagment',
			 					    dataType: 'html',
			 					   	data: { 
				 					      CardId: $(card).attr("id")
				 					    }
						     })
						     .done(function(data){
						          console.log(data); 
						          $('#dynamic-content').html(''); // blank before load.
						          $('#dynamic-content').html(data); // load here
						          $('#modal-loader').hide(); // hide loader  
						     })
						     .fail(function(){
						          $('#dynamic-content').html('<i class="glyphicon glyphicon-info-sign"></i> Something went wrong, Please try again...');
						          $('#modal-loader').hide();
						     });
						}
						}
						 
	                      
					});
			
					
					$( "body" ).on( "click","button[title='Priority']", function(e) {
						var card = $(this).parent().parent().parent();
						
							 var myClass = $(this).attr("class");
							 if (myClass.indexOf("Medium") !== -1){
								 $(this).removeClass( "Medium" );
								 $(this).addClass( "High" );
								 $(this).html("H");
							 }
							 else if (myClass.indexOf("High") !== -1){
								 $(this).removeClass( "High" );
								 $(this).addClass( "Low" );
								 $(this).html("L");
							 }
							 else if (myClass.indexOf("Low") !== -1){
								 $(this).removeClass( "Low" );
								 $(this).addClass( "Medium" );
								 $(this).html("M");
							 }
							 if($(card).attr("id")!="cardTemplate"){
							 if($(card).attr("id")!="cardEdit"){
							 	updateExistingCard($(card).attr("id"),"N/A", "Card priority updated ! ");
							 
							}
							}
						
							
						});
					
					$( document.body ).on( "click","button[id='OwnerTemplate']", function(e) {			 
						$("#SelectOwnerAddForm").show();
						
					});
					
					$( document.body ).on( "click","button[id='OwnerLabel']", function(e) {			 
						$("#SelectOwnerLabel").show();
						
					});
					 
					$( document.body ).on( "click","button[id='OwnerEdit']", function(e) {			 
						$("#SelectOwnerEditForm").show();
						
					});
					
					
					$(document.body).on('click', '#SelectOwnerLabel a', function (e) {
						var selText = $(this).text(); 
					    var myClass = $("#OwnerLabel").prop("classList");
					    var myClassList = $(this).prop("classList");
					   ////alert(myClass);
					   ////alert(myClassList);
					    $("button[id='OwnerLabel']").html(selText);
					    $("#SelectOwnerLabel").hide();
					    
					    $.each( $(myClass), function( key, element ) {
					    	if(element!="card__body"){
					    		$("#OwnerLabel").removeClass(element)
					    	}
					    });
					    ////alert(myClassList[1]);
					    $("#OwnerLabel").addClass(myClassList[1]);
					    myClass = $("#OwnerLabel").prop("classList");
					    
					   ////alert(myClass);
					});
					
					$(document.body).on('click', '#SelectOwnerAddForm a', function (e) {
					    var selText = $(this).text(); 
					    var myClass = $("#CardBodyTemplateAddCard").prop("classList");
					    var myClassList = $(this).prop("classList");
					    //////alert(myClassList);
					    //////alert(myClass);
					    $("button[id='OwnerTemplate']").html(selText);
					    $("#SelectOwnerAddForm").hide();
					    
					    $.each( $(myClass), function( key, element ) {
					    	if(element!="card__body"){
					    		$("#CardBodyTemplateAddCard").removeClass(element);
					    	}
					    });
					   
					    $("#CardBodyTemplateAddCard").addClass(myClassList[1]);
					    
					});
					
					$(document.body).on('click', '#SelectOwnerEditForm a', function (e) {
					    var selText = $(this).text(); 
					    var myClass = $("#CardBodyEdit").prop("classList");
					    var myClassList = $(this).prop("classList");
					    //////alert(myClassList);
					    //////alert(myClass);
					    $("button[id='OwnerEdit']").html(selText);
					    $("#SelectOwnerEditForm").hide();
					    
					    $.each( $(myClass), function( key, element ) {
					    	if(element!="card__body"){
					    		$("#CardBodyEdit").removeClass(element);
					    	}
					    });
					   
					    $("#CardBodyEdit").addClass(myClassList[1]);
					    
					});
					
					
											
					$(document.body).on('click', "div[id='DueDateDivTemplate']", function(e) {
						$("#FormAdd").find("#DueDateObjTemplate").datepicker('show');
					
					});
					$(document.body).on('click', "div[id='DueDateDivEdit']", function(e) {
						$("#FormEdit").find("#DueDateObjEdit").datepicker('show');
					
					});

					
					var _onSelect = function(selectedDate, e) {
					  $("#FormAdd").find("span[title='DueDateValue']").text(selectedDate);
					  $("#FormEdit").find("span[title='DueDateValue']").text(selectedDate);
					 
					};
					
		
					$("#FormAdd").find("#DueDateObjTemplate").datepicker({dateFormat: "MM dd, yy",minDate: 'today',defaultDate: 'today',onSelect: _onSelect});
					$("#FormEdit").find("#DueDateObjEdit").datepicker({dateFormat: "MM dd, yy",minDate: 'today',defaultDate: 'today',onSelect: _onSelect});
					

					
				});
					
					
				
			
					
				
				
			</script>
</body>
</html>