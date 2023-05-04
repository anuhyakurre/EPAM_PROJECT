<!DOCTYPE html>
<html lang="en" xmlns:layout="http://www.ultraq.net.nz/thymeleaf/layout"
	xmlns:th="http://www.thymeleaf.org">
<head>
<title>HEAVENSGATE</title>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="css/bootstrap.css" rel="stylesheet">

</head>
<body>

	<div class="container">
		<div class="col-12">
			
			<nav class="navbar navbar-expand-sm navbar-light" style="background-color: #e3f2fd;">
				<!-- Navbar content -->
				<ul class="navbar-nav">
					<li class="nav-item">
					 <a class="nav-link font-weight-bold" href="/providerupload" >Upload Image</a>
					</li>
					<li class="nav-item">
					 <a class="nav-link font-weight-bold" href="/displayimages">Display Images</a>
					</li>
				</ul>
			</nav>
            <hr>
            <h3 class="text-center">list of Images</h3>
			<hr>
			<table class="table">
				<thead class="thead-dark">
					<tr>
						<th scope="col">image</th>
						<th scope="col">name</th>
						<th scope="col">description</th>
						<th scope="col">delete image</th>
					</tr>
				</thead>
				<tbody>
					<tr th:each="im: ${images}">
						<th scope="row"><img alt="" th:src="*{'data:image/jpeg;base64,'+{im.image}}" style="width: 100px;height: 100px;"></th>
						<td>[[*{product.name}]] 
						<!-- Button trigger modal --> <br>
							<button type="button" class="btn btn-success btn-sm mt-2"
								data-toggle="modal"
								th:attr="data-target='#exampleModalCenter'+*{im.id}">change
								name</button> <!-- Modal -->

							<div class="modal fade"
								th:id="*{'exampleModalCenter'+{im.id}}" tabindex="-1"
								role="dialog" aria-labelledby="exampleModalCenterTitle"
								aria-hidden="true">
								<div class="modal-dialog modal-dialog-centered" role="document">
									<div class="modal-content">
										<div class="modal-header">
											<h5 class="modal-title" id="exampleModalCenterTitle">change
												image name</h5>
											<button type="button" class="close" data-dismiss="modal"
												aria-label="Close">
												<span aria-hidden="true">&times;</span>
											</button>
										</div>
										<div class="modal-body">
											<form action="/changeName" method="post">
												<div class="form-group">
													<label>product id</label> <input type="hidden"
														th:value="*{im.id}" class="form-control" name="id">
													<label>new Image name</label> <input type="text"
														name="newPname" class="form-control"> <br>
													<button type="submit" class="btn btn-primary">submit</button>
												</div>
											</form>

										</div>
										<div class="modal-footer">
											<button type="button" class="btn btn-secondary"
												data-dismiss="modal">Close</button>

										</div>
									</div>
								</div>
							</div>

						</td>
						<td>[[*{im.descript}]] <!-- Button trigger modal -->
							<br>
							<button type="button" class="btn btn-success btn-sm mt-2"
								data-toggle="modal"
								th:attr="data-target='#exampleModalCenterDesc'+${im.id}">change
								description</button> <!-- Modal -->
							<div class="modal fade"
								th:id="*{'exampleModalCenterDesc'+{im.id}}" tabindex="-1"
								role="dialog" aria-labelledby="exampleModalCenterTitle"
								aria-hidden="true">
								<div class="modal-dialog modal-dialog-centered" role="document">
									<div class="modal-content">
										<div class="modal-header">
											<h5 class="modal-title" id="exampleModalCenterTitle">change
												 Image description</h5>
											<button type="button" class="close" data-dismiss="modal"
												aria-label="Close">
												<span aria-hidden="true">&times;</span>
											</button>
										</div>
										<div class="modal-body">

											<form action="/changeDescription" method="post">
												<div class="form-group">
													<label>image id</label> <input type="text"
														th:value="*{im.id}" class="form-control" name="id">
													<label>new Image description</label> <input type="text"
														name="newDescript" class="form-control"> <br>
													<button type="submit" class="btn btn-primary">submit</button>
												</div>
											</form>
										</div>
										<div class="modal-footer">
											<button type="button" class="btn btn-secondary"
												data-dismiss="modal">Close</button>

										</div>
									</div>
								</div>
							</div>
						</td>
				
						<td><a th:href="@{/deleteImage/{id}(id=${im.id})}"
							class="btn btn-danger mt-4">delete</a></td>
					</tr>
				</tbody>
			</table>
			<hr>
		</div>
	</div>
	<script src="js/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
</body>
</html>