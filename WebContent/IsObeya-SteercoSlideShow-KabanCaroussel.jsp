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


<body data-spy="scroll" data-twttr-rendered="true">
	<jsp:useBean id="myBeanProjects" class="database.MySqlStatmentProjects" scope="application"/>
	
	<div id="containerInfo">
			<%
					String dueDate = "fhfhfh"; //myBeanProjects.GetProjectInfoFromField(request.getParameter("ProjectName"),"KPIGolive");
				    String KPI = "453";//myBeanProjects.GetProjectInfoFromField(request.getParameter("ProjectName"),"KPI");	
				    String Status = "okyyyy";//myBeanProjects.GetProjectInfoFromField(request.getParameter("ProjectName"),"KPIGlobal");	
			%> 
			<div>
				<h3 style="color:darkblue;">DueDate is : 
				<span class="trailerinfo" style="color:darkgrey;"><%out.println(dueDate); %></span></h3>
			</div>
			<div>
				<h3 style="color:darkblue;">KPI is : 
				<span style="color:darkgrey;"><%out.println(KPI);%></span></h3>
			</div>
			<div>
				<h3 style="color:darkblue;">Project Status is : 
				<span><%
				String line ="<div style='vertical-align: text-bottom;' title='Global' class='%ClassGlobal%'></div>";
				line=line.replaceAll("%ClassGlobal%",Status);
				out.println(line);
				%></span></h3>
			</div>
	</div>
    
    
  

<div id="myCarousel" class="carousel slide bg-inverse" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner" role="listbox">
    <div class="carousel-item active">
      <img class="d-block img-fluid ml-auto mr-auto" src="/pix/samples/22m.jpg" alt="First slide">
        <div class="carousel-caption">
          <h3>First slide</h3>
          <p>This is the first slide.</p>
        </div>
    </div>
    <div class="carousel-item">
      <img class="d-block img-fluid ml-auto mr-auto" src="/pix/samples/23m.jpg" alt="Second slide">
        <div class="carousel-caption">
          <h3>Second slide</h3>
          <p>This is the second slide.</p>
        </div>
    </div>
    <div class="carousel-item">
      <img class="d-block img-fluid ml-auto mr-auto" src="/pix/samples/26m.jpg" alt="Third slide">
        <div class="carousel-caption">
          <h3>Third slide</h3>
          <p>This is the third slide.</p>
        </div>
    </div>
  </div>
  <a class="carousel-control-prev" href="#myCarousel" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#myCarousel" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>

<script type="javascript">
	$('.carousel').carousel({interval: 2000});


</script>
	
</body>
</html>