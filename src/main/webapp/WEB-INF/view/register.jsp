<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>HEAVENS GATE</title>
      <script>
            function validation() {
                var username =
                    document.forms.reg.username.value;
                var firstname =
                    document.forms.reg.firstname.value;
                var lastname =
                    document.forms.reg.lastname.value;
                var password =
                    document.forms.reg.password.value;
                
                age = parseInt(age, 10);
                var regEmail=/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/g;  //Javascript reGex for Email Validation.
                //var regPhone=/^\d{10}$/;                                        // Javascript reGex for Phone Number validation.
                var regName = /\d+$/g;                                    // Javascript reGex for Name validation
                var status=true;
                
                if (firstname == "" || regName.test(firstname)) {
                	document.getElementById("fnameloc").innerHTML=  
                		"Please enter your first name";
                   status=false;
                }
                if (lastname == "" || regName.test(lastname)) {
                	document.getElementById("lnameloc").innerHTML=  
                		"Please enter your last name";
                    status=false;
                }
             
                 
                if (username == "" || !regEmail.test(username)) {
                	document.getElementById("usnameloc").innerHTML=  
                		"Please enter valid email";
                	status=false;
                }
                  
                if (password == "") {
                	document.getElementById("passloc").innerHTML=  
                		"Please enter your password";
                	status=false;
                }
 
                if(password.length <6){
                	document.getElementById("passloc").innerHTML=  
                		"Password length must be >6";
                	status=false;
 
                }
//                 if(age<18)
//          	   {
//                 	document.getElementById("ageloc").innerHTML=  
//                 		"Age is insufficent";
//          	   status=false
//          	   }
              return status
            }
        </script>
    <!-- Font Icon -->
    <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">

    <!-- Main css -->
    <link rel="stylesheet" href="css/styleregister.css">
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
                    <form name="reg" id="booking-form" method="POST" action="save-user" onsubmit="return validation()">
                        <h2>NEW USER...???</h2>
                        <div class="form-group form-input" >
                        <input type="hidden" name="id" value="${user.id}" />
                         </div>
                        <div class="form-group form-input" >
                            <input type="text" id="name"  name="username"
								value="${user.username }" required/>
                            <label for="name" class="form-label">Enter Username</label>
                            <span id="usnameloc"></span>
                        </div>
                        <div class="form-group form-input">
                            <input type="text" name="firstname" id="firstname" value="${user.firstname }" />
                            <label for="firstname" class="form-label">Your FirstName</label>
                            <span id="fnameloc"></span>
                        </div>
                        <div class="form-group form-input">
                            <input type="text"  id="lastname" name="lastname"
								value="${user.lastname }" required />
                            <label for="lastname" class="form-label">Your LastName</label>
                            <span id="lnameloc"></span>
                        </div>
                        <div class="form-group form-input">
                            <input type="password" name="password" id="password" value="${user.password }"  />
                            <label for="password" class="form-label">Your Password</label>
                            <span id="passloc"></span>
                        </div>
                        <div class="form-group form-input">
                            <input type="number" name="age" id="age" value="${user.age }" required />
                            <label for="age" class="form-label">Your age</label>
                            <span id="ageloc"></span>
                        </div>
                        <center>
                        <div class="form-submit">
                            <input type="submit" value="Register" class="submit" id="submit" name="submit" />
                        </div>
                        <div class="provider">Provider?
                    <a href="/pregister">Signup Now</a>
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