<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ski Run Deets</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-SgOJa3DmI69IUzQ2PVdRZhwQ+dy64/BUtbMJw1MZ8t5HZApcHrRKUc4W0kG879m7"
	crossorigin="anonymous">
<link rel="stylesheet" href="css/main.css">

</head>
<body>
	<main class="container-fluid">
		<a href="home.do">Ski Run Favs Home</a>
		<hr>

		<c:if test="${not empty skiRun}"></c:if>

		<c:choose>
			<c:when test="${not empty skiRun}">
				<h4>Details about this run:</h4>
				<h3>${skiRun.name}</h3>
				<p>${skiRun.description}</p>
				<hr>

				<form action="updateSkiRun.do" method="POST">
					<input type="hidden" name="id" value="${skiRun.id}" />
					<table>
						<tr>
							<td><label for="name">Edit Name:</label></td>
							<td><input type="text" name="name" id="name"
								value="${skiRun.name}" /></td>
						</tr>
						<tr>
							<td><label for="rating">Edit Rating:</label></td>
							<td><input type="text" name="rating"
								value="${skiRun.rating}" /></td>
						</tr>
						<tr>
							<td><label for="area">Edit Area:</label></td>
							<td><input type="text" name="area" value="${skiRun.area}" /></td>
						</tr>
						<tr>
							<td><label for="state">Edit State:</label></td>
							<td><input type="text" name="state" value="${skiRun.state}" /></td>
						</tr>
						<tr>
							<td><label for="country">Edit Country:</label></td>
							<td><input type="text" name="country"
								value="${skiRun.country}" /></td>
						</tr>
						<tr>
							<td><label for="liftAccess">Edit Lift Access:</label></td>
							<td><input type="text" name="liftAccess"
								value="${skiRun.liftAccess}" /></td>
						</tr>
						<tr>
							<td><label for="latitude">Edit Latitude:</label></td>
							<td><input type="text" name="latitude"
								value="${skiRun.latitude}" /></td>
						</tr>
						<tr>
							<td><label for="longitude">Edit Longitude:</label></td>
							<td><input type="text" name="longitude"
								value="${skiRun.longitude}" /></td>
						</tr>
						<tr>
							<td><label for="imageUrl">Edit Image URL:</label></td>
							<td><input type="text" name="imageUrl"
								value="${skiRun.imageUrl}" /></td>
						</tr>
						<tr>
							<td><label for="vertical">Edit Vertical:</label></td>
							<td><input type="number" name="vertical"
								value="${skiRun.vertical}" /></td>
						</tr>
						<tr>
							<td colspan="2">
								<button type="submit" class="btn btn-primary btn-sm">Update</button>
							</td>
						</tr>
					</table>
				</form>

				<div>
					<form action="deleteSkiRun.do" method="POST"
						style="display: inline;"
						onsubmit="return confirm('Are you sure you want to delete this ski run?');">
						<input type="hidden" name="skiRunId" value="${skiRun.id}" />
						<button type="submit" class="btn btn-danger btn-sm">Delete</button>
					</form>
				</div>
				
				<hr>
				
				<c:if
					test="${not empty skiRun.latitude && not empty skiRun.longitude}">
					<h5>Location Map</h5>
					<iframe width="100%" height="300" frameborder="0" style="border: 0"
						referrerpolicy="no-referrer-when-downgrade"
						src="https://www.google.com/maps?q=${skiRun.latitude},${skiRun.longitude}&hl=es;z=14&output=embed"
						allowfullscreen> </iframe>
				</c:if>

			</c:when>

			<c:otherwise>
				<hr>
				<h1>Run not found</h1>
				<hr>
			</c:otherwise>

		</c:choose>

		<script
			src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/js/bootstrap.bundle.min.js"
			integrity="sha384-k6d4wzSIapyDyv1kpU366/PK5hCdSbCRGRCMv+eplOQJWyd1fbcAu9OCUj5zNLiq"
			crossorigin="anonymous"></script>
	</main>
</body>
</html>