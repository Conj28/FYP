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
 <nav class="navbar navbar-expand navbar-light bg-primary topbar mb-4 static-top" style="color:#ffffff">

          

          <!-- Topbar Search -->
          <form class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
            <div class="input-group">
              <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2">
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
            <li class="nav-item dropdown no-arrow d-sm-none">
              <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <i class="fas fa-search fa-fw"></i>
              </a>
              <!-- Dropdown - Messages -->
              <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in" aria-labelledby="searchDropdown">
                <form class="form-inline mr-auto w-100 navbar-search">
                  <div class="input-group">
                    <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2">
                    <div class="input-group-append">
                      <button class="btn btn-primary" type="button">
                        <i class="fas fa-search fa-sm"></i>
                      </button>
                    </div>
                  </div>
                </form>
              </div>
            </li>

            <!-- Nav Item - Alerts -->
            <li class="nav-item dropdown no-arrow mx-1">
              <a class="nav-link dropdown-toggle" href="#" id="alertsDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <i class="fas fa-bell fa-fw"></i>
                <!-- Counter - Alerts -->
                <span class="badge badge-danger badge-counter">3+</span>
              </a>
              <!-- Dropdown - Alerts -->
              <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="alertsDropdown">
                <h6 class="dropdown-header">
                  Alerts Center
                </h6>
                <a class="dropdown-item d-flex align-items-center" href="#">
                  <div class="mr-3">
                    <div class="icon-circle bg-primary">
                      <i class="fas fa-file-alt text-white"></i>
                    </div>
                  </div>
                  <div>
                    <div class="small text-gray-500">December 12, 2019</div>
                    <span class="font-weight-bold">A new monthly report is ready to download!</span>
                  </div>
                </a>
                <a class="dropdown-item d-flex align-items-center" href="#">
                  <div class="mr-3">
                    <div class="icon-circle bg-success">
                      <i class="fas fa-donate text-white"></i>
                    </div>
                  </div>
                  <div>
                    <div class="small text-gray-500">December 7, 2019</div>
                    $290.29 has been deposited into your account!
                  </div>
                </a>
                <a class="dropdown-item d-flex align-items-center" href="#">
                  <div class="mr-3">
                    <div class="icon-circle bg-warning">
                      <i class="fas fa-exclamation-triangle text-white"></i>
                    </div>
                  </div>
                  <div>
                    <div class="small text-gray-500">December 2, 2019</div>
                    Spending Alert: We've noticed unusually high spending for your account.
                  </div>
                </a>
                <a class="dropdown-item text-center small text-gray-500" href="#">Show All Alerts</a>
              </div>
            </li>

            <!-- Nav Item - Messages -->
            <li class="nav-item dropdown no-arrow mx-1">
              <a class="nav-link dropdown-toggle" href="#" id="messagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <i class="fas fa-envelope fa-fw"></i>
                <!-- Counter - Messages -->
                <span class="badge badge-danger badge-counter">7</span>
              </a>
              <!-- Dropdown - Messages -->
              <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="messagesDropdown">
                <h6 class="dropdown-header">
                  Message Center
                </h6>
                <a class="dropdown-item d-flex align-items-center" href="#">
                  <div class="dropdown-list-image mr-3">
                    <img class="rounded-circle" src="https://source.unsplash.com/fn_BT9fwg_E/60x60" alt="">
                    <div class="status-indicator bg-success"></div>
                  </div>
                  <div class="font-weight-bold">
                    <div class="text-truncate">Hi there! I am wondering if you can help me with a problem I've been having.</div>
                    <div class="small text-gray-500">Emily Fowler · 58m</div>
                  </div>
                </a>
                <a class="dropdown-item d-flex align-items-center" href="#">
                  <div class="dropdown-list-image mr-3">
                    <img class="rounded-circle" src="https://source.unsplash.com/AU4VPcFN4LE/60x60" alt="">
                    <div class="status-indicator"></div>
                  </div>
                  <div>
                    <div class="text-truncate">I have the photos that you ordered last month, how would you like them sent to you?</div>
                    <div class="small text-gray-500">Jae Chun · 1d</div>
                  </div>
                </a>
                <a class="dropdown-item d-flex align-items-center" href="#">
                  <div class="dropdown-list-image mr-3">
                    <img class="rounded-circle" src="https://source.unsplash.com/CS2uCrpNzJY/60x60" alt="">
                    <div class="status-indicator bg-warning"></div>
                  </div>
                  <div>
                    <div class="text-truncate">Last month's report looks great, I am very happy with the progress so far, keep up the good work!</div>
                    <div class="small text-gray-500">Morgan Alvarez · 2d</div>
                  </div>
                </a>
                <a class="dropdown-item d-flex align-items-center" href="#">
                  <div class="dropdown-list-image mr-3">
                    <img class="rounded-circle" src="https://source.unsplash.com/Mv9hjnEUHR4/60x60" alt="">
                    <div class="status-indicator bg-success"></div>
                  </div>
                  <div>
                    <div class="text-truncate">Am I a good boy? The reason I ask is because someone told me that people say this to all dogs, even if they aren't good...</div>
                    <div class="small text-gray-500">Chicken the Dog · 2w</div>
                  </div>
                </a>
                <a class="dropdown-item text-center small text-gray-500" href="#">Read More Messages</a>
              </div>
            </li>

            

            <!-- Nav Item - User Information -->
            <li class="nav-item dropdown no-arrow">
              <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <span class="mr-2 d-none d-lg-inline text-600 small" style = "color:white;">User Profile</span>
                <img class="img-profile rounded-circle" src="img/headshot.png">
              </a>
              <!-- Dropdown - User Information -->
              <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
                <a class="dropdown-item" href="#">
                  <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                  Profile
                </a>
                <div class="dropdown-divider"></div>
                
                <!-- https://stackoverflow.com/questions/10039968/submit-form-using-a-tag -->
                
                <form id = "logoutForm" action ="LogoutServlet" method ="POST">
                <a href = "javascript:{}" onclick="document.getElementById('logoutForm').submit();" class="dropdown-item" data-toggle="modal" data-target="#logoutModal">
                  <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                  Logout
                </a>
                </form>
              </div>
            </li>

          </ul>

        </nav>
        <!-- End of Topbar -->
			<div class="personal-small-container">
				<h1 class = "padding">You are on the Event page</h1>
				
				<div class="row">
					<ul class="listHorizontal card mb-4 py-3 border-left-primary col-lg-12">
						<li><form action="getEventsServlet" method="POST">
								<label class = "10PadLeft" for="location">Location:</label></li>
						<!--  <input type="text" required="required" class="form-control" id="location" name = "location"> -->
						
						<li><select name="location" class="form-control 10padleft">


								<!-- loc code https://stackoverflow.com/questions/15657367/selected-value-for-jsp-drop-down-using-jstl -->
								<option value="antrim"
									<c:if test="${sessionScope.location == 'antrim'}"> selected </c:if>>Antrim</option>
								<option value="armagh"
									<c:if test="${sessionScope.location == 'armagh'}"> selected </c:if>>Armagh</option>
								<option value="carlow"
									<c:if test="${sessionScope.location == 'carlow'}"> selected </c:if>>Carlow</option>
								<option value="cavan"
									<c:if test="${sessionScope.location == 'cavan'}"> selected </c:if>>Cavan</option>
								<option value="clare"
									<c:if test="${sessionScope.location == 'clare'}"> selected </c:if>>Clare</option>
								<option value="cork"
									<c:if test="${sessionScope.location == 'cork'}"> selected </c:if>>Cork</option>
								<option value="derry"
									<c:if test="${sessionScope.location == 'derry'}"> selected </c:if>>Derry</option>
								<option value="donegal"
									<c:if test="${sessionScope.location == 'donegal'}"> selected </c:if>>Donegal</option>
								<option value="down"
									<c:if test="${sessionScope.location == 'down'}"> selected </c:if>>Down</option>
								<option value="dublin"
									<c:if test="${sessionScope.location == 'dublin'}"> selected </c:if>>Dublin</option>
								<option value="fermanagh"
									<c:if test="${sessionScope.location == 'fermanagh'}"> selected </c:if>>Fermanagh</option>
								<option value="galway"
									<c:if test="${sessionScope.location == 'galway'}"> selected </c:if>>Galway</option>
								<option value="kerry"
									<c:if test="${sessionScope.location == 'kerry'}"> selected </c:if>>Kerry</option>
								<option value="kildare"
									<c:if test="${sessionScope.location == 'kildare'}"> selected </c:if>>Kildare</option>
								<option value="kilkenny"
									<c:if test="${sessionScope.location == 'kilkenny'}"> selected </c:if>>Kilkenny</option>
								<option value="laois"
									<c:if test="${sessionScope.location == 'laois'}"> selected </c:if>>Laois</option>
								<option value="leitrim"
									<c:if test="${sessionScope.location == 'leitrim'}"> selected </c:if>>Leitrim</option>
								<option value="limerick"
									<c:if test="${sessionScope.location == 'limerick'}"> selected </c:if>>Limerick</option>
								<option value="longford"
									<c:if test="${sessionScope.location == 'longford'}"> selected </c:if>>Longford</option>
								<option value="louth"
									<c:if test="${sessionScope.location == 'louth'}"> selected </c:if>>Louth</option>
								<option value="mayo"
									<c:if test="${sessionScope.location == 'mayo'}"> selected </c:if>>Mayo</option>
								<option value="meath"
									<c:if test="${sessionScope.location == 'meath'}"> selected </c:if>>Meath</option>
								<option value="monaghan"
									<c:if test="${sessionScope.location == 'monaghan'}"> selected </c:if>>Monaghan</option>
								<option value="offaly"
									<c:if test="${sessionScope.location == 'offaly'}"> selected </c:if>>Offaly</option>
								<option value="roscommon"
									<c:if test="${sessionScope.location == 'roscommon'}"> selected </c:if>>Roscommon</option>
								<option value="sligo"
									<c:if test="${sessionScope.location == 'sligo'}"> selected </c:if>>Sligo</option>
								<option value="tipperary"
									<c:if test="${sessionScope.location == 'tipperary'}"> selected </c:if>>Tipperary</option>
								<option value="tyrone"
									<c:if test="${sessionScope.location == 'tyrone'}"> selected </c:if>>Tyrone</option>
								<option value="waterford"
									<c:if test="${sessionScope.location == 'waterford'}"> selected </c:if>>Waterford</option>
								<option value="westmeath"
									<c:if test="${sessionScope.location == 'westmeath'}"> selected </c:if>>Westmeath</option>
								<option value="wexford"
									<c:if test="${sessionScope.location == 'wexford'}"> selected </c:if>>Wexford</option>
								<option value="wicklow"
									<c:if test="${sessionScope.location == 'wicklow'}"> selected </c:if>>Wicklow</option>
						</select></li>

						<li>
							<button type="submit" class="btn btn-primary">Filter</button>
							</form>
						</li>
						<li><form action="getEventsServlet" method="POST">
								<button type="submit" class="btn btn-primary">Reset
									Filter</button>
							</form></li>
					</ul>
				<c:if test="${not empty sessionScope.location}">
						<h5>Filtering for: ${sessionScope.location}</h5>
					</c:if>


						<c:if test="${not empty sessionScope.User}">
						<h5>Logged In As: ${sessionScope.User.firstName}</h5>
					</c:if>
					
					

						<c:forEach items="${Events}" var="tempEvent">
							
							<!--using href as link https://stackoverflow.com/questions/49554070/using-bootstrap-cards-as-a-hyperlink/49554284  -->
						<a href="GetSpecificEvent?currentEventID=${tempEvent.eventDetID}" class = "col-xl-3 col-md-6 mb-6 hiddenRef">

								<div class="card shadow mb-4 broder-left-primary ">
								<div class = "box">
									<img
										src="${tempEvent.img }" style = "width:100%; height: 20rem">
									<div class="card-body ">
										<h6 class="m-0 font-weight-bold text-primary">${tempEvent.name }</h6>

										<p class = "cardMarginBottom">Date: ${tempEvent.eventDate}</p>
										<p class = "cardMarginBottom">Start Time: ${tempEvent.startTime}</p>
										<p class = "cardMarginBottom">End Time:${tempEvent.endTime}</p>
									</div>
									</div>
								</div>
					</a>

						
						</c:forEach>
						
						<!--  end of Row div -->
					</div>

					<div class="col-lg-6">

						<div class="card mb-4 py-3 border-left-primary">
							<div class="card-body">.border-left-primary</div>
						</div>
					</div>
					
					<form action = "getUserEventsServlet" method = "POST">
					
					<button type = "submit">User Settings</button>
					</form>

				</div>
			</div>
			
			
			<!-- End of Main Content -->

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






</body>
</html>