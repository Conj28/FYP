
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
	<!-- Page Wrapper -->
	<div id="wrapper">


		<!-- Content Wrapper -->
		<div id="content-wrapper">

			<!-- Main Content -->
			<div id="content">

				<!--  Nav bar copied from sbadmin 2 -->
				<!-- ********** Nav Bar ****** -->
				<nav
					class="navbar navbar-expand navbar-light bg-primary topbar mb-4 static-top"
					style="color: #ffffff">



					<!-- Topbar Search -->
					<form
						class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
						<div class="input-group">
							<input type="text" class="form-control bg-light border-0 small"
								placeholder="Search for..." aria-label="Search"
								aria-describedby="basic-addon2">
							<div class="input-group-append">
								<button class="btn btn-primary" type="button">
									<i class="fas fa-search fa-sm"></i>
								</button>
							</div>
						</div>
					</form>

					<!-- Topbar Navbar -->
					<ul class="navbar-nav ml-auto">

						<!-- Nav Item - Search Dropdown (Visible Only XS) -->
						<li class="nav-item dropdown no-arrow d-sm-none"><a
							class="nav-link dropdown-toggle" href="#" id="searchDropdown"
							role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> <i class="fas fa-search fa-fw"></i>
						</a> <!-- Dropdown - Messages -->
							<div
								class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in"
								aria-labelledby="searchDropdown">
								<form class="form-inline mr-auto w-100 navbar-search">
									<div class="input-group">
										<input type="text"
											class="form-control bg-light border-0 small"
											placeholder="Search for..." aria-label="Search"
											aria-describedby="basic-addon2">
										<div class="input-group-append">
											<button class="btn btn-primary" type="button">
												<i class="fas fa-search fa-sm"></i>
											</button>
										</div>
									</div>
								</form>
							</div></li>






						<!-- Nav Item - User Information -->
						<li class="nav-item dropdown no-arrow"><a
							class="nav-link dropdown-toggle" href="#" id="userDropdown"
							role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> <span
								class="mr-2 d-none d-lg-inline text-600 small"
								style="color: white;">User Profile</span> <img
								class="img-profile rounded-circle" src="img/headshot.png">
						</a> <!-- Dropdown - User Information -->
							<div
								class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
								aria-labelledby="userDropdown">
								<a class="dropdown-item" href="#"> <i
									class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i> Profile
								</a>
								<div class="dropdown-divider"></div>

								<!-- https://stackoverflow.com/questions/10039968/submit-form-using-a-tag -->

								<form id="logoutForm" action="LogoutServlet" method="POST">
									<a href="javascript:{}"
										onclick="document.getElementById('logoutForm').submit();"
										class="dropdown-item" data-toggle="modal"
										data-target="#logoutModal"> <i
										class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
										Logout
									</a>
								</form>
							</div></li>

					</ul>

				</nav>
				<!-- End of Topbar -->

				<!-- Start of main content -->
				<div class="personal-small-container">


					<!--<h1 class = "padding">You are on the Event page</h1> -->

					<div class="row">





						<!--***************************** Put Code Here **************************** -->

						<div class="row">
							<div
								class="col-xl-5 col-lg-12 col-md-12 col-sm-12 col-xs-12 mb-4">
								<div class="card">

									<div class="card-body">
										<img class="img-details-page"
											src="${sessionScope.specificEvent.img}">
									</div>
								</div>
							</div>

							<div class="col-xl-7 col-sm-12">
								<div class="card mb-4">
									<div class="card-body">
										<h2 class="font-weight-bold text-primary">${sessionScope.specificEvent.name}</h2>
										<hr>
										<div class="mb-2">
											<h4 class="font-weight-bold text-primary header-inline">Event
												Date:</h4>
											<h4 class="font-weight-bold header-inline text-gray-800">${sessionScope.specificEvent.eventDate}</h4>
										</div>

										<div class="mb-2">
											<h4 class="font-weight-bold text-primary header-inline">Start
												Time:</h4>
											<h4 name = "eventStartTime" class="font-weight-bold header-inline text-gray-800">${sessionScope.specificEvent.startTime}</h4>
										</div>

										<div class="mb-2">
											<h4 class="font-weight-bold text-primary header-inline">End
												Time:</h4>
											<h4 name = "eventEndTime"class="font-weight-bold header-inline text-gray-800">${sessionScope.specificEvent.endTime}</h4>
										</div>
										<hr>
										<p class="mb-4 m-0 font-weight-bold text-gray-800 text-lg">${sessionScope.specificEvent.details}</p>

										<!--  Signup part -->

										<hr>
										<h2 class="font-weight-bold text-primary">Get Involved</h2>


										<form class="user" id="submitForm" action="eventSignUpServlet"
											method="POST">
											<div class="row mb-4">

												<div class="col-sm-12 col-lg-4">
													<h4 class="font-weight-bold text-primary">Select
														Location</h4>
												</div>
												<div class="col-sm-12 col-lg-8">
													<select id="optionLocation" name="optionLocation"
														class="form-control selectPadHeight selectedLocation">
															<option value= "default" >Select Location</option>
														<c:forEach items="${specificEventLocation}" var="tempLoc">
															
															
															<!--  make sure that the is only one space between two varibales  -->
															<option value="${tempLoc.eventLocID}"   ${tempLoc.eventLocID == selectedLocation ? 'selected="selected"' : ''}>${tempLoc.location}
																(${tempLoc.county})</option>
																
																

														</c:forEach>
													</select>
												</div>

											</div>
											<!-- Second Row -->
											<!-- Start of signup change 
											<div class="row mb-4">

												<div class="col-sm-12 col-lg-4">
													<h4 class="font-weight-bold text-primary">Start Time</h4>
												</div>
												<div class="col-sm-12 col-lg-8">
													<select id="optionStartTime" name="optionStartTime"
														onChange="onItemChanged()"
														class="form-control selectPadHeight">
														
														<!--  https://stackoverflow.com/questions/2947417/issue-of-jstl-foreach-iterate-from-arraylist --
														
														<c:forEach items="${listStartTimes}" var="time">
															<option value="${time}">${time}</option>

														</c:forEach>
													</select>
												</div>

											</div>

											<div class="row mb-4">
											-->


											<!--  <div class="col-sm-12 col-lg-4">
													<h4 class="font-weight-bold text-primary">End Time
														</h4>
												</div>
												<div class="col-sm-12 col-lg-8">
													<select id ="optionEndTime" name="optionEndTime" onChange="onItemChanged()"
														class="form-control selectPadHeight">

														<c:forEach items="${listEndTimes}" var="time">
															<option  value="${time}">${time}</option>

														</c:forEach>
													</select>
												</div> -->

											<!--  New select list part -->
											<div class="col-sm-12 col-lg-8 mb-4">
											<table>
												<thead>
													<tr>
														<th>Time</th>
														<th>Select</th>
														<th>Spaces</th>
													</tr>

												</thead>

												<tbody>
													<c:forEach items="${locationTimes}" var="time">
															<tr>
															<td>${time.startTime} - ${time.endTime}</td>
															<td><input type = "checkbox" value = "${time.startTime}" name = "checkedTime"></td>
															<td>${time.availableSpaces}</td>
															<td>${time.numberSpaces}</td>
															</tr>
															
													</c:forEach>
												</tbody>
											</table>
											</div>
									
									<div class="  text-center">
										<p class="hiddenText dangerText" id="errorMessage">Hidden
											Text</p>
									</div>

									<!--  Check if the user is logged in  otherwise prompt them to -->

									<input type="hidden" id="eventId" name="eventId"
											value="${sessionScope.specificEvent.eventDetID}" />
											<input type="hidden" id="setLocation" name="setLocation" />
										<input type="hidden" id="eventName" name="eventName"
											value="${sessionScope.specificEvent.name}" />
											
											
											<input type="hidden" id="optionStartTime" name="optionStartTime" />
											<input type="hidden" id="optionEndTime" name="optionEndTime" />
							
							
							<!-- values relating to the session -->
									<c:if test="${not empty sessionScope.User}">
										<input type="hidden" id="userId" name="userId"
											value="${sessionScope.User.userID }" />
										
										<input type="hidden" id="userEmail" name="userEmail"
											value="${sessionScope.User.email}" />
										
										<input type="hidden" id="firstName" name="firstName"
											value="${sessionScope.User.firstName}" />




										<div class="mb-4">
											<button type="button" id="submitButton"
												class="mb-4 btn btn-primary btn-user btn-block">Volunteer</button>
										</div>

									</c:if>
									
									
									</form>
									<c:if test="${empty sessionScope.User}">

										<div class="mb-4">

											<a href="login.jsp"
												class="mb-4 btn btn-danger btn-user btn-block">Log in to Volunteer</a>
										</div>

									</c:if>

									<!--  https://stackoverflow.com/questions/10943635/how-do-i-pass-multiple-parameter-in-url/10943694 -->
									<form action = "getLocationTimes?LcurrentEventID=${sessionScope.specificEvent.eventDetID}&LeventStartTime=${sessionScope.specificEvent.startTime}&LeventEndTime=${sessionScope.specificEvent.endTime}" name = "loactionForm" id ="loactionForm" method = "POST">
									
									<input type="hidden" id="LevetLocation" name="LevetLocation" />
									<input type="hidden" id="currentEventID" name="currentEventID"
											value="${sessionScope.specificEvent.eventDetID}" />
									<button type = "submit">Submit</button>
									</form>
									
									
								</div>
							</div>
							</div>
							</div>
							<!-- end of card main text column -->
						</div>

						<!--
								------------------------Experimental second card ------------------------------------
								<div class = "col-xl-6 col-sm-12">
								<div class="card mb-4">
									<div class="card-body" >
										<h1 class="font-weight-bold text-primary">${sessionScope.specificEvent.name}</h1>
										<hr>
										<div class="mb-4">
											<h3 class="font-weight-bold text-primary header-inline">Event Date: </h3>
											<h3 class="font-weight-bold header-inline text-gray-800">${sessionScope.specificEvent.eventDate}</h3>
										</div>
										
										<div class="mb-4">
											<h3 class="font-weight-bold text-primary header-inline">Start Time: </h3>
											<h3 class="font-weight-bold header-inline text-gray-800">${sessionScope.specificEvent.startTime}</h3>
										</div>
										
										<div class="mb-4">
											<h3 class="font-weight-bold text-primary header-inline">End Time: </h3>
											<h3 class="font-weight-bold header-inline text-gray-800">${sessionScope.specificEvent.endTime}</h3>
										</div>
										<hr>
										<p class="mb-4 m-0 font-weight-bold text-gray-800 text-lg">${sessionScope.specificEvent.details}</p>
									</div>
								</div>
								
								</div> -->




					</div>


					<!-- 
	<p>${sessionScope.specificEvent.eventDetID}</p>
	<p>${sessionScope.specificEvent.name}</p>
	<p>${sessionScope.specificEvent.eventDate}</p>
	<p>${sessionScope.specificEvent.startTime}</p>
	<p>${sessionScope.specificEvent.endTime}</p>
	<img src ="${sessionScope.specificEvent.img}">
	<p>${sessionScope.specificEvent.details}</p>
	
	<c:forEach items="${specificEventLocation}" var="tempLoc">

								<div class="card shadow mb-4 broder-left-primary">
								
										<p>County: ${tempLoc.eventLocID}</p>
										<p>County: ${tempLoc.county}</p>
										<p>location Time: ${tempLoc.location}</p>
										
									</div>
									
									


						
						</c:forEach>
						
						
						
						


<!--  -->
					<!--  end of Row div -->
				</div>


				<!-- End of personal container -->
			</div>

			<!-- End of content -->
		</div>



		<!-- Footer -->
		<footer class="sticky-footer bg-white">
			<div class="container my-auto">
				<div class="copyright text-center my-auto">
					<span>Copyright &copy; Your Website 2019</span>
				</div>
			</div>


		</footer>
		<!-- End of Footer -->

	</div>
	<!-- End of Content Wrapper -->

	</div>
	<!-- End of Page Wrapper -->

	<!-- Bootstrap core JavaScript-->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Core plugin JavaScript-->
	<script src="vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Custom scripts for all pages-->
	<script src="js/sb-admin-2.min.js"></script>
	<script src="js/timeCheck.js"></script>





</body>
</html>





