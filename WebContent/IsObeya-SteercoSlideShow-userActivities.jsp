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




</head>


<body data-spy="scroll" data-twttr-rendered="true">

	 <jsp:useBean id="myBeanPeopleCard" class="database.MySqlStatmentPeopleCard" scope="application"/>
	
	
		

	<!-- Navbar ================================================== -->
	<nav class="navbar navbar-dark bg-inverse navbar-fixed-top">
		<button class="navbar-toggler hidden-lg-up" type="button"
			data-toggle="collapse" data-target="#navbarResponsive"
			aria-controls="navbarResponsive" aria-expanded="false"
			aria-label="Toggle navigation"></button>
		<div class="collapse navbar-toggleable-md" id="navbarResponsive">
			<a class="navbar-brand" href="./IsObeya-MainPageContent.jsp">IsObeya</a>
			 
		<ul class="form-inline float-lg-right">
		
			<li class="nav-item " id="UserName" >No User</li>
		</ul>
			
			
			
		</div>
	</nav>
	<!-- End Of Navbar ================================================== -->

	<!-- Sticky Bar ================================================== -->
	<!-- Mettre la solution bootstrap -->
	<!-- End Sticky Bar ================================================== -->

	<!-- Contents ================================================== -->
	
	<div id="TailSteerco">
		
		<div id="lineContainer" class="board__lines-scrollable-wrapper">
		
			<div class="lineHeader  " id="C1">
					<div class="column__header" id="Hearder1">
						<h2 style="display: inline;" class="column__header-label">Project</h2>
					</div>
			</div>
			
			
					<%
					if (request.getParameter("userName")!=null){
						java.util.List<String> listPeopleAndCards = new java.util.ArrayList<String>() ;
						listPeopleAndCards=myBeanPeopleCard.GetProjectCardByPeople(request.getParameter("userName"));
						for (int i=0;i<listPeopleAndCards.size();i++){
							out.println(listPeopleAndCards.get(i).toString());
						}
					}
					%> 
		
			

			
		</div>
					
		
	</div>
			

	<!-- Tab Navigation Contents ================================================== -->	
	<script type="text/javascript">
 				
				String.prototype.replaceAll = function (find, replace) {
				    var str = this;
				    return str.replace(new RegExp(find, 'g'), replace);
				};
			
				
				
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
					
					$("#UserName").html(unescape($.urlParam('userName')));
					  
							  
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
			
		 
			 		
					
				});
					
					
				
					
				
				
			</script>
</body>
</html>