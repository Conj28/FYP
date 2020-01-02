<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<h2>My Profile</h2>

<p>${sessionScope.User.firstName}</p>
<p>${sessionScope.User.lastName}</p>
<p>${sessionScope.User.email}</p>
<p>${sessionScope.User.phone}</p>
<p>${sessionScope.User.address}</p>
<p>${sessionScope.User.town}</p>
<p>${sessionScope.User.county}</p>


<h4>My Events</h4>
<h5>You are currently signed up for the following events</h5>
	<c:forEach items="${UserEvents}" var="tempEvent">
								<div class="card shadow mb-4 broder-left-primary">
										<p>Event : ${tempEvent.name}</p>
										<p>Location: ${tempEvent.location}</p>
										<p>County: ${tempEvent.county}</p>
										<p>Event Data: ${tempEvent.eventDate}</p>
										<p>Start Time: ${tempEvent.userStart}</p>
										<p>End Time: ${tempEvent.userEnd}</p>
										
									</div>

						
						</c:forEach>


</body>
</html>