<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ski Run Favs</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-SgOJa3DmI69IUzQ2PVdRZhwQ+dy64/BUtbMJw1MZ8t5HZApcHrRKUc4W0kG879m7"
	crossorigin="anonymous">
<link rel="stylesheet" href="css/main.css">
</head>
<body>

	<main class="container">

		<h1>Favorite Ski Runs Site</h1>
		<hr>
		<h4>See a Ski Run by ID # or keyword search</h4>
		<form action="getSkiRun.do" method="GET">
			<input class="btn-info" type="text" name="skiRunId"	required /> 
			<input type="submit" value="Enter ID# of a Ski Run" />
		</form>
		<form action="getSkiRunKeyword.do" method="GET">
			<input class="btn-info" type="text" name="skiRunKeyword" required />
			<input type="submit" value="Enter Keyword for a Ski Run" />
		</form>


		<hr>
		<h4>Favorite Ski Runs List:</h4>
		<table class="table table-striped table-hover">
			<thead class="table-dark">
				<tr>
					<th>Name</th>
					<th>Area</th>
					<th>Rating</th>
					<th>State</th>
					<th>Country</th>
					<!-- Additional properties here? -->
				</tr>
			</thead>
			<tbody>

				<c:forEach var="skiRun" items="${skiRunList}">
					<tr>
						<td><a href="getSkiRun.do?skiRunId=${skiRun.id}">
								${skiRun.name} </a></td>
						<td>${skiRun.area}</td>
						<td>${skiRun.rating}</td>
						<td>${skiRun.state}</td>
						<td>${skiRun.country}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<hr>

		</form>
		<h3>Add a new Ski Run:</h3>
		<form action="addSkiRun.do" method="POST">
			<table>
				<tr>
					<td><label for="title">Add Name: </label></td>
					<td><input type="text" name="name"></td>
				</tr>
				<tr>
					<td><label for="description">Add Description:</label></td>
					<td><input type="text" name="description"></td>
				</tr>
				<tr>
					<td><label for="rating">Add Rating:</label></td>
					<td><input type="text" name="rating"></td>
				</tr>
				<tr>
					<td><label for="area">Add Area:</label></td>
					<td><input type="text" name="area"></td>
				</tr>
				<tr>
					<td><label for="state">Add State:</label></td>
					<td><input type="text" name="state"></td>
				</tr>
				<tr>
					<td><label for="country">Add Country:</label></td>
					<td><input type="text" name="country"></td>
				</tr>
				<tr>
					<td><label for="liftAccess">Add Lift Accessibility:</label></td>
					<td><input type="text" name="liftAccess"></td>
				</tr>
				<tr>
					<td><label for="longitude">Add Longitude:</label></td>
					<td><input type="number" name="longitude"></td>
				</tr>
				<tr>
					<td><label for="latitude">Add Latitude:</label></td>
					<td><input type="number" name="latitude"></td>
				</tr>
				<tr>
					<td><label for="imageUrl">Image URL:</label></td>
					<td><input type="text" name="imageUrl"></td>
				</tr>
				<tr>
					 <td><label for="vertical">Vertical (ft):</label></td>
					 <td><input type="number" name="vertical"></td>
				</tr>
				<tr>
					<td colspan="2"><button type="submit">Save Ski Run</button></td>
				</tr>
			</table>
			<c:if test="${not empty message}">
  				<div class="alert alert-success">${message}</div>
			</c:if>
			
		</form>
		<script
			src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/js/bootstrap.bundle.min.js"
			integrity="sha384-k6d4wzSIapyDyv1kpU366/PK5hCdSbCRGRCMv+eplOQJWyd1fbcAu9OCUj5zNLiq"
			crossorigin="anonymous"></script>
	</main>
</body>
</html>