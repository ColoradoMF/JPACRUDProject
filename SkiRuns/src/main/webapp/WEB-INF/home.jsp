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
		<h4>See a Ski Run by ID # or keyword</h4>
		<form action="getSkiRun.do" method="GET">
			<input class="btn-info" type="text" name="skiRunId"	required /> 
			<input type="submit" value="ID# Search for a Ski Run" />
		</form>
		<form action="getSkiRunKeyword.do" method="GET">
			<input class="btn-info" type="text" name="skiRunKeyword" required />
			<input type="submit" value="Keyword Search for a Ski Run" />
		</form>


		<hr>
		<h4>Favorite Ski Runs</h4>
		<table class="table table-striped table-hover">
			<thead class="table-dark">
				<tr>
					<th>Name</th>
					<th>Area</th>
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
						<td>${skiRun.state}</td>
						<td>${skiRun.country}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<hr>

		</form>
		<h2>Add a new favorite Ski Run</h2>
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
				<!-- <tr>
					<td><label for="year">Add Year:</label></td>
					<td><input type="number" name="year"></td>
				</tr>
				<tr>
					<td><label for="rating">Add Rating:</label></td>
					<td><input type="text" name="rating"></td>
				</tr>
				<tr>
					<td><label for="languageId">Add Language:</label></td>
					<td><input type="number" name="languageId"></td>
				</tr>
				<tr>
					<td><label for="rentalRate">Add Rental Rate:</label></td>
					<td><input type="number" name="rentalRate"></td>
				</tr>
				<tr>
					<td><label for="rentalDuration">Add Rental Duration:</label></td>
					<td><input type="number" name="rentalDuration"></td>
				</tr>
				<tr>
					<td><label for="replacementCost">Add Replacement Cost:</label></td>
					<td><input type="number" name="replacementCost"></td>
				</tr>
				<tr>
					<td><label for="length">Add Film Length:</label></td>
					<td><input type="number" name="length"></td>
				</tr> -->
				<tr>
					<td colspan="2"><button type="submit">Save Ski Run</button></td>
				</tr>
			</table>
		</form>
		<script
			src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/js/bootstrap.bundle.min.js"
			integrity="sha384-k6d4wzSIapyDyv1kpU366/PK5hCdSbCRGRCMv+eplOQJWyd1fbcAu9OCUj5zNLiq"
			crossorigin="anonymous"></script>
	</main>
</body>
</html>