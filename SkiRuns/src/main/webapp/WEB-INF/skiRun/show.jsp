<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ski Run Deets</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-SgOJa3DmI69IUzQ2PVdRZhwQ+dy64/BUtbMJw1MZ8t5HZApcHrRKUc4W0kG879m7" crossorigin="anonymous">
</head>
<body>
	<main class="container-fluid">
	<a href="home.do">Ski Run Favs Home</a>
	<hr>
	<c:choose>
		<c:when test="${not empty skiRun}">
			<h3>Deets for this ski run:</h3>
			<hr>
			<table>
				<tr>
				<td><label for="name">Edit Name:  </label></td>
				<td><input type="text" name="title" id="title" value="${skiRun.name}"></td>
				</tr>
				<tr>
				<td><label for="rating">Edit Rating:</label></td>
				<td><td><input type="text" name="rating" id="rating" value="${skiRun.rating}"></td></td>
				</tr>
				
				<tr>Ski Resort/Area: ${skiRun.area}</tr>
				<tr>State: ${skiRun.state}</tr>
				<tr>Country: ${skiRun.country}</tr>
				<tr>Accessible from a lift: ${skiRun.liftAccess}</tr>
				<tr>Lat: ${skiRun.latitude}</tr>
				<tr>Long: ${skiRun.longitude}</tr>
			</table>
			<div>
				<p>${skiRun.description}</p>
				<hr>
				
				<input action="deletedSkiRun.do" method="POST" class="btn-info"  name="skiRunId" />
				<input type="submit" value="Delete Ski Run" />
			</div>
			<div style="width: 100%"><iframe width="100%" height="600" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.com/maps?width=100%25&amp;height=600&amp;hl=en&amp;q=Malet%20St,%20London%20WC1E%207HU,%20United%20Kingdom+(Your%20Business%20Name)&amp;t=&amp;z=14&amp;ie=UTF8&amp;iwloc=B&amp;output=embed"></iframe></div>
		</c:when>
		
		<c:otherwise>
			<hr>
			<h1>Run not found</h1>
			<hr>
		</c:otherwise>
		
	</c:choose>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/js/bootstrap.bundle.min.js" integrity="sha384-k6d4wzSIapyDyv1kpU366/PK5hCdSbCRGRCMv+eplOQJWyd1fbcAu9OCUj5zNLiq" crossorigin="anonymous"></script>
</main>
</body>
</html>