<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>AskAQuestion Stackoverflow</title>
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
            <!-- <button class="btn my-2 my-sm-0" style="background-color: #b3d3ea; color: rgb(70, 119, 165);" type="submit">Login</button> -->
            <button class="btn btn-primary my-2 my-sm-0 ml-1" type="submit">
              logout
            </button>
          </form>
        </div>
      </nav>
      <!-- end of navbar -->

      <div class="container">
        <img src="https://cdn.sstatic.net/Img/ask/background.svg?v=2e9a8205b368" alt="" class="w-50 h-25 ">

        <h1 class="mt-4 mb-4">Ask A Question</h1>

        <form class="w-75 bg-white p-4 mt-4 mb-4" id="askaquestionform" style="border-radius: 10px;" action="AskAQuestionHomeServletR">
            <div class="mb-3">
              <label for="exampleInputEmail1" class="form-label">Title</label>
              <div id="emailHelp" class="form-text">Be specific and imagine you are asking a question to another person</div>
              <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="title_askH">
              <p class="text-danger">${title_askHE }</p>
            </div>
            <div class="mb-3">
              <label for="exampleInputPassword1" class="form-label">Body</label>
              <div id="emailHelp" class="form-text">Include all the information someone would need to answer your question</div>
              <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" name="body_askH"></textarea>
              <p class="text-danger">${body_askHE }</p>
            </div>
            <div class="mb-3 ">
                <label for="exampleInputEmail1" class="form-label">Tags</label>
                <div id="emailHelp" class="form-text">Add up to 5 tags to describe what your question is about</div>
                <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="tags_askH">
              
            </div>
        </form>
        <button type="submit" form="askaquestionform" class="btn btn-primary mt-4 mb-4">Review your Question</button>

        
		

      </div>
</body>
</html>