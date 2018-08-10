<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>Login by User: ${name} and Password: ${pass}</h1>
 	<h2>My First Servlet Runnning @ ${date} } </h2> 

	<form action="/login" method="post">
		Name: <input type="text" name="name" /> 
		<input type="submit" />
	</form>

 	<p> Pass extra parameter in url like this http://localhost:8080/<b style="color:red">?name=Jagannath&password=abcd@2018</b> </p>
</body>
</html>