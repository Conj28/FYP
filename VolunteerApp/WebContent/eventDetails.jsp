
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>


<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
	type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Custom styles for this template-->
<link href="css/sb-admin-2.min.css" rel="stylesheet">
<link href="css/main.css" rel="stylesheet">


<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<p>on event screen</p>

	<p>${sessionScope.specificEvent.eventDetID}</p>
	<p>${sessionScope.specificEvent.name}</p>
	<p>${sessionScope.specificEvent.eventDate}</p>
	<p>${sessionScope.specificEvent.startTime}</p>
	<p>${sessionScope.specificEvent.endTime}</p>
	<img src ="${sessionScope.specificEvent.img}">
	<p>${sessionScope.specificEvent.details}</p>
	
	<c:forEach items="${specificEventLocation}" var="tempLoc">

								<div class="card shadow mb-4 broder-left-primary">
								

										<p>County: ${tempLoc.county}</p>
										<p>location Time: ${tempLoc.location}</p>
										
									</div>
									
									


						
						</c:forEach>

</body>
</html>