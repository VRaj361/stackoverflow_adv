<%@page import="com.bean.AskAQuestionbean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Stackoverflow Home</title>
<link rel="icon" type="image/x-icon" href="IMAGES/stackoverflow_icon.png">
 <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
    integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous" />
  <link rel="stylesheet" href="CSS/style.css" />
</head>

<body>

	

  <nav class="navbar navbar-expand-lg navbar-light bg-light" style="border-top: 2px solid orange">
    <a class="navbar-brand" href="#">
      <img src="IMAGES/stackoverflow_icon.png" width="30" height="30" alt="" />
    </a>
    <a class="navbar-brand hover-button-nav" href="#">stack<strong>overflow</strong></a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
      aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
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
      <form class="form-inline my-2 my-lg-0 w-75" action="LogoutMainServlet">
        <input class="form-control mr-sm-2 w-75" type="search" placeholder="Search" aria-label="Search" />
        <!-- <button class="btn my-2 my-sm-0" style="background-color: #b3d3ea; color: rgb(70, 119, 165);" type="submit">Login</button> -->
        <button class="btn btn-primary my-2 my-sm-0 ml-1" type="submit" >
          logout
        </button>
      </form>
    </div>
  </nav>
  <!-- end of navbar -->

  <!-- side bar -->
 
  



  <div class="container">
    <div class="row ">
      <div class="col-2 collapse show d-md-flex bg-light pt-2 pl-0 min-vh-100" id="sidebar">
        <ul class="nav flex-column flex-nowrap overflow-hidden">
          <li class="nav-item">
            <a class="nav-link text-truncate" href="#"><i class="fa fa-home"></i>
              <span class="d-none d-sm-inline">Home</span></a>
          </li>
          <li class="nav-item">
            <a class="nav-link collapsed text-truncate" href="ListAnotherQuestionHome" data-toggle="collapse"
              data-target="#submenu1"><i class="fa fa-table"></i>
              <span class="d-none d-sm-inline">Questions</span></a>
          </li>
          <li class="nav-item">
            <a class="nav-link text-truncate" href="#"><i class="fa fa-bar-chart"></i>
              <span class="d-none d-sm-inline">Analytics</span></a>
            </li>
        </ul>
        
      </div>
      
      
      <div class="col pt-2  ">
        <h2 class="d-inline mr-5">Top Questions</h2>
        <button class="ml-5 btn btn-primary mb-5 mt-4"> <a href="AskAQuestionHomeJSP.jsp" style="color:white; text-decoration: none;">Ask Question</a> </button>
        <button class="ml-5 btn btn-primary mb-5 mt-4"> <a href="ListAllQuestionHome" style="color:white; text-decoration: none;">Show Questions</a> </button>

        <div class="card mt-5 w-75 mb-3" style="background-color: #fdf7e2;">
          
          <div class="card-body ">

            <blockquote class="blockquote ">
              <p class="text-primary">How to include jsp file</p>
              <span class="bg-primary p-2 text-light h6">Java</span>
              <span class="bg-primary p-2 text-light h6">Servlet</span>
              <span class="bg-primary p-2 text-light h6">JSP</span>
            </blockquote>
          </div>
          <hr>
          <div class="card-body">

            <blockquote class="blockquote mb-0">
              <p class="text-primary">How to include jsp file</p>
              <span class="bg-primary p-2 text-light h6">Java</span>
              <span class="bg-primary p-2 text-light h6">Servlet</span>
              <span class="bg-primary p-2 text-light h6">JSP</span>
            </blockquote>
          </div>
          <hr>
          <div class="card-body">

            <blockquote class="blockquote mb-0">
              <p class="text-primary">How to include jsp file</p>
              <span class="bg-primary p-2 text-light h6">Java</span>
              <span class="bg-primary p-2 text-light h6">Servlet</span>
              <span class="bg-primary p-2 text-light h6">JSP</span>
            </blockquote>
          </div>
          <hr>
          <div class="card-body">

            <blockquote class="blockquote mb-0">
              <p class="text-primary">How to include jsp file</p>
              <span class="bg-primary p-2 text-light h6">Java</span>
              <span class="bg-primary p-2 text-light h6">Servlet</span>
              <span class="bg-primary p-2 text-light h6">JSP</span>
            </blockquote>
          </div>
          <hr>
          <div class="card-body ">

            <blockquote class="blockquote mb-0">
              <p class="text-primary">How to include jsp file</p>
              <span class="bg-primary p-2 text-light h6">Java</span>
              <span class="bg-primary p-2 text-light h6">Servlet</span>
              <span class="bg-primary p-2 text-light h6">JSP</span>
            </blockquote>
          </div>
        </div>



      </div>
      <!-- middle portion -->
    </div>
  </div>
</body>

</html>