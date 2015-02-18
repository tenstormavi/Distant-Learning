<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script>
	function sub()
	{
		window.open("login.jsp","_parent", "width=290,height=430");
	}
	function dub()
	{
		window.open("signup.jsp","_parent", "width=290,height=390");
	}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link type="text/css" rel="stylesheet" href="bootstrap.min.css">
<title>Distant Learning</title>
<script src="jquery.min.js"></script>
<script src="bootstrap.min2.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
<script language="javascript" type="text/javascript">
  function resizeIframe(obj) {
    obj.style.height = obj.contentWindow.document.body.scrollHeight + 'px';
  }
</script>
</head>
<body background="images/back.jpg">
<!-- <body style="background-color:#FFC3A0;">-->
<div class="container">
	
	<div class="headerwrapper">
		<div class="logo">
			<img alt="home.jsp" src="images/logo.jpg">
			<button type="button" class="btn btn-success navbar-btn" style="margin-left:500px" onclick="sub()">Log in</button>
			<button type="button" class="btn btn-success navbar-btn"  style="margin-left:3px" onclick="dub()">Sign in</button>
		</div>
	</div>
		
	<div class="container-fluid">
		<ul class="nav nav-tabs">
  			<li role="presentation" ><!-- class="active" --><a href="home.jsp">Home</a></li>
  			
  			<li class="dropdown">
			<a class="dropdown-toggle" data-toggle="dropdown" href="#">
		    Programs <b class="caret"></b>
			</a>
			<ul class="dropdown-menu" role="menu">
				<li><a href="pgprogram.html">P.G Programs</a></li>
				<li><a href="diploma.html">Diploma Programs</a></li>
				<li><a href="corporate.html">Corporate Programs</a></li>
				<li><a href="cyberlaw.html">Cyber Law Programs</a></li>
			</ul>
			</li>
  			
  			<li class="dropdown">
			<a class="dropdown-toggle" data-toggle="dropdown" href="#">
		    Wings <b class="caret"></b>
			</a>
			<ul class="dropdown-menu" role="menu">
				<li><a href="english.html">English Wings</a></li>
				<li><a href="history.html">History Wings</a></li>
				<li><a href="economic.html">Economics Wings</a></li>
				<li><a href="commerce.html">Commerce Wing</a></li>
			</ul>
		</li>
		
		<li class="dropdown">
			<a class="dropdown-toggle" data-toggle="dropdown" href="#">
		    Admission <b class="caret"></b>
			</a>
			<ul class="dropdown-menu" role="menu">
				<li><a href="apply.html">How to Apply</a></li>
				<li><a href="appform.html">Apply Online</a></li>
				<li><a href="notice.html">News & Notices</a></li>
				<li><a href="advantage.html">Advantages of Our University</a></li>
			</ul>
		</li>
		
		<li class="dropdown">
			<a class="dropdown-toggle" data-toggle="dropdown" href="#">
		    Examination <b class="caret"></b>
			</a>
			<ul class="dropdown-menu" role="menu">
				<li><a href="#">Exam Time-Table</a></li>
				<li><a href="#">Admit Card</a></li>
				<li><a href="#">Result</a></li>
				<li><a href="#">Last Year Questions</a></li>
			</ul>
		</li>
  			
		</ul>
	</div>
	
	<div class="container-fluid" style="margin-left:-10px;padding:5px;">
          <ul class="span2" style="margin-top:5px">
          <a href="#"><button type="button" class="btn btn-default btn-block">Leadership Lectures</button></a>
          <a href="appform.html"><button type="button" class="btn btn-default btn-block">Application Form</button></a>
          <a href="login.jsp"><button type="button" class="btn btn-default btn-block">Student Zone</button></a>
          <a href="#"><button type="button" class="btn btn-default btn-block">Assignments</button></a>
          <a href="faq.html"><button type="button" class="btn btn-default btn-block">FAQs</button></a>
          </ul>
          
          <div class="boxed" rows="3" style="border: 3px solid grey ; float:left; width:500px;height:250px;
  												margin-left:30px; min-height:0px;
  												border-radius:5px;">
            <iframe width="500" marginwidth="1" marginheight="1" frameborder="0" src="slide.html" scrolling="no"
            onload='javascript:resizeIframe(this);'></iframe>
          </div>
          
          <div class="boxed" rows="3" style="border: 3px solid grey ; float:right; width:200px;height:250px;
  												margin-left:5px; min-height:0px; margin-right:10px;
  												border-radius:5px;">
  			<p style="margin-top:10px;margin-left:30px;font-size:20px;color:red;
  			          text-decoration:underline">News & Notices</p>
  			<marquee 
                 scrollamount="1" scrolldelay="8" direction="up" width="95%" height="210" 
                 style="font-family: Calibri;font-size:12pt;margin-left:10px;margin-right:1px" 
                 onmouseover="this.stop()" onmouseout="this.start()"> 
                 <a href="notice.html">Notice for online application form 2014-15</a>
            </marquee>
          </div> 
          
          <p style= "font-size:25px;color:red;text-align:center;margin-top:280px;
			           text-decoration:underline;"><marquee behavior=slide scrollamount=2000 loop=20000 
			           style="margin-left:210px"><a href="appform.html">**Click Here to Apply Online for Programs**</a></marquee></p>
       
    </div>
	<br><br>
	<!-- <div class="boxed" rows="3" style="width:930px;height:250px;">
	
		<iframe width="930" marginwidth="1" marginheight="1" frameborder="0" src="footer.html" scrolling="no"
            onload='javascript:resizeIframe(this);'></iframe>
           
   </div>-->
   
   <div class="container">

      <img src="images/footerbg.jpg" alt="" style="position: relative;">
      <div class="container-fluid">
      <p style="position: absolute;top: 570px;margin-left:0px;font-weight:bold">Copy © 2015<br>APKSquare Centre for Distant Learning</p>
      
      <p style="position: absolute;top: 500px;text-decoration:underline;margin-left:450px;color:blue;font-weight:bold">Why Us?</p>
      <p style="position: absolute;top: 530px;margin-left:350px">APKSquare is one of the largest autonomous <br> distance learning education institute in India.<br>The student enrollment has grown exponentially
       <br>during the past five years.</p>
      <p style="position: absolute;top: 500px;text-decoration:underline;margin-left:750px;color:blue;font-weight:bold">Contact Us</p>
      <p style="position: absolute;top: 530px;margin-left:750px">Apksquare,<br>Durgapur,<br>West Bengal<br>PIN-713206,<br>8653245552</p>
   </div>
      

</div>
	
</div>
</body>
</html>