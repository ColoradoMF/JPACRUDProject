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
			
			<table>
				<tr>
				<td><label for="name">Edit Name:   </label></td>
				<td><input type="text" name="title" id="title" value="${skiRun.name}"></td>
				</tr>
				
				<tr>
				<td><label for="rating">Edit Rating: </label></td>
				<td><input type="text" name="rating" id="rating" value="${skiRun.rating}"></td>
				</tr>
				
				<tr>
				<td><label for="">Edit Ski Resort/Area:   </label></td>
				<td><input type="text" name="" id="" value="${skiRun.area}"></td>
				</tr>
				
				<tr>
				<td><label for="">Edit State:   </label></td>
				<td><input type="text" name="" id="" value="${skiRun.state}"></td>
				</tr>
				
				<tr>
				<td><label for="">Edit Country:   </label></td>
				<td><input type="text" name="" id="" value="${skiRun.country}"></td>
				</tr>
				
				<tr>
				<td><label for="">Edit accessible from a lift:   </label></td>
				<td><input type="text" name="" id="" value="${skiRun.liftAccess}"></td>
				</tr>
				
				<tr>
				<td><label for="">Edit latitude:   </label></td>
				<td><input type="text" name="" id="" value="${skiRun.latitude}"></td>
				</tr>
				
				<tr>
				<td><label for="">Edit longitude:   </label></td>
				<td><input type="text" name="" id="" value="${skiRun.longitude}"></td>
				</tr>
			</table>

			<hr>

			<div>
				<form action="deleteSkiRun.do" method="POST" style="display:inline;" 
      			onsubmit="return confirm('Are you sure you want to delete this ski run?');">
  				<input type="hidden" name="skiRunId" value="${skiRun.id}" />
  				<button type="submit" class="btn btn-danger btn-sm">Delete</button>
				</form>
			</div>
			<div style="width: 20%"><iframe width="20%" height="200" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.com/maps?width=20%25&amp;height=200&amp;hl=en&amp;q=Malet%20St,%20London%20WC1E%207HU,%20United%20Kingdom+(Fav%20Ski%20Runs)&amp;t=&amp;z=14&amp;ie=UTF8&amp;iwloc=B&amp;output=embed"></iframe></div>
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