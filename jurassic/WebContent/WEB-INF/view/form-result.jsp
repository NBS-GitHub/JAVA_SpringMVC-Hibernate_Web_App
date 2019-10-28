<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Confirmation - Jurassic Trip</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/main.css">
</head>
<body>
	<div class="wrap">
		<h1>Jurassic Trip</h1>
		<h2>Confirmation</h2>
		<p>Congratulations ${trip.firstName} ${trip.lastName}!</p>
		<p>You have successfully enrolled to the ${trip.season} ${trip.kind} Jurassic Trip.</p>
		<p>Firearm Experience: ${trip.firearmExperience}</p>
		<p>We will be trying to show you the species:</p>
		<ul>
			<c:forEach var="temp" items="${trip.species}">
				<li>${temp}</li>
			</c:forEach>
		</ul>
		<p>The further information will be sent to the address: ${trip.email}.</p>
		<div class="img-wrap">
			<img src="${pageContext.request.contextPath}/resources/img/${trip.kind}.jpg" alt="A Jurassic Trip ${trip.kind} image.">
		</div>
		<a href="/jurassic">Go to Homepage</a>
	</div>
</body>
</html>