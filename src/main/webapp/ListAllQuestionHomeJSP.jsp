<%@page import="com.bean.AskAQuestionbean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ListAllQuestionHome</title>
<link rel="icon" type="image/x-icon" href="IMAGES/stackoverflow_icon.png">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
    integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous" />
  <link rel="stylesheet" href="CSS/style.css" />
</head>
<body>

<% ArrayList<AskAQuestionbean> arr=(ArrayList<AskAQuestionbean>) request.getAttribute("AllDataQuestions"); %>

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
            <button class="btn btn-primary my-2 my-sm-0 ml-1" type="submit">
              logout
            </button>
          </form>
        </div>
      </nav>
      <!-- end of navbar -->
      
      	<div class=" container">
      	
		<%if(arr.size()==0){ %>
	
      		<h3 class="text-center" style="letter-spacing: 1px; font-size: 2rem;">No Record Found</h1>
		
		<%}else{ %>
		<h2 class="text-center" style="letter-spacing:1px; font-size:4rem;">Your Questions</h2>	
		<%for(AskAQuestionbean bean:arr){ %>
		
	
	       <div class="card mt-5 w-75 mb-5" style="background-color: #fdf7e2;">
	         
	         <div class="card-body">
	
	           <blockquote class="blockquote mb-0">
	             <p class="text-primary " style="letter-spacing:1px; font-size:2rem">Title : <%=bean.getTitle() %></p>
	             <!--  <span class="bg-primary p-2 text-light h6">Java</span>
	             <span class="bg-primary p-2 text-light h6">Servlet</span>
	             <span class="bg-primary p-2 text-light h6">JSP</span>-->
	             <p class="text-primary ">Body : <%=bean.getBody() %></p>
	             <p class="text-danger">Solved : <%=bean.isIssolved().equals("f")?"false":"true" %></p>
	           </blockquote>
	         </div>
	       </div>
		
		<%}} %>
      
      </div>
      
</body>
</html>