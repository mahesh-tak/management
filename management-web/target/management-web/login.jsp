<!doctype html>
<html class="no-js" lang="en">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Time Bound | Login</title>
    <link rel="stylesheet" href="client/css/foundation.css" />
    <link rel="stylesheet" href="client/css/custom.css" />
    <script src="client/js/vendor/modernizr.js"></script>
  </head>
  <body>
    <div class="header-wrapper">
        <img src="client/img/logo.png" alt="logo">
    </div>
    
    <div class="row" data-equalizer>
        <div class="large-12 columns text-center">
            <br>
            <h1>Welcome to TimeBound BI Portal</h1>
            <br>
        </div>
        <div class="large-8 columns" data-equalizer-watch>
            <img class="border" src="client/img/graph.jpg" alt="Sample Dashboard">
        </div>
        <div class="large-4 columns" data-equalizer-watch ng-controller="LoginController">
            <br><br><br><br>
            <%
            	if(request.getParameter("err") != null && request.getParameter("err").equalsIgnoreCase("yes")) {
            %>
            <div data-alert="" class="alert-box alert radius">
			  Invalid username or password.
			  <a href="" class="close">×</a>
			</div>
			<%
            	} else {
			%>
			<br><br><br>
			<%
            	}
			%>
            <form method="post" action="j_spring_security_check">
                <div class="row">
                    <label>Username</label>
                    <input type="text" name="j_username" placeholder="Enter your email address">
                </div>
                <div class="row">
                    <label class="left">Password</label><label class="right"><a href="">Forgot Password?</a></label>
                    <input type="password" name="j_password" placeholder="Enter your password">
                    <input type="checkbox"> <label>Remember me on this computer</label>
                </div>
                <div class="row">
                    <button>SignIn</button>
                </div>
                <div class="row">
                    <label>Please contact <a href="#">support@acinfotech.com</a> for any assistance.</label>
                </div>
            </form>
        </div>
    </div>
    
    <script src="client/js/vendor/jquery.js"></script>
    <script src="client/js/foundation.min.js"></script>
    <script>
      $(document).foundation();
    </script>
  </body>
</html>