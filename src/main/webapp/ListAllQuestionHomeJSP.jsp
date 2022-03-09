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
<% Integer userid=(Integer) session.getAttribute("userid");%>
<% ArrayList<AskAQuestionbean> arr=(ArrayList<AskAQuestionbean>) request.getAttribute("AllDataQuestions"); 

	if(arr==null){%>
		
		
		<nav class="navbar navbar-expand-lg navbar-light bg-light" style="border-top: 2px solid orange">
    <a class="navbar-brand" href="#">
      <img src="IMAGES/stackoverflow_icon.png" width="30" height="30" alt="" />
    </a>
    <a class="navbar-brand hover-button-nav" href="StackoverflowHome.jsp">stack<strong>overflow</strong></a>
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
        
        
        	<button class="btn my-2 my-sm-0" style="background-color: #b3d3ea; color: rgb(70, 119, 165);" type="submit"> <a href="LoginMainJSP.jsp" style="text-decoration: none; ">Login</a></button>
                <button class="btn btn-primary my-2 my-sm-0 ml-1" type="submit"><a href="SignupMainJSP.jsp" style="text-decoration: none; color:white">Signup</a></button>
        
      </form>
    </div>
  </nav>
  <!-- end of navbar -->

  <!-- side bar -->

		<div class=" container mb-5">
               <p class="text-center " style="letter-spacing: 2px; font-size: 5rem;">Please Login or Signup</p>
           
           </div>
		

	<% }else {

%>
<nav class="navbar navbar-expand-lg navbar-light bg-light" style="border-top: 2px solid orange">
        <a class="navbar-brand" href="#">
          <img src="IMAGES/stackoverflow_icon.png" width="30" height="30" alt="" />
        </a>
        <a class="navbar-brand hover-button-nav" href="StackoverflowHome.jsp">stack<strong>overflow</strong></a>
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
            
       		<% 
       		
			       		
       		if(userid!=null){
       			
       			AskAQuestionbean bean=arr.get(0);
       		
       		%>     
            	
             	<button class="btn btn-success "><%= bean.getFirstname().charAt(0)  %></button>
             	
            <%}else{} %>
            
            
            
            
            
            <!-- <button class="btn my-2 my-sm-0" style="background-color: #b3d3ea; color: rgb(70, 119, 165);" type="submit">Login</button> -->
            <button class="btn btn-primary my-2 my-sm-0 ml-1" type="submit">
              logout
            </button>
          </form>
        </div>
      </nav>
      <!-- end of navbar -->
      <%if(userid==null){ %>
      	<div class=" container mb-5 h-100">
               <p class="text-center " style="letter-spacing: 2px; font-size: 5rem;">Please Login or Signup</p>
               
           </div>
      <%}else{ %>
      
      
      	<div class=" container">
      	
		<%if(arr.size()==0){ %>
	
      		<h3 class="text-center" style="letter-spacing: 1px; font-size: 2rem;">No Record Found</h1>
		
		<%}else{ %>
		<h2 class="text-center" style="letter-spacing:1px; font-size:4rem;">Your Questions</h2>	
		<%for(AskAQuestionbean bean:arr){ %>
		
	

	       
	       
	        <div class="card mb-3" style="background-color: #fdf7e2;">
            <div class="row g-0 text-center ">
              <div class="col-md-2 d-flex align-items-center justify-content-center">
                0 vote <br>
                0 answers <br>
                2 views
              </div>
              <div class="col-md-5">
                <div class="card-body text-left">
                  <h5 class="card-title" ><a href="">Title : <%=bean.getTitle() %> </a></h5>
                  <h5 class="card-title">Body : <%=bean.getBody() %></h5>
                  <!-- <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>-->
                  <%String str=bean.getTags();
    				String arrstr[]=str.split(" ");
    				for(String str1:arrstr){
	                  %>
                  <button class="btn text-primary " style="    background-color: #d0e3f1;"><%=str1%></button>
                  <%} %>
                  <!-- <button class="btn text-primary" style="background-color: #d0e3f1;">javscript</button>
                  <button class="btn text-primary" style="background-color: #d0e3f1;">javscript</button>-->
                  <p class="card-text "><small class="text-muted ">Last updated 3 mins ago</small></p> 
                  <p class="text-danger">Solved : <%=bean.isIssolved().equals("f")?"false":"true" %></p>
                </div>
              </div>
            </div>
          </div>
	       
	       
	       
	       
	       
		
		<%}} %>
      
      </div>
      
      
      <%} %>
      
      <footer class="page-footer font-small unique-color-dark bg-dark text-light ">


  
  <!-- Footer Links -->
  <hr>
  <div class="container text-center  text-md-left mt-5">
		<a class="navbar-brand ml-5 " href="#">
      <img src="IMAGES/stackoverflow_icon.png" width="30" height="30" alt="" />
    </a>
    <!-- Grid row -->
    <div class="row mt-3">

      <!-- Grid column -->
      <div class="col-md-3 col-lg-4 col-xl-3 mx-auto mb-4">

        <!-- Content -->
        <h6 class="text-uppercase font-weight-bold">Stack Overflow</h6>
        <hr class="deep-purple accent-2 mb-4 mt-0 d-inline-block mx-auto" style="width: 60px;">
        <p>
          <a href="#!" style="text-decoration: none; color:grey; ">Question</a>
        </p>
        <p>
          <a href="#!" style="text-decoration: none; color:grey; ">Jobs</a>
        </p>
        <p>
          <a href="#!" style="text-decoration: none; color:grey; ">Developer Jobs Directly</a>
        </p>
        <p>
          <a href="#!" style="text-decoration: none; color:grey; ">Help</a>
        </p>
        

      </div>
      <!-- Grid column -->

      <!-- Grid column -->
      <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mb-4">

        <!-- Links -->
        <h6 class="text-uppercase font-weight-bold">Products</h6>
        <hr class="deep-purple accent-2 mb-4 mt-0 d-inline-block mx-auto" style="width: 60px;">
        <p>
          <a href="#!" style="text-decoration: none; color:grey; ">Teams</a>
        </p>
        <p>
          <a href="#!" style="text-decoration: none; color:grey; ">Talent</a>
        </p>
        <p>
          <a href="#!" style="text-decoration: none; color:grey; ">Advertising</a>
        </p>
        <p>
          <a href="#!" style="text-decoration: none; color:grey; ">Enterprise</a>
        </p>

      </div>
      <!-- Grid column -->

      <!-- Grid column -->
      <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mb-4">

        <!-- Links -->
        <h6 class="text-uppercase font-weight-bold">Company</h6>
        <hr class="deep-purple accent-2 mb-4 mt-0 d-inline-block mx-auto" style="width: 60px;">
        <p>
          <a href="#!" style="text-decoration: none; color:grey; ">About</a>
        </p>
        <p>
          <a href="#!" style="text-decoration: none; color:grey; ">Press</a>
        </p>
        <p>
          <a href="#!" style="text-decoration: none; color:grey; ">Work here</a>
        </p>
        <p>
          <a href="#!" style="text-decoration: none; color:grey; ">Legal</a>
        </p>
		
      </div>	
      <!-- Grid column -->

      <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mb-md-0 mb-4">

        <!-- Links -->
        <h6 class="text-uppercase font-weight-bold">Stack Exchange Network</h6>
        <hr class="deep-purple accent-2 mb-4 mt-0 d-inline-block mx-auto" style="width: 60px;">
        <p>
          <a href="#!" style="text-decoration: none; color:grey; ">Technology</a>
        </p>
        <p>
          <a href="#!" style="text-decoration: none; color:grey; ">Life and Arts</a>
        </p>
        <p>
          <a href="#!" style="text-decoration: none; color:grey; ">Science</a>
        </p>
        <p>
          <a href="#!" style="text-decoration: none; color:grey; ">Professional</a>
        </p>
      </div>

    </div>
  

  </div>
  

  
  <div class="footer-copyright text-center py-3">© 2022 Copyright:
    <a href="https://stackoverflow.com/" style="text-decoration: none; white; "> stackoverflow.com</a>
  </div>
  

</footer>
     <%} %> 
      
</body>
</html>