<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    <%@ page isErrorPage="true" %>  
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" type="text/css" media="screen" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" />
	<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<h1>Create a new Song</h1>
		<form:form action="/songs/new" method="post" modelAttribute="songObj">
			<p>
				Title:
				<form:input type="text" path="title" />
				<form:errors path="title" />
			</p>
			<p>
				Artist:
				<form:input type="text" path="artist" />
				<form:errors path="artist" />
			</p>
			<p>
				Rating:
				<form:select path="rating">
					<form:option value="1">1</form:option>
					<form:option value="2">2</form:option>
					<form:option value="3">3</form:option>
					<form:option value="4">4</form:option>
					<form:option value="5">5</form:option>
					<form:option value="6">6</form:option>
					<form:option value="7">7</form:option>
					<form:option value="8">8</form:option>
					<form:option value="9">9</form:option>
					<form:option value="10">10</form:option>
				</form:select>
				<form:errors path="rating" />
			</p>
			<button type="submit" class="btn btn-primary">Submit</button>
		</form:form>
		
		
	</div>
</body>
</html>