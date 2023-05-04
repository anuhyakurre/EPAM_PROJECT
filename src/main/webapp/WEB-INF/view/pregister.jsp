<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>HEAVENS GATE</title>

    <!-- Font Icon -->
    <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">

    <!-- Main css -->
    <link rel="stylesheet" href="css/stylepregister.css">
</head>
<body>
   <c:choose>
   <c:when test="${mode=='MODE_REGISTER' }">
    <div class="main">

        <div class="container">
            <div class="booking-content">
                <div class="booking-image">
                    <img class="booking-img" src="images/bgregister.jpg" alt="Booking Image">
                </div>
                <div class="booking-form">
                    <form id="booking-form" method="POST" action="save-provider">
                        <h2>NEW PROVIDER...???</h2>
                        <div class="form-group form-input" >
                        <input type="number" name="id" id="id" value="${provider.id}"/>
                        <label for="id" class="form-label">Enter Id</label>
                         </div>
                        <div class="form-group form-input" >
                            <input type="text" id="username"  name="username"
								value="${provider.username}" required/>
                            <label for="username" class="form-label">Enter Username</label>
                        </div>
                        <div class="form-group form-input">
                            <input type="text" name="name" id="name" value="${provider.name}" required />
                            <label for="name" class="form-label">Your Full Name</label>
                        </div>
                        <div class="form-group form-input">
                            <input type="text"  id="mobile" name="mobile"
								value="${provider.mobile}" required />
                            <label for="mobile" class="form-label">Mobile no</label>
                        </div>
                        <div class="form-group form-input">
                            <input type="password" name="password" id="password" value="${provider.password }" required />
                            <label for="password" class="form-label">Your Password</label>
                        </div>
                        <div class="form-group form-input">
                            <input type="number" name="age" id="age" value="${provider.age }" required />
                            <label for="age" class="form-label">Your age</label>
                        </div>
                        <div class="form-group form-input">
                            <input type="text" name="location" id="location" value="${provider.location }" required />
                            <label for="location" class="form-label">Your location</label>
                        </div>
                        <center>
                        <div class="form-submit">
                            <input type="submit" value="Register" class="submit" id="submit" name="submit" />
                        </div>
                        <div class="provider">User?
                    <a href="/register">Signup Now</a>
                </div>
                    </center>
                    </form>
                </div>
            </div>
        </div>

    </div>
    </c:when>
    </c:choose>
    <!-- JS -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="js/mainregister.js"></script>
</body>
</html>