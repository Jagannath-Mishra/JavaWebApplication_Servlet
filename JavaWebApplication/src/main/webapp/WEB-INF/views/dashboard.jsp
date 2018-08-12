<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome ${name}</title>
<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<style>
	.footer {
		position: absolute;
		bottom: 0;
		width: 100%;
		height: 60px;
		background-color: #f5f5f5;
	}
</style>


</head>
<body>
<nav class="navbar navbar-default">

		<a href="/" class="navbar-brand">Brand</a>

		<ul class="nav navbar-nav">
			<li class="active"><a href="#">Home</a></li>
			<li><a href="/todo">Todos</a></li>
			<li><a href="#">MyLearnings</a></li>
		</ul>

		<ul class="nav navbar-nav navbar-right">
			<li><a href="/login">Login</a></li>
		</ul>

	</nav>

	<div class="container">
		<H1>Content</H1>

  <h2>Todo's Table</h2>
  <p>The .table class adds basic styling (light padding and only horizontal dividers) to a table:</p>            
  <table class="table">
    <thead>
    
      <tr>
        <th>S. No</th>
        <th>Todo Name</th>
        <th>Action</th>
      </tr>
    
    </thead>
    <tbody>
    <c:forEach items="${todos}" var="todo" varStatus="counter">
      <tr>
        <td>${counter.count}</td>
        <td>${todo.name}</td>
        <td><a href="/delete-todo?todo=${todo.name}">Delete</a></td>
      </tr>
        </c:forEach>
     
    </tbody>
  </table>

	</div>

	<footer class="footer">
		<p>footer content</p>
	</footer>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

</body>
</html>