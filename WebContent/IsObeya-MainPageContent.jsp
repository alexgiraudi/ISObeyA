<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
 
        <head>
          
            <title>IsObeya</title>
            <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
           <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
            <!-- Le styles -->
            <link type="text/css" href="./Librairies/greensock/logo.css" rel="stylesheet" />
            <link type="text/css" href="./Librairies/bootstrap/css/bootstrap.css" rel="stylesheet"/>
            <link type="text/css" href="./Librairies/jquery/css/custom-theme/jquery-ui-1.10.0.custom.css" rel="stylesheet" />
            <link type="text/css" href="./Librairies/jquery/css/custom-theme/dashboard.css" rel="stylesheet" />
            <link type="text/css" href="./Librairies/jquery/assets/css/font-awesome.min.css" rel="stylesheet" />
            <link type="text/css" href="./Librairies/jquery/assets/css/docs.css" rel="stylesheet"/>
       		<link type="text/css" href="./Librairies/lobibox/dist/css/lobibox.css" rel="stylesheet"/>
 			<link type="text/css" href="./Librairies/perso/isobeya.css" rel="Stylesheet"/>
			<link type="text/css" href="./Librairies/perso/style.css" rel="Stylesheet"/>
 		
			
 			
 			
   			<!-- Script -->
			<script src="./Librairies/jquery/assets/js/jquery-3.1.0.min.js"></script>
			<script src="./Librairies/greensock/TweenMax.js" type="text/javascript"></script>
			<script src="./Librairies/bootstrap/js/bootstrap.js" type="text/javascript"></script>
 			<script src="./Librairies/jquery/assets/js/jquery-ui-1.10.0.custom.min.js"></script>
 			<script src="./Librairies/jquery/assets/js/google-code-prettify/prettify.js" type="text/javascript"></script>
			<script src="./Librairies/jquery/assets/js/docs.js" type="text/javascript"></script>
			<script src="./Librairies/lobibox/js/lobibox.js"></script>
        	<script src="./Librairies/lobibox/js/actions.js"></script> 
	
	
	
 			<style>
			 /* The Overlay (background) */
			.overlay {
			    /* Height & width depends on how you want to reveal the overlay (see JS below) */   
			    height: 100%;
			    width: 0;
			    position: fixed; /* Stay in place */
			    z-index: 1; /* Sit on top */
			    left: 0;
			    top: 0;
			    background-color: rgb(0,0,0); /* Black fallback color */
			    background-color: rgba(0,0,0, 0.9); /* Black w/opacity */
			    overflow-x: hidden; /* Disable horizontal scroll */
			    transition: 0.5s; /* 0.5 second transition effect to slide in or slide down the overlay (height or width, depending on reveal) */
			}
			
			/* Position the content inside the overlay */
			.overlay-content {
			    position: relative;
			    top: 25%; /* 25% from the top */
			    width: 100%; /* 100% width */
			    text-align: center; /* Centered text/links */
			    margin-top: 30px; /* 30px top margin to avoid conflict with the close button on smaller screens */
			}
			
			/* The navigation links inside the overlay */
			.overlay a {
			    padding: 8px;
			    text-decoration: none;
			    font-size: 36px;
			    color: #818181;
			    display: block; /* Display block instead of inline */
			    transition: 0.3s; /* Transition effects on hover (color) */
			}
			
			/* When you mouse over the navigation links, change their color */
			.overlay a:hover, .overlay a:focus {
			    color: #f1f1f1;
			}
			
			/* Position the close button (top right corner) */
			.overlay .closebtn {
			    position: absolute;
			    top: 20px;
			    right: 45px;
			    font-size: 60px;
			}
			
			/* When the height of the screen is less than 450 pixels, change the font-size of the links and position the close button again, so they don't overlap */
			@media screen and (max-height: 450px) {
			    .overlay a {font-size: 20px}
			    .overlay .closebtn {
			        font-size: 40px;
			        top: 15px;
			        right: 35px;
			    }
			}
 			
 			
 			
 			</style>
 			
	
        </head>
        

        <body data-spy="scroll" data-twttr-rendered="true" >
        		
         		<jsp:useBean id="myBeanProjects" class="database.MySqlStatmentProjects" scope="application"/> 
        		<jsp:useBean id="myBeanPeople" class="database.MySqlStatmentPeople" scope="application"/>
				<!-- Navbar ================================================== -->
				<nav class="navbar navbar-dark bg-inverse navbar-fixed-top">
			          <button class="navbar-toggler hidden-lg-up" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"></button>
					  <div class="collapse navbar-toggleable-md" id="navbarResponsive">
					    <a class="navbar-brand" href="./IsObeya-MainPageContent.jsp">IsObeya</a>
					    <ul class="nav navbar-nav">
					      <li class="nav-item active">
					        <a class="nav-link" href="./IsObeya-MainPageContent.jsp">Home <span class="sr-only">(current)</span></a>
					      </li>
					      <li class="nav-item">
					        <a class="nav-link" href="mailto:Alexandre.giraudi@thalesaleniaspace.com ">Contact</a>
					      </li>
					      <li class="nav-item">
					        <a class="nav-link" href="http://wiki.space.thales:81/spacedirectory/view.action#space-search-result">IS Wiki</a>
					      </li>
					      <li class="nav-item">
					        <a class="nav-link" id="AboutInfo" href="#">About</a>
					      </li>
					      
					    </ul>
					    <form class="form-inline float-lg-right">
					      <input class="form-control" type="text" placeholder="Search"/>
					      <button class="btn btn-outline-success" type="submit">Search</button>
					    </form>
					  </div>
			     </nav>
			    <!-- End Of Navbar ================================================== -->
	    		
		    	<!-- Contents ================================================== -->	
			    <div class="contents">
			        
			        <!-- Subhead ================================================== -->
			        <header class="jumbotron subhead" id="overview">
			        	
			            <div class="container"  >
			            	
			                
			                <!-- Logo -->
								<div id="MainTitle">
						  			<div class="product" id="timeline_txt">IS/ISO</div> + <div class="suffix" id="lite_txt">Obeya</div><div class="tagline" id="tagdesc">The New PFU software for ISOP</div>
						  			<ul style="text-align:center; width:780px; margin:auto">
						    			<li class="item" id="tagdesc0"># Dashboard</li>
						    			<li class="item" id="tagdesc1"># KPI</li>
						    			<li class="item" id="tagdesc2"># Status</li>
						    			<li class="item" id="tagdesc3"># Alert</li>
						    			<li class="item" id="tagdesc4"># Timeline</li>
						    			<li class="item" id="tagdesc5"># Work BreakDown Structure</li>
						    			<li class="item" id="tagdesc6"># Obeya</li>
						  			</ul>
						  			<br></br>
					  				<div class="product1" id="timeline1_txt" align="center">ISO</div><div class="suffix1" id="lite1_txt">BEYA</div>
					  				<div>
					  					<img id="logoTAS" src="./Librairies/images/TAS.png"/>
					  				</div>
						  			<script type="text/javascript" src="./Librairies/greensock/logo.js"></script>
								</div>
				 			<!-- end Logo -->
			            </div>
			        </header>
			        <!-- End Of Subhead ================================================== -->
	
		            <!-- Start high menu bar -->
		          
		        		<ul class="menuhigh">
						    <li id="seeOverview" tabindex="1">
						      <span class="titlehigh">Overview</span> 
						    </li>
						    <li id="seeReporting"tabindex="1">
						      <span class="titlehigh">Reporting</span> 
						     </li>
						    <li id="seeRoadMap" tabindex="1">
						      <span class="titlehigh">Roadmap</span> 
						     </li>
						    <li id="seeSteerco" tabindex="1">
						      <span class="titlehigh">Steerco</span> 
						    </li>
						    <li id="seeUserActivities" tabindex="1">
						      <span class="titlehigh">User's activities</span> 
						    </li>
						    <li id=" " tabindex="1">
						      <span class="titlehigh">TBD</span> 
						    </li>
						    <li id=" " tabindex="1">
						      <span class="titlehigh">TBD</span> 
						    </li>
						    <li id=" " tabindex="1">
						      <span class="titlehigh">TBD</span> 
						    </li>
						   
	      				</ul>
	        		
	
	        <div style="width:80%;"class="container">
	       		<!-- Sticky Bar ================================================== -->	
	        	<!--MEttre la solution bootstrap -->
				<!-- End Of Sticky Bar ================================================== -->	
	       
	            <!-- Overview ================================================== -->
	            <fieldset id="Overview">
	               
	                    <legend>Overview</legend>
	                
	                <div class="row-fluid">
	                    <p class="docs-lead">
	                        Welcome! This is a overview of available projects in <i>IS/ISO/ISOP:</i> <b><font color="#C88172">
 	                    <% 
 	                    	out.println(myBeanProjects.GetProjectsCount("All")) ;
 						%> 
						</font></b> 
	                    </p>
	                    
	                  	
	                  	<table id="SummaryProjects"  class="alex-table" cellspacing="0" width="50%">
					       
					      <tbody class="alex-table">
					            <tr class="alex-table">
					                <td align="center"class="alex-table" scope='row'><p class="docs-lead-b">Number of <u>opened</u> projects</p></td>
					                <td align="center" scope='row'><font color="#8C8CC72">
 					                <% 
 				                    	out.println(myBeanProjects.GetProjectsCount("open")) ;
									%>				                 
					                </td>
					            </tr>
					            <tr class="alex-table">
					                <td align="center" class="alex-table"scope='row'><p class="docs-lead-b">Number of <u>awaiting</u> projects</p></td>
					                <td align="center" scope='row'><font color="#C81872">
 					                <% 
 				                    	out.println(myBeanProjects.GetProjectsCount("awaiting")) ;
									%>				                 
					                </td>
					               
					            </tr>
					            <tr class="alex-table">
					                <td align="center" class="alex-table" scope='row'><p class="docs-lead-b">Number of <u>closed</u> projects</p></td>
					                <td align="center" scope='row'><font color="#C88127">
 					                <% 
 				                    	out.println(myBeanProjects.GetProjectsCount("closed")) ;
 									%>				                 
					                </td>
					               
					            </tr>
					       </tbody>
				       
				           
			           </table>
					   
					   <br></br>        
					            	
	                 
	                </div>
	            </fieldset>
	            
	             <!-- Status Snapshot  ================================================== -->
	             <fieldset id="StatusSnapshot">
	            
		            <legend>Status Snapshot</legend>
		            
		            <div class="alert alert-info">
		                <span class="icon-info-sign"></span> The last update of this status snapshot has been performed : <b><font color="#C88172"> </font></b>
		            </div>
		            <br></br>
		            <div>
							  <a href="IsObeya-SteercoSlideShow-Dashboard.jsp"a>See Steerco</a>
									            
		            </div>
		            <div class="page-trailer"/>  
		          </fieldset>
		          <br></br>
		          <!-- Roadmap Snapshot  ================================================== -->
	             <fieldset id="RoadmapSnapshot">
	            
		           
		                <legend>Roadmap Snapshot</legend>
		           
		            <div class="alert alert-info">
		                <span class="icon-info-sign"></span> The last update of this roadmap snapshot has been performed : <b><font color="#C88172"></font></b>
		            </div>
		            <br></br>
		            		<!-- The overlay -->
							<div id="myNavRoadmap" class="overlay">
							
							  
							  <a href="javascript:void(0)" class="closebtn" onclick="closeNavRoadmap()">&times;</a>
							
							 
							  <div class="overlay-content">
							    <img id="RoadmapTAS" src="./Librairies/images/roadmap.png"/>
							  </div>
							
							</div>
						 
							<button  class="btn btn-info" onclick="openNavRoadmap()">See</button>
		            	 	 
		       
		            <div class="page-trailer"/>  
		          </fieldset>
		          <br></br>
		          
		          <!-- Steerco  ================================================== -->
	             <fieldset id="SteercoSlideshow">
	            
		          
		                <legend>Steerco Slide show</legend>
		          
		            <div class="alert alert-info">
		                <span class="icon-info-sign"></span> The last update of this Steerco Slideshow has been performed : <b><font color="#C88172"> </font></b>
		            </div>
		            <a href="./IsObeya-SteercoSlideShow-Obeya.jsp" class="Grey" >Start Slideshow !</a>
		            <br></br>
		            <div class="page-trailer"/>  
		          </fieldset>
		          
		           <!-- Steerco  ================================================== -->
	             <fieldset id="ActivitiesUsers">
	            
		          
		                <legend>User's activities</legend>
		          
		            <div class="alert alert-info">
		                <span class="icon-info-sign"></span> Here is the user's activites : <b><font color="#C88172"> </font></b>
		            </div>
		            
		            <a id="usractivities" style="display: inline; float: left; margin-right: 5px;" href="" data-toggle="modal"><i class="glyphicon glyphicon-plus"></i></a>
		            <br></br>
		            <div class="page-trailer"/>  
		          </fieldset>
		          
		         
		          
			</div>
		         
	            
	            
				<!-- Footer ================================================== -->
				<div class="footer">
				        <p>ISObeya &copy; ISOP 2016 IS @ Thales Alenia Space</p>
				</div>
		</div>
		 	
		<!-- Form Add User -->
					<div class="modal fade" id="FormAddUser" tabindex="-1" role="dialog"
						aria-labelledby="myModalLabel" aria-hidden="true">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal"
										aria-hidden="true">&times;</button>
									<h4 class="modal-title" id="myModalLabel">Select User</h4>
								</div>
								<div class="modal-body">
									<div class="form-group" id="CardContainerTemplate">
										<div class="assigner">
											<button class="assigner__assignee" data-toggle="dropdown" title="Owner"  id="OwnerLabel">AGI</button>
										</div>
									</div>
					
									<!-- Indicates a successful or positive action -->
									<button id="SubmitAddUser" style="display: inline;" type="button" class="btn btn-sm btn-success">Select</button>
									
									<div style="margin: auto; width: 80%;" class="form-group">
										<div class="input-group-btn ">
											<div class="dropdown-menu" id="SelectOwnerLabel">
												<%
													java.util.List<String> listPeople = new java.util.ArrayList<String>() ;
													listPeople=myBeanPeople.GetPeopleWithURL("./IsObeya-SteercoSlideShow-userActivities.jsp","?userName=");
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
		<script>
				$( "#seeOverview" ).click(function( event ) {
					location.href ="#Overview";
				});	
				
				$( "#seeReporting" ).click(function( event ) {
					location.href ="#StatusSnapshot";
				});	
				
				$( "#seeRoadMap" ).click(function( event ) {
					location.href ="#RoadmapSnapshot";
				});	
				
				$( "#seeSteerco" ).click(function( event ) {
					location.href ="#SteercoSlideshow";
				});	
				
				$( "#seeUserActivities" ).click(function( event ) {
					location.href ="#ActivitiesUsers";
				});	
				 
				$( "#usractivities").click(function() {
					
						$("#FormAddUser").modal();
				});
				
				$( document.body ).on( "click","button[id='OwnerLabel']", function(e) {			 
					$("#SelectOwnerLabel").show();
					
				});
				
				
				
				/* Open when someone clicks on the span element */
				function openNavSteerco() {
				    document.getElementById("myNavSteerco").style.width = "100%";
				}

				/* Close when someone clicks on the "x" symbol inside the overlay */
				function closeNavSteerco() {
				    document.getElementById("myNavSteerco").style.width = "0%";
				}
				
				/* Open when someone clicks on the span element */
				function openNavRoadmap() {
				    document.getElementById("myNavRoadmap").style.width = "100%";
				}

				/* Close when someone clicks on the "x" symbol inside the overlay */
				function closeNavRoadmap() {
				    document.getElementById("myNavRoadmap").style.width = "0%";
				}
				
			
		</script>
	
		            
	</body>
</html>