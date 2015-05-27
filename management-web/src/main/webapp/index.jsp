
<!doctype html>
<html class="no-js" lang="en" ng-app="biApp">
<head>
	<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <title>Management System</title>
    <link rel="stylesheet" href="client/css/foundation.css" />
    <link rel="stylesheet" href="client/font-awesome-4.0.3/css/font-awesome.min.css">
    <link rel="stylesheet" href="client/css/app.css" />
    <link rel="stylesheet" href="client/css/custom.css" />
</head>
<body>

<!-- App Main -->
<nav class="top-bar" data-topbar>
  <ul class="title-area">
    <li class="name">
      <h1><a href="#">Home</a></h1>
    </li>
     <!-- Remove the class "menu-icon" to get rid of menu icon. Take out "Menu" to just have icon alone -->
    <li class="toggle-topbar menu-icon"><a href="#"><span>Menu</span></a></li>
  </ul>

  <section class="top-bar-section">
    <!-- Right Nav Section -->
    <ul class="right">
      <li class="has-form">
  <div class="row collapse">
    <div class="large-8 small-9 columns">
      <input type="text" placeholder="Find Stuff">
    </div>
    <div class="large-4 small-3 columns">
      <a href="#" class="alert button expand">Search</a>
    </div>
  </div>
</li>
 <li class="has-dropdown">
        <a href="#">  <security:authorize access="isAuthenticated()">
	    <a href="" data-dropdown="user-option"><security:authentication property="principal.username" /></a> 
		</security:authorize></a>
		
        <ul class="dropdown">
          <li><a href="#/my profile"><i class="fa fa-user"></i>My Profile</a></li>
           <li><a href=""><i class="fa fa-cog"></i>Settings</a></li>
           <li><a href=""><i class="fa fa-question"></i>Help</a></li>
          <li><a href="j_spring_security_logout"><i class="fa fa-power-off"></i>Logout</a></li>
        </ul>
      </li>
    </ul>

    <!-- Left Nav Section -->
    
     <ul class="left">
      
       
      <li class="has-dropdown">
      
	    <a href="#">My Expenses</a>
		
        <ul class="dropdown">
          <li><a href="#/my profile"></i>Private</a></li>
           <li><a href="">Individual</a></li>
           <li><a href="">All Individuals</a></li>
        </ul>
      </li>
       <li class="active"><a href="#">My Information</a></li>
    </ul>
   
  </section>
</nav>
<script src="client/js/vendor/jquery.js"></script>
<script src="client/js/vendor/underscore.js"></script>
<script src="client/js/vendor/moment.min.js"></script>
<script src="client/js/foundation.min.js"></script>
<script src="client/js/app/app.js"></script>
<script src="client/js/vendor/angular.min.js"></script>
<script src="client/js/vendor/angular-route.min.js"></script>

<script src="client/js/app/angular/main.js"></script>

</body>
</html>