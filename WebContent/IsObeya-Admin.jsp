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
 			
 			<script>
/* Set the width of the side navigation to 250px and the left margin of the page content to 250px */
	function ExecSQL() {
		 var sqlline =  $("#ExecSQL").val();
		 
		 					
			var DataSQL={
			    	"SQLLINE":sqlline
				  };
			    
			   seen = []

			  var serializedCard  = JSON.stringify(DataSQL, function(key, val) {
			     if (typeof val == "object") {
			          if (seen.indexOf(val) >= 0)
			              return
			          seen.push(val)
			      }
			      return val
			  })

			 

			  $.ajax({
				    type: 'get', // it's easier to read GET request parameters
				    url: 'AdminManagment',
				    dataType: 'JSON',
				    data: { 
				      SqlMode:"SQLLINE",
				      SQLLINE: serializedCard // look here!
				    },
				    success: function(list)
				    {
				      
				     
				      for(i in list)
				      {
				    	  $('#resultarea-list').append(list[i]); 
				      }
				    
				     
				    	 Lobibox.notify('success', {
		                	icon: false,
		                	size: 'mini',
		                    rounded: false,
		                    delayIndicator: true,
		                    position: 'right bottom',
		                    title: 'Success...',
		                    pauseDelayOnHover: true,
		                    continueDelayOnInactiveTab: false,
		                    msg: 'Yes updated...'
		                });
				    },
				    error: function(jqXHR, textStatus, errorThrown){ 
				    	//alert(errorThrown);
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
	    
	
	</script>
	
        </head>
        

        <body data-spy="scroll" data-twttr-rendered="true" >
        		
         	 
        		
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
		          
		        		 
	        		
	
	        <div style="width:80%;"class="container">
	       		<!-- Sticky Bar ================================================== -->	
	        	<!--MEttre la solution bootstrap -->
				<!-- End Of Sticky Bar ================================================== -->	
	       
	            <!-- Overview ================================================== -->
	            <fieldset id="Overview">
	               
	                    <legend>Admin</legend>
	                   <form class="  float-lg-left">
					      <input id="valsqlclass="form-control" type="text" style="width:1000px;" placeholder="SQL"/>
					      <a onclick="ExecSQL()" id="ExecuteSQL" style="display: inline; float: left; margin-right: 5px;" href="" data-toggle="modal"><i class="glyphicon glyphicon-pencil"></i></a>
						  
					    </form>
					   </fieldset>
					     <fieldset id="Overview">
	               
	                    <legend>Admin</legend>
					    <div class="form-group">
						    <label for="exampleTextarea">Example textarea</label>
						    <textarea class="form-control" id="resultarea" rows="3"></textarea>
						  </div>
	                	  </fieldset>       
			</div>
		         
	            
	            
				<!-- Footer ================================================== -->
				<div class="footer">
				        <p>ISObeya &copy; ISOP 2016 IS @ Thales Alenia Space</p>
				</div>
		</div>
		 	
				
		 
	
		            
	</body>
</html>