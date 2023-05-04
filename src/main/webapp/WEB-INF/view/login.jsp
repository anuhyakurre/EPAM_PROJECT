<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>HEAVENSGATE</title>
    <link rel="stylesheet" href="css/styleplogin.css">
    <link href="css/bootstrap1.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
<c:choose>
<c:when test="${mode=='MODE_LOGIN' }">
    <div class="bg-img">
        <div class="content">
            <header>Login</header>
            <form  method="POST" action="/login-user">
                    <c:if test="${not empty error }">
						<div class= "alert alert-danger">
							<c:out value="${error }"></c:out>
							</div>
					</c:if>
                <div class="field">
                    <span class="fa fa-user"></span>
                    <input type="text" required placeholder="Email" class="form-control" name="username"
								value="${user.username }" >
                </div>
                <div class="field space">
                    <span class="fa fa-lock"></span>
                    <input type="password" class="password" required placeholder="Password"
                    name="password" value="${user.password }">
    
                </div>
                <div class="pass">
                    <a href="#">Forgot Password?</a>
                </div>
                <div class="field">
                    <input type="submit" value="Login">
                </div>
                <div class="login">Or login with</div>
                <div class="link">
                    <div class=" loginasprovider">
                       <a href="/providerlogin">
                        <i class="fa fa-loginasprovider"><span>login as provider</span></i>
                        </a>
                       
                    </div>
                    <div class=" loginasadmin">
                       <a href="/adminlogin">
                        <i class="fa fa-loginasprovider"><span>login as admin</span></i>
                        </a>
                    </div>
                </div>
                <div class="signup">Don't have account?
                    <a href="/register">SignUp Now</a>
                </div>
            </form>
        </div>
        </c:when>
        </c:choose>
    
</body>
</html>