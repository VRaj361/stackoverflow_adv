<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Stackoverflow</title>
<link rel="icon" type="image/x-icon" href="IMAGES/stackoverflow_icon.png">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" href="CSS/style.css">
</head>
<body>
	<!--navbar  -->

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
                <button class="btn my-2 my-sm-0" style="background-color: #b3d3ea; color: rgb(70, 119, 165);" type="submit"> <a href="LoginMainJSP.jsp" style="text-decoration: none; ">Login</a></button>
                <button class="btn btn-primary my-2 my-sm-0 ml-1" type="submit"><a href="SignupMainJSP.jsp" style="text-decoration: none; color:white">Signup</a></button>
              </form>
            </div>
          </nav>
          <!-- end of navbar -->

        <div class="row container-fluid  d-flex  flex-column align-content-center " >
            <!-- <form class=" p-3 w-25"> -->
            <a class="navbar-brand text-center mb-2 mt-5" href="#"><img src="IMAGES/stackoverflow_icon.png" width="30" height="30" alt=""></a>
            <button class=" btn  mb-2  w-25  " style="background-color: #f8f9f9; " type="submit" onclick="location.href='https://accounts.google.com/signin/v2/identifier?flowEntry=AddSession&hl=en&flowName=GlifWebSignIn'"> <img alt="" src="IMAGES/google.png" width="25px">Log in with Google</button>
            <button class="  btn btn-dark mb-2  w-25" type="submit" onclick="location.href='https://github.com/signup?ref_cta=Sign+up&ref_loc=header+logged+out&ref_page=%2F&source=header-home'"><img alt="" src="IMAGES/github (1).png" width="25px"> Log in with Github </button>
            <button class="btn mb-2  w-25 "  style="background-color: #314a86; color:white" type="submit" onclick="location.href='https://www.facebook.com/'"><img alt="" src="IMAGES/facebook.png" width="25px">Log in with Facebook</button>

            <!-- </form> -->
            <form class=" p-3 bg-white rounded w-25 mt-3" action="LoginMainServlet" method="post">
                <div class="mb-3">
                  <label for="exampleInputEmail1" class="form-label">Email address</label>
                  <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="email_l">
                  <p class="text-danger">${emailEL}</p>
                </div>
                <div class="mb-3">
                  <label for="exampleInputPassword1" class="form-label">Password</label>
                  <input type="password" class="form-control" id="exampleInputPassword1" name="password_l">
                  <p class="text-danger">${passwordEL}</p>
                </div>
                <!-- <div class="mb-3 form-check">
                  <input type="checkbox" class="form-check-input" id="exampleCheck1">
                  <label class="form-check-label" for="exampleCheck1">Check me out</label>
                </div> -->
                <p class="text-danger">${direct_EL }</p>
                <button type="submit" class="btn btn-primary">Submit</button>
              </form>

              <span class="text-center mt-3">don't have accound? <a href="SignupMainJSP.jsp" style="text-decoration: none;">Signup</a> </span>
              <span class="text-center mt-2">are you an employee? <a href="">Sign up on talent</a></span>
        </div>
</body>
</html>