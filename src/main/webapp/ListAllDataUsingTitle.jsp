<%@page import="com.bean.GetAllDataUsingTitle"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="icon" type="image/x-icon" href="IMAGES/stackoverflow_icon.png">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
    integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous" />
  
  <link rel="stylesheet" href="CSS/style.css" />
</head>
<body>
	<%ArrayList<GetAllDataUsingTitle> arr=(ArrayList<GetAllDataUsingTitle>)request.getAttribute("GetAllDataTitle");
	Integer userid=(Integer)session.getAttribute("userid");
	%>
	
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
                
              <a class="nav-link hover-button-nav" href="#" att >For team</a>
            </li>
          </ul>
          <form class="form-inline my-2 my-lg-0 w-75">
            <input class="form-control mr-sm-2 w-75" type="search" placeholder="Search" aria-label="Search" />
            <!-- <button class="btn my-2 my-sm-0" style="background-color: #b3d3ea; color: rgb(70, 119, 165);" type="submit">Login</button> -->
            <button class="btn btn-primary my-2 my-sm-0 ml-1" type="submit">
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
                  <a class="nav-link text-truncate" href="StackoverflowHome.jsp"><i class="fa fa-home"></i>
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

            <div class="card mb-3 w-75" >
                <div class="row  text-center ">
                  <div class="col-md-2 d-flex  align-items-center justify-content-center">
                    <a href=""><img src="IMAGES/arrowup.png" alt="" ></a>
                    <a href=""><img src="IMAGES/arrowdown.png" alt="" width="28px"></a>
                    0 views
                </div>
                
                                    
                  
                    <div class="card-body text-left">
                    <%for(GetAllDataUsingTitle bean:arr){ %>
                      <h5 class="card-title"><a href="">Title : <%=bean.getTitle() %> </a></h5>
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
                      
                      <%} %>
                    </div>
                  </div><!-- div col -->
                <!-- row center -->
                <!-- total answer -->
                <!-- another person answer -->

                <div class="card">
                    <h2 class="ml-5">your answer</h2>
                    <form action="AnswerSendAnother">
                    <textarea name="textareaAnswer" id="" cols="30" rows="10" class="m-5"></textarea>
                    <button type="submit" ></button>
                    </form>
                </div>
              </div><!-- div card -->

              
		</div>
  
      </div>
</body>
</html>