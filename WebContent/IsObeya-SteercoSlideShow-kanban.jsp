<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<title>IsObeya</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<!-- Le styles -->

<link type="text/css" href="./Librairies/bootstrap/css/bootstrap.css"	rel="stylesheet" />
<link type="text/css" href="./Librairies/jquery/css/custom-theme/jquery-ui-1.10.0.custom.css"	rel="stylesheet" />
<link type="text/css" href="./Librairies/jquery/css/custom-theme/dashboard.css"	rel="stylesheet" />
<link type="text/css" href="./Librairies/jquery/assets/css/font-awesome.min.css"	rel="stylesheet" />
<link type="text/css" href="./Librairies/jquery/assets/css/docs.css"	rel="stylesheet" />
<link type="text/css" href="./Librairies/lobibox/dist/css/lobibox.css"	rel="stylesheet" />
<link type="text/css" href="./Librairies/perso/isobeya.css"	rel="Stylesheet" />
<link type="text/css" href="./Librairies/perso/vis/dist/vis.css"	rel="stylesheet" />
<link type="text/css" href="./Librairies/iobeya/kanban.css"	rel="stylesheet" />


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

	<jsp:useBean id="myBeanProjects" class="database.MySqlStatmentProjects" scope="page"/>
	<jsp:useBean id="myBeanPeople" class="database.MySqlStatmentPeople" scope="page"/>

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
				<li class="nav-item "><a class="nav-link"  href="./IsObeya-SteercoSlideShow-wbs.jsp">WBS</a></li>
				<li class="nav-item "><a class="nav-link"  href="./IsObeya-SteercoSlideShow-actions.jsp">Actions List</a></li>
				<li class="nav-item active "><a class="nav-link"  href="./IsObeya-SteercoSlideShow-kanban.jsp">Kanban</a></li>
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
		
					<div class="board__columns-scrollable-wrapper">
						<div class="column top-to-bottom" id="C1">
							<div class="column__header" id="Hearder1">
								<h2 style="display: inline;" class="column__header-label">BACKLOG</h2>
								<a style="display: inline; float: right; margin-right: 5px;"
									href="#FormAdd" data-toggle="modal"><i class="glyphicon glyphicon-pencil"></i></a>
							</div>
							<div id="backlogcolumn" class="column__items-wrapper " ondrop="drop(event)" ondragover="allowDrop(event)">

								<div draggable="true" class="card" id="card-1" draggable="true" ondragstart="drag(event)" tabindex="0">
									<div class="card__header">
										<div class="estimator">
											<button class="estimator__estimate-button High" type="button">H</button>
										</div>
										<img src="./Librairies/iobeya/none.png.jpg" class="avatar" />
										<div class="assigner">
											<button class="assigner__assignee">AGI</button>
										</div>
										<div class="card__actions">
											<button title="Blocker">
												<i class="glyphicon glyphicon-thumbs-down"></i>
											</button>
											<button title="Log" href="" data-toggle="modal">
												<i class="glyphicon glyphicon-pushpin"></i>
											</button>
											<button title="Edit">
												<i class="glyphicon glyphicon-edit"></i>
											</button>
											<button title="Delete">
												<i class="glyphicon glyphicon-off"></i>
											</button>
										</div>
									</div>
									<div class="card__body story">
										<div class="card__body-content">
											<div class="card__body-title">As a Trial User, I want
												to click here to undersand more about items so that I can
												get started quickly.</div>
											<div class="card__body-meta">
												<div class="TagDueDateKO">
													<span>Oct 28, 2016</span>
												</div>
												<div class="card__body-counts">
													<button class="">3.5j</button>
													<button class="">46%</button>
												</div>
											</div>
										</div>
									</div>
								</div>


								<div draggable="true" class="card" id="card-2" tabindex="0">
									<div class="card__header">
										<div class="estimator">
											<button class="estimator__estimate-button High" type="button">H</button>
										</div>
										<img src="./Librairies/iobeya/none.png.jpg" class="avatar" />
										<div class="assigner">
											<button class="assigner__assignee">AGI</button>
										</div>
										<div class="card__actions">
											<button title="Blocker">
												<i class="glyphicon glyphicon-thumbs-down"></i>
											</button>
											<button title="Log" href="" data-toggle="modal">
												<i class="glyphicon glyphicon-pushpin"></i>
											</button>
											<button title="Edit">
												<i class="glyphicon glyphicon-edit"></i>
											</button>
											<button title="Delete">
												<i class="glyphicon glyphicon-off"></i>
											</button>
										</div>
									</div>
									<div class="card__body story">
										<div class="card__body-content">
											<div class="card__body-title">As a Trial User, I want
												to click here to undersand more about items so that I can
												get started quickly.</div>

											<div class="card__body-meta">
												<div class="TagDueDateKO">
													<span>Oct 28, 2016</span>
												</div>
												<div class="card__body-counts">
													<button class="">3.5j</button>
													<button class="">46%</button>
												</div>
											</div>
										</div>
									</div>
								</div>

							</div>
						</div>

						<div class="column top-to-bottom" id="C2">
							<div class="column__header">
								<h2 class="column__header-label">Description WIP</h2>
							</div>
							<div class="column__items-wrapper " ondrop="drop(event)" ondragover="allowDrop(event)">

								<div draggable="true" class="card" id="card-3" tabindex="0">
									<div class="card__header">
										<div class="estimator">
											<button class="estimator__estimate-button Medium"
												type="button">M</button>
										</div>
										<img src="./Librairies/iobeya/none.png.jpg" class="avatar" />
										<div class="assigner">
											<button class="assigner__assignee">AGI</button>
										</div>
										<span class="blocking-indicator__indicator blocker"
											id="bloker1">Blocked</span>
										<div class="card__actions">
											<button id="bloker1-action" title="Blocker">
												<i class="glyphicon glyphicon-thumbs-down"></i>
											</button>
											<button id="log1-action" href="#FormLog" data-toggle="modal"
												title="Log">
												<i class="glyphicon glyphicon-pushpin"></i>
											</button>
											<button title="Edit">
												<i class="glyphicon glyphicon-edit"></i>
											</button>
											<button id="delete1" title="Delete">
												<i class="glyphicon glyphicon-off"></i>
											</button>
										</div>
									</div>

									<div class="card__body story">
										<div class="card__body-content">
											<div class="card__body-title">As a Trial User, I want
												to click here to undersand more about items so that I can
												get started quickly.</div>

											<div class="card__body-meta">
												<div class="TagDueDateOK">
													<span>March 28, 2017</span>
												</div>
												<div class="card__body-counts">
													<button>3.5j</button>
													<button>46%</button>
												</div>
											</div>
										</div>
									</div>

								</div>

							</div>
						</div>

						<div class="column top-to-bottom" id="C3">
							<div class="column__header">
								<h2 class="column__header-label">Description Done</h2>
							</div>
							<div class="column__items-wrapper" ondrop="drop(event)" ondragover="allowDrop(event)"></div>
						</div>

						<div class="column top-to-bottom" id="C4">
							<div class="column__header">
								<h2 class="column__header-label">Rollout WIP</h2>
							</div>
							<div class="column__items-wrapper" ondrop="drop(event)" ondragover="allowDrop(event)"></div>
						</div>

						<div class="column top-to-bottom" id="C5">
							<div class="column__header">
								<h2 style="display: inline;" class="column__header-label">Rollout Done</h2>
								<a style="display: inline; float: right; margin-right: 5px;"
									href="#FormAdd" data-toggle="modal"><i class="glyphicon glyphicon-trash"></i></a>
							</div>
							<div class="column__items-wrapper" ondrop="drop(event)" ondragover="allowDrop(event)">

								<div draggable="true" class="card" id="card-4" tabindex="0">
									<div class="card__header">
										<div class="estimator">
											<button class="estimator__estimate-button Low" type="button">L</button>
										</div>
										<img src="./Librairies/iobeya/none.png.jpg" class="avatar" />
										<div class="assigner">
											<button class="assigner__assignee">AGI</button>
										</div>
										<span class="blocking-indicator__indicator blocker"
											data-reactid=".0.1.1.0.0.$someday.1.0.$44319-12.0.3">Blocker</span>
										<div class="card__actions">
											<button title="Blocker">
												<i class="glyphicon glyphicon-thumbs-down"></i>
											</button>
											<button title="Log">
												<i class="glyphicon glyphicon-pushpin"></i>
											</button>
											<button title="Edit">
												<i class="glyphicon glyphicon-edit"></i>
											</button>
											<button title="Delete">
												<i class="glyphicon glyphicon-off"></i>
											</button>
										</div>
									</div>

									<div class="card__body story">
										<div class="card__body-content">
											<div class="card__body-title">As a Trial User, I want
												to click here to undersand more about items so that I can
												get started quickly.</div>

											<div class="card__body-meta">
												<div class="TagDueDateOK">
													<span>Oct 28, 2016</span>
												</div>
												<div class="card__body-counts">
													<button>3.5j</button>
													<button>46%</button>
												</div>
											</div>
										</div>
									</div>

								</div>

							</div>
						</div>

					</div>

					
					<!-- Form Log Card -->
					<div class="modal fade" id="FormLog" tabindex="-1" role="dialog"
						aria-labelledby="myModalLabel" aria-hidden="true">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal"
										aria-hidden="true">&times;</button>
									<h4 class="modal-title" id="myModalLabel">Log</h4>
								</div>
								<div class="modal-body">
									<div class="form-group">
										<table class="table table-sm table-hover">
											<thead>
												<tr>
													<th>#</th>
													<th>Log</th>
													<th>Owner</th>
													<th>Date</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<th scope="row">1</th>
													<td>The Task Id:234 has been created</td>
													<td>A.Giraudi</td>
													<td>20-04-2016</td>
												</tr>
												<tr>
													<th scope="row">2</th>
													<td>The due date has been modified</td>
													<td>A.Giraudi</td>
													<td>25-04-2016</td>
												</tr>

											</tbody>
										</table>
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
									<div class="form-group">
										<div draggable="true" class="card" id="card-template" tabindex="0">
											<div class="card__header">
												<div class="estimator">
													<button class="estimator__estimate-button Medium"
														type="button" title="PriorityTemplate">M</button>
												</div>
												<img src="./Librairies/iobeya/none.png.jpg" class="avatar" />
												<div class="assigner">
													<button class="assigner__assignee" data-toggle="dropdown" title="OwnerTemplate">AGI</button>
												</div>
												<span class="blocking-indicator__indicator blocker"
													id="bloker1">Blocked</span>
												<div class="card__actions">
													<button title="Blocker">
														<i class="glyphicon glyphicon-thumbs-down"></i>
													</button>
													<button id="log1-action" href="" data-toggle="modal"
														title="LogTemplate">
														<i class="glyphicon glyphicon-pushpin"></i>
													</button>
													<button title="EditTemplate">
														<i class="glyphicon glyphicon-edit"></i>
													</button>
													<button id="delete1" title="DeleteTemplate">
														<i class="glyphicon glyphicon-off"></i>
													</button>
												</div>
											</div>
		
											<div class="card__body story" id="CardBodyTemplate">
												<div class="card__body-content">
													<div class="card__body-title" title="ContentCardTemplate">Here is the description of the task !</div>
		
													<div class="card__body-meta">
														<div class="TagDueDateOK" title="DueDateDiv">
															<input type="text" id="DueDateTemplate" data-datepicker='{ "dateFormat": "MM dd, yy"}'/>
															<span title="DueDateValue">No Due Date</span>
																														 
														</div>
														
														<div class="card__body-counts">
															<span style="color:grey;" title="ChargeTemplate">0j</span>
															<span style="color:grey;" title="ProgressTemplate">0%</Span>
														</div>
													</div>
												</div>
											</div>
		
										</div>
									</div>
								
									
									<br></br>
									<div style="margin: auto; width: 80%;" class="form-group">
										<div class="input-group-btn ">
											
										

											<div class="dropdown-menu" id="SelectOwner">
												<div role="separator" class="dropdown-divider">ISO</div>
												<a class="dropdown-item list-group-item-ISO" href="#">JC.Fede</a>
												<a class="dropdown-item  list-group-item-ISO" href="#">B.Campana</a>
												<a class="dropdown-item  list-group-item-ISO" href="#">A.Leandri</a>
												<a class="dropdown-item  list-group-item-ISO" href="#">R.Greff</a>
												<div role="separator" class="dropdown-divider">ISOP</div>

												<a class="dropdown-item  list-group-item-ISOP" href="#">A.Giraudi</a>
												<a class="dropdown-item  list-group-item-ISOP" href="#">S.San
													Jose</a> <a class="dropdown-item  list-group-item-ISOP"
													href="#">M.Vial</a> <a
													class="dropdown-item  list-group-item-ISOP" href="#">J.Argemi</a>
												<div role="separator" class="dropdown-divider">ISOC</div>

												<a class="dropdown-item  list-group-item-ISOC" href="#">S.Gonzalez</a>
												<a class="dropdown-item  list-group-item-ISOC" href="#">F.Lanlo</a>
												<a class="dropdown-item  list-group-item-ISOC" href="#">G.Clayessens</a>
												<a class="dropdown-item  list-group-item-ISOC" href="#">S.Merino</a>
												<a class="dropdown-item  list-group-item-ISOC" href="#">JM.Schwartz</a>
												<div role="separator" class="dropdown-divider">ISOA</div>

												<a class="dropdown-item  list-group-item-ISOA" href="#">D.Lambert</a>
												<a class="dropdown-item  list-group-item-ISOA" href="#">P.Gajac</a>
												<div role="separator" class="dropdown-divider">ISOI</div>

												<a class="dropdown-item  list-group-item-ISOI" href="#">JL.Fondere</a>
												<a class="dropdown-item  list-group-item-ISOI" href="#">E.Mancini</a>
												<a class="dropdown-item  list-group-item-ISOI" href="#">JM.Maestri</a>
												<a class="dropdown-item  list-group-item-ISOI" href="#">D.Verdier</a>
												<a class="dropdown-item  list-group-item-ISOI" href="#">V.Beaufils</a>
												<div role="separator" class="dropdown-divider">ISOT</div>
												<a class="dropdown-item  list-group-item-ISOT" href="#">JP.Robert</a>
												<div role="separator" class="dropdown-divider">T.S</div>
												<a class="dropdown-item  list-group-item-TS" href="#">F.Pegot</a>
												<div role="separator" class="dropdown-divider">GFI</div>
												<a class="dropdown-item  list-group-item-GFI" href="#">X.Marty</a>
												<div role="separator" class="dropdown-divider">SPIE</div>
												<a class="dropdown-item  list-group-item-SPIE" href="#">MN.Galet</a>
												<div role="separator" class="dropdown-divider">SOGETI</div>

												<a class="dropdown-item  list-group-item-SOGETI" href="#">L.Fitte</a>

											</div>
										</div>

									</div>
									
									<br></br>
									<!-- Indicates a successful or positive action -->
									<button id="SubmitAddCard" style="display: inline;"
										type="button" class="btn btn-success">Submit</button>
									<!-- Secondary, outline button -->
									<button style="display: inline;" class="btn btn-secondary">Cancel</button>


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
				    ev.target.appendChild(document.getElementById(data));
				   
				};
				
								
				$( "#SubmitAddCard" ).click(function() {
					
				    var newCardElement = $('<div id="card-6" draggable="true" ondragstart="drag(event)" class="card" tabindex="0"></div>');
				    var NewCardElementHeader =  $('<div class="card__header"><div class="estimator"><button class="estimator__estimate-button Low" type="button">L</button></div><img src="./Librairies/iobeya/none.png.jpg" class="avatar"/><div class="assigner"><button class="assigner__assignee">AGI</button></div><span class="blocking-indicator__indicator blocker" >Blocker</span><div class="card__actions"><button   title="Blocker"><i class="glyphicon glyphicon-thumbs-down"></i></button><button href="" data-toggle="modal"  title="Log"><i class="glyphicon glyphicon-pushpin"></i></button><button   title="Edit"><i class="glyphicon glyphicon-edit"></i></button><button   title="Delete"><i class="glyphicon glyphicon-off"></i></button></div></div></div>');
				    var NewCardElementContent = $('<div class="card__body story"><div class="card__body-content" ><div class="card__body-title">Please, new action shall be performed on CASTORE01.</div><div class="card__body-meta" ><div class="TagDueDateOK"><span >Sept. 12, 2017</span></div><div class="card__body-counts"><button >10j</button><button >0%</button></div></div></div></div>');
				    
				    NewCardElementHeader.appendTo(newCardElement);
				    NewCardElementContent.appendTo(newCardElement);
				   
				     
				    $("#backlogcolumn").append(newCardElement);
				  
				});
				
				
				$(document).ready(function(){
					//-- Manage New Card Blocker ================================================== -->	
					$( "body" ).on( "click","button[title='Blocker']", function(e) {

					  var card = $(this).parent().parent().parent();
                      alert(card.attr("id"));
					  var bloker = $(card).find("span.blocking-indicator__indicator");
					  $(bloker).toggle();
					});
					
					//-- Manage New Card Delete ================================================== -->	
					$( "body" ).on( "click","button[title='Delete']", function(e) {

						  var card = $(this).parent().parent().parent();
	                      alert(card.attr("id"));
						  $(card).remove();
						 
						});
					
					$( "body" ).on( "click","button[title='Log']", function(e) {
						
						$(this).attr("href","#FormLog");
						
						 
	                      
						});
					
									
					$( "body" ).on( "dblclick","span[title='ChargeTemplate']", function(e) {

						 var $span=$(this), isEditable=$span.is('.editable');
						 $span.prop('contenteditable',!isEditable).toggleClass('editable');
						 
						});
					
										
					
					$( "body" ).on( "dblclick","Div[title='ContentCardTemplate']", function(e) {

						 var $div=$(this), isEditable=$div.is('.editable');
						 $div.prop('contenteditable',!isEditable).toggleClass('editable');
						 
						});
					
					$( "body" ).on( "click","button[title='PriorityTemplate']", function(e) {

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
							
						});
					
					$( document.body ).on( "click","button[title='OwnerTemplate']", function(e) {			 
						$("#SelectOwner").show();
						
					});
					
					$(document.body).on('click', '.dropdown-menu a', function (e) {
					    var selText = $(this).text(); 
					    var myClass = $(this).attr("class");
					    var myClassList = $(this).prop("classList");
					    //alert(myClassList[1]);
					    //alert(selText);
					    $("button[title='OwnerTemplate']").html(selText);
					    $("#SelectOwner").hide();
					    $("#CardBodyTemplate").removeClass("story");
					  
					    //$("#CardBodyTemplate").addClass("card__body");
					    $("#CardBodyTemplate").addClass(myClassList[1]);
					    
					});
					
					
					
					
						
					$(document.body).on('click', "div[title='DueDateDiv']", function(e) {
						$(e.currentTarget).find('input').datepicker('show');
					
					});

					
					var _onSelect = function(selectedDate, e) {
					  var $span = e.input.next('span');
					  $span.text(selectedDate);
					};
					
		
					$('input').datepicker({dateFormat: "MM dd, yy",onSelect: _onSelect});
				 
					
					
						
				});
					
					
					

			
					
				
				
			</script>
</body>
</html>