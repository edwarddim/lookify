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
		<h1>Dashboard</h1>
		<a href="/songs/new">Add Song</a>
		
		<form action="/search" method="get">
			<input type="text" name="search" id="" />
			<button type="submit">Search</button>
		</form>
		<table class="table table-dark">
			<thead>
				<tr>
					<th>Name</th>
					<th>Rating</th>
					<th>Actions</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${allSongs }" var="song">
					<tr>
						<td>
							<c:out value="${song.title }" />
						</td>
						<td>
							<c:out value="${song.rating }" />
						</td>
						<td>
							<a href="/songs/${song.id}/delete">Delete</a>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>