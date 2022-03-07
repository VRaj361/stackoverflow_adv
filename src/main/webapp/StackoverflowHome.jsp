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

	<%Integer userid=(Integer) session.getAttribute("userid"); %>
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
        <%if(userid==null){ %>
		<button class="btn my-2 my-sm-0" style="background-color: #b3d3ea; color: rgb(70, 119, 165);" type="button"> <a href="LoginMainJSP.jsp" style="text-decoration: none; ">Login</a></button>
        <button class="btn btn-primary my-2 my-sm-0 ml-1" type="button"><a href="SignupMainJSP.jsp" style="text-decoration: none; color:white">Signup</a></button>
        <%}else{ %>
        <button class="btn btn-primary my-2 my-sm-0 ml-1" type="submit" >
          logout
        </button>
        <%} %>
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
        
        <%if(userid==null){}else{ %>
        
        
        <button class="ml-5 btn btn-primary mb-5 mt-4"> <a href="AskAQuestionHomeJSP.jsp" style="color:white; text-decoration: none;">Ask Question</a> </button>
        <button class="ml-5 btn btn-primary mb-5 mt-4"> <a href="ListAllQuestionHome" style="color:white; text-decoration: none;">Show Questions</a> </button>
        <%} %>

        <div class="card mt-5 w-100 mb-3" >
          
        <!--    <div class="card-body ">

            <blockquote class="blockquote ">
              <p class="text-primary">How to include jsp file</p>
              <span class="bg-primary p-2 text-light h6">Java</span>
              <span class="bg-primary p-2 text-light h6">Servlet</span>
              <span class="bg-primary p-2 text-light h6">JSP</span>
            </blockquote>
          </div>-->
           <div class="card mb-3" style="background-color: #fdf7e2;">
            <div class="row g-0 text-center ">
              <div class="col-md-2 d-flex align-items-center justify-content-center">
                0 vote <br>
                0 answers <br>
                2 views
              </div>
              <div class="col-md-5">
                <div class="card-body text-left">
                  <h5 class="card-title"><a href=""> Does Android Contain Postgres sql support</a></h5>
                  <!-- <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>-->
                  <button class="btn text-primary " style="    background-color: #d0e3f1;">javscript</button>
                  <button class="btn text-primary" style="background-color: #d0e3f1;">javscript</button>
                  <button class="btn text-primary" style="background-color: #d0e3f1;">javscript</button>
                  <p class="card-text "><small class="text-muted ">Last updated 3 mins ago</small></p> 
                </div>
              </div>
            </div>
          </div>
          
          <div class="card mb-3" style="background-color: #fdf7e2;">
            <div class="row g-0 text-center ">
              <div class="col-md-2 d-flex align-items-center justify-content-center">
                0 vote <br>
                0 answers <br>
                2 views
              </div>
              <div class="col-md-5">
                <div class="card-body text-left">
                  <h5 class="card-title"><a href=""> Does Android Contain Postgres sql support</a></h5>
                  <!-- <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>-->
                  <button class="btn text-primary " style="    background-color: #d0e3f1;">javscript</button>
                  <button class="btn text-primary" style="background-color: #d0e3f1;">javscript</button>
                  <button class="btn text-primary" style="background-color: #d0e3f1;">javscript</button>
                  <p class="card-text "><small class="text-muted ">Last updated 3 mins ago</small></p> 
                </div>
              </div>
            </div>
          </div>
          
              

		

      </div>
      <!-- middle portion -->
    </div>
    </div>
    </div>
  
  <!--  <footer id="footer" class="site-footer js-footer" role="contentinfo">
        <div class="site-footer--container">
                <div class="site-footer--logo">
                    
                    <a href="https://stackoverflow.com"><svg aria-hidden="true" class="native svg-icon iconLogoGlyphMd" width="32" height="37" viewBox="0 0 32 37"><path d="M26 33v-9h4v13H0V24h4v9h22Z" fill="#BCBBBB"></path><path d="m21.5 0-2.7 2 9.9 13.3 2.7-2L21.5 0ZM26 18.4 13.3 7.8l2.1-2.5 12.7 10.6-2.1 2.5ZM9.1 15.2l15 7 1.4-3-15-7-1.4 3Zm14 10.79.68-2.95-16.1-3.35L7 23l16.1 2.99ZM23 30H7v-3h16v3Z" fill="#F48024"></path></svg></a>
                </div>
            <nav class="site-footer--nav">
                    <div class="site-footer--col">
                        <h5 class="-title"><a href="https://stackoverflow.com" class="js-gps-track" data-gps-track="footer.click({ location: 3, link: 15})">Stack Overflow</a></h5>
                        <ul class="-list js-primary-footer-links">
                            <li><a href="/questions" class="js-gps-track -link" data-gps-track="footer.click({ location: 3, link: 16})">Questions</a></li>
                                <li><a href="https://stackoverflow.com/jobs" class="js-gps-track -link" data-gps-track="footer.click({ location: 3, link: 17})">Jobs</a></li>
                                <li><a href="https://stackoverflow.com/jobs/directory/developer-jobs" class="js-gps-track -link" data-gps-track="footer.click({ location: 3, link: 11})">Developer Jobs Directory</a></li>
                                <li><a href="/help" class="js-gps-track -link" data-gps-track="footer.click({ location: 3, link: 3 })">Help</a></li>
                        </ul>
                    </div>
                    <div class="site-footer--col">
                        <h5 class="-title"><a href="https://stackoverflow.com/?products" class="js-gps-track" data-gps-track="footer.click({ location: 3, link: 19 })">Products</a></h5>
                        <ul class="-list">
                            <li><a href="https://stackoverflow.co/teams" class="js-gps-track -link" data-ga="[&quot;teams traffic&quot;,&quot;footer - site nav&quot;,&quot;stackoverflow.com/teams&quot;,null,{&quot;dimension4&quot;:&quot;teams&quot;}]" data-gps-track="footer.click({ location: 3, link: 29 })">Teams</a></li>
                            <li><a href="https://stackoverflow.co/talent" class="js-gps-track -link" data-gps-track="footer.click({ location: 3, link: 20 })">Talent</a></li>
                            <li><a href="https://stackoverflow.co/advertising" class="js-gps-track -link" data-gps-track="footer.click({ location: 3, link: 21 })">Advertising</a></li>
                            <li><a href="https://stackoverflow.co/explore-teams" class="js-gps-track -link" data-gps-track="footer.click({ location: 3, link: 22 })">Enterprise</a></li>
                        </ul>
                    </div>
                <div class="site-footer--col">
                    <h5 class="-title"><a class="js-gps-track" data-gps-track="footer.click({ location: 3, link: 1 })" href="https://stackoverflow.co/">Company</a></h5>
                    <ul class="-list">
                            <li><a class="js-gps-track -link" data-gps-track="footer.click({ location: 3, link: 1 })" href="https://stackoverflow.co/">About</a></li>
                        <li><a class="js-gps-track -link" data-gps-track="footer.click({ location: 3, link: 27 })" href="https://stackoverflow.co/company/press">Press</a></li>
                            <li><a class="js-gps-track -link" data-gps-track="footer.click({ location: 3, link: 9 })" href="https://stackoverflow.co/company/work-here">Work Here</a></li>
                        <li><a class="js-gps-track -link" data-gps-track="footer.click({ location: 3, link: 7 })" href="https://stackoverflow.com/legal">Legal</a></li>
                        <li><a class="js-gps-track -link" data-gps-track="footer.click({ location: 3, link: 8 })" href="https://stackoverflow.com/legal/privacy-policy">Privacy Policy</a></li>
                        <li><a class="js-gps-track -link" data-gps-track="footer.click({ location: 3, link: 37 })" href="https://stackoverflow.com/legal/terms-of-service">Terms of Service</a></li>
                            <li><a class="js-gps-track -link" data-gps-track="footer.click({ location: 3, link: 13 })" href="https://stackoverflow.co/company/contact">Contact Us</a></li>
                            <li class="" id="consent-footer-link"><a class="js-gps-track -link js-cookie-settings" data-gps-track="footer.click({ location: 3, link: 38 })" href="#" data-consent-popup-loader="footer">Cookie Settings</a></li>
                        <li><a class="js-gps-track -link" data-gps-track="footer.click({ location: 3, link: 39 })" href="https://stackoverflow.com/legal/cookie-policy">Cookie Policy</a></li>
                    </ul>
                </div>
                <div class="site-footer--col site-footer--categories-nav">
                    <div>
                        <h5 class="-title"><a href="https://stackexchange.com" data-gps-track="footer.click({ location: 3, link: 30 })">Stack Exchange Network</a></h5>
                        <ul class="-list">
                            <li>
                                <a href="https://stackexchange.com/sites#technology" class="-link js-gps-track" data-gps-track="footer.click({ location: 3, link: 24 })">
                                    Technology
                                </a>
                            </li>
                            <li>
                                <a href="https://stackexchange.com/sites#culturerecreation" class="-link js-gps-track" data-gps-track="footer.click({ location: 3, link: 24 })">
                                    Culture &amp; recreation
                                </a>
                            </li>
                            <li>
                                <a href="https://stackexchange.com/sites#lifearts" class="-link js-gps-track" data-gps-track="footer.click({ location: 3, link: 24 })">
                                    Life &amp; arts
                                </a>
                            </li>
                            <li>
                                <a href="https://stackexchange.com/sites#science" class="-link js-gps-track" data-gps-track="footer.click({ location: 3, link: 24 })">
                                    Science
                                </a>
                            </li>
                            <li>
                                <a href="https://stackexchange.com/sites#professional" class="-link js-gps-track" data-gps-track="footer.click({ location: 3, link: 24 })">
                                    Professional
                                </a>
                            </li>
                            <li>
                                <a href="https://stackexchange.com/sites#business" class="-link js-gps-track" data-gps-track="footer.click({ location: 3, link: 24 })">
                                    Business
                                </a>
                            </li>

                            <li class="mt16 md:mt0">
                                <a href="https://api.stackexchange.com/" class="-link js-gps-track" data-gps-track="footer.click({ location: 3, link: 24 })">
                                    API
                                </a>
                            </li>

                            <li>
                                <a href="https://data.stackexchange.com/" class="-link js-gps-track" data-gps-track="footer.click({ location: 3, link: 24 })">
                                    Data
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
            <div class="site-footer--copyright fs-fine md:mt24">
                <ul class="-list -social md:mb8">
                    <li><a class="js-gps-track -link" data-gps-track="footer.click({ location: 3, link:4 })" href="https://stackoverflow.blog?blb=1">Blog</a></li>
                    <li><a href="https://www.facebook.com/officialstackoverflow/" class="-link js-gps-track" data-gps-track="footer.click({ location: 3, link: 31 })">Facebook</a></li>
                    <li><a href="https://twitter.com/stackoverflow" class="-link js-gps-track" data-gps-track="footer.click({ location: 3, link: 32 })">Twitter</a></li>
                    <li><a href="https://linkedin.com/company/stack-overflow" class="-link js-gps-track" data-gps-track="footer.click({ location: 3, link: 33 })">LinkedIn</a></li>
                    <li><a href="https://www.instagram.com/thestackoverflow" class="-link js-gps-track" data-gps-track="footer.click({ location: 3, link: 36 })">Instagram</a></li>
                </ul>

                <p class="md:mb0">
site design / logo © 2022 Stack Exchange Inc; user contributions licensed under <a href="https://stackoverflow.com/help/licensing">cc by-sa</a>.                    <span id="svnrev">rev&nbsp;2022.3.4.41612</span>
                </p>
            </div>
        </div>

    </footer>-->
    <!-- Footer -->
      <footer class="page-footer font-small unique-color-dark bg-dark text-light">


  
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
  

</footer><!-- Footer -->
</body>

</html>