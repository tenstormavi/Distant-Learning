<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link type="text/css" rel="stylesheet" href="bootstrap.min.css">
<title>Insert title here</title>
</head>
<body>
<form action="Check">
<div class="container">

	<div class="boxed" rows="3" style="border: 3px solid grey; width:260px;height:200px; border-radius:5px;">
		<br><span style="margin-left:90px;font-size:25px;font-weight:bold;color:blue">Login</span>
		<hr>
		
		<div class="container-fluid">
		
		<input type="text" name="un" placeholder="Username">
		<br><input type="password" name="pas" placeholder="Password">
		<br><span style="margin-left:45px"></span><button type="submit" class="btn btn-success">Login</button>
		<button class="btn btn-danger" type="reset">Reset</button>
		
		</div>
		
	</div>
</div>
</form>
</body>
</html>