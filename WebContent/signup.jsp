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
<form action="Signup">
<div class="container">

	<div class="boxed" rows="3" style="border: 3px solid grey; width:260px;height:330px; border-radius:5px;">
		<br><span style="margin-left:80px;font-size:25px;font-weight:bold;color:blue">SignUp</span>
		<hr>
		
		<div class="container-fluid">
		
		<input type="text" name="nm" placeholder="Name">
		<br><input type="text" name="un" placeholder="Username">
		<br><input type="text" name="eid" placeholder="Email Id">
		<br><input type="password" name="pas" placeholder="password">
		<br>Gender :<input type="radio" name="g">Male
		            <input type="radio" name="g">Female<br>
		<br><button type="submit" class="btn btn-success" style="margin-left:40px">Login</button>
		<button class="btn btn-danger" type="reset" style="margin-left:10px">Reset</button>
		</div>
		
	</div>
</div>
</form>
</body>
</html>