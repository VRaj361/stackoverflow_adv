<%@page import="com.bean.SetAnswerUser"%>
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
	ArrayList<SetAnswerUser> arr1=(ArrayList<SetAnswerUser>)request.getAttribute("printAnswerParticularQuestion");
	Integer userid=(Integer)session.getAttribute("userid");
	int userid_check=-1;
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
               <a href="LogoutMainJSP.jsp" style="text-decoration: none; color:white">logout</a>
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
                    
                      
                       <form action="ListParticularQuestion">
                
                  <!--  <input type="hidden" id="" value=" " name="linkQuestionTitle">-->
                  <h5 class="card-title" >Title: <input type="submit" value="<%=bean.getTitle() %>" style="background: none; color: inherit; border: none;
					padding: 0;font: inherit;cursor: pointer;outline: inherit;"  name="linkQuestionTitle"></h5>
                  
                  </form>
                      
                      <%=bean.getUserid() %>
                      <%userid_check=bean.getUserid(); %>
                      
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
                  <hr>
                <!-- row center -->
                <!-- total answer -->
                <!-- another person answer -->
                <%if(arr1!=null){ %>
                <h3 class="ml-5">Answers :<%=arr1.size() %></h3>
				<hr>
				<%for(SetAnswerUser bean1:arr1){ %>
				
				<div class="row  text-center ">
				
                  <div class="col-md-2 d-flex  align-items-center justify-content-center">
                    <a href=""><img src="IMAGES/arrowup.png" alt="" ></a>
                    <a href=""><img src="IMAGES/arrowdown.png" alt="" width="28px"></a>
                    0 views
                	</div>
                
                                    
                  
                    <div class="card-body text-left">
                    
                      <h5 class="card-title"><a href="">Title : <%=bean1.getAnswer() %> </a></h5>
                      <h6 class="card-title">firstname: <%=bean1.getFirstname() %></h6>
                      <h6 class="card-title">url <%=bean1.getUrl() %></h6>
                      <!-- <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>-->
                      
                      
                       
                      <%=bean1.getisIsaccepted() %>
 					<%if(userid_check==userid&&bean1.getisIsaccepted()!=true){ %>
 					<form action="IsSolvedCallDB">
                    	<button class="btn btn-success" type="submit">Tick As Answer</button>
                    	<input type="hidden" name="questionid_set_db" value="<%=bean1.getQuestionid()%>">
                    	<input type="hidden" name="answerid_set_db" value="<%=bean1.getAnswersid()%>">
                    	</form>
                    <%}else if(userid_check==userid&&bean1.getisIsaccepted()==true){ %>
                    
                    	<img alt="this is image" src="CSS/green_tick_true.png">
                    
                    
                    <%} %>
                    </div>
                    
                  </div><!-- div col -->
				
				<hr>
				
				<%}} %>
                <div class="card">
                    <h2 class="ml-5">your answer</h2>
                    
                    <form action="AnswerSendAnother">
                    <%for(GetAllDataUsingTitle bean:arr){ %>
                    <input type="hidden" name="getTitleCheck" value="<%=bean.getTitle()%>">
                    <%} %>
                    <textarea name="textareaAnswer" id="" cols="100" rows="12" class="m-5"></textarea>
                    <label class="ml-5 h4">Url</label><br>
                    <input type="text" name="getURLAnswer" class="ml-5 mb-4 w-75"><br>
                    <button type="submit " class="btn btn-primary mb-5 float-right mr-5" >Post Your Answer</button>
                    </form>
                </div>
              </div><!-- div card -->

              
		</div>
  
      </div>
</body>
</html>