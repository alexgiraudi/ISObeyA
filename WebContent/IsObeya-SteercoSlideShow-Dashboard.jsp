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
 			<link type="text/css" href="./Librairies/perso/Dashboard.css"	rel="stylesheet" />
			<link type="text/css" href="./Librairies/iobeya/Obeya.css"	rel="stylesheet" />
			<link type="text/css" href="./Librairies/Fixed-Header-Table/css/defaultTheme.css"	rel="stylesheet" />
 			
 			
   			<!-- Script -->
			<script src="./Librairies/jquery/assets/js/jquery-3.1.0.min.js"></script>
			<script src="./Librairies/greensock/TweenMax.js" type="text/javascript"></script>
			<script src="./Librairies/bootstrap/js/bootstrap.js" type="text/javascript"></script>
 			<script src="./Librairies/jquery/assets/js/jquery-ui-1.10.0.custom.min.js"></script>
 			<script src="./Librairies/jquery/assets/js/google-code-prettify/prettify.js" type="text/javascript"></script>
			<script src="./Librairies/jquery/assets/js/docs.js" type="text/javascript"></script>
			<script src="./Librairies/lobibox/js/lobibox.js"></script>
			
</head>
<body data-spy="scroll" data-twttr-rendered="true" >
        		

        		<jsp:useBean id="myBeanProjects" class="database.MySqlStatmentProjects" scope="application"/> 
        		
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
		       </div>
		      
			      
			        <!-- End Of Subhead ================================================== -->
	


				<div >
					<div style="height: 500px; overflow: auto;">
						
						<table id="dashboard" style="max-height:200px;overflow-y: auto;" class='zebra'  >
							<thead style="margin-bottom:10px;">
								<tr>
									<th style="width:20px;">.</th>
									<th style="width:20px;">.</th>
									<th style="width:300px;">Project Name</th>
									<th style="width:30px;">Id</th>
									<th style="width:80px;"align="center"  >Global</th>
									<th style="width:100px;" align="center"  >Planning</th>
									<th style="width:100px;"align="center"  >Purchasing</th>
									<th style="width:100px;" align="center"  >Design</th>
									<th style="width:100px;" align="center"  >Build</th>
									<th style="width:100px;" align="center"  >Rollout</th>
									<th style="width:500px;">Remark</th>
									<th style="width:50px;" align="center"  >KPI</th>
									<th style="width:30px;" align="center">.</th>
									<th style="width:20px;" align="center"  >Tendance</th>
									<th>DueDate</th>
								</tr>
							</thead>
							<tbody>
								
								
								
								
 									<%  
 										java.util.List<String> listProjects = new java.util.ArrayList<String>() ;
 										listProjects=myBeanProjects.GetProjectsDashboard();
 										for (int i=0;i<listProjects.size();i++){
 											out.println(listProjects.get(i).toString());
 										}
 									%>  
								
								
								
							</tbody>
						</table>
					</div>
				</div>
				
				<script>
				
				function updateKPI(line){
					 
					var ProjectName = $(line).find('td').eq(2).text();
					var KPIRemarks = "Today the KPI value is : ";
					var KPI = $(line).find('td').eq(11).text();
					
					
					
					
							
					var DataCard={
	 				    	"ProjectName":ProjectName,
	 				    	"Event":KPIRemarks,
	 				    	"KPI":KPI
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
	 					    url: 'KPIManagment',
	 					    dataType: 'JSON',
	 					    data: { 
	 					      SqlMode:"insert",
	 					      NewKPI: serializedCard // look here!
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
	 			                    msg: 'KPI updated...'
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
	 			                    msg: textStatus+": "+errorThrown
	 			                });
	 					    	
	 					    }
	 					}); 
				};
					
				
				
				function updateProject(line,PidProject){
						
					
					//var line = $("#"+PidProject).parent();
					
					
						var id = PidProject;
						var ProjectName = $(line).find('td').eq(2).text();
						var KPIGlobal =  $(line).find('td').eq(4).find('div').attr("Class");
						var KPIPlanning = $(line).find('td').eq(5).find('div').attr("Class");
						var KPIPurchasing = $(line).find('td').eq(6).find('div').attr("Class");
						var KPIDesign = $(line).find('td').eq(7).find('div').attr("Class");
						var KPIBuild = $(line).find('td').eq(8).find('div').attr("Class");
						var KPIRollout = $(line).find('td').eq(9).find('div').attr("Class");
						var KPIRemarks = $(line).find('td').eq(10).text();
						var KPI = $(line).find('td').eq(11).text();
						var Tendance = $(line).find('td').eq(13).find('span').attr("Class");
						var KPIGolive = $(line).find('td').eq(14).text();
						
						
						
								
						var DataCard={
		 				    	"Id": id,
		 				    	"ProjectName":ProjectName,
		 				    	"KPIGlobal":KPIGlobal,
		 				    	"KPIPlanning":KPIPlanning,
		 				    	"Status": "open",
		 				    	"KPIBudget":"",
		 				    	"KPIPurchasing":"",
								"KPIProvisioning":"",
		 				    	"KPIPurchasing":KPIPurchasing,
		 				    	"KPIDesign":KPIDesign,
		 				    	"KPIBuild":KPIBuild,
		 				    	"KPIRollout":KPIRollout,
		 				    	"KPIRemarks":KPIRemarks,
		 				    	"KPI":KPI,
		 				    	"Tendance":Tendance,
		 				    	"KPIGolive":KPIGolive,
		 			
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
		 					    url: 'ProjectManagment',
		 					    dataType: 'JSON',
		 					    data: { 
		 					      SqlMode:"update",
		 					      EventDescription: "Project Updated !",
		 					      NewProject: serializedCard // look here!
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
		 			                    msg: 'Project updated...'
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
		 			                    msg: textStatus+": "+errorThrown
		 			                });
		 					    	
		 					    }
		 					}); 
					};
					
					$(document).ready(function(){
					
							$( "body" ).on( "click","div[title='Global']", function(e) {
			
								
								$(this).removeClass("circle"); 
								
		 						var myClass = $(this).attr("class");
		 						
		//  						alert(myClass); 
		//  						alert((myClass =="bg-warning"));
		 						
								if (myClass =="bg-warning"){
									 $(this).switchClass(myClass,"bg-danger",5,"easeInOutQuad");
									 //alert("switch");
		 						 }
								 else if (myClass=="bg-danger"){
									 $(this).switchClass(myClass,"bg-success",5,"easeInOutQuad");
								 }
								 else if (myClass=="bg-success"){
									 $(this).switchClass(myClass,"bg-warning",5,"easeInOutQuad");
								 }
									 
									 
							    
								 $(this).addClass( "circle" );
				
							});
							
							
							//<span Title="Tendance" class="glyphicon glyphicon-arrow-up Green">
							$( "body" ).on( "click","span[title='Tendance']", function(e) {
			
								
								$(this).removeClass("glyphicon"); 
								$(this).removeClass("Green");
								$(this).removeClass("Rouge");
								$(this).removeClass("Orange");
								
		 						var myClass = $(this).attr("class");
		 						
		//  						alert(myClass); 
		//  						alert((myClass =="bg-warning"));
		 						
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
							
		 
						$( "body" ).on( "click","div[title='InfoTag']", function(e) {
			
								
								$(this).removeClass("RoundRec"); 
							 
								
		 						var myClass = $(this).attr("class");
		 						
		//  						alert(myClass); 
		//  						alert((myClass =="bg-warning"));
		 						
		 						if (myClass =="bg-warning"){
									 $(this).switchClass(myClass,"bg-danger",5,"easeInOutQuad");
									 //alert("switch");
								 }
								 else if (myClass=="bg-danger"){
									 $(this).switchClass(myClass,"bg-success",5,"easeInOutQuad");
								 }
								 else if (myClass=="bg-success"){
									 $(this).switchClass(myClass,"bg-primary",5,"easeInOutQuad");
								 }
								 else if (myClass=="bg-primary"){
									 $(this).switchClass(myClass,"bg-faded",5,"easeInOutQuad");
								 }
								 else if (myClass=="bg-faded"){
									 $(this).switchClass(myClass,"bg-warning",5,"easeInOutQuad");
								 }
									 
									 
							    
								 $(this).addClass( "RoundRec" );
				
							});
						
							$( "body" ).on( "click","span[title='SaveProject']", function(e) {
								
								var IdProject= $(this).parent().parent().find("td[Title='IdProject']").html();
								var line= $(this).parent().parent();
								//alert(IdProject);
								updateProject(line,IdProject);
			
							});
							
							$( "body" ).on( "click","span[title='OpenProject']", function(e) {
								
								
								var line= $(this).parent().parent();
								
								var url = "IsObeya-SteercoSlideShow-Obeya.jsp?ProjectName=" + $(line).find(("td[Title='Project']")).html();
								window.open(url, '_blank');
								  
			
							});
							
							$( "body" ).on( "click","span[title='SaveKPI']", function(e) {
								
								
								var IdProject= $(this).parent().parent().find("td[Title='IdProject']").html();
								var line= $(this).parent().parent();
								//alert(IdProject);
								updateKPI(line);
								  
			
							});
					
					});
					
				
				
					
				
				</script>
				
				<script src="./Librairies/Fixed-Header-Table/jquery.fixedheadertable.js"></script> 
			<script>
			$(document).ready(function() {

				
				$('#dashboard').fixedHeaderTable({ 
					footer: false,
					cloneHeadToFoot: false,
					altClass: 'odd',
					autoShow: false
				});
				 $('#dashboard').fixedHeaderTable('show', 1000);
				    
				});
			
			
			</script>

</body>
</html>
