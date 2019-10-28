<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Form - Jurassic Trip</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/main.css">
</head>
<body>
	<div class="wrap">
		<h1>Jurassic Trip</h1>
		<form:form action="/jurassic/form/process" modelAttribute="trip">
			<h2>the Form</h2>
			<p><i>* - required</i></p>
			<label>First name: <form:input path="firstName" /></label>
			<br><br>
			<label>Last Name *: <form:input path="lastName" /></label>
			<form:errors path="lastName" cssClass="error" />
			<br><br>
			<label>Email *: <form:input type="email" path="email" /></label>
			<form:errors path="email" cssClass="error" />
			<br><br>
			<div>
				Trip kind *:
				<form:errors path="kind" cssClass="error" />
				<div><label><form:radiobutton path="kind" value="day" /> Day trip</label> <span class="extra-info-toggler day" id="day">More info</span></div>
				<div><label><form:radiobutton path="kind" value="night" /> Night trip</label> <span class="extra-info-toggler night">More info</span></div>
				<div><label><form:radiobutton path="kind" value="weekend" /> Weekend trip</label> <span class="extra-info-toggler weekend">More info</span></div>
			</div>
			Season:
			<form:select path="season">
				<form:option value="spring" label="Spring" />
				<form:option value="summer" label="Summer" />
				<form:option value="autumn" label="Autumn" />
				<form:option value="winter" label="Winter" />
			</form:select>
			<br><br>
			Favorite species *:
			<form:errors path="species" cssClass="error" />
			<form:checkbox path="species" value="T-Rex" />T-Rex
			<form:checkbox path="species" value="Velociraptor" />Velociraptor
			<form:checkbox path="species" value="Godzilla" />Godzilla
			<br><br>
			Age *:
			<form:input type="number" path="age" />
			<form:errors path="age" cssClass="error" />
			<br><br>
			Firearms experience (enter YES or NO) *:
			<form:input path="firearmExperience" />
			<form:errors path="firearmExperience" cssClass="error" />
			<br><br>
			<input type="submit" value="Go ahead">
		</form:form>
	</div>
	
	<script src="${pageContext.request.contextPath}/resources/js/script.js"></script>
</body>
</html>