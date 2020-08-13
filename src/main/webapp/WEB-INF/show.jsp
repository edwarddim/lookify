<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" type="text/css" media="screen" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" />
	<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<h1>Show Page for Song</h1>
		<h3>
			Title: <c:out value="${song.title }" />
		</h3>
		<h3>
			Artist: <c:out value="${song.artist }" />
		</h3>
		<h3>
			Rating: <c:out value="${song.rating }" />
		</h3>
		<a href="/songs/${song.id}/delete">Delete</a>
	</div>
</body>
</html>