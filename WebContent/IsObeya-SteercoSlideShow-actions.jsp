<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<title>IsObeya</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<!-- Le styles -->

<link type="text/css" href="./Librairies/bootstrap/css/bootstrap.css" rel="stylesheet" />
<link type="text/css" href="./Librairies/perso/isobeya.css" rel="Stylesheet" />
<link type="text/css" href="./Librairies/iobeya/Obeya.css" rel="stylesheet" />

<!-- Script -->
<script src="./Librairies/jquery/assets/js/jquery-3.1.0.min.js"></script>
<script src="./Librairies/bootstrap/js/bootstrap.js" type="text/javascript"></script>
<script	src="./Librairies/jquery/assets/js/jquery-ui-1.10.0.custom.min.js"></script>






</head>


<body  data-spy="scroll" data-twttr-rendered="true">

	<!-- Navbar ================================================== -->
	<nav class="navbar navbar-dark bg-inverse navbar-fixed-top">
	<button class="navbar-toggler hidden-lg-up" type="button"
		data-toggle="collapse" data-target="#navbarResponsive"
		aria-controls="navbarResponsive" aria-expanded="false"
		aria-label="Toggle navigation"></button>
	<div class="collapse navbar-toggleable-md" id="navbarResponsive">
		<a class="navbar-brand" href="./IsObeya-MainPageContent.jsp">IsObeya</a>
		<ul class="nav navbar-nav">
			<li class="nav-item "><a class="nav-link" href="./IsObeya-SteercoSlideShow-steerco.jsp">Dashboard</a></li>
			<li class="nav-item"><a class="nav-link" href="./IsObeya-SteercoSlideShow-timeline.jsp">Timeline</a></li>
			<li class="nav-item"><a class="nav-link" href="./IsObeya-SteercoSlideShow-wbs.jsp">WBS</a></li>
			<li class="nav-item active"><a class="nav-link" href="./IsObeya-SteercoSlideShow-actions.jsp">Actions</a></li>
			<li class="nav-item"><a class="nav-link" href="./IsObeya-SteercoSlideShow-Obeya.jsp">Obeya</a></li>
			<li class="nav-item dropdown"><a class="nav-link dropdown-toggle" href="http://example.com"
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


	<!-- Contents ================================================== -->

	<div id="TailSteerco">
		
		            	<table style="margin-top:70px;width:100%;font-size:13px;vertical-align: middle;"  class="table align-middle table-hover table-sm table-bordered">
						    <thead>
							    <tr>
							    	<td align="center" >Action id</td>
							    	<td align="center" >Origin</td>
							    	<td align="center" >Description</td>
							    	<td align="center" >Owner</td>
							    	<td align="center" >Opened Date</td>
							    	<td align="center" >Due Date</td>
							        <td align="center" >Criticy</td>
							        <td align="center" >Status</td>
							    </tr>
						    </thead>
						    <tbody>
						    	<tr>
						    		<td align="center" >#1</td>
									<td align="center">Steerco</td>
									<td>Validation RSSI</td>
									<td align="center" style="color:darkgrey;">J.Argemi</td>
									<td align="center" style="color:blue;">23-11-2016</td>
									<td align="center" style="color:darkred;">06-02-2017</td>
									<td align="center"><div class="circle bg-warning">M</div></td>
									<td align="center" ><div class="bg-info">Opened</div></td>
						    	</tr>	
						    	
						    	<tr>
						    		<td align="center" >#2</td>
									<td align="center">Kickoff</td>
									<td>Build WBS</td>
									<td align="center" style="color:darkgrey;">J.Argemi</td>
									<td align="center" style="color:blue;">23-11-2016</td>
									<td align="center" style="color:darkred;">06-02-2017</td>
									<td align="center"><div class="circle bg-danger">H</div></td>
									<td align="center" ><div class="bg-success">Closed</div></td>
						    	</tr>	
						    	
						    	<tr>
						    		<td align="center" >#3</td>
									<td align="center">Obeya</td>
									<td>Run test activity..cxw;,nw,xn;,nxwc,n;,n;,n;,n;,nwcxwxc.</td>
									<td align="center" style="color:darkgrey;">J.Argemi</td>
									<td align="center" style="color:blue;">23-11-2016</td>
									<td align="center" style="color:darkred;">06-02-2017</td>
									<td align="center"><div class="circle bg-success">L</div></td>
									<td align="center" ><div class="bg-info">Opened</div></td>
						    	</tr>	
						    	
						    	<tr>
						    		<td align="center" valign="middle" >#4</td>
									<td align="center" valign="middle">Obeya</td>
									<td valign="middle">Run test activity...</td>
									<td align="center" valign="middle" style="color:darkgrey;">J.Argemi</td>
										<td align="center" valign="middle" style="color:blue;">23-11-2016</td>
									<td align="center" valign="middle" style="color:darkred;">06-02-2017</td>
									<td align="center" valign="middle"><div class="circle bg-success">L</div></td>
									<td align="center" valign="middle" ><div class="bg-info">Opened</div></td>
						    	</tr>	
						    	
						    	<tr>
						    		<td align="center" valign="middle" >#5</td>
									<td align="center" valign="middle">Obeya</td>
									<td valign="middle">Run test activity...</td>
									<td align="center" valign="middle" style="color:darkgrey;">J.Argemi</td>
									<td align="center" valign="middle" style="color:blue;">23-11-2016</td>
									<td align="center" valign="middle" style="color:darkred;">06-02-2017</td>
									<td align="center" valign="middle"><div style="margin:auto;" class="circle bg-success ">L</div></td>
									<td align="center" valign="middle"><div class="bg-info">Opened</div></td>
						    	</tr>	
						    </tbody>
						</table>
	</div>
				
	
		
</body>
</html>