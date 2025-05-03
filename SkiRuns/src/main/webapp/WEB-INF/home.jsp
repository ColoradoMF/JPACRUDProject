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

		<h1>Favorite Ski Runs</h1>

		<form action="getSkiRun.do" method="GET">
			Lookup by Ski Run ID #: <input class="btn-info" type="text" name="skiRunId" required />
			<input type="submit" value="Show SkiRun" />
		</form>
		<hr>
		<table class="table table-striped table-hover">
			<thead class="table-dark">
				<tr>
					<th>Id</th>
					<th>Name</th>
					<th>Area</th>
					<!-- Other properties here -->
				</tr>
			</thead>
			<tbody>

				<c:forEach var="skiRun" items="${skiRunList}">
					<tr>
						<td>${skiRun.id }</td>
						<td><a href="getSkiRun.do?skiRunId=${skiRun.id}">
								${skiRun.name} </a></td>
						<td>${skiRun.area}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/js/bootstrap.bundle.min.js" integrity="sha384-k6d4wzSIapyDyv1kpU366/PK5hCdSbCRGRCMv+eplOQJWyd1fbcAu9OCUj5zNLiq" crossorigin="anonymous"></script>
</main>
</body>
</html>