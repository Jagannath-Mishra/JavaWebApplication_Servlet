<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>User Login Portal </h1>	
	<p><font color="red">${error}</font></p>
	<form action="/login" method="post">
		Name: <input type="text" name="name" /> Password: <input type="password" name="password" />
		<input type="submit" />
	</form>

 	<p> This Login screen only accepts <b style="color:red">Username=Jagannath Mishra  and Password=dummy</b> </p>
</body>
</html>