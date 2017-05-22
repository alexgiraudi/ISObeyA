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
<!-- <script src="./Librairies/jqueryMonitor/jquery.observeWithCallbacks.js"></script> -->
<!-- <script src="./Librairies/jqueryMonitor/jquery.observeWithEvents.js"></script> -->


<script>
/* Set the width of the side navigation to 250px and the left margin of the page content to 250px */
	function openNav() {
		 if($("#ProjectName").html()!="" && $("#ProjectName").html()!="0" && $("#ProjectName").html()!="null"){
			 document.getElementById("mySidenav").style.width = "280px";
			 document.getElementById("TailSteerco").style.marginLeft = "280px";
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
	    document.getElementById("mySidenav").style.width = "0";
	    document.getElementById("TailSteerco").style.marginLeft = "0";
	}
</script>

</head>


<body data-spy="scroll" data-twttr-rendered="true">

	 
	<jsp:useBean id="myBeanProjects" class="database.MySqlStatmentProjects" scope="application"/>
	<jsp:useBean id="myBeanPeople" class="database.MySqlStatmentPeople" scope="application"/>
	<jsp:useBean id="myBeanCardLog" class="database.MySqlStatmentCardLog" scope="application"/>
	<jsp:useBean id="myBeanCard" class="database.MySqlStatmentCard" scope="application"/>
	<jsp:useBean id="myBeanPeopleCard" class="database.MySqlStatmentPeopleCard" scope="application"/>
	

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
							listProjects=myBeanProjects.GetProjects("User");
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
	<div id="mySidenav" class="sidenav">
		  <a href="javascript:void(0)" class="Slideclosebtn" onclick="closeNav()"><i class="glyphicon glyphicon-off"></i></a>
		  <br></br>
							<%
								if (request.getParameter("ProjectName")!=null){
									
									java.util.List<String> listCards = new java.util.ArrayList<String>() ;
									listCards=myBeanCard.GetCard("backlogcolumn",request.getParameter("ProjectName"));
									for (int i=0;i<listCards.size();i++){
										out.println(listCards.get(i).toString());
									}
								}
							%> 
	
	
	</div>
	
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
	<div id="TailSteerco">
		
					<div id="lineContainer" class="board__lines-scrollable-wrapper">
					
						<div class="lineHeader  " id="C1">
								<div class="column__header" id="Hearder1">
								<a id="AddUSer" style="display: inline; float: left; margin-right: 5px;"
										href="" data-toggle="modal"><i class="glyphicon glyphicon-plus"></i></a>
									<h2 style="display: inline;" class="column__header-label">Users</h2>
									<a onclick="openNav()" id="OpenNav" style="display: inline; float: right; margin-right: 5px;"
										href="" data-toggle="modal"><i class="glyphicon glyphicon-pencil"></i></a>
								</div>
						</div>
						
						<%
						if (request.getParameter("ProjectName")!=null){
							java.util.List<String> listPeopleAndCards = new java.util.ArrayList<String>() ;
							listPeopleAndCards=myBeanPeopleCard.GetPeopleCard(request.getParameter("ProjectName"));
							for (int i=0;i<listPeopleAndCards.size();i++){
								out.println(listPeopleAndCards.get(i).toString());
							}
						}
						%> 
						
					
						

						
					</div>
					
					
					
					<!-- Form Add User -->
					<div class="modal fade" id="FormAddUser" tabindex="-1" role="dialog"
						aria-labelledby="myModalLabel" aria-hidden="true">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal"
										aria-hidden="true">&times;</button>
									<h4 class="modal-title" id="myModalLabel">Add User</h4>
								</div>
								<div class="modal-body">
									<div class="form-group" id="CardContainerTemplate">
										<div class="assigner">
											<button class="assigner__assignee" data-toggle="dropdown" title="Owner"  id="OwnerLabel">AGI</button>
										</div>
									</div>
					
									<!-- Indicates a successful or positive action -->
									<button id="SubmitAddUser" style="display: inline;" type="button" class="btn btn-sm btn-success">Add User</button>
									
									<div style="margin: auto; width: 80%;" class="form-group">
										<div class="input-group-btn ">
											<div class="dropdown-menu" id="SelectOwnerLabel">
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
										<div draggable="true" class="cardEdit" id="cardEdit" tabindex="0" draggable="true" ondragstart="drag(event)">
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
													<button id="logEdit" href="" data-toggle="modal"
														title="Log">
														<i class="glyphicon glyphicon-pushpin"></i>
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
														<textarea id="textareaEdit" class="form-control">Here is the description of the task !</textarea>
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
				    //
				    var data = ev.dataTransfer.getData("text");
				    //data est l'iD de la carte
				   // alert(data);
				    var DroppedCard = $('#'+data);
				    var Destination = ev.target;
				    var destinationUser = $(Destination).find("div[class='cardUser']").find("button[class='assigner__assignee']").html();
				    var DestinationClass= $(Destination).find("div[class='cardUser']").find("div[title='CardBodyTheme']").attr("class");
				   // alert(DestinationClass);
				    
				    var ClassListofCard = $(DroppedCard).find("div[title='ContentCard']").parent().parent().prop("classList");
				    //alert(ClassListofCard);
				    $.each(  $(ClassListofCard), function( key, element ) {
				    	 $(DroppedCard).find("div[title='ContentCard']").parent().parent().removeClass(element);
			    	});
				
				    $(DroppedCard).find("button[class='assigner__assignee']").html(destinationUser);
				    $(DroppedCard).find("div[title='ContentCard']").parent().parent().addClass("card__body");
				    $(DroppedCard).find("div[title='ContentCard']").parent().parent().addClass(DestinationClass);
				  
				    ev.target.appendChild(document.getElementById(data));
				    
				    updateExistingCard(data,"RolloutWip", "Card attributed to " +destinationUser );
				    //alert(ev.target.id);
				    
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
				
				function updateExistingCard(pId, Layer,UpdateDescription){
					 
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
				
				 
				
				
				
				$( "#AddUSer").click(function() {
					if($("#ProjectName").html()!="" && $("#ProjectName").html()!="0" && $("#ProjectName").html()!="null"){
						$("#FormAddUser").modal();
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
			                    msg: 'Please select project before...'
			                });
					 }
		 			
		 			
				});
				
			
				
				$( "#SubmitAddUser" ).click(function() {
					var NewUserCardTemplate = "<div class='line top-to-bottom' id='IDUser'><div id='Line-IDUser' class='line__items-wrapper ' ondrop='drop(event)' ondragover='allowDrop(event)'><div draggable='true' class='cardUser' id='card-IDUser' draggable='false'  tabindex='0'><div class='card__header'><img src='./Librairies/iobeya/none.png.jpg' class='avatar' /><div class='assigner'><button class='assigner__assignee'>NewUser</button></div><img style='float:right;margin-right:5px; 'src='./Librairies/iobeya/unknown.png' width='25px' height='25px'/><button id='delete-IDUser' style='margin-left:10px;' title='Delete'><i class='glyphicon glyphicon-off BtcGrey'></i></button></div><div class='UserClasse' title='CardBodyTheme' ><center><img src='./Librairies/images/kanban/happy.png' width='40px' height='40px'/><img src='./Librairies/images/kanban/arrow.png' width='40px' height='40px'/><img class='Humor' src='./Librairies/images/kanban/happy.png' width='40px' height='40px'/></center></div><div class='userIndicator'><span class='badge badgebacklog' title='Backlog Items' id='BacklogItem-IDUser'>0</span><span class='badge badgeinprogress' title='Items in Progress' id='InProgressItem-IDUser'>0</span><span class='badge badgedone' title='Close Items' id='CloseItem-IDUser'>0</span></div></div></div></div>";
					var NewUserCard = NewUserCardTemplate;
					
					var UserName= $("#OwnerLabel").html();
					NewUserCard=NewUserCard.replace("NewUser",UserName);
					var UserClasse = $("#OwnerLabel").attr('Class').replace("assigner__assignee","");
					
					var IdUser=generateUUID();
					NewUserCard=NewUserCard.replaceAll("IDUser",IdUser);
					NewUserCard=NewUserCard.replace("UserClasse",UserClasse);
					
					 //Storing
 				    var DataCard={
 				    	"ProjectName":unescape($.urlParam('ProjectName')),
 				    	"IdUser":IdUser,
 				    	"Owner": UserName,
 				    	"OwnerClasse":UserClasse,
					    "OldHumor":"./Librairies/images/kanban/happy.png",
					    "NewHumor":"./Librairies/images/kanban/happy.png",
					    "Photo":UserName+"jpeg"
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
 					      SqlMode:"Insert",
 					      EventDescription: "New User on project",
 					      NewCardPeople: serializedCard // look here!
 					    },
 					    success: function(data) {
 					    	 $("#lineContainer").append(NewUserCard);
 					    	 
 							  
 							
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
					
					
					
					$("#FormAddUser .close").click()
					
					
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
                 
                    $(card).find("[title='ContentCard']").html( $(carEdit).find($("textarea[id='textareaEdit']")).val());
                   
                   
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
                     
                       
                        $(carEdit).find($("textarea[id='textareaEdit']")).val(ContentCard);
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
			
		 
			 		
			 		
			 		 
				
					$( "body" ).on( "click","img[class='Humor']", function(e) {
						
						var v1 = "./Librairies/images/kanban/nope.png";
						var v2 = "./Librairies/images/kanban/happy.png";
						var v3 = "./Librairies/images/kanban/unhappy.png";
						
						var oldHumor, newHumor;
						
						 if ($(this).attr("src")== v1){
							 $(this).attr("src",v2)
							 oldHumor=v1;
							 newHumor=v2;
						}
						 else if ($(this).attr("src")== v2){
							 $(this).attr("src",v3)
							 oldHumor=v2;
							 newHumor=v3;
							}
						 else if ($(this).attr("src")== v3){
							 $(this).attr("src",v1)
							 oldHumor=v3;
							 newHumor=v1;
							}
						 
						 var UserName=$(this).parent().parent().parent().find("button[class='assigner__assignee']").html();
						 var UserID=$(this).parent().parent().parent().parent().parent().attr("id");
						 var UserClasse= $(this).parent().parent().attr("class");
						 
						 //Storing
		 				    var DataCard={
		 				    	"ProjectName":unescape($.urlParam('ProjectName')),
		 				    	"IdUser":UserID,
		 				    	"Owner": UserName,
		 				    	"OwnerClasse":UserClasse,
							    "OldHumor":oldHumor,
							    "NewHumor":newHumor,
							    "Photo":UserName+"jpeg"
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
		 					      SqlMode:"Update",
		 					      EventDescription: "New humor on project",
		 					      NewCardPeople: serializedCard // look here!
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