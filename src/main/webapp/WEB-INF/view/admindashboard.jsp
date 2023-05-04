<!DOCTYPE html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>HEAVENSGATE Admin</title>
<!-- plugins:css -->
<link rel="stylesheet"
	href=" vendors/mdi/css/materialdesignicons.min.css">
<link rel="stylesheet" href=" vendors/css/vendor.bundle.base.css">
<!-- endinject -->
<!-- Plugin css for this page -->
<link rel="stylesheet" href=" vendors/jvectormap/jquery-jvectormap.css">
<link rel="stylesheet"
	href=" vendors/flag-icon-css/css/flag-icon.min.css">
<link rel="stylesheet"
	href=" vendors/owl-carousel-2/owl.carousel.min.css">
<link rel="stylesheet"
	href=" vendors/owl-carousel-2/owl.theme.default.min.css">

<link rel="stylesheet" href="css/styleadmin.css">
<!-- End layout styles -->
<!-- <link rel="shortcut icon" href=" images/favicon.png" /> -->
</head>
<body>
	<%@ page import="java.util.*"%>
	<%@ page import="com.example.entity.*"%>
	<%@ page import="com.example.services.*"%>
	<div class="container-scroller">
		<nav class="sidebar sidebar-offcanvas" id="sidebar">
			<div
				class="sidebar-brand-wrapper d-none d-lg-flex align-items-center justify-content-center fixed-top">

			</div>
			<ul class="nav">
				<li class="nav-item profile">
					<div class="profile-desc">
						<div class="profile-pic">
							<div class="count-indicator"></div>
							<div class="profile-name">
								<h5 class="mb-0 font-weight-normal">HEAVENSGATE</h5>
								<span>ADMIN</span>
							</div>
						</div>
						<a href="#" id="profile-dropdown" data-toggle="dropdown"><i
							class="mdi mdi-dots-vertical"></i></a>
						<div
							class="dropdown-menu dropdown-menu-right sidebar-dropdown preview-list"
							aria-labelledby="profile-dropdown">

							<div class="dropdown-divider"></div>
							<a href="#" class="dropdown-item preview-item">
								<div class="preview-thumbnail">
									<div class="preview-icon bg-dark rounded-circle">
										<i class="mdi mdi-onepassword  text-info"></i>
									</div>
								</div>
								<div class="preview-item-content">
									<p class="preview-subject ellipsis mb-1 text-small">Change
										Password</p>
								</div>
							</a>

						</div>
				</li>
				<li class="nav-item nav-category"></li>
				<li class="nav-item menu-items"><a class="nav-link"
					href="/admindashboard"> <span class="menu-icon"> <i
							class="mdi mdi-speedometer"></i>
					</span> <span class="menu-title">Dashboard</span>
				</a></li>
				<li class="nav-item menu-items"><a class="nav-link"
					data-toggle="collapse" href="#ui-basic" aria-expanded="false"
					aria-controls="ui-basic"> <span class="menu-icon"> <i
							class="mdi mdi-account-plus"></i>
					</span> <span class="menu-title">ADD Category</span> <i class="menu-arrow"></i>
				</a>
					<div class="collapse" id="ui-basic">
						<ul class="nav flex-column sub-menu">
							<li class="nav-item"><a class="nav-link" href="">Tourist
									Guides</a></li>
							<li class="nav-item"><a class="nav-link" href="">Rooms</a></li>
							<li class="nav-item"><a class="nav-link" href="">Villas's</a></li>
							<li class="nav-item"><a class="nav-link" href="">Resturants</a></li>
						</ul>
					</div></li>
				<li class="nav-item menu-items"><a class="nav-link" href="">
						<span class="menu-icon"> <i
							class="mdi mdi-account-card-details"></i>
					</span> <span class="menu-title">Customers</span>
				</a></li>
				<li class="nav-item menu-items"><a class="nav-link" href="">
						<span class="menu-icon"> <i
							class="mdi mdi-account-multiple"></i>
					</span> <span class="menu-title">Providers</span>
				</a></li>

				<li class="nav-item menu-items"><a class="nav-link"
					data-toggle="collapse" href="#auth" aria-expanded="false"
					aria-controls="auth"> <span class="menu-icon"> <i
							class="mdi mdi-cart-plus"></i>
					</span> <span class="menu-title">Booking Details</span> <i
						class="menu-arrow"></i>
				</a>
					<div class="collapse" id="auth">
						<ul class="nav flex-column sub-menu">

							<li class="nav-item"><a class="nav-link" href=""> Rooms
							</a></li>
							<li class="nav-item"><a class="nav-link" href=""> Villas</a></li>

						</ul>
					</div></li>


				<li class="nav-item menu-items"><a class="nav-link"
					data-toggle="collapse" href="#auth" aria-expanded="false"
					aria-controls="auth"> <span class="menu-icon"> <i
							class="mdi mdi-information"></i>
					</span> <span class="menu-title">Information</span> <i class="menu-arrow"></i>
				</a>
					<div class="collapse" id="auth">
						<ul class="nav flex-column sub-menu">
							<li class="nav-item"><a class="nav-link" href="">
									Tourist guides</a></li>
							<li class="nav-item"><a class="nav-link" href=""> Rooms
							</a></li>
							<li class="nav-item"><a class="nav-link" href=""> Villas</a></li>
							<li class="nav-item"><a class="nav-link" href="">
									Resturants</a></li>
						</ul>
					</div></li>

			</ul>
		</nav>
		<!-- partial -->
		<div class="container-fluid page-body-wrapper">
			<!-- partial:partials/_navbar.html -->
			<nav class="navbar p-0 fixed-top d-flex flex-row">
				<div
					class="navbar-brand-wrapper d-flex d-lg-none align-items-center justify-content-center">
					<!-- <a class="navbar-brand brand-logo-mini" href="index.html"><img src=" images/logo-mini.svg" alt="logo" /></a> -->
				</div>
				<div
					class="navbar-menu-wrapper flex-grow d-flex align-items-stretch">
					<button class="navbar-toggler navbar-toggler align-self-center"
						type="button" data-toggle="minimize">
						<span class="mdi mdi-menu"></span>
					</button>
					<ul class="navbar-nav w-100">
						<li class="nav-item w-100">
							<form class="nav-link mt-2 mt-md-0 d-none d-lg-flex search">
								<input type="text" class="form-control" placeholder="Search">
							</form>
						</li>
					</ul>
					<ul class="navbar-nav navbar-nav-right">
						<li class="nav-item dropdown d-none d-lg-block"><a
							class="nav-link btn btn-success create-new-button"
							id="createbuttonDropdown" data-toggle="dropdown"
							aria-expanded="false" href="#">+ ADD</a>
							<div
								class="dropdown-menu dropdown-menu-right navbar-dropdown preview-list"
								aria-labelledby="createbuttonDropdown">
								<h6 class="p-3 mb-0">ADD SERVICES</h6>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item preview-item">
									<div class="preview-thumbnail">
										<div class="preview-icon bg-dark rounded-circle">
											<i class="mdi mdi-home text-primary"></i>
										</div>
									</div>
									<div class="preview-item-content">
										<p class="preview-subject ellipsis mb-1">Rooms</p>
									</div>
								</a>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item preview-item">
									<div class="preview-thumbnail">
										<div class="preview-icon bg-dark rounded-circle">
											<i class="mdi mdi-home-modern text-info"></i>
										</div>
									</div>
									<div class="preview-item-content">
										<p class="preview-subject ellipsis mb-1">Villas</p>
									</div>
								</a>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item preview-item">
									<div class="preview-thumbnail">
										<div class="preview-icon bg-dark rounded-circle">
											<i class="mdi mdi-food text-primary"></i>
										</div>
									</div>
									<div class="preview-item-content">
										<p class="preview-subject ellipsis mb-1">Resturants</p>
									</div>
								</a> <a class="dropdown-item preview-item">
									<div class="preview-thumbnail">
										<div class="preview-icon bg-dark rounded-circle">
											<i class="mdi mdi-account-multiple text-info"></i>
										</div>
									</div>
									<div class="preview-item-content">
										<p class="preview-subject ellipsis mb-1">TouristGuides</p>
									</div>
								</a></li>
						<!-- <li class="nav-item nav-settings d-none d-lg-block">
                <a class="nav-link" href="#">
                  <i class="mdi mdi-view-grid"></i>
                </a>
              </li> -->
						<!-- <li class="nav-item dropdown border-left">
                <a class="nav-link count-indicator dropdown-toggle" id="messageDropdown" href="#" data-toggle="dropdown" aria-expanded="false">
                  <i class="mdi mdi-email"></i>
                  <span class="count bg-success"></span>
                </a>
                <div class="dropdown-menu dropdown-menu-right navbar-dropdown preview-list" aria-labelledby="messageDropdown">
                  <h6 class="p-3 mb-0">Messages</h6>
                  <div class="dropdown-divider"></div>
                  
                  
                 
                  
              </li> -->
						<!-- <li class="nav-item dropdown border-left">
                <a class="nav-link count-indicator dropdown-toggle" id="notificationDropdown" href="#" data-toggle="dropdown">
                  <i class="mdi mdi-bell"></i>
                  <span class="count bg-danger"></span>
                </a>
                <div class="dropdown-menu dropdown-menu-right navbar-dropdown preview-list" aria-labelledby="notificationDropdown">
                  <h6 class="p-3 mb-0">Notifications</h6>
                  <div class="dropdown-divider"></div>
                  
                  
                  
              </li> -->
						<li class="nav-item dropdown"><a class="nav-link"
							id="profileDropdown" href="#" data-toggle="dropdown">
								<div class="navbar-profile">
									<p class="mb-0 d-none d-sm-block navbar-profile-name">HEAVENSGATE</p>
									<i class="mdi mdi-menu-down d-none d-sm-block"></i>
								</div>
						</a>
							<div
								class="dropdown-menu dropdown-menu-right navbar-dropdown preview-list"
								aria-labelledby="profileDropdown">
								<h6 class="p-3 mb-0">Profile</h6>
								<div class="dropdown-divider"></div>

								<div class="dropdown-divider"></div>
								<a class="dropdown-item preview-item" href="/">
									<div class="preview-thumbnail">
										<div class="preview-icon bg-dark rounded-circle">
											<i class="mdi mdi-logout text-danger"></i>
										</div>
									</div>
									<div class="preview-item-content">
										<p class="preview-subject mb-1">Logout</p>
									</div>
								</a></li>
					</ul>
					<button
						class="navbar-toggler navbar-toggler-right d-lg-none align-self-center"
						type="button" data-toggle="offcanvas">
						<span class="mdi mdi-format-line-spacing"></span>
					</button>
				</div>
			</nav>
			<!-- partial -->
			<div class="main-panel">
				<div class="content-wrapper">
					<div class="row">
						<div class="col-12 grid-margin stretch-card">
							<div class="card corona-gradient-card">
								<div class="card-body py-0 px-0 px-sm-3">
									<div class="row align-items-center"></div>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-xl-3 col-sm-6 grid-margin stretch-card">
							<div class="card">
								<div class="card-body">
									<div class="row">
										<div class="col-9">
											<div class="d-flex align-items-center align-self-start">
												<h3 class="mb-0"><%int c= (int) request.getAttribute("usercount"); %><%=c%></h3>
												<!-- <p class="text-success ml-2 mb-0 font-weight-medium">+3.5%</p> -->
											</div>
										</div>
										<div class="col-3">
											<div class="icon icon-box-success ">
												<span class="mdi mdi-account-multiple"></span>
											</div>
										</div>
									</div>
									<h6 class="text-muted font-weight-normal">Customers</h6>
								</div>
							</div>
						</div>
						<div class="col-xl-3 col-sm-6 grid-margin stretch-card">
							<div class="card">
								<div class="card-body">
									<div class="row">
										<div class="col-9">
											<div class="d-flex align-items-center align-self-start">
												<h3 class="mb-0"><%int pc= (int) request.getAttribute("providercount"); %><%=pc%></h3>

											</div>
										</div>
										<div class="col-3">
											<div class="icon icon-box-success">
												<span class="mdi mdi-account-multiple-outline"></span>
											</div>
										</div>
									</div>
									<h6 class="text-muted font-weight-normal">Providers</h6>
								</div>
							</div>
						</div>
						<div class="col-xl-3 col-sm-6 grid-margin stretch-card">
							<div class="card">
								<div class="card-body">
									<div class="row">
										<div class="col-9">
											<div class="">

												<h3 class="mb-0">10</h3>

											</div>
										</div>
										<div class="col-3">
											<div class="icon icon-box-success">
												<span class="mdi mdi-information-variant"></span>
											</div>
										</div>
									</div>
									<h6 class="text-muted font-weight-normal">Resturants</h6>
								</div>
							</div>
						</div>
						<div class="col-xl-3 col-sm-6 grid-margin stretch-card">
							<div class="card">
								<div class="card-body">
									<div class="row">
										<div class="col-9">
											<div class="d-flex align-items-center align-self-start">
												<h3 class="mb-0">0</h3>

											</div>
										</div>
										<div class="col-3">
											<div class="icon icon-box-success ">
												<span class="mdi mdi-home"></span>
											</div>
										</div>
									</div>
									<h6 class="text-muted font-weight-normal">Remaining Rooms</h6>
								</div>
							</div>
						</div>
					</div>

					<div class="row">
						<div class="col-sm-4 grid-margin">
							<div class="card">
								<div class="card-body">
									<h5>Rooms</h5>
									<div class="row">
										<div class="col-8 col-sm-12 col-xl-8 my-auto">
											<div class="d-flex d-sm-block d-md-flex align-items-center">
												<h2 class="mb-0"><%int rc= (int) request.getAttribute("roomscount"); %><%=rc%></h2>

											</div>
											<h6 class="text-muted font-weight-normal">Count</h6>
										</div>
										<div
											class="col-4 col-sm-12 col-xl-4 text-center text-xl-right">
											<i class="icon-lg mdi mdi-home-variant text-success ml-auto"></i>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-sm-4 grid-margin">
							<div class="card">
								<div class="card-body">
									<h5>Villa's</h5>
									<div class="row">
										<div class="col-8 col-sm-12 col-xl-8 my-auto">
											<div class="d-flex d-sm-block d-md-flex align-items-center">
												<h2 class="mb-0"><%int vc= (int) request.getAttribute("villahcount"); %><%=vc%></h2>
											</div>
											<h6 class="text-muted font-weight-normal">Count</h6>
										</div>
										<div
											class="col-4 col-sm-12 col-xl-4 text-center text-xl-right">
											<i class="icon-lg mdi mdi-home-modern text-success ml-auto"></i>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-sm-4 grid-margin">
							<div class="card">
								<div class="card-body">
									<h5>Tourist Guides</h5>
									<div class="row">
										<div class="col-8 col-sm-12 col-xl-8 my-auto">
											<div class="d-flex d-sm-block d-md-flex align-items-center">
												<h2 class="mb-0">0</h2>
											</div>
											<h6 class="text-muted font-weight-normal">Count</h6>
										</div>
										<div
											class="col-4 col-sm-12 col-xl-4 text-center text-xl-right">
											<i
												class="icon-lg mdi mdi-account-multiple-outline text-success ml-auto"></i>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="row ">
						<div class="col-12 grid-margin">
							<div class="card">
								<div class="card-body">
									<h4 class="card-title">PROVIDERS</h4>
									<div class="table-responsive">

										<%
										int i = 1;
										ImageService ser = new ImageService();
										@SuppressWarnings("unchecked")
										List<Provider> list = (List<Provider>) request.getAttribute("allproviders");
										%>
										<table class="table">
											<thead>
												<tr>
													<th>
														<div class="form-check form-check-muted m-0">
															<label class="form-check-label"> <input
																type="checkbox" class="form-check-input">
															</label>
														</div>
													</th>

													<th>Provider ID</th>
													<th>Username</th>
													<th>age</th>
													<th>Phone Number</th>
													<th>Location</th>
												</tr>
											</thead>
											<tbody>
												<%
												for (Provider p : list) {
												%>
												<tr>
													<td><%=i++%></td>
													<td><%=p.getId() %></td>
													<td><%=p.getUsername()%></td>
													<td><%=p.getAge()%></td>
													<td><%=p.getMobile()%></td>
													<td><%=p.getLocation()%></td>

												</tr>
												<%
												}
												%>




											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
					</div>

					<div class="row">
						<div class="col-12">
							<div class="card">
								<div class="card-body">
									<h4 class="card-title">Avaiable in</h4>
									<div class="row">
										<div class="col-md-5">
											<div class="table-responsive">
												<table class="table">
													<tbody>
														<tr>
															<td><i class="flag-icon flag-icon-in"></i></td>
															<td>VIJAYAWADA</td>

														</tr>

													</tbody>
												</table>
											</div>
										</div>
										<div class="col-md-7">
											<!-- <div id="audience-map" class="vector-map"></div> -->
											<div>


												<iframe
													src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d30605.213982051246!2d80.60939197910159!3d16.49316240000002!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3a35fb6b15fe238b%3A0xedcf94cfa4263092!2sSri%20Kanaka%20Durga%20Temple!5e0!3m2!1sen!2sin!4v1670043098599!5m2!1sen!2sin"
													width="500" height="200" style="border: 0;"
													allowfullscreen="" loading="lazy"
													referrerpolicy="no-referrer-when-downgrade"></iframe>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- content-wrapper ends -->
				<!-- partial:partials/_footer.html -->
				<footer class="footer">
					<div
						class="d-sm-flex justify-content-center justify-content-sm-between">

					</div>
				</footer>
				<!-- partial -->
			</div>
			<!-- main-panel ends -->
		</div>
		<!-- page-body-wrapper ends -->
	</div>

	<!-- End custom js for this page -->
	<script src="vendors/js/vendor.bundle.base.js"></script>
	<!-- endinject -->
	<!-- Plugin js for this page -->
	<script src="vendors/chart.js/Chart.min.js"></script>
	<script src="vendors/progressbar.js/progressbar.min.js"></script>
	<script src="vendors/jvectormap/jquery-jvectormap.min.js"></script>
	<script src="vendors/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
	<script src="vendors/owl-carousel-2/owl.carousel.min.js"></script>
	<!-- End plugin js for this page -->
	<!-- inject:js -->
	<script src="js/off-canvas.js"></script>
	<script src="js/hoverable-collapse.js"></script>
	<script src="js/misc.js"></script>
	<script src="js/settings.js"></script>
	<script src="js/todolist.js"></script>
	<!-- endinject -->
	<!-- Custom js for this page -->
	<script src="js/dashboard.js"></script>
</body>
</html>