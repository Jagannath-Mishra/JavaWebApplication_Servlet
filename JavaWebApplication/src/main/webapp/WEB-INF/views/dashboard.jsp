<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome ${name}</title>
</head>
<body>
<h1 >Welcome ${name} !!</h1>
<h3 >Successfully login at ${date}</h1>
<div>
<h4 >
Your Todos are <br>
</h4>

<ol>
<c:forEach items="${todos}" var="todo">
<li>${todo.name} <a href="/delete-todo?todo=${todo.name}">Delete</a></li>
</c:forEach>
</ol>
</div>


<h4 >
Add Todos Here !!.<br>
</h4>


<p><font color="red">${errorMessage}</font></p>
<form method="POST" action="/todo">
New Todo : <input name="todo" type="text" /> <input name="add" type="submit" />
</form>


</body>
</html>