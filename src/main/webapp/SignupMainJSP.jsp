<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SignUp Stackoverflow</title>
<link rel="icon" type="image/x-icon" href="IMAGES/stackoverflow_icon.png">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" href="CSS/style.css">
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light" style="border-top: 2px solid orange;">
                <a class="navbar-brand" href="#">
                <img src="IMAGES/stackoverflow_icon.png" width="30" height="30" alt="">
                </a>
                <a class="navbar-brand hover-button-nav" href="StackoverflowHome.jsp">stack<strong>overflow</strong></a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                  <span class="navbar-toggler-icon"></span>
                </button>
              
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                  <ul class="navbar-nav mr-auto">
                    
                    <li class="nav-item">
                      <a class="nav-link hover-button-nav" href="#">About</a>
                    </li>
                    
                    <li class="nav-item">
                      <a class="nav-link hover-button-nav" href="#">Products</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link hover-button-nav" href="#">For team</a>
                    </li>
                  </ul>
                  <form class="form-inline my-2 my-lg-0 w-75">
                    <input class="form-control mr-sm-2 w-75" type="search" placeholder="Search" aria-label="Search">
                    <button class="btn my-2 my-sm-0" style="background-color: #b3d3ea; color: rgb(70, 119, 165);" type="submit"> <a href="LoginMainJSP.jsp" style="text-decoration: none; ">Login</a> </button>
                    <button class="btn btn-primary my-2 my-sm-0 ml-1" type="submit"><a href="SignupMainJSP.jsp" style="text-decoration: none; color:white">Signup</a></button>
                  </form>
                </div>
              </nav>
              <!-- end of navbar -->
    
            
            <div class="row container-fluid  d-flex  flex-column align-content-center mb-5" >
                <!-- <form class=" p-3 w-25"> -->
                <a class="navbar-brand text-center mb-2 mt-5" href="#"><img src="IMAGES/stackoverflow_icon.png" width="30" height="30" alt=""></a>
                <button class=" btn  mb-2  w-25  " style="background-color: #f8f9f9; " type="submit" onclick="location.href = 'https://accounts.google.com/signup/v2/webcreateaccount?hl=en&flowName=GlifWebSignIn&flowEntry=SignUp';"> <img alt="" src="IMAGES/google.png" width="25px"> Sign up with Google </button>
                <button class="  btn btn-dark mb-2  w-25" type="submit" onclick="location.href='https://github.com/signup?ref_cta=Sign+up&ref_loc=header+logged+out&ref_page=%2F&source=header-home'"> <img alt="" src="IMAGES/github (1).png" width="25px" > Sign up with Github </button>
                <button class="btn mb-2  w-25 "  style="background-color: #314a86; color:white" type="submit" onclick="location.href='https://www.facebook.com/'"> <img alt="" src="IMAGES/facebook.png" width="25px" > Sign up with Facebook</button>
    
                <!-- </form> -->
                <form class=" p-3 bg-white rounded w-25 mt-3" action="SignupMainServlet" method="post">
                <div class="mb-3">
                        <label for="exampleInputEmail1" class="form-label">First Name</label>
                        <input type="text" class="form-control" id="exampleInputEmail1" name="firstname_s" aria-describedby="emailHelp">
                        <p class="text-danger"> ${firstnameES }</p>
   
                </div>
                <div class="mb-3">
                        <label for="exampleInputEmail1" class="form-label">Last Name</label>
                        <input type="text" class="form-control" id="exampleInputEmail1" name="lastname_s" aria-describedby="emailHelp">
                        <p class="text-danger"> ${lastnameES }</p>
   
                </div>
                <div class="mb-3">
                <label for="exampleInputEmail1" class="form-label">Email address</label>
                <input type="email" class="form-control" i="exampleInputEmail1" name="email_s" aria-describedby="emailHelp">
                <p class="text-danger"> ${emailES }</p>
                
                </div>
                <div class="mb-3">
                <label for="exampleInputPassword1" class="form-label">Password</label>
                <input type="password" class="form-control" id="exampleInputPassword1" name="password_s">
                <p class="small">Passwords must contain at least eight characters, including at least 1 letter and 1 number</p>
                <p class="text-danger"> ${passwordES }</p>
                </div>
				<div>
                	<label for="exampleInputRadio1" class="form-label">Gender</label>
                </div>
                <div class="form-check form-check-inline mb-3">
				  <input class="form-check-input" type="radio" id="inlineRadio1" value="male" name="gender_s" required checked>
				  <label class="form-check-label" for="inlineCheckbox1" >Male</label>
				</div>
				<div class="form-check form-check-inline">
				  <input class="form-check-input" type="radio" id="inlineRadio2" value="female" name="gender_s">
				  <label class="form-check-label" for="inlineCheckbox2">Female</label>
				</div>
				
                    
                    <button type="submit" class="btn btn-primary w-100">Sign Up</button>
                    <p class="small mt-2">By clicking <a>Sign Up</a> you agree to our terms of service, privacy policy and cookie policy</p>
                  </form>
    
                  <span class="text-center mt-3"> Already have an account?<a href="LoginMainJSP.jsp" style="text-decoration: none; ">login</a> </span>
                  <span class="text-center mt-2">Are you an employee?<a href="">Sign up on talent</a></span>
            </div>
    
</body>
</html>