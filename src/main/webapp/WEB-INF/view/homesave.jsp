<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">
<head>
<title>HEAVENSGATE</title>
<meta charset="UTF-8" >

<meta name="viewport"
	content="width=device-width,
      initial-scale=1.0" >
          <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">
          <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,700" rel="stylesheet">
<link rel="stylesheet" href="css/savehome.css">
</head>
<body>
	<c:choose>
   <c:when test="${mode=='MODE_ADDHOME'}">
	<div class="container">
		<h1 class="form-title"></h1>
		<form action="save-home" method="POST">
			<div class="main-user-info">
				
				<div class="user-input-box">
					<label for="hometype">Hometype</label> 
					<input type="text" id="hometype" name="hometype" placeholder="Enter Home Type" value="${homes.hometype}"/>
				</div>
				<div class="user-input-box">
					<label for="rent">Rent</label> 
					<input type="number" id="rent" name="rent" placeholder="Enter Rent" value="${homes.rent}"/>
				</div>
				<div class="user-input-box">
					<label for="area">Area(sqft)</label> 
					<input type="text" id="area" name="area" placeholder="Enter size" value="${homes.size}"/>
				</div>
				<div class="user-input-box">
					<label for="Location">Location</label> 
					<input type="text" id="location" name="location" placeholder="Enter location" value="${homes.location}"/>
				</div>
				<div class="user-input-box">
					<label for="homename">Name</label> 
					<input type="text" id="homename" name="homename" placeholder="Address" value="${homes.name}"/>
				</div>
				<div class="user-input-box">
				<label for="facilities">Facilites</label> 
				<input type="textarea" id="facilities" name="facilities" placeholder="Facilities" value="${homes.facilities}"/>
				
			</div>
			   <div class="user-input-box">
					
					<input type="hidden" id="id" name="id" value="${homes.id}" />
				</div>
			</div>
			
			<div class="form-submit-btn">
				<input type="submit" value="submit">
			</div>
		</form>
	</div>
	 </c:when>
    </c:choose>
</body>
</html>