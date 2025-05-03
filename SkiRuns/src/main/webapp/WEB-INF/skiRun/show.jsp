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
	<c:choose>
		<c:when test="${not empty skiRun}">
			<h3>Deets for the ski run:</h3>
			<hr>
			<ul>
				<li><strong>${skiRun.name}</strong></li>
				<li><emp> Rating: ${skiRun.rating} </emp></li>
				<li>Ski Resort/Area: ${skiRun.area}</li>
				<li>State: ${skiRun.state}</li>
				<li>Country: ${skiRun.country}</li>
				<li>Accessible from a lift: ${skiRun.liftAccess}</li>
				<li>Lat: ${skiRun.latitude}</li>
				<li>Long: ${skiRun.longitude}</li>
			</ul>
			<div>
				<p>${film.description}</p>
				<hr>
			</div>
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